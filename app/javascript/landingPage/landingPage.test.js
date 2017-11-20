import React from 'react';
import { shallow } from 'enzyme';
import LandingPage from './landingPage';

describe('Landing Page', () => {
  it('renders a layout1', () => {
    const landingPage = shallow(<LandingPage />);

    expect(landingPage.find('Layout01').length).toBe(1);
  });
});
