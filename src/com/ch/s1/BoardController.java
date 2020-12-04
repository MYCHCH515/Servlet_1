package com.ch.s1;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ch.board.BoardDTO;
import com.ch.board.BoardService;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("/BoardController")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private BoardService boardService;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardController() {
        super();
        boardService = new BoardService();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Encoding
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//
		
		String path = request.getRequestURI();
		path = path.substring(path.lastIndexOf("/"));
		String info="";
		
		if(path.equals("/boardList.board")) {
			info = "./boardList.jsp";	
			ArrayList<BoardDTO> ar = null;
			
			try {
				ar = boardService.boardList();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("list", ar);
		}
		
		else if(path.equals("/boardWrite.board")) {
			info ="./boardWrite.jsp";
		}
		
		else if(path.equals("/boardWriteProcess.board")) {
			BoardDTO boardDTO = new BoardDTO();
			
			boardDTO.setTitle(request.getParameter("title"));
			boardDTO.setWriter(request.getParameter("writer"));
			boardDTO.setContents(request.getParameter("contents"));
			
			try {
				boardService.boardWrite(boardDTO);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		RequestDispatcher view = request.getRequestDispatcher(info);
		view.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
