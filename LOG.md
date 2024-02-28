# Wed 28 Feb 14:36:01 CET 2024

Feedback from Harald Pretl: Resistors should be larger than the Ron of the MOSFETs, so that R2R action is dominated by the poly resistors, not the MOSFET. I suggest 10kOhm and higher. 
Since the value is large you should go with the "high" type of the poly res.

# Wed 21 Feb 10:45:08 CET 2024

the Klayout FEOL DRC errors went away when I used this openlane

efabless/openlane:d054702b2cce04761cc2bc598f6b95c9d8ca7c6c-amd64

and PDK

volare/sky130/versions/78b7bc32ddb4b6f14f76883c2e2dc5b5de9d1cbc/sky130A

