/*
music_play(global.music_[name],'mp3','loop');
argument0 = music to play
argument1 = type of music: mp3
argument2 = way to play the music: 'loop' or 'play'
Type is a useful argument if you were using e.g. both NSF 
and OGG music formats together, then you could execute
both playing behaviors from the same script.
*/

with (system_obj)
{
    type = argument1;
    
    if (type == 'mp3')
    {
        global.bgmusic = argument0;
        if (argument2 == 'loop') sound_loop(global.bgmusic);
        if (argument2 == 'play') sound_play(global.bgmusic);
    }
}
