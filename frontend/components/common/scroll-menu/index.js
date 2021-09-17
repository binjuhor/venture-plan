import React, {useRef} from 'react'
import { withLocalize } from 'react-localize-redux'
import AnchorLink from 'react-anchor-link-smooth-scroll'
import ShareList from '../share-list'

const ScrollMenu = ({ translate }) => {
  const sidebarRef = useRef()

  const executeScroll = () => {
    sidebarRef.current.scrollIntoView({ behavior: 'smooth' })
  }

  return (
      <section className="scroll-menu">

        <div className="container">
          <div className={'refPosition'}  ref={sidebarRef}></div>
          <div className="scroll-menu__inner">
            <ul className="scroll-menu__nav">
              <li className="active"><AnchorLink href="#overview">{translate("t.overview")}</AnchorLink></li>
              <li><AnchorLink href="#grant-types">{translate("t.grant_types")}</AnchorLink></li>
              <li><AnchorLink href="#grant-application-process">{translate("t.grant_application_process")}</AnchorLink></li>
              <li><a href="#assessment">{translate("t.assessment")}</a></li>
              <li><AnchorLink href="#ready-to-talk">{translate("t.ready_to_talk")}</AnchorLink></li>
              <li><AnchorLink href="#business-plan-samples">{translate("t.business_plan_samples")}</AnchorLink></li>
              <li><AnchorLink href="#our-team">{translate("t.our_team_2")}</AnchorLink></li>
            </ul>

            <div className="scroll-menu__share">
              <div className="share-group">
                <a href="#" onMouseOver={executeScroll}>
                  <svg xmlns="http://www.w3.org/2000/svg" width="19" height="20"
                       viewBox="0 0 19 20">
                    <g id="Group_506" data-name="Group 506"
                       transform="translate(-1138 -814)">
                      <g id="Ellipse_3942" data-name="Ellipse 3942"
                         transform="translate(1150 814)" stroke="#707070"
                         strokeWidth="1">
                        <circle cx="3.5" cy="3.5" r="3.5" stroke="none"/>
                        <circle cx="3.5" cy="3.5" r="3" fill="none"/>
                      </g>
                      <g id="Ellipse_3943" data-name="Ellipse 3943"
                         transform="translate(1138 821)" stroke="#707070"
                         strokeWidth="1">
                        <circle cx="3.5" cy="3.5" r="3.5" stroke="none"/>
                        <circle cx="3.5" cy="3.5" r="3" fill="none"/>
                      </g>
                      <g id="Ellipse_3944" data-name="Ellipse 3944"
                         transform="translate(1150 827)" stroke="#707070"
                         strokeWidth="1">
                        <circle cx="3.5" cy="3.5" r="3.5" stroke="none"/>
                        <circle cx="3.5" cy="3.5" r="3" fill="none"/>
                      </g>
                      <line id="Line_54" data-name="Line 54" x1="12.292"
                            y2="7.116" transform="translate(1142.205 817.558)"
                            fill="none" stroke="#000" strokeWidth="3"/>
                      <line id="Line_55" data-name="Line 55" x1="12.292"
                            y1="7.116" transform="translate(1141.558 824.028)"
                            fill="none" stroke="#000" strokeWidth="3"/>
                    </g>
                  </svg>
                </a>
                <ShareList />
              </div>
            </div>
          </div>
        </div>
      </section>
  )
}

export default withLocalize(ScrollMenu)