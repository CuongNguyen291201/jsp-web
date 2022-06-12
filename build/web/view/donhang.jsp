<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đơn hàng</title>
        <link rel="stylesheet"
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
              crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <style>
            a:hover {
                text-decoration: none;
                color: inherit;
            }

            .khung-trang {
                width: 1170px;
                margin: 0 auto;
                color: #000;
            }

            .thong-tin-gui {
                width: 50%;
                padding: 50px 0;
            }

            .tieu-de {
                font-size: 30px;
                font-weight: 700;
            }
            
            .dien {
                border: 1px solid #EBEBEB;
                border-radius: 3px;
                width: 80%;
                height: 40px;
            }
            
            .ten-truong {
                font-size: 16px;
                font-weight: 500;
            }
            
            .nut-tao-don {
                background: #D6763C;
                color: #fff;
                padding: 10px 15px;
                border: none;
                border-radius: 3px;
                margin-top: 20px;
            }
            
            .tien {
                display: flex;
                justify-content: space-between;
                border-bottom: 1px solid #ccc;
                padding-bottom: 20px;
            }
            
            .tien-tra {
                font-weight: 700;
                font-size: 18px;
            }

        </style>
    </head>
    <body>
        <div id="don-hang">
            <div class="khung-trang">
                <div class="thong-tin-gui">
                    <div class="tieu-de">Your order</div>
                    <div class="tien">
                        <div class="mo-ta-tp">Total</div>
                        <div class="tien-tra"></div>
                    </div>
                </div>
                
                <div class="thong-tin-gui">
                    <div class="tieu-de">Billing Details</div>
                    <form action="don-hang" method="post">
                        <fieldset class="thanh-phan ten">
                            <label class="ten-truong">Name(*)</label><br/>
                            <input type="text" class="dien" name="ten" required />
                        </fieldset>

                        <fieldset class="thanh-phan dia-chi">
                            <label class="ten-truong">Address(*)</label><br/>
                            <input type="text" class="dien" name="diachi" required />
                        </fieldset>

                        <fieldset class="thanh-phan ">
                            <label class="ten-truong">Phone(*)</label><br/>
                            <input type="text" class="dien" name="sdt" required />
                        </fieldset>

                        <button type="submit" class="nut-tao-don">
                            Create order
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </body>
    
    <script type="text/javascript">
        let data = <%=request.getAttribute("giohang")%>;
        $(document).ready(() => {
            
            let tien = data.reduce((prev, current) => prev + current.soluong * current.gia ,0);
            $(".tien-tra").append(`$` + tien);
        });
    </script>
</html>
