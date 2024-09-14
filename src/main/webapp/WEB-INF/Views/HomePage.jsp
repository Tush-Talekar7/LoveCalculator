<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>LoveCalculator</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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

			
			/*Sidebar styles for smaller screens*/
			 
			

			
.frm {
	display: flex;
	flex-direction: column;
	height: 400px;
	width: 340px;
	background-color: rgba(255, 255, 255, 0.13);
	position: absolute;
	transform: translate(-50%, -50%);
	top: 50%;
	left: 47%;
	border-radius: 10px;
	backdrop-filter: blur(10px);
	border: 2px solid rgba(255, 255, 255, 0.1);
	box-shadow: 0 2 20px rgb(8 7 10 / 14%);
	padding: 35px 35px;
	transition: all .3s ease;
}
form *
			{
			    font-family: 'Poppins',sans-serif;
			    color: black;
			    letter-spacing: 0.5px;
			    outline: none;
			    border: none;
			}
			form h3
			{
			    font-size: 32px;
			    font-weight: 600;
			    line-height: 30px;
			    text-align: center;
			}

			label
			{
			    display: block;
			    margin-top: 18px;
			    font-size: 16px;
			    font-weight: 500;
			}

			input
			{
			    display: block;
			    height: 40px;
			    width: 100%;
			    border-bottom: 1px solid black;
			    background-color: white;
			    border-radius: 3px;
			    padding: 0 10px;
			    margin-top: 8px;
			    font-size: 16px;
			    font-weight: 400;
			}

			::placeholder
			{
			    color: gray;
			}

			button
			{
			    margin-top: 58px;
			    width: 100%;
			    background-color:black;
			    color: white;
			    padding: 10px 0;

			    font-size: 15px;
			    font-weight: 600;
			    border-radius: 2px;
			    cursor: pointer;
			}

		


			.extras
			{
				display: flex;
				flex-direction: row;
				justify-content: space-between;
				align-items: center;
				padding-top:10px;
				margin-right: 10px;
			}

			

		
			
			input:invalid ~ button[type="submit"]
			{
				opacity: .6;
				pointer-events: none;
			}
			
			input:valid:not(:placeholder-shown)
			{
				border:color:green;
			}
			input:invalid:not(:placeholder-shown)
			{
				border-color:darkred;
			}

</style>
	<body>

		<nav>	
		 	<div>
	            <ul>
	                <li> <a href="#">Love Calculator</a> </li>
	
	                <li> <a href="#"> ${ loggedUser }</a> </li>
	                              
	            </ul>
	        </div>
	      </nav>
	
		<form class="frm"  action="calculate">	        

	        <label for="username">Your Name</label>
	        <input type="text" placeholder="Your Name" id="username" name="userName" required>

	        <label for="password">CrushName</label>
	        <input type="text" placeholder="CrushName" id="password" name="crushName" required>

	        <button>Calculate</button>

	    </form>
	</body>
</html>
