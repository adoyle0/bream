-- Binds that affect awesome

globalkeys = Gears.table.join(
  globalkeys,

  Awful.key({ Modkey, 'Shift' }, 'e', awesome.quit, {
    description = 'quit awesome',
    group = 'awesome',
  }),

  Awful.key({ Modkey, 'Shift' }, 'p', function()
    Awful.spawn.easy_async_with_shell('bream setbg', function()
      awesome.restart()
    end)
  end, {
    description = 'set new random wallpaper/color scheme',
    group = 'awesome',
  }),

  Awful.key({ Modkey }, 'BackSpace', awesome.restart, {
    description = 'reload awesome',
    group = 'awesome',
  }),

  Awful.key({ Modkey }, 'F1', Hotkeys_popup.show_help, {
    description = 'show help',
    group = 'awesome',
  }),

  Awful.key({ Modkey, 'Shift' }, '/', Hotkeys_popup.show_help, {
    description = 'show help',
    group = 'awesome',
  }),

  Awful.key({}, 'Print', function()
    os.execute 'bream screenshot'
  end, {
    description = 'run screenshot script',
    group = 'awesome',
  })
)
