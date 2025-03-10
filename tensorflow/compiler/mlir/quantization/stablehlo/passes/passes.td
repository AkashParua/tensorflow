/* Copyright 2023 The StableHLO Authors. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

include "mlir/Pass/PassBase.td"

def QuantizeWeightPass : Pass<"stablehlo-quantize-weight", "mlir::func::FuncOp"> {
  let summary = "Quantizes the weight component of StableHLO graph.";
  let constructor = "CreateQuantizeWeightPass()";
  let dependentDialects = ["stablehlo::StablehloDialect"];
}

def PrepareSrqQuantizePass : Pass<"stablehlo-prepare-srq-quantize", "mlir::func::FuncOp"> {
  let summary = "Prepare StableHLO dialect for static range quantization.";
  let constructor = "CreatePrepareSrqQuantizePass()";
  let dependentDialects = ["stablehlo::StablehloDialect", "quant::QuantizationDialect", "quantfork::QuantizationForkDialect"];
}

