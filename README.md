###lava-uds

The UCSFMemoryAndAging "lava-uds" repository is used in conjunction with the UCSFMemoryAndAging ["lava"] (https://github.com/UCSFMemoryAndAging/lava.git) repository and the LAVA web application framework.

The "lava-uds" repository contains an implementation of the National Alzheimer's Coordinating Center (NACC) data forms. This includes all versions of the Uniform Data Set (UDS), FTLD Module, and Neuropathology Data Set (NP). The implementation supports data entry, logic checking, storage, and the ability to extract the data in to a file format that can be directly submitted to the NACC. 


###Projects
The following projects are contained in "lava-uds":

- lava-crms-nacc
  - The implementation of the NACC UDS, FTLD and NP data forms, logic checking and extracts. 

- lava-crms-ignav-nacc
  - Enhancement to lava-crms-nacc with instrument group navigation feature.

- lava-app-demo
  - A working demo application built on lava-crms-nacc, lava-crms-nacc-ignav, lava-crms ("lava" repository) and lava-core ("lava" repository).

The notion of project also translates directly to an Eclipse project (the Eclipse IDE is recommended for LAVA development). 

Refer to the ["lava"] (https://github.com/UCSFMemoryAndAging/lava.git) repository for more information about the LAVA web application framework.



