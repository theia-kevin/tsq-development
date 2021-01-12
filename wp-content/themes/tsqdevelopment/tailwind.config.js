const {colors: defaultColors} = require('tailwindcss/defaultTheme');

module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        ...defaultColors,
        ...{
          'bbq-red': {
            DEFAULT: '#B1221A',
          },
        },
      },
      backgroundColor: {
        ...defaultColors,
        ...{
          'grey-01': {
            DEFAULT: '#212429',
          },
          'grey-02': {
            DEFAULT: '#dededf',
          },
        },
      },
    },
    fontFamily: {
      'sans': ['neue-haas-grotesk-display'],
      'serif': ['neue-haas-grotesk-display'],
      'mono': ['neue-haas-grotesk-display']
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
};
