local sb_frame_style =
{
  type="frame_style",
  parent="frame_style",
  graphical_set=
  {
    type = "monolith",
    top_monolith_border = 1,
    right_monolith_border = 1,
    bottom_monolith_border = 1,
    left_monolith_border = 1,
    monolith_image =
    {
      filename = "__SpeedButtons__/resources/GUI/blank.png",
      width = 1,
      height = 1,
      x = 0,
      y = 0
    }
  }
}

local sb_button_style =
{
  type="button_style",
  parent="button_style",
  top_padding = 0,
  right_padding = 3,
  bottom_padding = 3,
  left_padding = 0,
  
}
data.raw["gui-style"].default["sb_frame_style"] = sb_frame_style
data.raw["gui-style"].default["sb_button_style"] = sb_button_style

