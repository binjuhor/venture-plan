import React, { useState, useEffect } from 'react'
import MemberItem from './MemberItem'
import _ from 'lodash'
import { withLocalize } from 'react-localize-redux'
import {fetchAPI} from '../../../lib/api'

const OurTeam = ({ translate, OurTeamDescription }) => {
  const [members, setMembers] = useState([])
  const [shortListMembers, setShortListMembers] = useState([])
  const [showMore, setShowMore] = useState(false)

  useEffect(() => {
    _fetchMembers()
  }, [])

  useEffect(() => {
    if(members.length > 3) {
      setShortListMembers(_.slice(members, 0, 3))
    } else {
      setShortListMembers(members)
    }
  }, [members])

  const _fetchMembers = async () => {
    try {
      const data = await fetchAPI('/members')

      setMembers(data)
    } catch (err) {
      setMembers([])
    }
  }

  return (
      <section className="our-team">
        <div className="anchorSection" id={'our-team'} />
        <div className="container">
          <div className="section__heading section__heading--medium">
            <h3><u>{translate("t.our_team")}</u></h3>
            <h4 style={{ whiteSpace: "pre-wrap" }}>{OurTeamDescription}</h4>
          </div>

          <div className="our-team__inner">
            {!!showMore
              ? members.map(member => <MemberItem {...member} key={member.id}/>)
              : shortListMembers.map(member => <MemberItem {...member} key={member.id}/>)
            }
          </div>

          <a href="#" className="btn btn-primary" onClick={(e) => {
            e.preventDefault()

            setShowMore(!showMore)
          }}>{translate(!!showMore ? "t.load_less" : "t.load_more")}</a>
        </div>
      </section>
  )
}

export default withLocalize(OurTeam)