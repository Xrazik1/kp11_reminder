const { environment } = require('@rails/webpacker');
const webpack = require('webpack');
const handlebars = require('./loaders/handlebars');

environment.plugins.append(
    'Provide',
    new webpack.ProvidePlugin({
        AOS: "aos"
    }),
);

environment.loaders.prepend('handlebars', handlebars);
module.exports = environment;