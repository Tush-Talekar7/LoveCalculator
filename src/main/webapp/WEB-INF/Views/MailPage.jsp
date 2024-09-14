<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Send Mail</title>
		<style>
			*, *:before, *:after {
				padding: 0;
				margin: 0;
				box-sizing: border-box;
			}
			
			body {
				font-family: Arial, sans-serif;
				background-color: white;
				min-height: 100vh;
			}
			
			nav {
				background-color: #4a494747;
				box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.2);
				position: fixed; /* Fix the navbar at the top */
				top: 0; /* Position the navbar at the top */
				width: 100%; /* Ensure the navbar spans the full width */
				z-index: 1000; /* Ensure the navbar is above other elements */
			}
			
			nav ul {
				display: flex;
				justify-content: flex-end;
				align-items: center;
				width: 100%;
				list-style: none;
			}
			
			nav li {
				height: 50px;
			}
			
			nav a {
				display: flex;
				align-items: center;
				text-decoration: none;
				color: black;
				height: 100%;
				padding: 0 30px;
			}
			
			nav a:hover {
				background-color: rgb(224, 224, 221);
				transition: all 1s ease;
				border-radius: 4px;
			}
			
			nav li:first-child {
				margin-right: auto;
			}
			
			h2 {
				font-size: 1.4rem;
				font-weight: 800px;
			}
			
			.main {
				width: 100%;
				height: 80vh;
				display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;
			}
			
			.result {
				width: 400px;
				height: 500px;
				display: flex;
				gap: 1rem;
				flex-direction: column;
				justify-content: center;
				align-items: center;
			}
			
			.frm {
				display: flex;
				flex-direction: column;
				height: 400px;
				width: 400px;
				background-color: rgba(255, 255, 255, 0.13);
				position: absolute;
				transform: translate(-50%, -50%);
				top: 70%;
				left: 55%;
				border-radius: 10px;
				border: 2px solid rgba(255, 255, 255, 0.1);
				box-shadow: 0 2 20px rgb(8 7 10/ 14%);
				padding: 35px 35px;
				transition: all .3s ease;
			}
			
			form * {
				font-family: 'Poppins', sans-serif;
				color: black;
				letter-spacing: 0.5px;
				outline: none;
				border: none;
			}
			
			form h3 {
				font-size: 32px;
				font-weight: 600;
				line-height: 30px;
				text-align: center;
			}
			
			label {
				display: block;
				margin-top: 18px;
				font-size: 16px;
				font-weight: 500;
			}
			
			input {
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
			
			::placeholder {
				color: gray;
			}
			
			button {
				margin-top: 58px;
				width: 68%;
				background-color: black;
				color: white;
				padding: 10px 0;
				font-size: 15px;
				font-weight: 600;
				border-radius: 2px;
				cursor: pointer;
			}
		</style>
	</head>
	<body>
	
			<nav>	
			 	<div>
		            <ul>
		                <li><a href="#">Love Calculator</a></li>		             
		                <li ><a href="/LoveCalculator/History?lg=${loggedUser }">See Previous</a></li>
		                <li ><a href="#">${loggedUser}</a></li>		               		                
		            </ul>
		        </div>
		      </nav>
		      
		      <div class="main">
		      	<div class="result">
		      	
		      		<h2>Hello ${loggedUser }</h2><br>
		
				      <form action="mailSent" class="frm">
				      		<input type="hidden" name="relation" value="${relation }">
				      		Enter Your Email ID: <input type="text" name="email" placeholder="email"> 
				      		<button type="submit">Send</button>
				      </form>
		      </div>
		  </div>
	
	</body>
</html>