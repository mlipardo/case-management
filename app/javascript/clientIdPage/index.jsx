import React from 'react';
import ReactDOM from 'react-dom';
import ClientIdPage from './clientIdPage';
import './stylesheets/clientidpage.scss';

const clientId = document.body.appendChild(document.createElement('div'));

ReactDOM.render(<ClientIdPage />, clientId);
