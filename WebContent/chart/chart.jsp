<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {
    	// Set chart options
          var options = {'title':'부서별 인원수',
                         'width':800,
                         'height':800};

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', '부서명');
        data.addColumn('number', '인원수');
        
        //data를 ajax로 받기 
        $.ajax("../ajax/GetDeptCnt.do",{dataType :"json"}) //받는 데이터 타입이 json일 경우 datatype 반드시 정의 
        .done(function(chartData){
        	var arr = [];
        	for (i=0; i<chartData.length;i++){
        		arr.push([ chartData[i].department_name, chartData[i].cnt ]);
        	}
        console.log(chartData.length);
        data.addRows(arr);

        
        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
        });
      }
    </script>
  </head>

  <body>
    <!--Div that will hold the pie chart-->
    <div id="chart_div"></div>
  </body>
</html>