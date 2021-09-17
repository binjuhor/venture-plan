import React from "react";
import Link from "next/link";

const Nav = ({ categories }) => {
  return (
    <div>
      <nav className="navigation">
        <ul className={"navigation__list"}>
          <li> <Link href={'#'}>About</Link></li>
          <li> <Link href={'#'}>Consulting</Link></li>
          <li> <Link href={'#'}>Financing</Link></li>
          <li> <Link href={'#'}>Technology</Link></li>
          <li> <Link href={'#'}>Legal</Link></li>
          <li> <Link href={'#'}>Careers</Link></li>
          <li> <Link href={'#'}>Insights</Link></li>
          <li> <Link href={'#'}>Reviews</Link></li>
          <li> <Link href={'#'}>Contact</Link></li>
        </ul>
      </nav>
    </div>
  );
};

export default Nav;
