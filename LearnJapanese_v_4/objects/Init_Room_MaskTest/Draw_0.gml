
if (start_xloc <150){

surface_set_target(painting_surface);

  draw_clear(c_green);
  draw_sprite(spr_KanjiComponent,6,start_xloc,start_yloc + 150)

  draw_set_font(fnt_100Kanji);
  
  draw_set_color(c_black);
  draw_set_valign(fa_middle);
  draw_set_halign(fa_center);

  font_scale = 4;
  draw_text_ext_transformed(start_xloc,start_yloc,"四",0,200,font_scale,font_scale,0);

surface_reset_target();

start_xloc +=5;
}

draw_surface(painting_surface,100,100);

draw_sprite(spr_KanjiComponent,7,251,251)
