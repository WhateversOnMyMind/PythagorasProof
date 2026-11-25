import PythagorasProof
#print axioms Synthetic.pythagoras
#check @Synthetic.pythagoras
open Lean in
#eval show CoreM Unit from do
  let env ← getEnv
  let bad := env.header.moduleNames.filter fun m =>
    let s := m.toString
    (s.splitOn "Euclidean").length > 1 || (s.splitOn "InnerProduct").length > 1 || (s.splitOn "Geometry").length > 1 || (s.splitOn "Trigonometric").length > 1
  IO.println s!"modules imported: {env.header.moduleNames.size}; suspicious: {bad}"
