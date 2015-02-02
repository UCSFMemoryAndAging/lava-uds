delete from hibernateproperty where entity="{{ instr.tname }}";
delete from viewproperty where entity="{{ instr.tname }}";
delete from instrument where InstrName="{{ instr.fullname }}";
drop table if exists {{ instr.tname }};
