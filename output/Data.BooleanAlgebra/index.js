// Generated by purs version 0.12.1
"use strict";
var Data_HeytingAlgebra = require("../Data.HeytingAlgebra/index.js");
var Data_Symbol = require("../Data.Symbol/index.js");
var Data_Unit = require("../Data.Unit/index.js");
var BooleanAlgebra = function (HeytingAlgebra0) {
    this.HeytingAlgebra0 = HeytingAlgebra0;
};
var BooleanAlgebraRecord = function (HeytingAlgebraRecord0) {
    this.HeytingAlgebraRecord0 = HeytingAlgebraRecord0;
};
var booleanAlgebraUnit = new BooleanAlgebra(function () {
    return Data_HeytingAlgebra.heytingAlgebraUnit;
});
var booleanAlgebraRecordNil = new BooleanAlgebraRecord(function () {
    return Data_HeytingAlgebra.heytingAlgebraRecordNil;
});
var booleanAlgebraRecordCons = function (dictIsSymbol) {
    return function (dictCons) {
        return function (dictBooleanAlgebraRecord) {
            return function (dictBooleanAlgebra) {
                return new BooleanAlgebraRecord(function () {
                    return Data_HeytingAlgebra.heytingAlgebraRecordCons(dictIsSymbol)(dictCons)(dictBooleanAlgebraRecord.HeytingAlgebraRecord0())(dictBooleanAlgebra.HeytingAlgebra0());
                });
            };
        };
    };
};
var booleanAlgebraRecord = function (dictRowToList) {
    return function (dictBooleanAlgebraRecord) {
        return new BooleanAlgebra(function () {
            return Data_HeytingAlgebra.heytingAlgebraRecord(dictRowToList)(dictBooleanAlgebraRecord.HeytingAlgebraRecord0());
        });
    };
};
var booleanAlgebraFn = function (dictBooleanAlgebra) {
    return new BooleanAlgebra(function () {
        return Data_HeytingAlgebra.heytingAlgebraFunction(dictBooleanAlgebra.HeytingAlgebra0());
    });
};
var booleanAlgebraBoolean = new BooleanAlgebra(function () {
    return Data_HeytingAlgebra.heytingAlgebraBoolean;
});
module.exports = {
    BooleanAlgebra: BooleanAlgebra,
    BooleanAlgebraRecord: BooleanAlgebraRecord,
    booleanAlgebraBoolean: booleanAlgebraBoolean,
    booleanAlgebraUnit: booleanAlgebraUnit,
    booleanAlgebraFn: booleanAlgebraFn,
    booleanAlgebraRecord: booleanAlgebraRecord,
    booleanAlgebraRecordNil: booleanAlgebraRecordNil,
    booleanAlgebraRecordCons: booleanAlgebraRecordCons
};
