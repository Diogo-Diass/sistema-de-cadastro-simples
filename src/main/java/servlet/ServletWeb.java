package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Pessoa;

@WebServlet("/cadastro")
public class ServletWeb extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nome = req.getParameter("nome");
		String sobrenome = req.getParameter("sobrenome");
		String email = req.getParameter("email");
		String genero = req.getParameter("genero");		
		String mensagem ="";
		String horario ="";
		int idade = Integer.parseInt(req.getParameter("numero"));
		
		Pessoa pessoa = new Pessoa();
		pessoa.setIdade(idade);
		pessoa.setNome(nome);
		pessoa.setEmail(email);
		pessoa.setSobrenome(sobrenome);
		pessoa.getGenero();		
		
		if(genero.equals("m")) {
			mensagem = "Senhor";
			
		}else if(genero.equals("f")){
			mensagem ="Senhora";
		}
		Date dataHoraAtual = new Date();		
		String hora = new SimpleDateFormat("HH").format(dataHoraAtual);
		int h = Integer.parseInt(hora);
		
		if(h <= 12) {
			horario = "Bom Dia";
		}else if(h <= 18) {
			horario = "Boa Tarde";
			
		}else {
			horario = "Boa noite";
		}
		req.setAttribute("horario", horario);
		req.setAttribute("pessoa", pessoa);	
		req.setAttribute("mensagem", mensagem);
		req.getRequestDispatcher("sucesso.jsp").forward(req, resp);
						
		
	}

}
