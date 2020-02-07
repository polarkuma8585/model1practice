<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>toastChart.jsp</title>

<!-- <script src="https://uicdn.toast.com/tui.code-snippet/latest/tui-code-snippet.js"></script>
<script src="https://uicdn.toast.com/tui.chart/latest/tui-chart.min.js"></script> -->

<link rel="stylesheet" href="https://uicdn.toast.com/tui.chart/latest/tui-chart.min.css">
<script type='text/javascript' src='https://uicdn.toast.com/tui.code-snippet/v1.5.0/tui-code-snippet.min.js'></script>
<script type='text/javascript' src='https://uicdn.toast.com/tui.chart/latest/raphael.js'></script>
<script src="https://uicdn.toast.com/tui.chart/latest/tui-chart.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

var chart = tui.chart;	

var options = {
	    chart: {
	        width: 700,
	        height: 700,
	        title: '부서별 인원 수',
	        format: function(value, chartType, areaType, valuetype, legendName) {
	            if (areaType === 'makingSeriesLabel') { // formatting at series area
	                value = value + '%';
	            }

	            return value;
	        }
	    },
	    series: {
	        radiusRange: ['40%', '100%'],
	        showLabel: true
	    },
	    tooltip: {
	        suffix: '%'
	    },
	    legend: {
	        align: 'bottom'
	    }
	};
	var theme = {
	    series: {
	        series: {
	            colors: [
	                '#83b14e', '#458a3f', '#295ba0', '#2a4175', '#289399',
	                '#289399', '#617178', '#8a9a9a', '#516f7d', '#dddddd'
	            ]
	        },
	        label: {
	            color: '#fff',
	            fontFamily: 'sans-serif'
	        }
	    }
	};
	
 $(function(){
	var container = document.getElementById('chart-area');	

 $.ajax("../ajax/GetDeptCnt.do",{dataType : "json"})
 .done(function(chartData){
 	/* var arr = [];
 	for (i=0; i<chartData.length;i++){
 		arr.push({name: chartData[i].department_name, data:chartData[i].cnt });
 	} */
	
var data = {
    categories: ['HR'],
    series: chartData
	    	
    	
};


// For apply theme
tui.chart.registerTheme('myTheme', theme);
options.theme = 'myTheme';

tui.chart.pieChart(container, data, options);
});
});
</script>
</head>
<body>
 <div id="chart-area"></div>
 

</body>
</html>