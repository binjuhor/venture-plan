import React from "react";
import { VictoryPie } from "victory";

const VictoryChart = ({ data }) => {
  return (
      <VictoryPie
          innerRadius={178}
          cornerRadius={20}
          padAngle={1}
          padding={43}
          labels={() => null}
          data={data}
          // style={{
          //   data: {
          //     fill: datum => datum.fill,
          //     opacity: datum =>  datum.opacity
          //   }
          // }}
      />

  );
};

export default VictoryChart;
