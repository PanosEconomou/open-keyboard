from OPK.opk import *
from cadquery.vis import show
from cadquery import exporters

capu    = keycap(unitX = 1, angle = 0, height = 7.5, thickness = 1.5)
capuu   = keycap(unitX = 2, angle = 0, height = 7.5, thickness = 1.5, convex = True)

exporters.export(capu,  'keycap_1u.step')
exporters.export(capuu, 'keycap_2u.step')
