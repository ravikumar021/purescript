// Generated by purs bundle 0.12.1
var PS = {};
(function(exports) {
    "use strict";

  exports.log = function (s) {
    return function () {
      console.log(s);
      return {};
    };
  };
})(PS["Effect.Console"] = PS["Effect.Console"] || {});
(function(exports) {
  // Generated by purs version 0.12.1
  "use strict";
  var $foreign = PS["Effect.Console"];
  var Data_Show = PS["Data.Show"];
  var Data_Unit = PS["Data.Unit"];
  var Effect = PS["Effect"];
  exports["log"] = $foreign.log;
})(PS["Effect.Console"] = PS["Effect.Console"] || {});
(function(exports) {
  // Generated by purs version 0.12.1
  "use strict";
  var Effect = PS["Effect"];
  var Effect_Console = PS["Effect.Console"];
  var Prelude = PS["Prelude"];                 
  var main = Effect_Console.log("Hello sailor!");
  exports["main"] = main;
})(PS["Main"] = PS["Main"] || {});
PS["Main"].main();