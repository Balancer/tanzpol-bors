		<!-- start main content top -->
		<div class="content_top">
			<div class="row">
			 <!-- start content top latest slider -->
			<div class="col-lg-6 col-md-6 col-sm6">
				<div class="latest_slider">
				 <!-- Set up your HTML -->
				<div class="slick_slider">
{foreach $big_pics as $x}
					<div class="single_iteam">
					<img src="{$x.thumbnail_url}" alt="img">
					<h2><a class="slider_tittle" href="{$x.url}">{$x.topic_title}</a></h2>
					</div>
{/foreach}
				</div>
				</div>
			</div> <!-- End content top latest slider -->

			<div class="col-lg-6 col-md-6 col-sm6">
				<div class="content_top_right">
				<ul class="featured_nav wow fadeInDown">
{foreach $top_news as $x}
					<li>
					<img src="{$x.thumbnail_url}" alt="img">
					<div class="title_caption">
						<a href="{$x.url}">
						{$x.topic_title}
						</a>
					</div>
					</li>
{/foreach}
				</ul>
				</div>
			</div>
			</div>
		</div><!-- End main content top -->
		<!-- start main content Middle -->
		<div class="content_middle">
			<div class="col-lg-3 col-md-3 col-sm-3">
			<div class="content_middle_leftbar">
				<div class="single_category wow fadeInDown">
				<h2>
					<span class="bold_line"><span></span></span>
					<span class="solid_line"></span>
					<a href="category-archive.html" class="title_text">Флот</a>
				</h2>
				<ul class="catg1_nav">
{foreach $navy_news as $x}
					<li>
					<div class="catgimg_container">
						<a href="{$x.url}" class="catg1_img">
						<img alt="img" src="{$x.thumbnail_url}">
						</a>
					</div>
					<h3 class="post_titile"><a href="{$x.url}">{$x.topic_title}</a></h3>
					<div class="snip limit limit-2">{$x.snip}</div>
					</li>
{/foreach}
				</ul>
				</div>
			</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6">
			<div class="content_middle_middle">
				<div class="slick_slider2">
{foreach $big_pics_mid as $x}
				<div class="single_featured_slide">
					<a href="{$x.url}"><img src="{$x.thumbnail_url}" alt="img"></a>
					<h2><a href="{$x.url}">{$x.topic_title}</a></h2>
					<p>{$x.snip}</p>
				</div>
{/foreach}
				</div>
			</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3">
			<div class="content_middle_rightbar">
				<div class="single_category wow fadeInDown">
					<h2>
					<span class="bold_line"><span></span></span>
					<span class="solid_line"></span>
					<a href="category-archive.html" class="title_text">Авиация</a>
					</h2>
					<ul class="catg1_nav">
{foreach $avia_news as $x}
					<li>
						<div class="catgimg_container">
							<a href="{$x.url}" class="catg1_img">
								<img alt="img" src="{$x.thumbnail_url}">
							</a>
						</div>
						<h3 class="post_titile"><a href="{$x.url}">{$x.topic_title}</a></h3>
						<div class="snip limit limit-2">{$x.snip}</div>
					</li>
{/foreach}
					</ul>
				</div>
				</div>
			</div>
			</div><!-- End main content middle -->
			<!-- start main content bottom -->
			<div class="content_bottom">
			<div class="col-lg-8 col-md-8">
			<!-- start content bottom left -->
				<div class="content_bottom_left">
				<!-- start business category -->
				<div class="single_category wow fadeInDown">
					<h2>
					<span class="bold_line"><span></span></span>
					<span class="solid_line"></span>
					<a class="title_text" href="category-archive.html">Россия</a>
					</h2>
					<div class="business_category_left wow fadeInDown">
					<ul class="fashion_catgnav">
						<li>
						<div class="catgimg2_container">
							<a href="{$russia_news1.url}"><img alt="img" src="{$russia_news1.thumbnail_url}"></a>
						</div>
						<h2 class="catg_titile"><a href="{$russia_news1.url}">{$russia_news1.topic_title}</a></h2>
						<div class="comments_box">
							<span class="meta_date">{$russia_news1.create_time|date:'d.m.Y H:i'}</span>
							<span class="meta_comment"><a href="#">No Comments</a></span>
							<span class="meta_more"><a	href="{$russia_news1.url}">Читать дальше...</a></span>
						</div>
						<p>{$russia_news1.snip}</p>
						</li>
					</ul>
					</div>	
					<div class="business_category_right wow fadeInDown">
					<ul class="small_catg">
{foreach $russian_news as $x}
						<li>
						<div class="media wow fadeInDown">
							<a class="media-left" href="{$x.url}">
							<img src="{$x.thumbnail_url}" alt="img">
							</a>
							<div class="media-body">
							<h4 class="media-heading"><a href="{$x.url}">{$x.topic_title}</a></h4> 
							<div class="snip limit limit-2">{$x.snip}</div>
							<div class="comments_box">
								<span class="meta_date">{$x.create_time|date:'d.m.Y'}</span>
								<span class="meta_comment"><a href="#">No Comments</a></span>
							</div>
							</div>
						</div>
						</li>
{/foreach}
					</ul>
					</div>
				</div>
				<!-- End business category -->

				<!-- start games & fashion category -->
				<div class="games_fashion_area">
				<!-- start games category -->
					<div class="games_category">
					<div class="single_category">
						<h2>
						<span class="bold_line"><span></span></span>
						<span class="solid_line"></span>
						<a class="title_text" href="category-archive.html">Украина</a>
						</h2>
						<ul class="fashion_catgnav wow fadeInDown">
						<li>
							<div class="catgimg2_container">
							<a href="{$ua_news1.url}"><img alt="img" src="{$ua_news1.thumbnail_url}"></a>
							</div>
							<h2 class="catg_titile"><a href="{$ua_news1.url}">{$ua_news1.topic_title}</a></h2>
							<div class="comments_box">
							<span class="meta_date">{$ua_news1.create_time|date:'d.m.Y H:i'}</span>
							<span class="meta_comment"><a href="#">No Comments</a></span>
							<span class="meta_more"><a	href="#">Read More...</a></span>
							</div>
							<p>{$ua_news1.snip}</p>
						</li>
						</ul>
						<ul class="small_catg wow fadeInDown">
{foreach $ua_news as $x}
						<li>
							<div class="media">
							<a class="media-left" href="{$x.url}">
								<img src="{$x.thumbnail_url}" alt="img">
							</a>
							<div class="media-body">
								<h4 class="media-heading"><a href="{$x.url}">{$x.topic_title}</a></h4>
								<div class="snip limit limit-3">{$x.snip}</div>
								<div class="comments_box">
								<span class="meta_date">{$x.create_time|date:'d.m.Y H:i'}</span>
								<span class="meta_comment"><a href="#">No Comments</a></span>
								</div>
							</div>
							</div>
						</li>
{/foreach}
						</ul>
					</div>
					</div>
					<!-- End games category -->
					<!-- start fashion category -->
					<div class="fashion_category">
					<div class="single_category">
						<div class="single_category wow fadeInDown">
						<h2>
							<span class="bold_line"><span></span></span>
							<span class="solid_line"></span>
							<a class="title_text" href="category-archive.html">Происшествия</a>
						</h2>
						<ul class="fashion_catgnav wow fadeInDown">
							<li>
							<div class="catgimg2_container">
								<a href="{$event_news1.url}"><img alt="img" src="{$event_news1.thumbnail_url}"></a>
							</div>
							<h2 class="catg_titile"><a href="{$event_news1.url}">{$event_news1.topic_title}</a></h2>
							<div class="comments_box">
								<span class="meta_date">{$event_news1.create_time|date:'d.m.Y H:i'}</span>
								<span class="meta_comment"><a href="#">No Comments</a></span>
								<span class="meta_more"><a	href="{$event_news1.url}">Read More...</a></span>
							</div>
							<p>{$event_news1.snip}</p>
							</li>
						</ul>
						<ul class="small_catg wow fadeInDown">
{foreach $event_news as $x}
							<li>
							<div class="media wow fadeInDown">
								<a class="media-left" href="{$x.url}">
								<img src="{$x.thumbnail_url}" alt="img">
								</a>
								<div class="media-body">
								<h4 class="media-heading"><a href="{$x.url}">{$x.topic_title}</a></h4> 
								<div class="snip limit limit-3">{$x.snip}</div>
								<div class="comments_box">
									<span class="meta_date">{$x.create_time|date:'d.m.Y H:i'}</span>
									<span class="meta_comment"><a href="{$x.url}">No Comment</a></span>
								</div>
								</div>
							</div>
							</li>
{/foreach}
						</ul>
						</div>
					</div>
					</div><!-- End fashion category -->
				</div><!-- End games & fashion category --> 
				<!-- start technology category area -->
				<div class="technology_catrarea">
					<div class="single_category">
					<h2>
						<span class="bold_line"><span></span></span>
						<span class="solid_line"></span>
						<a class="title_text" href="#">Социум</a>
					</h2>
					<div class="business_category_left">
						<ul class="fashion_catgnav wow fadeInDown">
						<li>
							<div class="catgimg2_container">
							<a href="{$social_news1.url}"><img alt="img" src="{$social_news1.thumbnail_url}"></a>
							</div>
							<h2 class="catg_titile"><a href="{$social_news1.url}">{$social_news1.topic_title}</a></h2>
							<div class="comments_box">
							<span class="meta_date">{$social_news1.create_time|date:'d.m.Y H:i'}</span>
							<span class="meta_comment"><a href="#">No Comments</a></span>
							<span class="meta_more"><a	href="{$social_news1.url}">Read More...</a></span>
							</div>
							<p>{$social_news1.snip}</p>
						</li>
						</ul>
					</div>	
					<div class="business_category_right">
						<ul class="small_catg wow fadeInDown">
{foreach $social_news as $x}
						<li>
							<div class="media wow fadeInDown">
							<a class="media-left" href="{$x.url}">
								<img src="{$x.thumbnail_url}" alt="img">
							</a>
							<div class="media-body">
								<h4 class="media-heading"><a href="{$x.url}">{$x.topic_title}</a></h4>
								<div class="snip limit limit-3">{$x.snip}</div>
								<div class="comments_box">
								<span class="meta_date">{$x.create_time|date:'d.m.Y H:i'}</span>
								<span class="meta_comment"><a href="#">No Comments</a></span>
								</div>
							</div>
							</div>
						</li>
{/foreach}
						</ul>
					</div>	
					</div>
				</div><!-- End technology category area -->
				</div><!--End content_bottom_left-->
			</div>
			<!-- start content bottom right -->
			<div class="col-lg-4 col-md-4">
				<div class="content_bottom_right">
				<!-- start single bottom rightbar -->
				<div class="single_bottom_rightbar">
{$this->layout()->mod('recentposts', [news=>$latest_news])}
				</div> <!-- End single bottom rightbar -->
				<!-- start single bottom rightbar -->
				<div class="single_bottom_rightbar">
					<ul role="tablist" class="nav nav-tabs custom-tabs">
					<li class="active" role="presentation"><a data-toggle="tab" role="tab" aria-controls="home" href="#mostPopular">Популярные темы</a></li>
					<li role="presentation"><a data-toggle="tab" role="tab" aria-controls="messages" href="#recentComent">Последние ответы</a></li>
					</ul>
					<div class="tab-content">
					<div id="mostPopular" class="tab-pane fade in active" role="tabpanel">
					<ul class="small_catg popular_catg wow fadeInDown">
{foreach $most_popular_topics as $t}
						<li>
						<div class="media wow fadeInDown">
							<a class="media-left" href="{$t.url}">
							<img src="{$t.thumb}" alt="img">
							</a>
							<div class="media-body">
							<h4 class="media-heading"><a href="{$t.url}">{$t.title}</a></h4>
							<p>{$t.snip}</p>
							</div>
						</div>
						</li>
{/foreach}
					</ul>
					</div>
					<div id="recentComent" class="tab-pane fade" role="tabpanel">
					 <ul class="small_catg popular_catg">
{foreach $recent_comments as $p}
						<li>
						<div class="media wow fadeInDown">
							<a class="media-left" href="{$p.url}">
							<img src="{$p.thumb}" alt="img">
							</a>
							<div class="media-body">
							<h4 class="media-heading"><a href="{$p.url}">{$p.title}</a></h4>
							<p>{$p.snip}</p>
							</div>
						</div>
						</li>
{/foreach}
					</ul>
					</div>
				</div>
				</div> <!-- End single bottom rightbar -->
{*
				<div class="single_bottom_rightbar">
					<h2>Blog Archive</h2>
					<div class="blog_archive wow fadeInDown">
						<form>
							 <select>
								<option value="">Blog Archive</option>
								<option value="">October(20)</option>
							 </select>
						</form>
				 	</div>
				</div>
				<div class="single_bottom_rightbar wow fadeInDown">
					<h2>Popular Lnks</h2>
					<ul>
						<li><a href="#">Blog</a></li>
						<li><a href="#">Blog Home</a></li>
						<li><a href="#">Error Page</a></li>
						<li><a href="#">Social link</a></li>
						<li><a href="#">Login</a></li>
					</ul>
				</div>
*}
			</div>
			</div>
			<!-- start content bottom right -->
		</div><!-- end main content bottom -->
