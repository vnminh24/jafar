import Sprockell


prog0 :: [Instruction]
prog0 = [
    Load (ImmValue 1) regF 
    , Jump (Abs 164) 
    , Nop 
    , Load (ImmValue 0) regA 
    , Compute Add regF regA regA 
    , Push regA 
    , Load (ImmValue 2) regA 
    , Push regA 
    , Pop regA 
    , Pop regD 
    , Store regA (IndAddr regD) 
    , Load (ImmValue (-2)) regA 
    , Compute Add regF regA regA 
    , Push regA 
    , Load (ImmValue 0) regA 
    , Push regA 
    , Pop regA 
    , Pop regD 
    , Store regA (IndAddr regD) 
    , Jump (Abs 81) 
    , Nop 
    , Load (ImmValue (-2)) regA 
    , Compute Add regF regA regA 
    , Push regA 
    , Load (ImmValue 0) regA 
    , Compute Add regF regA regA 
    , Load (IndAddr regA) regA 
    , Push regA 
    , Load (ImmValue (-3)) regA 
    , Compute Add regF regA regA 
    , Load (IndAddr regA) regA 
    , Push regA 
    , Load (ImmValue 0) regA 
    , Compute Add regF regA regA 
    , Load (IndAddr regA) regA 
    , Push regA 
    , Pop regB 
    , Pop regA 
    , Compute Equal regB reg0 regD 
    , Branch regD (Abs 275) 
    , Load (ImmValue 0) regC 
    , Jump (Abs 46) 
    , Nop 
    , Compute Sub regA regB regA 
    , Load (ImmValue 1) regD 
    , Compute Add regC regD regC 
    , Nop 
    , Compute GtE regA regB regD 
    , Branch regD (Abs 42) 
    , Push regC 
    , Pop regB 
    , Pop regA 
    , Compute Mul regA regB regA 
    , Push regA 
    , Load (ImmValue (-3)) regA 
    , Compute Add regF regA regA 
    , Load (IndAddr regA) regA 
    , Push regA 
    , Pop regB 
    , Pop regA 
    , Compute Equal regA regB regA 
    , Push regA 
    , Pop regA 
    , Pop regD 
    , Store regA (IndAddr regD) 
    , Load (ImmValue 0) regA 
    , Compute Add regF regA regA 
    , Push regA 
    , Load (ImmValue 0) regA 
    , Compute Add regF regA regA 
    , Load (IndAddr regA) regA 
    , Push regA 
    , Load (ImmValue 1) regA 
    , Push regA 
    , Pop regB 
    , Pop regA 
    , Compute Add regA regB regA 
    , Push regA 
    , Pop regA 
    , Pop regD 
    , Store regA (IndAddr regD) 
    , Nop 
    , Load (ImmValue (-2)) regA 
    , Compute Add regF regA regA 
    , Load (IndAddr regA) regA 
    , Push regA 
    , Pop regA 
    , Load (ImmValue 1) regB 
    , Compute Xor regB regA regA 
    , Push regA 
    , Load (ImmValue 0) regA 
    , Compute Add regF regA regA 
    , Load (IndAddr regA) regA 
    , Push regA 
    , Load (ImmValue 0) regA 
    , Compute Add regF regA regA 
    , Load (IndAddr regA) regA 
    , Push regA 
    , Pop regB 
    , Pop regA 
    , Compute Mul regA regB regA 
    , Push regA 
    , Load (ImmValue (-3)) regA 
    , Compute Add regF regA regA 
    , Load (IndAddr regA) regA 
    , Push regA 
    , Pop regB 
    , Pop regA 
    , Compute Lt regA regB regA 
    , Push regA 
    , Pop regB 
    , Pop regA 
    , Compute And regA regB regA 
    , Push regA 
    , Pop regA 
    , Load (ImmValue 1) regB 
    , Compute Equal regA regB regA 
    , Branch regA (Abs 20) 
    , Load (ImmValue (-2)) regA 
    , Compute Add regF regA regA 
    , Load (IndAddr regA) regA 
    , Push regA 
    , Pop regA 
    , Compute Equal regA reg0 regA 
    , Branch regA (Abs 142) 
    , Load (ImmValue (-1)) regA 
    , Compute Add regF regA regA 
    , Push regA 
    , Load (ImmValue 0) regA 
    , Compute Add regF regA regA 
    , Load (IndAddr regA) regA 
    , Push regA 
    , Load (ImmValue 1) regA 
    , Push regA 
    , Pop regB 
    , Pop regA 
    , Compute Sub regA regB regA 
    , Push regA 
    , Pop regA 
    , Pop regD 
    , Store regA (IndAddr regD) 
    , Jump (Abs 151) 
    , Nop 
    , Load (ImmValue (-1)) regA 
    , Compute Add regF regA regA 
    , Push regA 
    , Load (ImmValue 1) regA 
    , Push regA 
    , Pop regA 
    , Pop regD 
    , Store regA (IndAddr regD) 
    , Nop 
    , Load (ImmValue (-1)) regA 
    , Compute Add regF regA regA 
    , Load (IndAddr regA) regA 
    , Push regA 
    , Load (ImmValue (-5)) regC 
    , Compute Add regF regC regC 
    , Pop regA 
    , Store regA (IndAddr regC) 
    , Load (ImmValue (-4)) regB 
    , Compute Add regF regB regB 
    , Load (IndAddr regB) regB 
    , Jump (Ind regB) 
    , Nop 
    , Load (ImmValue 12) regA 
    , Push regA 
    , Load (ImmValue 3) regB 
    , Compute Add regF regB regB 
    , Pop regA 
    , Store regA (IndAddr regB) 
    , Load (ImmValue 6) regB 
    , Compute Add regF regB regF 
    , Load (ImmValue 178) regA 
    , Load (ImmValue (-4)) regB 
    , Compute Add regF regB regB 
    , Store regA (IndAddr regB) 
    , Jump (Abs 2) 
    , Nop 
    , Load (ImmValue (-5)) regB 
    , Compute Add regF regB regB 
    , Load (IndAddr regB) regA 
    , Push regA 
    , Load (ImmValue (-6)) regB 
    , Compute Add regF regB regF 
    , Pop regA 
    , WriteInstr regA numberIO 
    , Load (ImmValue 7) regA 
    , Push regA 
    , Load (ImmValue 3) regB 
    , Compute Add regF regB regB 
    , Pop regA 
    , Store regA (IndAddr regB) 
    , Load (ImmValue 6) regB 
    , Compute Add regF regB regF 
    , Load (ImmValue 200) regA 
    , Load (ImmValue (-4)) regB 
    , Compute Add regF regB regB 
    , Store regA (IndAddr regB) 
    , Jump (Abs 2) 
    , Nop 
    , Load (ImmValue (-5)) regB 
    , Compute Add regF regB regB 
    , Load (IndAddr regB) regA 
    , Push regA 
    , Load (ImmValue (-6)) regB 
    , Compute Add regF regB regF 
    , Pop regA 
    , WriteInstr regA numberIO 
    , Load (ImmValue 77) regA 
    , Push regA 
    , Load (ImmValue 3) regB 
    , Compute Add regF regB regB 
    , Pop regA 
    , Store regA (IndAddr regB) 
    , Load (ImmValue 6) regB 
    , Compute Add regF regB regF 
    , Load (ImmValue 222) regA 
    , Load (ImmValue (-4)) regB 
    , Compute Add regF regB regB 
    , Store regA (IndAddr regB) 
    , Jump (Abs 2) 
    , Nop 
    , Load (ImmValue (-5)) regB 
    , Compute Add regF regB regB 
    , Load (IndAddr regB) regA 
    , Push regA 
    , Load (ImmValue (-6)) regB 
    , Compute Add regF regB regF 
    , Pop regA 
    , WriteInstr regA numberIO 
    , Load (ImmValue 23) regA 
    , Push regA 
    , Load (ImmValue 3) regB 
    , Compute Add regF regB regB 
    , Pop regA 
    , Store regA (IndAddr regB) 
    , Load (ImmValue 6) regB 
    , Compute Add regF regB regF 
    , Load (ImmValue 244) regA 
    , Load (ImmValue (-4)) regB 
    , Compute Add regF regB regB 
    , Store regA (IndAddr regB) 
    , Jump (Abs 2) 
    , Nop 
    , Load (ImmValue (-5)) regB 
    , Compute Add regF regB regB 
    , Load (IndAddr regB) regA 
    , Push regA 
    , Load (ImmValue (-6)) regB 
    , Compute Add regF regB regF 
    , Pop regA 
    , WriteInstr regA numberIO 
    , Load (ImmValue 35) regA 
    , Push regA 
    , Load (ImmValue 3) regB 
    , Compute Add regF regB regB 
    , Pop regA 
    , Store regA (IndAddr regB) 
    , Load (ImmValue 6) regB 
    , Compute Add regF regB regF 
    , Load (ImmValue 266) regA 
    , Load (ImmValue (-4)) regB 
    , Compute Add regF regB regB 
    , Store regA (IndAddr regB) 
    , Jump (Abs 2) 
    , Nop 
    , Load (ImmValue (-5)) regB 
    , Compute Add regF regB regB 
    , Load (IndAddr regB) regA 
    , Push regA 
    , Load (ImmValue (-6)) regB 
    , Compute Add regF regB regF 
    , Pop regA 
    , WriteInstr regA numberIO 
    , EndProg 
    ]

main = run [prog0]

