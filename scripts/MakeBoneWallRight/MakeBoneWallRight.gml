///@arg pause
///@arg length
///@arg duration
var PAUSE = argument[0];
var LENGTH = argument[1];
var DURATION = argument[2];

var ii = 0;
var b=0;
for(i=0;i<battle_board.up+battle_board.down+11;i+=11){
	ii += 1;
	b[ii] = MakeBoneH(battle_board.x+battle_board.right+LENGTH/2+5,battle_board.y-battle_board.up+i,LENGTH,0,0,BONE.WHITE,0,0,0,PAUSE+8+DURATION);
	with(b[ii]){
		Anim_Create(id,"x",0,0,x,-LENGTH,8,PAUSE);
		Anim_Create(id,"x",0,0,x-LENGTH,LENGTH*2,16,16+PAUSE+DURATION);
		a = instance_create_depth(0,0,0,shaker);
		a.target = id;
		a.var_name = "y";
		a.shake_distance = 2;
		a.shake_speed = 1;
		a.shake_random = 0;
		a.shake_decrease = 1;
		a.delay = PAUSE + 8;
	}
}
var a = instance_create_depth(0,0,0,battle_bone_stab_alert);
a.duration = PAUSE;
a.x1 = battle_board.x+battle_board.right-2;
a.y1 = battle_board.y-battle_board.up+1;
a.x2 = battle_board.x+battle_board.right-LENGTH;
a.y2 = battle_board.y+battle_board.down-2;
audio_play_sound(snd_exclamation,0,0);