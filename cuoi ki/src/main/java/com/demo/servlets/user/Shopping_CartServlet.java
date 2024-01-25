package com.demo.servlets.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demo.entities.Pets;
import com.demo.models.PetModel;
import com.demo.models.UserModel;

/**
 * Servlet implementation class CachnuoiServlet
 */
@WebServlet("/giohang")
public class Shopping_CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Shopping_CartServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if (action == null) {
			doGet_Index(request, response);
		} else if (action.equalsIgnoreCase("addToCart")) {
			doGet_AddToCart(request, response);
		} else if (action.equalsIgnoreCase("remove")) {
			doGet_Remove(request, response);
		}
	}

	protected void doGet_Index(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("p", "../user/shoppingcart.jsp");
		request.setAttribute("posturl", "https://www.sandbox.paypal.com/cgi-bin/webscr");
		request.setAttribute("business", "sb-dbmc629237995@business.example.com");
		request.setAttribute("returnurl", "http://localhost:8080/projectGroup10/giohang/success");
		
		request.getRequestDispatcher("/WEB-INF/views/layout/user.jsp").forward(request, response);
	}

	protected void doGet_Remove(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Pets> pets = (List<Pets>) request.getSession().getAttribute("pets");
		String petID = request.getParameter("id");
		int id = Integer.parseInt(petID);
		pets.remove(id);
		request.getSession().setAttribute("pets", pets);
		response.sendRedirect("giohang");

	}

	protected void doGet_AddToCart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String petID = request.getParameter("id");
		int id = Integer.parseInt(petID);
		PetModel petModel = new PetModel();
		Pets pet = petModel.findPetById(id);
			if (request.getSession().getAttribute("pets") == null) {
				List<Pets>  pets = new ArrayList<Pets>();
				pets.add(pet);
				request.getSession().setAttribute("pets", pets);
			} else {
				List<Pets> pets = (List<Pets>) request.getSession().getAttribute("pets");
				if (petModel.checkExist(id, pets)) {
					request.getSession().setAttribute("pets", pets);
				} else {
					pets.add(pet);
					request.getSession().setAttribute("pets", pets);
				}
			}
			response.sendRedirect("giohang");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
