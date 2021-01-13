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
          'grey-03': {
            DEFAULT: '#808080',
          },
          'grey-04': {
            DEFAULT: '#4D4D4D',
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
