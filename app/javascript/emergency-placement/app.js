import React from 'react';
import ReactDOM from 'react-dom';
import PropTypes from 'prop-types';

const App = props => (
  <div>Hello {props.name}!</div>
);

App.defaultProps = {
  name: 'David'
};

App.propTypes = {
  name: PropTypes.string
};

export default App;
