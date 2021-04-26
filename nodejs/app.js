const Tars = require("@tars/rpc");
const Demo = require("./nodeImp").Demo;

const APP_NAME = "TestUnits",
  SERVER_NAME = "nodejs",
  OBJ_NAME = "testObj";
let servantName = `${APP_NAME}.${SERVER_NAME}.${OBJ_NAME}`;
let impMap = {
  [servantName]: Demo.HelloImp
};
console.log(impMap)

Tars.server.getServant(process.env.TARS_CONFIG || `./${APP_NAME}.${SERVER_NAME}.config.conf`).forEach(function (config) {
  console.log(impMap[config.servant]);
  let svr = Tars.server.createServer(impMap[config.servant]);
  svr.start(config);
});