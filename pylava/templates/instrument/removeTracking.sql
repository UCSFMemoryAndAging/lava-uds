delete instrumentnotes 
from instrumenttracking join instrumentnotes using (InstrID) 
where InstrType="{{ instr.fullname }}";

delete instrumentsummary 
from instrumenttracking join instrumentsummary using (InstrID) 
where InstrType="{{ instr.fullname }}";

delete {{ instr.tname }} 
from instrumenttracking join {{ instr.tname }} using (InstrID) 
where InstrType="{{ instr.fullname }}";

delete from instrumenttracking 
where InstrType="{{ instr.fullname }}";

