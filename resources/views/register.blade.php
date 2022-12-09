<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rejoignez nous</title>
    <!-- Lien Box Icons-->
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'> <!-- Sert a importer directement les icones avec un lien -->


<style>

*{
    margin: 0;
    padding: 0;
    font-family: roboto;
}


.hero{
    height: 100%;
    width: 100%;
    background-color: #7f5a83;
    background-image: linear-gradient(315deg, #7f5a83 0%, #0d324d 74%);
    background-position: center;
    background-size: cover;
    position: absolute;
}

.form-box{
    width: 380px;
    height: 480px;
    position: relative;
    margin: 10% auto;
    background: #fff;
    padding: 5px;
    overflow: hidden;
    border-radius: 10%;

}

.button-box{
    width: 220px ;
    margin: 35px auto;
    position: relative;
    box-shadow: 0 0 25px 9px #ff61241f;
    border-radius: 30px;

}

.toggle-btn{
    padding: 10px 30px;
    cursor: pointer;
    background: transparent;
    border: 0;
    outline: none;
    position: relative;

}

#btn{
    top: 0;
    left: 0;
    position: absolute;
    width: 110px;
    height: 100%;
    background: linear-gradient(to right, #ff105f,#ffad06);
    border-radius: 30px;
    transition: .5s;

}

.social-icons{
    margin: 30px auto;
    text-align: center;
}

.social-icons img{
    width: 30px;
    margin: 0 12px;
    box-shadow: 0 0 20px 0 #7f7f7f3d;
    cursor:pointer;
    border-radius: 50%;
}

.input-group{
    top: 180px;
    position: absolute;
    width: 280px;
    transition: .5s;
}

.input-field{
    width: 100%;
    padding: 10px 0;
    margin: 5px 0;
    border-left: 0;
    border-top: 0;
    border-right: 0;
    border-bottom: 1px solid #999;
    outline: none;
    background: transparent;
}

.submit-btn{
    width: 85%;
    padding: 10px 30px;
    cursor: pointer;
    display: block;
    margin: auto;
    background: linear-gradient(to right, #ff105f,#ffad06);
    border: 0;
    outline: none;
    border-radius: 30px;

}

.check-box{
    margin: 30px 10px 30px 0;
}
span{
    color: #777;
    font-size:12px;
    bottom: 68px;
    position: absolute;
}

#login{
    left: 50px;
}
#register{
    left: 450px;
}

#close{
    position: absolute;
    top: 1rem;
    left: 0.8rem;
    cursor: pointer;
    font-size: 2rem;
}

a{
    text-decoration:none;  
  }





</style>




</head>
<body>
    <div class="hero">
        <div class="form-box">
            <div class="button-box">
                <div id="btn"></div>
                <button type="button" class="toggle-btn" onclick="login()">Log In</button>
                <button type="button" class="toggle-btn" onclick="register()">Register</button>
            </div>
            <a href="/products"><i class='bx bx-x' id="close" ></i></a>

            
            
            <form id="login" class="input-group">
                <input type="text" class="input-field" placeholder="Identifiant" required>
                <input type="password" class="input-field" placeholder="Mot de Passe" required>
                <input type="checkbox" class="check-box"><span>Se souvenir du Mot de passe</span>
                <button onclick="window.location.href='/products'" type="submit" class="submit-btn">Se connecter</button>
            </form>
            <form id="register" class="input-group">
                <input type="text" class="input-field" placeholder="Identifiant" required>
                <input type="email" class="input-field" placeholder="Adresse e-mail" required>
                <input type="text" class="input-field" placeholder="Mot de Passe" required>
                <input type="checkbox" class="check-box"><span>J'accepte les termes et conditions</span>
                <button type="submit" class="submit-btn">Rejoindre Les petites bohèmes</button>
            </form>
        </div>
    </div>

    <script>
        var x = document.getElementById("login");
        var y = document.getElementById("register");
        var z = document.getElementById("btn");

        function register(){
            x.style.left = "-400px";
            y.style.left = "50px";
            z.style.left = "110px";
        }

        function login(){
            x.style.left = "50px";
            y.style.left = "450px";
            z.style.left = "0";
        }
    </script>
    
</body>
</html>