import React, { useState, useEffect } from 'react'

const data = [
  'Writing Grant Proposals',
  'Grants For Non Profit Organizations 501 (c) 3',
  'Competitive Vs Continuation Funding',
  'Federal Grants',
  'Formula Non Competitive Grant Applications',
  'Local and Passthrough Grants',
  'Talk to Us',
  'Financial Modeling'
]

const GrantsVideo = () => {
  const [active, setActive] = useState("")
  const [filteredData, setFilteredData] = useState(data)
  const [input, setInput] = useState("")

  useEffect(() => {
    if(input) {
      setFilteredData(data.filter(text => text.includes(input)))
    } else {
      setFilteredData(data)
    }
  }, [input])

  return (
      <section className="video content-more video-hide-pc search-padding">

        <div className="container">
          <div className="video__inner">
            <div className="video__search">
              <div className="search-group search-less">
                <input
                    type="text"
                    id="search"
                    placeholder="Search"
                    value={input}
                    onChange={(e) => setInput(e.target.value)}
                />
                <div className="search-group__list">
                  <ul id="search-list">
                    {filteredData.map((name, index) => (
                        <li key={index} className={active === name ? 'active' : ''}><a href="#" onClick={(e) => {
                          e.preventDefault()

                          setActive(name)
                        }}>{name}</a></li>
                    ))}
                  </ul>
                </div>
              </div>
            </div>

            <div className="video__content">
              <div className="video-container">
                <video
                    src="/https://s3.amazonaws.com/codecademy-content/courses/React/react_video-slow.mp4"
                    preload="auto" controls=""
                    style={{ width: 500, height: 500}} />
                <div className="play-video" />
              </div>

              <p>The requirements for the grant instituion comes in a
                guidelines doc that outlines what needs to be included in the
                grant application and abstract/proposal in the form of a
                checklist. Its important to note that even if they use
                different terms or ask questions in a different order, most
                funders want the same details.</p><p>Some funders need you to
              complete their own application forms or cover sheets. After the
              initial contact with the funding institution get a copy of your
              guidelines and send it to a professional financial
              consulting.</p><p>Typically, you can apply to several funders
              and ask for partial funding from each.The amount of all your
              funding requests should, in principle, equal about 200 percent
              of the money you actually need. This allows for the possibility
              that certain funders would reject you or give you less than you
              asked for.</p></div>
          </div>
        </div>
      </section>
  )
}

export default GrantsVideo