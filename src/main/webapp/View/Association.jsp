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
 <div class="row">
	          	<div class ="col">
	           		<label for="tel" class="form-label">Choisir le conducteur:</label>
		          	<select class="form-select mb-3" aria-label="Default select example" name="langage" id= "langage">
					  <option value="Java">Java</option>
					  <option value="Php">Php</option>
					  <option value="Java Script">Java Script</option>
				 	</select>
	           </div>
	            <div class ="col">
	           		<label for="tel" class="form-label">Vehicule:</label>
		          	<select class="form-select mb-3" aria-label="Default select example" name="langage" id= "langage">
					  <option value="Java">Java</option>
					  <option value="Php">Php</option>
					  <option value="Java Script">Java Script</option>
				 	</select>
	           </div>
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