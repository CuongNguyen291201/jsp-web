<%-- 
    Document   : index
    Created on : May 23, 2022, 6:46:44 PM
    Author     : cuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi Tiết Sản Phẩm</title>
        <link rel="stylesheet"
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
              crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <style>
            .khung-trang {
                width: 1170px;
                margin: 0 auto;
            }
            .san-pham {
                display: flex;
                justify-content: start;
                gap: 20px;
            }
            .anh {
                width: 40%;
                height: 500px;
                object-fit: cover;
            }
            .mo-ta {
                text-align: left;
                color: #000;
            }
            .ten {
                font-size: 32px;
                font-weight: 700;
                text-transform: capitalize;
            }
            .gia {
                color: #024E82;
                font-size: 24px;
                font-weight: 500;
            }
            .mo-ta-sp {
                font-size: 16px;
                font-weight: 500;
                padding-bottom: 50px;
            }
            .them-vao-gio {
                background: #F2994A;
                color: #fff;
                padding: 15px 35px;
            }
            .them-vao-gio:hover {
                color: #fff;
            }
        </style>
    </head>
    <body>
        <div id="chi-tiet-sp">
            <div class="khung-trang">
                <div class="san-pham">

                </div>
            </div>
        </div>
    </body>

    <script type="text/javascript">
        let item = <%=request.getAttribute("sanpham")%>;

        $(document).ready(() => {
            $(".san-pham").append(
                    `
                    <img class="anh" src=` + item.anh + ` />
                    <div class="mo-ta">
                        <div class="ten">` + item.ten + `</div>
                        <div class="gia">$` + item.gia + `</div>
                        <div class="mo-ta-sp">` + item.mota + `</div>
                            <a class="them-vao-gio" href="cap-nhat-gio-hang?ma=` + item.ma +  `">Add to Cart</a>
                    </div>
                `
            );
        })
    </script>
</html>
