<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="project2.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


	<style>
		@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap');

body {
    font-family: "Poppins", sans-serif;
    color: #444444;
}

a,
a:hover {
    text-decoration: none;
    color: inherit;
}

.section-products {
    padding: 80px 0 54px;
}

.section-products .header {
    margin-bottom: 50px;
}

.section-products .header h3 {
    font-size: 1rem;
    color: #fe302f;
    font-weight: 500;
}

.section-products .header h2 {
    font-size: 2.2rem;
    font-weight: 400;
    color: #444444; 
}

.section-products .single-product {
    margin-bottom: 26px;
}

.section-products .single-product .part-1 {
    position: relative;
    height: 290px;
    max-height: 290px;
    margin-bottom: 20px;
    overflow: hidden;
}

.section-products .single-product .part-1::before {
		position: absolute;
		content: "";
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		z-index: -1;
		transition: all 0.3s;
}

.section-products .single-product:hover .part-1::before {
		transform: scale(1.2,1.2) rotate(5deg);
}

.section-products #product-1 .part-1::before {
    background: url("https://th.bing.com/th/id/R.18d18861414bda314cd67b6985054c94?rik=V8mx1Rwxqj5Szg&riu=http%3a%2f%2fwww.dually-wheels.com%2fimages%2fprodxl%2fgiovanna-dublin-5-black-machined.jpg&ehk=EA7gWUF4AxsCMkPbSF8iCkkOpGttM2L4kGIpHins%2bVk%3d&risl=&pid=ImgRaw&r=0") no-repeat center;
    background-size: cover;
		transition: all 0.3s;
}

.section-products #product-2 .part-1::before {
    background: url("https://th.bing.com/th/id/OIP.7_N0MEdiDOXczmWGEQeNWAHaHa?pid=ImgDet&w=207&h=207&c=7&dpr=1.3") no-repeat center;
    background-size: cover;
}

.section-products #product-3 .part-1::before {
    background: url("https://th.bing.com/th/id/OIP.rPIcmBzgMAzdoomFbReCyQHaE3?pid=ImgDet&w=1300&h=853&rs=1") no-repeat center;
    background-size: cover;
}

.section-products #product-4 .part-1::before {
    background: url("https://th.bing.com/th/id/OIP.uYmZwbItUgxfyT-8eewASQHaHa?pid=ImgDet&w=207&h=207&c=7&dpr=1.3") no-repeat center;
    background-size: cover;
}
.section-products #product-5 .part-1::before {
    background: url("https://i5.walmartimages.com/asr/e0c7212e-6155-4f99-9bcf-b1b0f1a8dfe5_1.82d231dc8a04875bb766357080fa890e.jpeg") no-repeat center;
    background-size: cover;
}
.section-products #product-6 .part-1::before {
    background: url("https://th.bing.com/th/id/OIP.7AuVVV7P3Rz_U673Qnzr9QAAAA?pid=ImgDet&w=207&h=207&c=7&dpr=1.3") no-repeat center;
    background-size: cover;
}

.section-products #product-7 .part-1::before {
    background: url("https://5.imimg.com/data5/DD/UW/PG/SELLER-58322640/rubber-car-bumper-protector-guard-with-double-chrome-strip-for-car-4pcs-black-for-all-car--500x500.JPG") no-repeat center;
    background-size: cover;
}
.section-products #product-8 .part-1::before {
    background: url("https://gadgetal.com/wp-content/uploads/2017/07/best-car-gadgets.jpg") no-repeat center;
    background-size: cover;
}



.section-products .single-product .part-1 .discount,
.section-products .single-product .part-1 .new {
    position: absolute;
    top: 15px;
    left: 20px;
    color: #ffffff;
    background-color: #fe302f;
    padding: 2px 8px;
    text-transform: uppercase;
    font-size: 0.85rem;
}

.section-products .single-product .part-1 .new {
    left: 0;
    background-color: #444444;
}

.section-products .single-product .part-1 ul {
    position: absolute;
    bottom: -41px;
    left: 20px;
    margin: 0;
    padding: 0;
    list-style: none;
    opacity: 0;
    transition: bottom 0.5s, opacity 0.5s;
}

.section-products .single-product:hover .part-1 ul {
    bottom: 30px;
    opacity: 1;
}

.section-products .single-product .part-1 ul li {
    display: inline-block;
    margin-right: 4px;
}

.section-products .single-product .part-1 ul li a {
    display: inline-block;
    width: 40px;
    height: 40px;
    line-height: 40px;
    background-color: #ffffff;
    color: #444444;
    text-align: center;
    box-shadow: 0 2px 20px rgb(50 50 50 / 10%);
    transition: color 0.2s;
}

.section-products .single-product .part-1 ul li a:hover {
    color: #fe302f;
}

.section-products .single-product .part-2 .product-title {
    font-size: 1rem;
}

.section-products .single-product .part-2 h4 {
    display: inline-block;
    font-size: 1rem;
}

.section-products .single-product .part-2 .product-old-price {
    position: relative;
    padding: 0 7px;
    margin-right: 2px;
    opacity: 0.6;
}

.section-products .single-product .part-2 .product-old-price::after {
    position: absolute;
    content: "";
    top: 50%;
    left: 0;
    width: 100%;
    height: 1px;
    background-color: #444444;
    transform: translateY(-50%);
}
#Button8{
	border-radius:18px;
}
	</style>
   <section class="section-products">
		<div class="container">
				<div class="row justify-content-center text-center">
						<div class="col-md-8 col-lg-6">
								<div class="header">
										<h3>Featured Product</h3>
										<h2>Popular Products</h2>
								</div>
						</div>
				</div>
				<div class="row">
						<!-- Single Product -->
						<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-1" class="single-product">
										<div class="part-1">
												<ul>
														<li><a href="https://www.bing.com/images/search?view=detailV2&ccid=OT7CLqDU&id=3077B377155CC1C9729C285A2E3F6C7DCD3469C2&thid=OIP.OT7CLqDUPuE5BUl-gIfumgHaHa&mediaurl=https%3A%2F%2Fauviras.lt%2F41455210-thickbox_default%2Fdotz-ds-ac-ocps8bp45.jpg&exph=800&expw=800&q=alloy&simid=607986431298331258&form=IRPRST&ck=0007983A28952D99B363501F533E459C&selectedindex=19&ajaxhist=0&ajaxserp=0&vt=2"><i class="fas fa-shopping-cart"></i></a></li>
														<li><a href="~/acalloy.jpeg"><i class="fas fa-heart"></i></a></li>
														<li><a href="#"><i class="fas fa-plus"></i></a></li>
														<li><a href="#"><i class="fas fa-expand"></i></a></li>
												</ul>

										</div>
										<div class="part-2">
												<h3 class="product-title">AMG ALLOY</h3>
												<h4 class="product-old-price">Rs.32000</h4>
											<h4 class="product-price">Rs.27000</h4><br>

                                            <asp:Button ID="Button1" runat="server" Text="BUY NOW" BackColor="#FF6600" />
										</div>
								</div>
						</div>
						<!-- Single Product -->
						<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-2" class="single-product">
										<div class="part-1">
												<span class="discount">15% off</span>
												<ul>
														<li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
														<li><a href="#"><i class="fas fa-heart"></i></a></li>
														<li><a href="#"><i class="fas fa-plus"></i></a></li>
														<li><a href="#"><i class="fas fa-expand"></i></a></li>
												</ul>
										</div>
										<div class="part-2">
												<h3 class="product-title">PHONE HOLDER</h3>
												<h4 class="product-price">Rs.700</h4><br>
											 <asp:Button ID="Button2" runat="server" Text="BUY NOW" BackColor="#FF6600" />
										</div>
								</div>
						</div>
						<!-- Single Product -->
						<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-3" class="single-product">
										<div class="part-1">
												<ul>
														<li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
														<li><a href="#"><i class="fas fa-heart"></i></a></li>
														<li><a href="#"><i class="fas fa-plus"></i></a></li>
														<li><a href="#"><i class="fas fa-expand"></i></a></li>
												</ul>
										</div>
										<div class="part-2">
												<h3 class="product-title">SEAT COVER</h3>
												<h4 class="product-old-price">Rs.12000</h4>
												<h4 class="product-price">Rs.8000</h4><br>
											 <asp:Button ID="Button3" runat="server" Text="BUY NOW" BackColor="#FF6600" />
										</div>
								</div>
						</div>
						<!-- Single Product -->
						<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-4" class="single-product">
										<div class="part-1">
												<span class="new">new</span>
												<ul>
														<li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
														<li><a href="#"><i class="fas fa-heart"></i></a></li>
														<li><a href="#"><i class="fas fa-plus"></i></a></li>
														<li><a href="#"><i class="fas fa-expand"></i></a></li>
												</ul>
										</div>
										<div class="part-2">
												<h3 class="product-title">DASHCAM</h3>
												<h4 class="product-price">Rs.4500</h4><br>
											 <asp:Button ID="Button4" runat="server" Text="BUY NOW" BackColor="#FF6600" />
										</div>
								</div>
						</div>
						<!-- Single Product -->
						<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-5" class="single-product">
										<div class="part-1">
												<ul>
														<li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
														<li><a href="#"><i class="fas fa-heart"></i></a></li>
														<li><a href="#"><i class="fas fa-plus"></i></a></li>
														<li><a href="#"><i class="fas fa-expand"></i></a></li>
												</ul>
										</div>
										<div class="part-2">
												<h3 class="product-title">FLOOR MAT(7D)</h3>
												<h4 class="product-old-price">Rs.8000</h4>
												<h4 class="product-price">Rs.5000</h4><br>
											 <asp:Button ID="Button5" runat="server" Text="BUY NOW" BackColor="#FF6600" />
										</div>
								</div>
						</div>
						<!-- Single Product -->
						<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-6" class="single-product">
										<div class="part-1">
												<span class="discount">15% off</span>
												<ul>
														<li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
														<li><a href="#"><i class="fas fa-heart"></i></a></li>
														<li><a href="#"><i class="fas fa-plus"></i></a></li>
														<li><a href="#"><i class="fas fa-expand"></i></a></li>
												</ul>
										</div>
										<div class="part-2">
												<h3 class="product-title">ATMOSPHERE LIGHT</h3>
												<h4 class="product-price">Rs.900</h4><br>
											 <asp:Button ID="Button6" runat="server" Text="BUY NOW" BackColor="#FF6600" />
										</div>
								</div>
						</div>
						<!-- Single Product -->
						<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-7" class="single-product">
										<div class="part-1">
												<ul>
														<li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
														<li><a href="#"><i class="fas fa-heart"></i></a></li>
														<li><a href="#"><i class="fas fa-plus"></i></a></li>
														<li><a href="#"><i class="fas fa-expand"></i></a></li>
												</ul>
										</div>
										<div class="part-2">
												<h3 class="product-title">BUMPER GUARD</h3>
												<h4 class="product-old-price">Rs.1200</h4>
												<h4 class="product-price">Rs.750</h4><br>
											 <asp:Button ID="Button7" runat="server" Text="BUY NOW" BackColor="#FF6600" />
										</div>
								</div>
						</div>
						<!-- Single Product -->
						<div class="col-md-6 col-lg-4 col-xl-3">
								<div id="product-8" class="single-product">
										<div class="part-1">
												<span class="new">new</span>
												<ul>
														<li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
														<li><a href="#"><i class="fas fa-heart"></i></a></li>
														<li><a href="#"><i class="fas fa-plus"></i></a></li>
														<li><a href="#"><i class="fas fa-expand"></i></a></li>
												</ul>
										</div>
										<div class="part-2">
												<h3 class="product-title">HEAD'S UP DISPLAY</h3>
												<h4 class="product-price">Rs.11000</h4><br>
											 <asp:Button ID="Button8" runat="server" Text="BUY NOW" BackColor="#FF6600" BorderStyle="Ridge" />
										</div>
								</div>
						</div>
				</div>
		</div>
</section>
  </asp:Content>

    
