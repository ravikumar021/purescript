// Generated by purs version 0.12.1
"use strict";
var Data_CommutativeRing = require("../Data.CommutativeRing/index.js");
var Data_DivisionRing = require("../Data.DivisionRing/index.js");
var Data_EuclideanRing = require("../Data.EuclideanRing/index.js");
var Data_Ring = require("../Data.Ring/index.js");
var Data_Semiring = require("../Data.Semiring/index.js");
var Field = function (DivisionRing1, EuclideanRing0) {
    this.DivisionRing1 = DivisionRing1;
    this.EuclideanRing0 = EuclideanRing0;
};
var field = function (dictEuclideanRing) {
    return function (dictDivisionRing) {
        return new Field(function () {
            return dictDivisionRing;
        }, function () {
            return dictEuclideanRing;
        });
    };
};
module.exports = {
    Field: Field,
    field: field
};
