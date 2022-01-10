<c:import url="Header.jsp"></c:import>


	<div id="msg">
		<p class="status" ></p>
	</div>



<div class= "toto">
	<c:if test="${!empty conducteurs}">
		<table class="table table-dark table-hover mt-2">
			  <thead>
			    <tr>
			      <th scope="col">id</th>
			      <th scope="col">prénom</th>
			      <th scope="col">nom</th>
			      <th scope="col">email</th>
			      <th scope="col">tel</th>
			      <th scope="col">Modifie</th>
				  <th scope="col">Supprimer</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<c:forEach items= "${conducteurs}" var ="item">
				    <tr>
				      <td><c:out value="${item.id }"></c:out></td>
				      <td><c:out value="${item.prenom }"></c:out></td>
				      <td><c:out value="${item.nom }"></c:out></td>
				      <td><c:out value="${item.email }"></c:out></td>
				      <td><c:out value="${item.tel }"></c:out></td>
				      <td><a><img alt="" src="img/update.png" style= "width:40px; height:40px"></a> </td>
				      <td><a  onclick= "return confirm('Etes-vous sur ?')"><img alt="" src="img/delete.png" style= "width:40px; height:40px"> </a></td>
				    </tr>
			    </c:forEach>
			  </tbody>
		</table>
	</c:if>
	<div class="container  p-3" >
	    <form class="form" method="post" id="my-form" action="<%= request.getContextPath() %>/conducteur" onsubmit="return envoyer(event);">
	        <div class="row">
		        <div class="mb-3 col">
		          <label for="firstname" class="form-label">Nom*:</label>
		          <input type="text" class="form-control" id="firstname" name="nom" >
		        </div>
		        <div class="mb-3 col">
		            <label for="lastname" class="form-label">Prénom*:</label>
		            <input type="text" class="form-control" id="lastname" name="prenom">
		        </div>
	        </div>
	        
	         <div class="row">
		          <div class="mb-3 col">
		            <label for="email" class="form-label">Email*:</label>
		            <input type="email" class="form-control" id="email" name="email">
		            <div id="errorEmail">${msg }</div>
		          </div>
		          <div class="mb-3 col">
	            	<label for="tel" class="form-label">Tel*:</label>
	            	<input type="tel" class="form-control" id="tel" name="tel">
	              <div id="errorTel"></div>
	          	  </div>
	        </div>
	        <p style="text-align: left;">*: Champs obligatoire</p>
	        <button type="submit"  onsubmit='checkEmail();' class="btn btn-primary mb-2">Ajouter un Conducteur</button>
	      </form> 
	    
     </div>
</div>

	<script>
		setTimeout(function(){
			document.querySelector('#msg').innerHTML= '';
		},5000);
	</script>
	
	<%@ include file="Footer.jsp" %>
	<script src="JS/conducteur.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" 
	 integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	 crossorigin="anonymous"></script>
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" 
	 integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	 crossorigin="anonymous"></script>
</body>
</html>