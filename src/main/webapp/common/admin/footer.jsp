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

    // =========== chart two start
    const ctx2 = document.getElementById("Chart2").getContext("2d");
    const chart2 = new Chart(ctx2, {
        type: "bar",
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
                    backgroundColor: "#365CF5",
                    borderRadius: 30,
                    barThickness: 6,
                    maxBarThickness: 8,
                    data: [
                        600, 700, 1000, 700, 650, 800, 690, 740, 720, 1120, 876, 900
                    ]
                }
            ]
        },
        options: {
            plugins: {
                tooltip: {
                    callbacks: {
                        titleColor: function (context) {
                            return "#8F92A1";
                        },
                        label: function (context) {
                            let label = context.dataset.label || "";

                            if (label) {
                                label += ": ";
                            }
                            label += context.parsed.y;
                            return label;
                        }
                    },
                    backgroundColor: "#F3F6F8",
                    titleAlign: "center",
                    bodyAlign: "center",
                    titleFont: {
                        size: 12,
                        weight: "bold",
                        color: "#8F92A1"
                    },
                    bodyFont: {
                        size: 16,
                        weight: "bold",
                        color: "#171717"
                    },
                    displayColors: false,
                    padding: {
                        x: 30,
                        y: 10
                    }
                }
            },
            legend: {
                display: false
            },
            layout: {
                padding: {
                    top: 15,
                    right: 15,
                    bottom: 15,
                    left: 15
                }
            },
            responsive: true,
            maintainAspectRatio: false,
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
                        min: 0
                    }
                },
                x: {
                    grid: {
                        display: false,
                        drawBorder: false,
                        color: "rgba(143, 146, 161, .1)",
                        drawTicks: false,
                        zeroLineColor: "rgba(143, 146, 161, .1)"
                    },
                    ticks: {
                        padding: 20
                    }
                }
            },
            plugins: {
                legend: {
                    display: false
                },
                title: {
                    display: false
                }
            }
        }
    });
    // =========== chart two end

    // =========== chart three start
    const ctx3 = document.getElementById("Chart3").getContext("2d");
    const chart3 = new Chart(ctx3, {
        type: "line",
        data: {
            labels: [
                "Jan",
                "Feb",
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
                    label: "Revenue",
                    backgroundColor: "transparent",
                    borderColor: "#365CF5",
                    data: [80, 120, 110, 100, 130, 150, 115, 145, 140, 130, 160, 210],
                    pointBackgroundColor: "transparent",
                    pointHoverBackgroundColor: "#365CF5",
                    pointBorderColor: "transparent",
                    pointHoverBorderColor: "#365CF5",
                    pointHoverBorderWidth: 3,
                    pointBorderWidth: 5,
                    pointRadius: 5,
                    pointHoverRadius: 8,
                    fill: false,
                    tension: 0.4
                },
                {
                    label: "Profit",
                    backgroundColor: "transparent",
                    borderColor: "#9b51e0",
                    data: [
                        120, 160, 150, 140, 165, 210, 135, 155, 170, 140, 130, 200
                    ],
                    pointBackgroundColor: "transparent",
                    pointHoverBackgroundColor: "#9b51e0",
                    pointBorderColor: "transparent",
                    pointHoverBorderColor: "#9b51e0",
                    pointHoverBorderWidth: 3,
                    pointBorderWidth: 5,
                    pointRadius: 5,
                    pointHoverRadius: 8,
                    fill: false,
                    tension: 0.4
                },
                {
                    label: "Order",
                    backgroundColor: "transparent",
                    borderColor: "#f2994a",
                    data: [180, 110, 140, 135, 100, 90, 145, 115, 100, 110, 115, 150],
                    pointBackgroundColor: "transparent",
                    pointHoverBackgroundColor: "#f2994a",
                    pointBorderColor: "transparent",
                    pointHoverBorderColor: "#f2994a",
                    pointHoverBorderWidth: 3,
                    pointBorderWidth: 5,
                    pointRadius: 5,
                    pointHoverRadius: 8,
                    fill: false,
                    tension: 0.4
                }
            ]
        },
        options: {
            plugins: {
                tooltip: {
                    intersect: false,
                    backgroundColor: "#fbfbfb",
                    titleColor: "#8F92A1",
                    bodyColor: "#272727",
                    titleFont: {
                        size: 16,
                        family: "Plus Jakarta Sans",
                        weight: "400"
                    },
                    bodyFont: {
                        family: "Plus Jakarta Sans",
                        size: 16
                    },
                    multiKeyBackground: "transparent",
                    displayColors: false,
                    padding: {
                        x: 30,
                        y: 15
                    },
                    borderColor: "rgba(143, 146, 161, .1)",
                    borderWidth: 1,
                    enabled: true
                },
                title: {
                    display: false
                },
                legend: {
                    display: false
                }
            },
            layout: {
                padding: {
                    top: 0
                }
            },
            responsive: true,
            // maintainAspectRatio: false,
            legend: {
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
                        padding: 35
                    },
                    max: 350,
                    min: 50
                },
                x: {
                    grid: {
                        drawBorder: false,
                        color: "rgba(143, 146, 161, .1)",
                        drawTicks: false,
                        zeroLineColor: "rgba(143, 146, 161, .1)"
                    },
                    ticks: {
                        padding: 20
                    }
                }
            }
        }
    });
    // =========== chart three end

    // ================== chart four start
    const ctx4 = document.getElementById("Chart4").getContext("2d");
    const chart4 = new Chart(ctx4, {
        type: "bar",
        data: {
            labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun"],
            datasets: [
                {
                    label: "",
                    backgroundColor: "#365CF5",
                    borderColor: "transparent",
                    borderRadius: 20,
                    borderWidth: 5,
                    barThickness: 20,
                    maxBarThickness: 20,
                    data: [600, 700, 1000, 700, 650, 800]
                },
                {
                    label: "",
                    backgroundColor: "#d50100",
                    borderColor: "transparent",
                    borderRadius: 20,
                    borderWidth: 5,
                    barThickness: 20,
                    maxBarThickness: 20,
                    data: [690, 740, 720, 1120, 876, 900]
                }
            ]
        },
        options: {
            plugins: {
                tooltip: {
                    backgroundColor: "#F3F6F8",
                    titleColor: "#8F92A1",
                    titleFontSize: 12,
                    bodyColor: "#171717",
                    bodyFont: {
                        weight: "bold",
                        size: 16
                    },
                    multiKeyBackground: "transparent",
                    displayColors: false,
                    padding: {
                        x: 30,
                        y: 10
                    },
                    bodyAlign: "center",
                    titleAlign: "center",
                    enabled: true
                },
                legend: {
                    display: false
                }
            },
            layout: {
                padding: {
                    top: 0
                }
            },
            responsive: true,
            // maintainAspectRatio: false,
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
                        min: 0
                    }
                },
                x: {
                    grid: {
                        display: false,
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
    // =========== chart four end
</script>
</body>
</html>