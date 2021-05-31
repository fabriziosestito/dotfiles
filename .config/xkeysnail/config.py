# -*- coding: utf-8 -*-

import re
from xkeysnail.transform import *

# define timeout for multipurpose_modmap
define_timeout(1)


define_multipurpose_modmap(
    {Key.CAPSLOCK: [Key.ESC, Key.LEFT_META]},
)
