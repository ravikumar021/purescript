// Generated by purs version 0.12.1
"use strict";
var $foreign = require("./foreign.js");
var Data_Ordering = require("../Data.Ordering/index.js");
var unsafeCompare = $foreign.unsafeCompareImpl(Data_Ordering.LT.value)(Data_Ordering.EQ.value)(Data_Ordering.GT.value);
module.exports = {
    unsafeCompare: unsafeCompare
};
