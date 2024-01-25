package com.demo.servlets.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entities.Pets;
import com.demo.models.CatalogModel;
import com.demo.models.PetModel;
import com.google.gson.Gson;

@WebServlet("/giongcho")
/*
 * Servlet implementation class GiongChoServlet
 */
public class GiongChoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GiongChoServlet() {
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
		} else if (action.equalsIgnoreCase("filterByCatalog")) {
			doGet_FilterByCatalog(request, response);
		}
	}

	protected void doGet_Index(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setAttribute("p", "../user/giongcho.jsp");
		request.getRequestDispatcher("/WEB-INF/views/layout/user.jsp").forward(request, response);
	}

	protected void doGet_FilterByCatalog(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String catalogId = request.getParameter("idcatalog");
		System.out.println(catalogId);
		String categoryId = request.getParameter("idcategory");
		List<Pets> pets = new ArrayList<>();
		CatalogModel catalogModel = new CatalogModel();
		PetModel petModel = new PetModel();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		int idCatalog = Integer.parseInt(catalogId);
		int idCategory = Integer.parseInt(categoryId);
		PrintWriter printWriter = response.getWriter();
		Gson gson = new Gson();
		printWriter.print(gson.toJson(petModel.findAllByCatalog(idCategory, idCatalog)));
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
