<%-- 
    Document   : blog
    Created on : Nov 16, 2023, 3:41:53 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/common/web/header.jsp"%>


<main class="main">
    <div class="page-header text-center" style="background-image: url('<c:url value='/template/web/assets/images/page-header-bg.jpg'/>')">
        <div class="container">
            <h1 class="page-title">Blog<span>News & Hot</span></h1>
        </div><!-- End .container -->
    </div><!-- End .page-header -->
    <nav aria-label="breadcrumb" class="breadcrumb-nav mb-2">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/XHobbeWebApp/">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Blog</li>
            </ol>
        </div><!-- End .container -->
    </nav><!-- End .breadcrumb-nav -->

    <div class="page-content">
        <div class="container">
            <nav class="blog-nav">
                <ul class="menu-cat entry-filter justify-content-center">
                    <li class="active"><a href="#" data-filter="*">All Blog Posts<span>9</span></a></li>
                    <li><a href="#" data-filter=".lifestyle">News<span>3</span></a></li>                   
                    <li><a href="#" data-filter=".fashion">Hot<span>5</span></a></li>
                    <li><a href="#" data-filter=".shopping">Sale<span>2</span></a></li>
                    <li><a href="#" data-filter=".hobbies">App<span>3</span></a></li>
                </ul><!-- End .blog-menu -->
            </nav><!-- End .blog-nav -->

            <div class="entry-container" data-layout="fitRows">
                <div class="entry-item lifestyle shopping col-sm-6 col-lg-4">
                    <article class="entry entry-mask">
                        <figure class="entry-media">
                            <a>
                                <img src="<c:url value='/template/web/assets/images/blog/mask/grid/post-1.jpg'/>" alt="image desc">
                            </a>
                        </figure><!-- End .entry-media -->

                        <div class="entry-body">
                            <div class="entry-meta">
                                <a href="#">Nov 28, 2023</a>
                                <span class="meta-separator">|</span>
                                <a href="#">6 Comments</a>
                            </div><!-- End .entry-meta -->

                            <h2 class="entry-title">
                                <a>M2 MacBook Air Gets Speed Boost With This Novel Cooling System.</a>
                            </h2><!-- End .entry-title -->

                            <div class="entry-cats">
                                in <a href="#">News</a>,
                                <a href="#">Hot</a>
                            </div><!-- End .entry-cats -->
                        </div><!-- End .entry-body -->
                    </article><!-- End .entry -->
                </div><!-- End .entry-item -->

                <div class="entry-item lifestyle col-sm-6 col-lg-4">
                    <article class="entry entry-mask">
                        <figure class="entry-media entry-video">
                            <a>
                                <img src="<c:url value='/template/web/assets/images/blog/mask/grid/post-2.jpg'/>" alt="image desc">
                            </a>
                        </figure><!-- End .entry-media -->

                        <div class="entry-body">
                            <div class="entry-meta">
                                <a href="#">Nov 27, 2023</a>
                                <span class="meta-separator">|</span>
                                <a href="#">0 Comments</a>
                            </div><!-- End .entry-meta -->

                            <h2 class="entry-title">
                                <a>5 Reasons to Wait for Next Year's Apple Watch.</a>
                            </h2><!-- End .entry-title -->

                            <div class="entry-cats">
                                in <a href="#">News</a>
                            </div><!-- End .entry-cats -->
                        </div><!-- End .entry-body -->
                    </article><!-- End .entry -->
                </div><!-- End .entry-item -->

                <div class="entry-item lifestyle fashion col-sm-6 col-lg-4">
                    <article class="entry entry-mask">
                        <figure class="entry-media entry-gallery">
                            <a>
                                <img src="<c:url value='/template/web/assets/images/blog/mask/grid/post-3.jpg'/>" alt="image desc">
                            </a>
                        </figure><!-- End .entry-media -->

                        <div class="entry-body">
                            <div class="entry-meta">
                                <a href="#">Nov 21, 2023</a>
                                <span class="meta-separator">|</span>
                                <a href="#">6 Comments</a>
                            </div><!-- End .entry-meta -->

                            <h2 class="entry-title">
                                <a>Apple with iOS 17.1 and watchOS 10.1 introduced a new NameDrop feature.</a>
                            </h2><!-- End .entry-title -->

                            <div class="entry-cats">
                                in <a href="#">Hot</a>
                            </div><!-- End .entry-cats -->
                        </div><!-- End .entry-body -->
                    </article><!-- End .entry -->
                </div><!-- End .entry-item -->

                <div class="entry-item travel col-sm-6 col-lg-4">
                    <article class="entry entry-mask">
                        <figure class="entry-media">
                            <a>
                                <img src="<c:url value='/template/web/assets/images/blog/mask/grid/post-4.jpg'/>" alt="image desc">
                            </a>
                        </figure><!-- End .entry-media -->

                        <div class="entry-body">
                            <div class="entry-meta">
                                <a href="#">Nov 24, 2023</a>
                                <span class="meta-separator">|</span>
                                <a href="#">4 Comments</a>
                            </div><!-- End .entry-meta -->

                            <h2 class="entry-title">
                                <a>iOS 17.1.2 Update for iPhone Likely to Be Released This Week.</a>
                            </h2><!-- End .entry-title -->

                            <div class="entry-cats">
                                in <a href="#">News</a>,
                                <a href="#">Hot</a>
                            </div><!-- End .entry-cats -->
                        </div><!-- End .entry-body -->
                    </article><!-- End .entry -->
                </div><!-- End .entry-item -->

                <div class="entry-item travel hobbies col-sm-6 col-lg-4">
                    <article class="entry entry-mask">
                        <figure class="entry-media">
                            <a>
                                <img src="<c:url value='/template/web/assets/images/blog/mask/grid/post-5.jpg'/>" alt="image desc">
                            </a>
                        </figure><!-- End .entry-media -->

                        <div class="entry-body">
                            <div class="entry-meta">
                                <a href="#">Nov 27, 2023</a>
                                <span class="meta-separator">|</span>
                                <a href="#">2 Comments</a>
                            </div><!-- End .entry-meta -->

                            <h2 class="entry-title">
                                <a>5 Best Cyber Monday Apple Watch Deals.</a>
                            </h2><!-- End .entry-title -->

                            <div class="entry-cats">
                                in <a href="#">Sale</a>
                            </div><!-- End .entry-cats -->
                        </div><!-- End .entry-body -->
                    </article><!-- End .entry -->
                </div><!-- End .entry-item -->

                <div class="entry-item hobbies col-sm-6 col-lg-4">
                    <article class="entry entry-mask">
                        <figure class="entry-media">
                            <a>
                                <img src="<c:url value='/template/web/assets/images/blog/mask/grid/post-6.jpg'/>" alt="image desc">
                            </a>
                        </figure><!-- End .entry-media -->

                        <div class="entry-body">
                            <div class="entry-meta">
                                <a href="#">Nov 20, 2023</a>
                                <span class="meta-separator">|</span>
                                <a href="#">3 Comments</a>
                            </div><!-- End .entry-meta -->

                            <h2 class="entry-title">
                                <a>Sunbird Shuts Down iMessage App for Android Over Security Concerns.</a>
                            </h2><!-- End .entry-title -->

                            <div class="entry-cats">
                                in <a href="#">App</a>
                            </div><!-- End .entry-cats -->
                        </div><!-- End .entry-body -->
                    </article><!-- End .entry -->
                </div><!-- End .entry-item -->

                <div class="entry-item travel col-sm-6 col-lg-4">
                    <article class="entry entry-mask">
                        <figure class="entry-media entry-gallery">
                            <a>
                                <img src="<c:url value='/template/web/assets/images/blog/mask/grid/post-7.jpg'/>" alt="image desc">
                            </a>
                        </figure><!-- End .entry-media -->

                        <div class="entry-body">
                            <div class="entry-meta">
                                <a href="#">Nov 23, 2023</a>
                                <span class="meta-separator">|</span>
                                <a href="#">6 Comments</a>
                            </div><!-- End .entry-meta -->

                            <h2 class="entry-title">
                                <a>Spotify Trials New Option to Turn Off Personalized Recommendations.</a>
                            </h2><!-- End .entry-title -->

                            <div class="entry-cats">
                                in <a href="#">Hot</a>,
                                in <a href="#">App</a>
                            </div><!-- End .entry-cats -->
                        </div><!-- End .entry-body -->
                    </article><!-- End .entry -->
                </div><!-- End .entry-item -->

                <div class="entry-item fashion col-sm-6 col-lg-4">
                    <article class="entry entry-mask">
                        <figure class="entry-media">
                            <a>
                                <img src="<c:url value='/template/web/assets/images/blog/mask/grid/post-8.jpg'/>" alt="image desc">
                            </a>
                        </figure><!-- End .entry-media -->

                        <div class="entry-body">
                            <div class="entry-meta">
                                <a href="#">Nov 25, 2023</a>
                                <span class="meta-separator">|</span>
                                <a href="#">5 Comments</a>
                            </div><!-- End .entry-meta -->

                            <h2 class="entry-title">
                                <a>ChatGPT iPhone App's Voice Chat Feature Now Free to All Users.</a>
                            </h2><!-- End .entry-title -->

                            <div class="entry-cats">
                                in <a href="#">Hot</a>,
                                <a href="#">App</a>
                            </div><!-- End .entry-cats -->
                        </div><!-- End .entry-body -->
                    </article><!-- End .entry -->
                </div><!-- End .entry-item -->

                <div class="entry-item travel col-sm-6 col-lg-4">
                    <article class="entry entry-mask">
                        <figure class="entry-media">
                            <a>
                                <img src="<c:url value='/template/web/assets/images/blog/mask/grid/post-9.jpg'/>" alt="image desc">
                            </a>
                        </figure><!-- End .entry-media -->

                        <div class="entry-body">
                            <div class="entry-meta">
                                <a href="#">Nov 24, 2023</a>
                                <span class="meta-separator">|</span>
                                <a href="#">1 Comments</a>
                            </div><!-- End .entry-meta -->

                            <h2 class="entry-title">
                                <a>Samsung has expanded its Black Friday sale with new discounts across smartphones, computers,...</a>
                            </h2><!-- End .entry-title -->

                            <div class="entry-cats">
                                in <a href="#">Sale</a>
                            </div><!-- End .entry-cats -->
                        </div><!-- End .entry-body -->
                    </article><!-- End .entry -->
                </div><!-- End .entry-item -->
            </div><!-- End .entry-container -->

            <div class="mb-3"></div><!-- End .mb-3 -->

            <nav aria-label="Page navigation">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                        <a class="page-link page-link-prev" href="#" aria-label="Previous" tabindex="-1" aria-disabled="true">
                            <span aria-hidden="true"><i class="icon-long-arrow-left"></i></span>Prev
                        </a>
                    </li>
                    <li class="page-item active" aria-current="page"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item">
                        <a class="page-link page-link-next" href="#" aria-label="Next">
                            Next <span aria-hidden="true"><i class="icon-long-arrow-right"></i></span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div><!-- End .container -->
    </div><!-- End .page-content -->
</main><!-- End .main -->


<%@ include file="/common/web/footer.jsp"%>