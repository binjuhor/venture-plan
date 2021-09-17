import React from 'react'
import { withLocalize } from 'react-localize-redux'
import LineChart from '../line-chart'

const BusinessPlansWrittenChart = ({ data, translate }) => {

  return (
    <div className="chart-container">
      <div className="card-wrapper">
        <div className="card-header">
          <span className="value">{data}</span>
          <span className="chart-title">{translate("t.business_plans_written")}</span>
        </div>
        <div className="card-content line-chart">
          <LineChart
              height="185px"
              color={['#00A2FF']}
              showYAxis
          />
        </div>
      </div>
    </div>
  )
}

export default withLocalize(BusinessPlansWrittenChart)