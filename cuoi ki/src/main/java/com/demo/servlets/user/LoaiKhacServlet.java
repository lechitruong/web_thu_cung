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

/**
 * Servlet implementation class ThuKhacServlet
 */
@WebServlet("/loaikhac")
public class LoaiKhacServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoaiKhacServlet() {
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
		}else if (action.equalsIgnoreCase("filterByCat")) {
			doGet_FilterByCat(request, response);
		}else if (action.equalsIgnoreCase("filterPetKhac")) {
			 doGet_FilterByPetKhac(request, response);
		}
	}

	protected void doGet_Index(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("p", "../user/loaikhac.jsp");
		request.getRequestDispatcher("/WEB-INF/views/layout/user.jsp").forward(request, response);
	}
	protected void doGet_FilterByCat(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String catalogId = request.getParameter("idcatalog");
		List<Pets> pets = new ArrayList<>();
		CatalogModel catalogModel = new CatalogModel();
		PetModel petModel = new PetModel();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		int idCatalog = Integer.parseInt(catalogId);
		PrintWriter printWriter = response.getWriter();
		Gson gson = new Gson();
		printWriter.print(gson.toJson(petModel.findAllByCatalog(2, idCatalog)));
		System.out.println(idCatalog);
	}
	protected void doGet_FilterByPetKhac(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String catalogId = request.getParameter("idcatalog");
		List<Pets> pets = new ArrayList<>();
		CatalogModel catalogModel = new CatalogModel();
		PetModel petModel = new PetModel();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		int idCatalog = Integer.parseInt(catalogId);
		PrintWriter printWriter = response.getWriter();
		Gson gson = new Gson();
		printWriter.print(gson.toJson(petModel.findAllByCatalog(3, idCatalog)));
		System.out.println(idCatalog);

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
