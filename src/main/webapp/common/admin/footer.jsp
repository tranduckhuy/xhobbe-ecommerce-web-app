<%-- 
    Document   : footer
    Created on : Nov 16, 2023, 5:18:24 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>

<!-- ========== footer start =========== -->
<footer class="footer">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 order-last order-md-first">
                <div class="copyright text-center text-md-start">
                    <p class="text-sm">
                        Admin
                        </a>
                    </p>
                </div>
            </div>
            <!-- end col-->
            <div class="col-md-6">
                <div class="terms d-flex justify-content-center justify-content-md-end">
                    <a href="#0" class="text-sm">Term & Conditions</a>
                    <a href="#0" class="text-sm ml-15">Privacy & Policy</a>
                </div>
            </div>
        </div>
        <!-- end row -->
    </div>
    <!-- end container -->
</footer>
<!-- ========== footer end =========== -->
</main>
<!-- ======== main-wrapper end =========== -->

<!-- ========= All Javascript files linkup ======== -->
<script src="<c:url value='/template/admin/assets/js/bootstrap.bundle.min.js'/>"></script>
<script src="<c:url value='/template/admin/assets/js/Chart.min.js'/>"></script>
<script src="<c:url value='/template/admin/assets/js/dynamic-pie-chart.js'/>"></script>
<script src="<c:url value='/template/admin/assets/js/moment.min.js'/>"></script>
<script src="<c:url value='/template/admin/assets/js/fullcalendar.js'/>"></script>
<script src="<c:url value='/template/admin/assets/js/jvectormap.min.js'/>"></script>
<script src="<c:url value='/template/admin/assets/js/world-merc.js'/>"></script>
<script src="<c:url value='/template/admin/assets/js/polyfill.js'/>"></script>
<script src="<c:url value='/template/admin/assets/js/main.js'/>"></script>
<script src="<c:url value='/template/web/assets/js/jquery.min.js'/>"></script>

<script>
    // ======== jvectormap activation
    var markers = [
        {name: "Egypt", coords: [26.8206, 30.8025]},
        {name: "Russia", coords: [61.524, 105.3188]},
        {name: "Canada", coords: [56.1304, -106.3468]},
        {name: "Greenland", coords: [71.7069, -42.6043]},
        {name: "Brazil", coords: [-14.235, -51.9253]}
    ];

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
                        600, 800, 750, 880, 940, 880, 900, 770, 920, 890, 976, 1100
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
</body>
</html>