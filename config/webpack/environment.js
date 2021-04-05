const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
// Adding the plugins to the Webpacks, any additional libraries will be added here.
environment.plugins.append('Provide', new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']
}));

module.exports = environment
