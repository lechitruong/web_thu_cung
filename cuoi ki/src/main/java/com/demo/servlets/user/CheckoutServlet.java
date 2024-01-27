package com.demo.servlets.user;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entities.OrderDetails;
import com.demo.entities.Orders;
import com.demo.entities.Pets;
import com.demo.entities.Users;
import com.demo.models.OrderDetailsModel;
import com.demo.models.OrderModel;

/**
 * Servlet implementation class CachnuoiServlet
 */
@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if(action == null) {
			doGet_Index(request, response);
		}
	}
	protected void doGet_Index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("p", "../user/checkout.jsp");
		request.getRequestDispatcher("/WEB-INF/views/layout/user.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("dathang")) {
			doPost_Dathang(request, response);
		}
	}
	protected void doPost_Dathang(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name"); //
		String address = request.getParameter("address"); //
		String email = request.getParameter("email"); //
		String phonenumber = request.getParameter("phonenumber");//
		String note = request.getParameter("note");// 
		String petname = request.getParameter("petname");
		String quantity = request.getParameter("quantity");
		String money = request.getParameter("money");
		String totalmoney = request.getParameter("totalmoney");
		double totalMoney1 = Double.parseDouble(totalmoney);
		String totalMoney2 = String.valueOf(totalMoney1*1000000);
		totalMoney2 = totalMoney2.replace(".0", "");
		OrderModel orderModel = new OrderModel();
		OrderDetailsModel orderDetailsModel = new OrderDetailsModel();
		Orders order = new Orders();
	
		order.setFullName(new String(name.getBytes("ISO-8859-1"), "UTF-8"));
		order.setAddress(new String(address.getBytes("ISO-8859-1"), "UTF-8"));
		order.setEmail(new String(email.getBytes("ISO-8859-1"), "UTF-8"));
		order.setPhoneNumber(new String(phonenumber.getBytes("ISO-8859-1"), "UTF-8"));
		order.setNote(new String(note.getBytes("ISO-8859-1"), "UTF-8"));
		order.setOrderDate(new java.util.Date());
		order.setStatus(false);
		order.setTotalMoney(Integer.parseInt(totalMoney2));
		Users users = (Users) request.getSession().getAttribute("user");
		order.setUserId(users.getId());

	
		List<Pets> pets = (List<Pets>)request.getSession().getAttribute("pets");
		System.out.println(pets);
		if(orderModel.insert(order)) {
			int orderID = orderModel.getLastOrder().getId();
			for(int i = 0; i < pets.size(); i++) {
				OrderDetails orderDetails = new OrderDetails();
				
				orderDetails.setOrderId(orderID);
				orderDetails.setPetId(pets.get(i).getId());
				orderDetails.setQuanlity(1);
				String money1 = pets.get(i).getMoney().replace(" triệu đồng", "");
				Double money2 = Double.parseDouble(money1) * 1000000;
				String money3 = String.valueOf(money2).replace(".0", "");
				System.out.println(money3);
				
				
				orderDetails.setMoney(Integer.parseInt(money3));
				if(orderDetailsModel.create(orderDetails)) {
					System.out.println("true - orđetails");
				} else {
					System.out.println("false - orđetails");
				}
			}
			
			System.out.println("true - order");
			response.sendRedirect("tinhtrangdonhang");
			
		} else {
			response.sendRedirect("checkout");
		}

		
	}

}
