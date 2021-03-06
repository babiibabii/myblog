package com.xmut.blog.fightingLandlord.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.xmut.blog.fightingLandlord.biz.BlogBiz;
import com.xmut.blog.fightingLandlord.biz.ReplyBiz;
import com.xmut.blog.fightingLandlord.bizImp.BlogBizImp;
import com.xmut.blog.fightingLandlord.bizImp.ReplyBizImp;
import com.xmut.blog.fightingLandlord.entity.Blog;
import com.xmut.blog.fightingLandlord.entity.Reply;
import com.xmut.blog.fightingLandlord.entity.User;

/**
 * Servlet implementation class ReplyServlet
 */
@WebServlet("/ReplyServlet")
public class ReplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		ReplyBiz reply = new ReplyBizImp();
		HttpSession session = request.getSession();

		String content = request.getParameter("content");
		String cId = request.getParameter("commentId");

		Reply newReply = new Reply(Integer.parseInt(cId), ((User) session.getAttribute("currentUser")), content,
				new Date());
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if (reply.addReply(newReply)) {
			Gson gson = new Gson();
			String json = gson.toJson(newReply);
			out.print(json);
			out.flush();
			out.close();
		}

	}
}
