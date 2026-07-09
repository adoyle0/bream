hl.config {
  input = {
    follow_mouse = 1,
    kb_layout = 'us',
    kb_model = '',
    kb_options = 'caps:escape,altwin:menu_win,altwin:meta_win',
    kb_rules = '',
    kb_variant = '',
    repeat_delay = 200,
    repeat_rate = 100,
    sensitivity = 0,

    touchpad = {
      natural_scroll = true,
    },
  },
}

hl.device {
  name = 'tpps/2-ibm-trackpoint',
  sensitivity = 0.35,
}

hl.device {
  name = 'synps/2-synaptics-touchpad',
  sensitivity = 0.2,
}
