rails and screw distancing

safeZone = 4mm
railDiam = 8mm
screwDiam = 8mm

minViseWidth = |safeZone|railDiam|safeZone|screwDiam|safeZone|railDiam|safeZone|

minViseWidth = | 4mm | 8mm | 4mm | 8mm | 4mm | 8mm | 4mm |
minViseWidth = 40

but the screw needs something to screw into
so I'll deconstruct the screw into possibilities

I can use a standard M8 screw, or a T8 leadscrew

depending on preference, I should be able to calculate the screw actual
dimension around (accounting for the bearings located in the base walls)

bearings are a nice way to keep the motion constrained.

a bearing for an 8mm rod measures roughly 22mm in diam

so the calculation becomes
minViseWidth = | 4mm | 8mm | 4mm | 22mm | 4mm | 8mm | 4mm |

minViseWidth = 54mm