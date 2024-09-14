<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Result Prediction</title>
	<style>		
					*,
					*:before,
					*:after
					{
				    	padding: 0;
				    	margin: 0;
				    	box-sizing: border-box;
					}
		
					body 
					{
						background-color: white;
						min-height: 100vh;
					}
		
					
		
					nav
					{
					    background-color: #4a494747;
					    box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.2);
					    position: fixed; /* Fix the navbar at the top */
					    top: 0; /* Position the navbar at the top */
					    width: 100%; /* Ensure the navbar spans the full width */
					    z-index: 1000; /* Ensure the navbar is above other elements */
					}
		
					nav ul
					{
					    display: flex;
					    justify-content: flex-end;
					    align-items: center;
					    width: 100%;
					    list-style: none;
					}
		
					nav li
					{
				    	height: 50px;
					}
		
					nav a
					{
					    display: flex;
					    align-items: center;
					    text-decoration: none;
					    color: black;
					    height: 100%;
					    padding: 0 30px;
					}
		
					nav a:hover
					{
					    background-color: rgb(224, 224, 221);
					    transition: all 1s ease;
		
					    border-radius: 4px;
					}
		
					nav li:first-child 
					{
				    	margin-right: auto;
					}
				.main
				{
					width: 100%;
					height: 80vh;
					display: flex;
					flex-direction: column;
					justify-content: center;
					align-items: center;
				}
		
				.result
				{
					width: 600px;
					height: 500px;
					display: flex;
					gap: 1rem;
					flex-direction: column;
					justify-content: center;
					align-items: center;
					
					
				}
				h2
				{
					font-size: 1.4rem;
					font-weight: 800px;
				}
				a
				{
					padding: 10px;
					font-size: 1rem;
				}
		
		</style>
	</head>
	<body>

		<nav>			
		 	<div>
	            <ul>
	                <li><a href="#">Logo</a></li>                           
	                <li ><a href="/LoveCalculator/History?lg=${loggedUser }">See Previous</a></li>
	                <li ><a href="#"> ${loggedUser }</a></li>              
	            </ul>
	        </div>
	      </nav>

		<div class="main">
	
			<div class="result">
	
				<h2 >Hello ${user.getUserName() }</h2>
				
				<h1><i>You</i> and <i>${user.getCrushName() }</i> <span>${relation }</span></h1>
				
			</div>
		</div>
		<a href="/LoveCalculator/sendMail?relation=${relation }">Send result to Email</a>

	</body>
</html>