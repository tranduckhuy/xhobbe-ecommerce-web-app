<%-- 
    Document   : index.jsp
    Created on : Nov 16, 2023, 5:54:25 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/admin/header.jsp" %>

<section class="section">
    <div class="container-fluid">
        <!-- ========== title-wrapper start ========== -->
        <div class="title-wrapper pt-30">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="title">
                        <h2>eCommerce Dashboard</h2>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="#0">Dashboard</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    eCommerce
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- ========== title-wrapper end ========== -->
        <div class="row">
            <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="icon-card mb-30">
                    <div class="icon purple">
                        <i class="lni lni-cart-full"></i>
                    </div>
                    <div class="content">
                        <h6 class="mb-10">New Orders</h6>
                        <h3 class="text-bold mb-10">${totalOrders != null ? totalOrders : 0}</h3>
                        <p class="text-sm text-success">
                            <i class="lni lni-arrow-up"></i> +2.00%
                            <span class="text-gray">(30 days)</span>
                        </p>
                    </div>
                </div>
                <!-- End Icon Cart -->
            </div>
            <!-- End Col -->
            <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="icon-card mb-30">
                    <div class="icon success">
                        <i class="lni lni-dollar"></i>
                    </div>
                    <div class="content">
                        <h6 class="mb-10">Total Income</h6>
                        <h3 class="text-bold mb-10">$${totalIncome.get(0) != null ? totalIncome.get(0) : 0}</h3>
                        <p class="text-sm text-success">
                            <i class="lni lni-arrow-up"></i> +5.45%
                            <span class="text-gray">Increased</span>
                        </p>
                    </div>
                </div>
                <!-- End Icon Cart -->
            </div>
            <!-- End Col -->
            <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="icon-card mb-30">
                    <div class="icon primary">
                        <i class="lni lni-credit-cards"></i>
                    </div>
                    <div class="content">
                        <h6 class="mb-10">Total Expense</h6>
                        <h3 class="text-bold mb-10">$24,567</h3>
                        <p class="text-sm text-danger">
                            <i class="lni lni-arrow-down"></i> -2.00%
                            <span class="text-gray">Expense</span>
                        </p>
                    </div>
                </div>
                <!-- End Icon Cart -->
            </div>
            <!-- End Col -->
            <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="icon-card mb-30">
                    <div class="icon orange">
                        <i class="lni lni-user"></i>
                    </div>
                    <div class="content">
                        <h6 class="mb-10">Total User</h6>
                        <h3 class="text-bold mb-10">${totalUsers != null ? totalUsers : 0}</h3>
                        <p class="text-sm text-danger">
                            <i class="lni lni-arrow-down"></i> -25.00%
                            <span class="text-gray"> Earning</span>
                        </p>
                    </div>
                </div>
                <!-- End Icon Cart -->
            </div>
            <!-- End Col -->
        </div>
        <!-- End Row -->
        <div class="row">
            <div class="col-lg-7">
                <div class="card-style mb-30">
                    <div class="title d-flex flex-wrap justify-content-between">
                        <div class="left">
                            <h6 class="text-medium mb-10">Total Income this year</h6>
                            <h3 class="text-bold">$${totalIncomeThisYear}</h3>
                        </div>
                        <div class="right">
                            <div class="select-style-1">
                                <div class="select-position select-sm">
                                    <select class="light-bg">
                                        <option value="">Yearly</option>
                                    </select>
                                </div>
                            </div>
                            <!-- end select -->
                        </div>
                    </div>
                    <!-- End Title -->
                    <div class="chart">
                        <canvas id="Chart1" style="width: 100%; height: 400px; margin-left: -35px;"></canvas>
                    </div>
                    <!-- End Chart -->
                </div>
            </div>
            <!-- End Col -->
            <div class="col-lg-5">
                <div class="card-style calendar-card mb-30">
                    <div id="calendar-mini"></div>
                </div>
            </div>
            <!-- End Col -->
        </div>
        <!-- End Row -->
    </div>
    <!-- end container -->
</section>
<!-- ========== section end ========== -->
<script src="<c:url value='/template/admin/assets/js/fullcalendar.js'/>"></script>
<script src="<c:url value='/template/admin/assets/js/Chart.min.js'/>"></script>
<script>

    // ====== calendar activation
    document.addEventListener("DOMContentLoaded", function () {
        var calendarMiniEl = document.getElementById("calendar-mini");
        var calendarMini = new FullCalendar.Calendar(calendarMiniEl, {
            initialView: "dayGridMonth",
            headerToolbar: {
                end: "today prev,next"
            }
        });
        calendarMini.render();
    });

    // =========== chart one start
    const ctx1 = document.getElementById("Chart1").getContext("2d");
    const chart1 = new Chart(ctx1, {
        type: "line",
        data: {
            labels: [
                "Jan",
                "Fab",
                "Mar",
                "Apr",
                "May",
                "Jun",
                "Jul",
                "Aug",
                "Sep",
                "Oct",
                "Nov",
                "Dec"
            ],
            datasets: [
                {
                    label: "",
                    backgroundColor: "transparent",
                    borderColor: "#365CF5",
                    data: [
                        <c:forEach var="income" items="${totalIncomeEachMonth}">
                            ${income},                  
                        </c:forEach>
                    ],
                    pointBackgroundColor: "transparent",
                    pointHoverBackgroundColor: "#365CF5",
                    pointBorderColor: "transparent",
                    pointHoverBorderColor: "#fff",
                    pointHoverBorderWidth: 5,
                    borderWidth: 5,
                    pointRadius: 8,
                    pointHoverRadius: 8,
                    cubicInterpolationMode: "monotone" // Add this line for curved line
                }
            ]
        },
        options: {
            plugins: {
                tooltip: {
                    callbacks: {
                        labelColor: function (context) {
                            return {
                                backgroundColor: "#ffffff",
                                color: "#171717"
                            };
                        }
                    },
                    intersect: false,
                    backgroundColor: "#f9f9f9",
                    title: {
                        fontFamily: "Plus Jakarta Sans",
                        color: "#8F92A1",
                        fontSize: 12
                    },
                    body: {
                        fontFamily: "Plus Jakarta Sans",
                        color: "#171717",
                        fontStyle: "bold",
                        fontSize: 16
                    },
                    multiKeyBackground: "transparent",
                    displayColors: false,
                    padding: {
                        x: 30,
                        y: 10
                    },
                    bodyAlign: "center",
                    titleAlign: "center",
                    titleColor: "#8F92A1",
                    bodyColor: "#171717",
                    bodyFont: {
                        family: "Plus Jakarta Sans",
                        size: "16",
                        weight: "bold"
                    }
                },
                legend: {
                    display: false
                }
            },
            responsive: true,
            maintainAspectRatio: false,
            title: {
                display: false
            },
            scales: {
                y: {
                    grid: {
                        display: false,
                        drawTicks: false,
                        drawBorder: false
                    },
                    ticks: {
                        padding: 35,
                        max: 1200,
                        min: 500
                    }
                },
                x: {
                    grid: {
                        drawBorder: false,
                        color: "rgba(143, 146, 161, .1)",
                        zeroLineColor: "rgba(143, 146, 161, .1)"
                    },
                    ticks: {
                        padding: 20
                    }
                }
            }
        }
    });
    // =========== chart one end

</script>

<%@include file="/common/admin/footer.jsp" %>