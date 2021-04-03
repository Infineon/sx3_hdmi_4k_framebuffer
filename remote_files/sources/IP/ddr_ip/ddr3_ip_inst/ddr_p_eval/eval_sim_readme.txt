1. Test environment:
   1) DUT: DDR3 sdram memory controller core (instance name: ddr3_sdram_core)
      configuration:
      - DDRMemType:           DDR3
      - TRCD      :           6
      - TRP       :           6
      - TRAS      :           16
      - TRC       :           20
      - TRTP      :           4
      - TWTR      :           4
      - TCKESR    :           6
      - TZQOPER   :           258
      - TZQCS     :           80
      - TMRD      :           4
      - TPD       :           4
      - TXPDLL    :           10
      - TCKE      :           4
      - TXPR      :           48
      - TMOD      :           12
      - TZQINIT   :           512
      - TRFC      :           44
      - TFAW      :           26
      - TREFI     :           3120
      - TWLMRD    :           40
      - TWLDQSEN  :           25
      - TODTH4    :           4
      - TODTH8    :           6
      - TWLO      :           9

   2) Instances in the evaluation's testbenches:
      - monitor: (1) Compares the address (row and column) at the User's interface with the address seen on the memory interface.
                 (2) Compares the bank address at the User's interface with the ba[2:0] signals and the chip select asserted at the memory interface.
                 (3) On a write operation, compares the data presented at the User's interface with the data written into the memory.
                 (4) On a read operation, compares the data presented at the memory interface with the data presented at the User's interface.
                 (5) Monitors the bank management function.
                 (6) Monitors X-propagation

      - odt_watchdog:  Monitors the assertion of the ODT signal.  The time of ODT signal assertion and the duration for which it should remain asserted depends on the Burst length, CAS Latency, CAS_Write_Lantency, Additive Latency and Read/Write command

2. Sequence of opeartion (Burst Chop 4, Burst Length 8, On-The-Fly):
   1) Burst count = 1, data mask disable
   2) Burst count = N, data mask disable

3. Waveform description:
   Reset DDR3 SDRAM memory and the controller
   Initialize DDR3 SDRAM memory
   Write-Leveling
   Self-Refresh Entry and Exit
   Power-Down Entry and Exit
   Load Mode Register with Burst Chop 4
   Write/Read with burst count is 1
   Write/Read with burst count is N
   Load Mode Register with Burst Length 8
   Write/Read with burst count is 1
   Write/Read with burst count is N
   Load Mode Register with Burst Length On-The-Fly
   Write/Read with burst count is 1
   Write/Read with burst count is N
