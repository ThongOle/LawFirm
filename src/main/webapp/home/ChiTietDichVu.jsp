<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Start Hero Area -->
    <div class="hero-area">
    	<div class="page-header text-align-center" style="background-image:url(images/bg_map.jpg);">
        	<div class="container">
            	<h1>Dịch vụ</h1>
                <ol class="breadcrumb">
                    <li><a href="trangChu">Trang chủ</a></li>
                    <li><a href="dsDichVu">Dịch vụ</a></li>
                </ol>
            </div>
        </div>
    </div>
    <!-- Main Content -->
    <div id="main-container">
    	<div class="content">
        	<div class="container">
            	<div class="row">
                	<div class="col-lg-12 col-md-12">
                        <div class="blog-grid-item">
                            <img style="width: 100%" src="../images/${objBaiViet.avatar}" alt="">
                            <div class="grid-item-inner">
                                <div class="post-item-meta">
                                    <i class="fa fa-clock-o"></i> <s:property value="objBaiViet.ngayTao"/>
                                </div>
                                <h2>${objBaiViet.tieuDe }</h2>
                               
                                <p>${objBaiViet.noiDung }</p>
                                <div class="spacer-30"></div>
                            </div>
                        </div>
                        <!-- NEXT PREVIOUS POSTS -->
                        <section class="next-prev-post">
                        	<a href="" class="pull-left equalize">
                            	<span class="meta-data">Previous Post</span>
                            	<img src="http://placehold.it/200x200&amp;text=IMAGE+PLACEHOLDER" alt="">
                                <h5>Government softens plan to criminalise unwitting offshore tax evasion</h5>
                            </a>
                        	<a href="" class="pull-right equalize">
                            	<span class="meta-data">Next Post</span>
                            	<img src="http://placehold.it/200x200&amp;text=IMAGE+PLACEHOLDER" alt="">
                                <h5>Sed gravida imperdiet leo, ac mollis urna venenatis sit amet</h5>
                            </a>
                        </section>
                        <!-- COMMENTS LIST -->
                        <section class="post-comments" id="comments">
              				<h3 class="widgettitle">Comments (5)</h3>
              				<ol class="comments">
                				<li>
                  					<div class="post-comment-block">
                    					<img src="http://placehold.it/100x100&amp;text=IMAGE+PLACEHOLDER" alt="avatar" class="img-thumbnail">
                                        <div class="post-comment-content">
                                            <a href="#" class="btn btn-default btn-xs pull-right">Reply</a>
                                            <h5>Robin Schmidt <span>says</span></h5>
                                            <span class="meta-data">Nov 23, 2013 at 7:58 pm</span>
                                            <p>There have been human health concerns associated with the consumption of dolphin meat in Japan after tests showed that dolphin meat contained high levels of mercury.</p>
                                      	</div>
                  					</div>
                				</li>
                				<li>
                                    <div class="post-comment-block">
                    					<img src="http://placehold.it/100x100&amp;text=IMAGE+PLACEHOLDER" alt="avatar" class="img-thumbnail">
                                        <div class="post-comment-content">
                                            <a href="#" class="btn btn-default btn-xs pull-right">Reply</a>
                                            <h5>Emma Paquette <span>says</span></h5>
                                            <span class="meta-data">Nov 23, 2013 at 7:58 pm</span>
                                            <p>Nicely said :)</p>
                                      	</div>
                                    </div>
                                    <ul>
                                        <li>
                                            <div class="post-comment-block">
                    							<img src="http://placehold.it/100x100&amp;text=IMAGE+PLACEHOLDER" alt="avatar" class="img-thumbnail">
                                                <div class="post-comment-content">
                                                    <a href="#" class="btn btn-default btn-xs pull-right">Reply</a>
                                                    <h5>Robin Schmidt <span>says</span></h5>
                                                    <span class="meta-data">Nov 23, 2013 at 7:58 pm</span>
                                                    <p>Étienne de Flacourt (1607-60), French governor of Madagascar, described eating unborn dolphin calves cut out of the womb of a caught dolphin cow in Histoire de la grande isle Madagascar (1661). He considered the meat more tender and delicate than veal and believed it to be among the best meats he had eaten.</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="post-comment-block">
                    							<img src="http://placehold.it/100x100&amp;text=IMAGE+PLACEHOLDER" alt="avatar" class="img-thumbnail">
                                                <div class="post-comment-content">
                                                    <a href="#" class="btn btn-default btn-xs pull-right">Reply</a>
                                                    <h5>Robin Schmidt <span>says</span></h5>
                                                    <span class="meta-data">Nov 23, 2013 at 7:58 pm</span>
                                                    <p>Real post, i love reading it all through</p>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <div class="post-comment-block">
                    					<img src="http://placehold.it/100x100&amp;text=IMAGE+PLACEHOLDER" alt="avatar" class="img-thumbnail">
                                        <div class="post-comment-content">
                                            <a href="#" class="btn btn-default btn-xs pull-right">Reply</a>
                                            <h5>Emma Paquette <span>says</span></h5>
                                            <span class="meta-data">Nov 23, 2013 at 7:58 pm</span>
                                            <p>Dolphin meat is consumed in a small number of countries world-wide, which include Japan[125] and Peru (where it is referred to as chancho marino, or "sea pork").[126] While Japan may be the best-known and most controversial example, only a very small minority of the population has ever sampled it.</p>
                                      	</div>
                                    </div>
                                </li>
                            </ol>
                        </section>
                        <!-- POST COMMENT FORM -->
                        <section class="post-comment-form">
                            <h3 class="widgettitle">Post a comment</h3>
                            <form lpformnum="24">
                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-md-4 col-sm-4">
                                            <input class="form-control input-lg" placeholder="Your name" type="text">
                                        </div>
                                        <div class="col-md-4 col-sm-4">
                                            <input class="form-control input-lg" placeholder="Your email" type="email">
                                        </div>
                                        <div class="col-md-4 col-sm-4">
                                            <input class="form-control input-lg" placeholder="Website (optional)" type="url">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-md-12">
                                        	<textarea cols="8" rows="4" class="form-control input-lg" placeholder="Your comment"></textarea>
                                    	</div>
                                	</div>
                            	</div>
                            	<div class="row">
                                	<div class="form-group">
                                    	<div class="col-md-12">
                                        	<button type="submit" class="btn btn-primary btn-lg">Submit your comment</button>
                                    	</div>
                                	</div>
                            	</div>
                        	</form>
                    	</section>
                 	</div>
                   
               	</div>
            </div>
        </div>
  	</div>
</body>
</html>