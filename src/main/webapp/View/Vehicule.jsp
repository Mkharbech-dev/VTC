<c:import url="Header.jsp"></c:import>

<div class= "">
	<table class="table table-dark table-hover mt-2">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>


	<div class="container  p-3" >
	    <form class="form" method="post" action="<%= request.getContextPath() %>/contact"  onsubmit="return envoyer(event);">
	        <div class="row">
		        <div class="mb-3 col">
		          <label for="firstname" class="form-label">Marque*:</label>
		          <input type="text" class="form-control" id="firstname" name="nom" >
		        </div>
		        <div class="mb-3 col">
		            <label for="lastname" class="form-label">Modele*:</label>
		            <input type="text" class="form-control" id="lastname" name="prenom">
		        </div>
	        </div>
	        
	         <div class="row">
		          <div class="mb-3 col">
		            <label for="email" class="form-label">Couleur*:</label>
		            <input type="email" class="form-control" id="email" name="email">
		            <div id="errorEmail"></div>
		          </div>
		          <div class="mb-3 col">
	            	<label for="tel" class="form-label">Immatriculation*:</label>
	            	<input type="tel" class="form-control" id="tel" name="tel">
	              <div id="errorTel"></div>
	          	  </div>
	        </div>
	        <p style="text-align: left;">*: Champs obligatoire</p>
	        <button type="submit"  onsubmit='checkEmail();' class="btn btn-primary mb-2" onclick='confirmPass();'>Valider</button>
	      </form>  
     </div>
</div>
	
	<%@ include file="Footer.jsp" %>
	
	
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" 
	 integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	 crossorigin="anonymous"></script>
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" 
	 integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	 crossorigin="anonymous"></script>
</body>
</html>