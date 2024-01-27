package com.demo.servlets.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entities.OrderDetails;
import com.demo.entities.Pets;
import com.demo.models.OrderDetailsModel;
import com.demo.models.PetModel;
import com.google.gson.Gson;
@WebServlet("/dialogmessage")
/**
 * Servlet implementation class DialogMessage
 */
public class DialogMessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DialogMessage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter printWriter = response.getWriter();
		OrderDetailsModel orderDetailsModel = new OrderDetailsModel();
		String orderID = request.getParameter("orderID");
		int id = Integer.parseInt(orderID);
		List<Pets> pets = new ArrayList<Pets>();
		for (OrderDetails order : orderDetailsModel.getAllOrderdetailsById(id)) {
			pets.add(new PetModel().findPetById(order.getPetId()));
		}
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("orderdetails", orderDetailsModel.getAllOrderdetailsById(id));
		data.put("pets", pets);
		printWriter.print(new Gson().toJson(data));
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
