{-# LANGUAGE FlexibleContexts #-}

-- | @futhark cuda@
module Futhark.CLI.CUEW (main) where

import Futhark.Actions (compileCUEWAction)
import Futhark.Compiler.CLI
import Futhark.Passes (gpuPipeline)

-- | Run @futhark cuda@.
main :: String -> [String] -> IO ()
main = compilerMain
  ()
  []
  "Compile CUDA (CUEW)"
  "Generate CUDA/CUEW/C code from optimised Futhark program."
  gpuPipeline
  $ \fcfg () mode outpath prog ->
    actionProcedure (compileCUEWAction fcfg mode outpath) prog
