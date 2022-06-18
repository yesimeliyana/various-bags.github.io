<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Custome Profile UI</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <style>
        body {
            background: #fff;
        }

        .our-team {
            padding: 30px 0 40px;
            background: #fff;
            text-align: center;
            overflow: hidden;
            position: relative;
        }

        .our-team .pic {
            display: inline-block;
            width: 130px;
            height: 130px;
            margin-bottom: 50px;
            /*background:#ff00ac;*/
            position: relative;
            z-index: 1;
        }

        .our-team .pic:before {
            content: "";
            width: 100%;
            background: #E7AB79;
            position: absolute;
            bottom: 135%;
            right: 0;
            left: 0;
            transform: scale(3);
            transition: all 0.3s linear 0s;
        }

        .our-team:hover .pic:before {
            height: 100%;
        }

        .our-team .pic:after {
            content: "";
            width: 100%;
            height: 100%;
            border-radius: 50%;
            background: #E7AB79;
            position: absolute;
            top: 0;
            left: 0;
            z-index: -1;
        }

        .our-team .pic img {
            margin-bottom: 100px;
            width: 100%;
            height: auto;
            border-radius: 50%;
            transform: scale(1);
            transition: all 0.9s ease 0s;
        }

        .our-team:hover .pic img {
            box-shadow: 0 0 0 14px #E7AB79;
            transform: scale(0.7);
        }

        .our-team .team-content {
            margin-bottom: 30px;
        }

        .our-team .title {
            font-size: 22px;
            font-weight: 700;
            color: #E7AB79;
            letter-spacing: 1px;
            text-transform: capitalize;
            margin-top: 20px;
        }

        .our-team .post {
            display: block;
            font-size: 15px;
            color: #E7AB79;
            text-transform: capitalize;
        }

        .our-team .social {
            width: 100%;
            padding: 0;
            margin: 0;
            background: #E7AB79;
            position: absolute;
            bottom: -100px;
            left: 0;
            transition: all 0.5 ease 0s;
        }

        .our-team:hover .social {
            bottom: 0;
        }

        .our-team .social li {
            display: inline-block;
        }

        .our-team .social li a {
            display: block;
            padding: 10px;
            font-size: 17px;
            color: #fff;
            transition: all 0.3s ease 0s;
        }

        .our-team .social li a:hover {
            color: #E7AB79;
            background: #E7AB79;
            text-decoration: none;

        }
    </style>

<body>




    <div class="container mt-5">
        <div class="row">
            <div class="col-md-4 col-sm-6">
                <div class="our-team">
                    <div class="pic">
                        <img src="../assets/img/gambar1.jpg" alt="yesi">
                    </div>
                    <div class="team-content">
                        <h3 class="title">Yesi Meliyana</h3>
                        <span class="post">20312010</span>
                        <span class="post">IF 20 A</span>
                    </div>
                    <ul class="social">

                        <li><a href="" class="fab fa-facebook-f"></a></li>
                        <li><a href="" class="fab fa-instagram"></a></li>
                        <li><a href="" class="fab fa-linkedin-in"></a></li>
                        <li><a href="" class="fab fa-twitter"></a></li>

                    </ul>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="our-team">
                    <div class="pic">
                        <img src="../assets/img/gambar2.jpg" alt="adel">
                    </div>
                    <div class="team-content">
                        <h3 class="title">Chyntia Adelia V.H.</h3>
                        <span class="post">20312027</span>
                        <span class="post">IF 20 A</span>
                    </div>
                    <ul class="social">

                        <li><a href="" class="fab fa-facebook-f"></a></li>
                        <li><a href="" class="fab fa-instagram"></a></li>
                        <li><a href="" class="fab fa-linkedin-in"></a></li>
                        <li><a href="" class="fab fa-twitter"></a></li>

                    </ul>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="our-team">
                    <div class="pic">
                        <img src="../assets/img/gambar3.jpg" alt="">
                    </div>
                    <div class="team-content">
                        <h3 class="title">Erna Novita</h3>
                        <span class="post">20312011</span>
                        <span class="post">IF 20 A</span>
                    </div>
                    <ul class="social">

                        <li><a href="" class="fab fa-facebook-f"></a></li>
                        <li><a href="" class="fab fa-instagram"></a></li>
                        <li><a href="" class="fab fa-linkedin-in"></a></li>
                        <li><a href="" class="fab fa-twitter"></a></li>

                    </ul>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="our-team">
                    <div class="pic">
                        <img src="../assets/img/gambar4.jpg" alt="">
                    </div>
                    <div class="team-content">
                        <h3 class="title">Dewi Ranury</h3>
                        <span class="post">20411036</span>
                        <span class="post">MNJ 20 A</span>
                    </div>
                    <ul class="social">

                        <li><a href="" class="fab fa-facebook-f"></a></li>
                        <li><a href="" class="fab fa-instagram"></a></li>
                        <li><a href="" class="fab fa-linkedin-in"></a></li>
                        <li><a href="" class="fab fa-twitter"></a></li>

                    </ul>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="our-team">
                    <div class="pic">
                        <img src="../assets/img/Lestari 20411018 MNJ 20A.jpg" alt="">
                    </div>
                    <div class="team-content">
                        <h3 class="title">Lestari</h3>
                        <span class="post">20411018</span>
                        <span class="post">MNJ 20 A</span>
                    </div>
                    <ul class="social">

                        <li><a href="" class="fab fa-facebook-f"></a></li>
                        <li><a href="" class="fab fa-instagram"></a></li>
                        <li><a href="" class="fab fa-linkedin-in"></a></li>
                        <li><a href="" class="fab fa-twitter"></a></li>

                    </ul>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="our-team">
                    <div class="pic">
                        <img src="../assets/img/gambar5.jpg" alt="">
                    </div>
                    <div class="team-content">
                        <h3 class="title">Neli Saputri</h3>
                        <span class="post">20411087</span>
                        <span class="post">MNJ 20 A</span>
                    </div>
                    <ul class="social">

                        <li><a href="" class="fab fa-facebook-f"></a></li>
                        <li><a href="" class="fab fa-instagram"></a></li>
                        <li><a href="" class="fab fa-linkedin-in"></a></li>
                        <li><a href="" class="fab fa-twitter"></a></li>

                    </ul>
                </div>
            </div>
            <br><br><br><br><br><br><br>
        </div>
    </div>

    <footer></footer>
</body>

</html>