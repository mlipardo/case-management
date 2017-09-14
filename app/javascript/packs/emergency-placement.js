import React from 'react';
import ReactDOM from 'react-dom';
import {App} from '../emergency-placement';

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <App name="React" />,
    document.body.appendChild(document.createElement('div')),
  )
});
