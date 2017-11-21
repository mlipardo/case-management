import React from 'react';
import { shallow } from 'enzyme';
import LandingPage from './landingPage';

describe('Landing Page', () => {
  it('renders a GlobalHeader and PageHeader', () => {
    const landingPage = shallow(<LandingPage />);

    expect(landingPage.find('GlobalHeader').length).toBe(1);
    expect(landingPage.find('PageHeader').length).toBe(1);
  });
});
