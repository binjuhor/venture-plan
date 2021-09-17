import { useRouter } from "next/router";
import Link from "next/link";
import PropTypes from "prop-types";

export { LinkButton };

LinkButton.propTypes = {
  href: PropTypes.string.isRequired,
  exact: PropTypes.bool,
};

LinkButton.defaultProps = {
  exact: false,
};

function LinkButton({ href, exact, children, ...props }) {
  const { pathname } = useRouter();
  const isActive = exact ? pathname === href : pathname.startsWith(href);

  if (isActive) {
    props.className += " active";
  }

  return (
    <Link href={href}>
      <a {...props}>{children}</a>
    </Link>
  );
}
