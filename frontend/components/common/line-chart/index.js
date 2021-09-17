import React from "react";
import ReactEcharts from "echarts-for-react";

const LineChart = ({ height, color = [], showYAxis = false }) => {
  const option = {
    grid: {
      top: "20%",
      bottom: "5%",
      left: showYAxis?"10%":'0',
      right: "0"
    },
    tooltip: {},
    xAxis: {
      type: "category",
      // data: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"],
      axisLine: {
        show: false
      },
      axisTick: {
        show: false
      },
      splitLine: {
        lineStyle: {
          // color: theme.palette.text.secondary,
          opacity: 0.15
        }
      },
      // axisLabel: {
      //   color: theme.palette.text.secondary,
      //   fontSize: 14,
      //   fontFamily: "roboto"
      // }
    },
    yAxis: {
      type: "value",
      axisLine: {
        show: showYAxis?true:false,
        lineStyle: {
          opacity: 0.15
        }
      },
      axisTick: {
        show: false
      },
      splitLine: {
        lineStyle: {
          // color: theme.palette.text.secondary,
          opacity: 0.15
        }
      },
      axisLabel: {
        // color: theme.palette.text.secondary,
        // fontSize: 13,
        // fontFamily: "roboto"
        show: showYAxis,
      }
    },
    series: [
      {
        data: [30, 40, 20, 50, 40, 60, 90],
        type: "line",
        name: "This month",
        symbolSize: 4,
        lineStyle: {
          width: 2
        },
        areaStyle: {
          color: 'rgba(0, 161, 241, 0.3)',
          //  shadowColor: 'rgba(255, 255, 255, 1)',
          //  shadowBlur: 20,
          //  shadowOffsetX: 100,
          //  shadowOffsetY: 100
        }
      }
    ]
  };

  return (
      <ReactEcharts
          style={{ height: height }}
          option={{
            ...option,
            color: [...color]
          }}
      />
  );
};

export default LineChart
