var sass = require('node-sass'),
    stats = {};

sass.renderFile({
    file: "../app/templates/foundation/scss/app.scss",
    outFile: "../app/templates/foundation/css/app.css",
    success: function(css) {
        console.log(css);
    },
    error: function(error) {
        console.log(error);
    },
    outputStyle: 'compressed',
    stats: stats
});