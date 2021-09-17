import React, { useState } from 'react'
import Filter from './Filter'
import { withLocalize } from 'react-localize-redux'

const InsightOverview = ({ translate, Overview, filterOptions, selectedFilterOptions, setSelectedFilterOptions }) => {
  const [readMore, setReadMore] = useState(false)
  const [showFilter, setShowFilter] = useState(false)

  return (
      <section className={`overview left-heading ${showFilter ? 'shown-filter' : ''}`} id="overview">
        <div className="container">
          <div className="overview__inner">
            <div className="section__title">
              <h3><u>{translate("t.latest")} <span>{translate("t.insights")}</span></u></h3>
            </div>

            <div className={`overview__detail ${readMore ? 'active' : ''}`}>
              <p style={{ whiteSpace: "pre-wrap" }}>{Overview}</p>
              <div className="readmore-p">
                <a href="#"
                   className={`readmore btn-select ${readMore ? 'active' : ''}`}
                   onClick={(e) => {
                     e.preventDefault()

                     setReadMore(!readMore)
                   }}
                >{translate("t.read")} <span>{translate("t.more")}</span><span>{translate("t.less")}</span></a>
              </div>
            </div>
          </div>

          <div className="overview__bottom">
            <a href="#" className="btn btn-primary btn-call-filter" onClick={(e) => {
              e.preventDefault()

              setShowFilter(!showFilter)
            }}>
              <svg xmlns="http://www.w3.org/2000/svg" width="35.355"
                   height="27.224" viewBox="0 0 35.355 27.224">
                <g id="noun_filter_765405" transform="translate(0 -11)">
                  <g id="Group_1878" data-name="Group 1878"
                     transform="translate(0 11)">
                    <path id="Path_8089" data-name="Path 8089"
                          d="M1.308,18.778H6.682a6.56,6.56,0,0,0,12.834,0H34.047a1.308,1.308,0,0,0,0-2.616H19.516A6.565,6.565,0,0,0,6.682,16.2H1.308A1.305,1.305,0,0,0,0,17.505,1.275,1.275,0,0,0,1.308,18.778Zm11.773-5.2A3.889,3.889,0,1,1,9.157,17.47,3.908,3.908,0,0,1,13.082,13.581Z"
                          transform="translate(0 -11)" fill="#fff"/>
                    <path id="Path_8090" data-name="Path 8090"
                          d="M34.047,56.5H28.673a6.56,6.56,0,0,0-12.834,0H1.308A1.305,1.305,0,0,0,0,57.805a1.328,1.328,0,0,0,1.308,1.308H15.839a6.565,6.565,0,0,0,12.834-.035h5.374a1.291,1.291,0,1,0,0-2.581Zm-11.773,5.2A3.889,3.889,0,1,1,26.2,57.805,3.908,3.908,0,0,1,22.274,61.695Z"
                          transform="translate(0 -37.052)" fill="#fff"/>
                  </g>
                </g>
              </svg>
              {translate("t.filter")}</a>
          </div>
        </div>
        <Filter
            onCloseFilter={() => setShowFilter(false)}
            filterOptions={filterOptions}
            selectedFilterOptions={selectedFilterOptions}
            setSelectedFilterOptions={setSelectedFilterOptions}
        />
      </section>
  )
}

export default withLocalize(InsightOverview)
