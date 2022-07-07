const { createProxyMiddleware } = require('http-proxy-middleware');

module.exports = function(app) {
  app.use(
    '/api',
    createProxyMiddleware({
      target: 'internal-dev-Internal-LB-1796089591.us-east-1.elb.amazonaws.com:3000',
      changeOrigin: true,
    })
  );
};