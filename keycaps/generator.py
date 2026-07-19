from OPK.opk import *
from cadquery.vis import show
from cadquery import exporters

capu    = keycap(unitX = 1, angle = 0, height = 10, thickness = 1.6)
capuu   = keycap(unitX = 2, angle = 0, height = 10, thickness = 1.6, convex = True)

exporters.export(capu,  'keycap_1u.step')
exporters.export(capuu, 'keycap_2u.step')
