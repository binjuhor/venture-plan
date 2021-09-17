import React from "react";
import { withLocalize } from "react-localize-redux";

const Careers = ({ translate }) => {
  return (
    <section className="careers">
      <figure>
        <img className="careers_pc" src="/images/home/career.jpg" alt="" />
        <img
          className="careers_sp"
          src="/images/home/career-mobile.jpg"
          alt=""
        />
      </figure>

      <div className="container">
        <div className="careers__text">
          <strong>{translate("t.careers")}</strong>
          <h2>{translate("t.venture_plan_and_you")}</h2>
          <div className="btn btn-outline btn-white">
            {translate("t.start_here")}
          </div>
        </div>
      </div>
    </section>
  );
};

export default withLocalize(Careers);
