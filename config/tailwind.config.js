const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        "patrick": ["Patrick Hand SC", "cursive"]
      }, 
      fontSize: {
        'xs': ['0.75rem', '1rem'], // 12px
        'sm': ['0.875rem', '1.25rem'], // 14px
        'base': ['1rem', '1.5rem'], // 16px
        'lg': ['1.125rem', '1.75rem'], // 18px
        'xl': ['1.25rem', '1.75rem'], // 20px
        '2xl': ['1.5rem', '2rem'], // 24px
        '3xl': ['1.875rem', '2.25rem'], // 30px
        '4xl': ['2.25rem', '2.5rem'], // 36px
        '5xl': ['3rem', '1'], // 48px
        '6xl': ['3.75rem', '1'], // 60px
        '7xl': ['4.5rem', '1'], // 72px
        '8xl': ['6rem', '1'], // 96px
        '9xl': ['8rem', '1'], // 128px
      },
      fontWeight: {
        'hairline': 100,
        'thin': 200,
        'light': 300,
        'normal': 400,
        'medium': 500,
        'semibold': 600,
        'bold': 700,
        'extrabold': 800,
        'black': 900,
      },
      lineHeight: {
        'tight': 1.1,
        'snug': 1.3,
        'normal': 1.5,
        'relaxed': 1.625,
        'loose': 2,
      },
      letterSpacing: {
        'tighter': '-0.05em',
        'tight': '-0.025em',
        'normal': '0',
        'wide': '0.025em',
        'wider': '0.05em',
        'widest': '0.1em',
      },
      colors: {
        'primary': {
          50: '#F8F1F1',
          100: '#EBD4D4',
          200: '#ddb7b7',
          300: '#cf9a9a',
          400: '#c27d7d',
          500: '#b4615f',
          600: '#924545',
          700: '#823d3d',
          800: '#642f2f',
          900: '#472121',
          950: '#2a1414',
        },
      },
    },
  },
  

  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
