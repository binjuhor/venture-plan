import React from 'react'
import { withLocalize } from 'react-localize-redux'
import VictoryChart from '../victory-chart'

const YearsOfExperienceChart = ({ data, translate }) => {

  return (
      <div className="chart-container">
        <div className="card-wrapper">
          <div className="card-header">
            <span className="value">{data}</span>
            <span className="chart-title">{translate("t.years_of_experience")}</span>
          </div>
          <div className="card-content victory">
            <div className="victory-chart">
              <VictoryChart
                  data={[
                    { x: 1, y: 1, opacity: 1.0, fill: '#f3f4f7' },
                    { x: 2, y: 4, opacity: 1.0, fill: '#00A2FF' },
                  ]}
              />
              <div className="small-chart">
                <VictoryChart
                    data={[
                      { x: 1, y: 1, opacity: 1.0, fill: '#f3f4f7' },
                      { x: 2, y: 1, opacity: 0.5, fill: '#00A2FF' },
                    ]}
                />
              </div>
              <div className="value-label">{data}</div>
            </div>
          </div>
        </div>
      </div>
  )
}

export default withLocalize(YearsOfExperienceChart)