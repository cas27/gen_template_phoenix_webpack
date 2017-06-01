var path = require('path')
var ExtractTextPlugin = require('extract-text-webpack-plugin')
var CopyWebpackPlugin = require('copy-webpack-plugin')
var env = process.env.MIX_ENV || 'dev'
var isProduction = (env === 'prod')

module.exports = {
  entry: {
    app: ['./src/index.js', './src/css/app.scss']
  },

  output: {
    path: path.resolve(__dirname, '../priv/static/'),
    filename: 'js/[name].js'
  },

  devtool: 'source-map',

  module: {
    rules: [{
      test: /\.(sass|scss)$/,
      include: /css/,
      use: ExtractTextPlugin.extract({
        fallback: 'style-loader',
        use: [
          {loader: 'css-loader'},
          {
            loader: 'sass-loader'
          }
        ]
      })
    }, {
      test: /\.js?$/,
      include: /js/,
      use: [{
        loader: 'babel-loader'
      }]
    }]
  },

  plugins: [
    new CopyWebpackPlugin([{ from: './static' }]),
    new ExtractTextPlugin('css/app.css')
  ]
}
