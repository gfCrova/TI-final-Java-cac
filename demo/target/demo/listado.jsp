<%@page import="java.util.List"%>
<%@page import="ar.com.codoacodo.dto.Producto"%>
<html>
	<head>
		<%@include file="head.jsp"%>	
	</head>
	
<<<<<<< HEAD
<<<<<<< HEAD
	<body style="background: linear-gradient(180deg, rgb(110, 4, 4), rgba(218, 8, 8, 0.795), rgb(240, 130, 130), rgba(255, 255, 255));">
=======
	<body style="background: linear-gradient(90deg, rgba(155, 108, 5, 0.685), rgba(207, 162, 15, 0.719), rgba(235, 200, 84, 0.719), rgba(245, 230, 180, 0.726), rgba(235, 200, 84, 0.726), rgba(207, 162, 15, 0.726), rgba(155, 108, 5, 0.74));">
>>>>>>> edit_products
		<!-- ACA VA EL NAVBAR  -->
		<%@include file="navbar.jsp" %>
		<main class="mt-5 pt-5">
			<div class="container-fluid">
				<h1 class="fs-1 text-center">LISTADO</h1>
<<<<<<< HEAD
=======
	<body style="background: linear-gradient(180deg, rgb(0,0,0), rgba(43, 40, 39, 0.822), rgb(160, 134, 85), rgba(233, 198, 123, 0.925), rgb(255, 229, 158));">
		<!-- ACA VA EL NAVBAR  -->
		<%@include file="navbar.jsp" %>
		<main class="mt-5 py-3" style="font-family: 'Montserrat', sans-serif;">
			<div class="container-fluid py-3 bg-secondary bg-gradient shadow-lg">
				<h1 class="text-center text-dark shadow-lg py-2" style="font-size: 2.5vw;">Lista de Componentes</h1>
			</div>
			<div class="container">
>>>>>>> main
				<div class="row">
					<div class="col-md">
						<div class="table-responsive">
							<table class="table table-hover mt-5"
								<thead class="table-dark">
								  <tr>
									<th scope="col">ID</th>
									<th scope="col">NOMBRE</th>
									<th scope="col">MODELO</th>
									<th scope="col">PRECIO</th>
									<th scope="col">C&Oacute;DIGO</th>
									<th scope="col">&nbsp;</th>
								  </tr>
								</thead>
								<% 
									//codigo java
									//obtener el listado desde el request
									//se guardo bajo el nombre de "listado"
									List<Producto> listado = (List<Producto>)request.getAttribute("listado");
								%>
								<tbody>
								 <!-- ESTO SE REPITE TANTA CANDTIDAD DE VECES COMO ARTICULOS TENGA -->
								 <%
									 for( Producto  unProducto : listado) {
								 %>
								  <tr>
									<th scope="row" class="text-warning table-dark"><em> <%=unProducto.getIdProducto()%></em></th>
									<td class="table-secondary"><%=unProducto.getNombre() %></td>
									<td class="table-dark"><%=unProducto.getModelo() %></td>
									<td class="table-secondary"><em><b>$</b></em> <%=unProducto.getPrecio() %></td>
									<td class="table-dark"><i><%=unProducto.getCodigo() %></i></td>
									<td class="table-secondary">
										<a class="btn btn-danger" href="<%=request.getContextPath()%>/api/EliminarController?id=<%=unProducto.getIdProducto()%>" role="button">Eliminar</a> | 
										<a class="btn btn-secondary" href="<%=request.getContextPath()%>/api/EditarController?id=<%=unProducto.getIdProducto()%>" role="button">Editar</a>
									</td>
								  </tr>
								 <%
									 }
								 %>
								</tbody>
							  </table>
						</div>
					</div>
<<<<<<< HEAD
				</div>			
=======
				<section>
					<table class="table mt-5 ps-4">
					  <thead>
					    <tr class="fs-5">
					      <th scope="col">ID</th>
					      <th scope="col">NOMBRE</th>
						  <th scope="col">MODELO</th>
					      <th scope="col">PRECIO</th>
					      <th scope="col">C&Oacute;DIGO</th>
					      <th scope="col">&nbsp;</th>
					    </tr>
					  </thead>
					  <% 
					  	//codigo java
					  	//obtener el listado desde el request
					  	//se guardo bajo el nombre de "listado"
					  	List<Producto> listado = (List<Producto>)request.getAttribute("listado");
					  %>
					  <tbody>
					   <!-- ESTO SE REPITE TANTA CANDTIDAD DE VECES COMO ARTICULOS TENGA -->
					   <%
					   	for( Producto  unProducto : listado) {
					   %>
					    <tr class="fs-5">
					      <th scope="row" class="text-secondary"><em><%=unProducto.getIdProducto()%></em></th>
					      <td><%=unProducto.getNombre() %></td>
						  <td><%=unProducto.getModelo() %></td>
					      <td><em><b>$</b></em> <%=unProducto.getPrecio() %></td>
					      <td><i><%=unProducto.getCodigo() %></i></td>
					      <td>
					      	<a class="btn btn-danger" href="<%=request.getContextPath()%>/api/EliminarController?id=<%=unProducto.getIdProducto()%>" role="button">Eliminar</a> | 
					      	<a class="btn btn-secondary" href="<%=request.getContextPath()%>/api/EditarController?id=<%=unProducto.getIdProducto()%>" role="button">Editar</a>
					      </td>
					    </tr>
					   <%
					   	}
					   %>
					  </tbody>
					</table>
				</section>
>>>>>>> edit_products
=======
				</div>	
						
>>>>>>> main
			</div>
		</main>
	</body>	
</html>