<<html>
	<head>
		<title>Retorno PHP Form</title>
	</head>
		<body>
		<h2>Form envio de email</h2>
			<?php
			$first_name = $_POST("first_name");
			$last_name = $_POST("last_name");
			$email_address = $_POST("email_address");
			$subject = $_POST("subject");
			$message = $_POST("message");
				
				echo .$first_name .$last_name 'Obrigado por submeter a sua mensagem';
				echo .
			?>
		</body>
</html>