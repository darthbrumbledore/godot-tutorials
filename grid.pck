GDPC                                                                               <   res://.import/box.png-196cb2b6d7422a4ab3b9c60b5a994fe3.stex �F      �       
E���h�|S�f�a��X<   res://.import/goal.png-d8026b4c83cd0c976a2c07258ba1a29e.stex�J      �       O]B�tn�u�k�|<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stexN      U      �G͍r&E�`� �g��@   res://.import/player.png-2dd0af52de4b213777cd8c9df94c0978.stex   ^      �       ~(Д�=,*��<   res://.import/wall.png-e3261c66ad83b71f524576fb4f3c7b5b.stex�a      �       �Vc������
l>�   res://Box.gd.remap  `�             Jn��m���p�o��l�   res://Box.gdc         �      ������1�,o   res://Box.tscn  �	      &      ��z���	d���   res://Game.gd.remap ��             b3`���ƀ��YPM>   res://Game.gdc         �      DjB��|�د�\{�   res://Game.tscn        `,      ��Ӗ׎�Xx~�$sJ   res://Player.gd.remap   ��      !       ��0�F �qq��dX��   res://Player.gdc�:            �w<tqhAT�ڢ?ۢ   res://Player.tscn   �>      #      .�V^��W|�ae�    res://Spot.gd.remap Е             �M��b��ï;���   res://Spot.gdc  �@      �      ��7����#K�vw   res://Spot.tscn `B      �      }d�8� �Į��-x_7   res://Wall.tscn  E      �      ��T�;�DkG딍�   res://box.png.import�G      ~      {bPr���̆�,=#�   res://default_env.tres   J      �       um�`�N��<*ỳ�8   res://goal.png.import   �K      �      ��@�O?����.B"   res://icon.png  �      �      G1?��z�c��vN��   res://icon.png.import   p[      �      %��%�8��IN�Bv�   res://player.png.import �^      �      U2as�9k�]��	?   res://project.binary�      =      �<��'��l�z�|;   res://wall.png.import   0b      �      ��ക޺{����Y    res://yoster-island.regular.ttf �d      �0      �O���Y�,]+    GDSC            d      ������������τ�   ��϶   ������򶶶   ��������Ӷ��   �����Ŷ�   �涶   ��������   ���ⶶ��   ����ⶶ�   ���Ӷ���   ��Ķ   ���������Ŷ�   ������ٶ   �������������������Ӷ���   �����������Ѷ���   �������ض���            ui_up         ui_down       ui_left       ui_right                                
                        "      )   	   /   
   1      2      9      C      I      O      X      \      _      b      3YY5;�  W�  Y;�  Y;�  N�  �  V�  T�  R�  �  V�  T�  R�  �  V�  T�  R�  �  V�  T�  YO�  Y0�	  P�
  QV�  ;�  �  L�
  M�  �  �  T�  �  �  �  T�  PQ�  &�  T�  PQV�  �  �  �  .�  �  .�  Y` [gd_scene load_steps=3 format=2]

[ext_resource path="res://box.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 7.33298, 6.02036 )

[node name="Box" type="KinematicBody2D" groups=[
"box",
]]

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
centered = false

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 8, 8 )
shape = SubResource( 1 )

[node name="RayCast2D" type="RayCast2D" parent="."]
position = Vector2( 8, 8 )
cast_to = Vector2( 0, 16 )
          GDSC            H      ���ӄ�   �������Ҷ���   �������Ŷ���   �����׶�   ����Ŷ��   ����Ŷ��   ��������������¶   ߶��   �����������ض���   �������Ҷ���   �����������Ѷ���   ����ƶ��                                                   	                         +   	   1   
   5      ;      B      F      3YY;�  YY0�  P�  QV�  &�  V�  ;�  W�  T�  PQ�  )�  W�  T�  PQV�  &�  T�	  V�  �  �  �  &�  �  V�  W�
  T�  PQ�  �  �  Y`            [gd_scene load_steps=8 format=2]

[ext_resource path="res://Player.gd" type="Script" id=1]
[ext_resource path="res://Player.tscn" type="PackedScene" id=2]
[ext_resource path="res://Wall.tscn" type="PackedScene" id=3]
[ext_resource path="res://Spot.tscn" type="PackedScene" id=4]
[ext_resource path="res://Box.tscn" type="PackedScene" id=5]
[ext_resource path="res://Box.gd" type="Script" id=6]
[ext_resource path="res://Game.gd" type="Script" id=7]

[node name="Node2D" type="Node2D"]
script = ExtResource( 7 )

[node name="Camera2D" type="Camera2D" parent="."]
anchor_mode = 0
current = true
zoom = Vector2( 0.25, 0.25 )

[node name="Player" parent="." instance=ExtResource( 2 )]
position = Vector2( 32, 48 )
script = ExtResource( 1 )

[node name="AcceptDialog" type="AcceptDialog" parent="."]
margin_left = 128.0
margin_top = 64.0
margin_right = 211.0
margin_bottom = 122.0
window_title = "(====8"
dialog_text = "Suck my dick!"

[node name="Walls" type="Node2D" parent="."]

[node name="Wall" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 16, 0 )

[node name="Wall2" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 32, 0 )

[node name="Wall3" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 48, 0 )

[node name="Wall4" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 64, 0 )

[node name="Wall5" parent="Walls" instance=ExtResource( 3 )]

[node name="Wall6" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 0, 16 )

[node name="Wall7" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 0, 32 )

[node name="Wall8" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 0, 48 )

[node name="Wall9" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 0, 64 )

[node name="Wall10" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 80, 0 )

[node name="Wall11" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 112, 0 )

[node name="Wall13" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 128, 0 )

[node name="Wall14" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 144, 0 )

[node name="Wall15" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 160, 0 )

[node name="Wall16" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 208, 0 )

[node name="Wall19" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 224, 0 )

[node name="Wall20" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 240, 0 )

[node name="Wall21" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 256, 0 )

[node name="Wall22" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 272, 0 )

[node name="Wall23" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 288, 0 )

[node name="Wall24" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 304, 0 )

[node name="Wall25" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 304, 16 )

[node name="Wall26" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 304, 32 )

[node name="Wall27" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 304, 48 )

[node name="Wall28" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 304, 64 )

[node name="Wall29" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 304, 96 )

[node name="Wall31" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 304, 112 )

[node name="Wall32" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 304, 128 )

[node name="Wall33" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 304, 144 )

[node name="Wall34" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 304, 160 )

[node name="Wall35" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 288, 160 )

[node name="Wall36" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 272, 160 )

[node name="Wall37" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 256, 160 )

[node name="Wall38" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 240, 160 )

[node name="Wall39" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 224, 160 )

[node name="Wall40" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 208, 160 )

[node name="Wall41" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 192, 160 )

[node name="Wall42" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 160, 160 )

[node name="Wall43" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 176, 160 )

[node name="Wall44" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 144, 160 )

[node name="Wall45" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 128, 160 )

[node name="Wall46" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 112, 160 )

[node name="Wall47" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 96, 160 )

[node name="Wall48" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 80, 160 )

[node name="Wall49" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 64, 160 )

[node name="Wall50" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 48, 160 )

[node name="Wall51" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 32, 160 )

[node name="Wall52" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 16, 160 )

[node name="Wall53" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 0, 160 )

[node name="Wall54" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 0, 144 )

[node name="Wall55" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 0, 128 )

[node name="Wall56" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 0, 112 )

[node name="Wall57" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 0, 96 )

[node name="Wall58" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 0, 80 )

[node name="Wall59" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 16, 48 )

[node name="Wall60" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 48, 48 )

[node name="Wall61" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 48, 32 )

[node name="Wall62" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 48, 16 )

[node name="Wall63" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 48, 64 )

[node name="Wall64" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 48, 80 )

[node name="Wall65" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 48, 96 )

[node name="Wall66" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 48, 112 )

[node name="Wall67" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 64, 112 )

[node name="Wall68" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 64, 128 )

[node name="Wall69" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 80, 128 )

[node name="Wall70" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 96, 128 )

[node name="Wall71" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 112, 128 )

[node name="Wall72" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 112, 112 )

[node name="Wall73" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 112, 96 )

[node name="Wall74" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 96, 96 )

[node name="Wall75" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 96, 112 )

[node name="Wall76" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 80, 112 )

[node name="Wall77" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 64, 96 )

[node name="Wall79" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 64, 16 )

[node name="Wall80" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 112, 48 )

[node name="Wall81" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 112, 32 )

[node name="Wall82" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 112, 16 )

[node name="Wall83" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 144, 16 )

[node name="Wall84" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 144, 32 )

[node name="Wall85" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 144, 48 )

[node name="Wall86" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 160, 48 )

[node name="Wall87" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 176, 48 )

[node name="Wall88" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 192, 48 )

[node name="Wall89" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 192, 64 )

[node name="Wall90" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 208, 64 )

[node name="Wall91" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 224, 64 )

[node name="Wall92" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 240, 64 )

[node name="Wall93" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 240, 48 )

[node name="Wall94" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 240, 32 )

[node name="Wall95" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 240, 16 )

[node name="Wall96" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 160, 112 )

[node name="Wall97" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 176, 112 )

[node name="Wall98" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 192, 112 )

[node name="Wall99" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 208, 112 )

[node name="Wall100" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 208, 128 )

[node name="Wall101" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 208, 144 )

[node name="Wall102" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 240, 112 )

[node name="Wall103" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 240, 128 )

[node name="Wall104" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 240, 144 )

[node name="Wall105" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 256, 112 )

[node name="Wall106" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 272, 112 )

[node name="Wall107" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 288, 112 )

[node name="Wall108" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 288, 112 )

[node name="Wall109" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 112, 64 )

[node name="Wall78" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 80, 96 )

[node name="Wall30" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 304, 80 )

[node name="Wall17" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 192, 0 )

[node name="Wall18" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 176, 0 )

[node name="Wall12" parent="Walls" instance=ExtResource( 3 )]
position = Vector2( 96, 0 )

[node name="Spots" type="Node2D" parent="."]

[node name="Spot" parent="Spots" instance=ExtResource( 4 )]
position = Vector2( 288, 80 )

[node name="Boxes" type="Node2D" parent="."]

[node name="Box" parent="Boxes" instance=ExtResource( 5 )]
position = Vector2( 80, 48 )
script = ExtResource( 6 )
GDSC            �      ������������τ�   ��϶   ������򶶶   ��������Ӷ��   �����Ŷ�   �涶   ��������   ���ⶶ��   ����ⶶ�   ���������������¶���   ����¶��   ��Ķ   ���Ŷ���   ����������������Ҷ��   ���Ӷ���   ���������Ŷ�   ������ٶ   �������������������Ӷ���   �����������Ѷ���   �������ض���   �������Ķ���   �����������Ķ���   ����������ƶ            ui_up         ui_down       ui_left       ui_right      box                    
                        "      )   	   /   
   1      2      9      C      L      Q      R      Y      c      i      o      x      |            �      �      �      �      3YY5;�  W�  Y;�  Y;�  N�  �  V�  T�  R�  �  V�  T�  R�  �  V�  T�  R�  �  V�  T�  YOYY0�	  P�
  QV�  )�  �  T�  PQV�  &�
  T�  P�  QV�  �  P�  Q�  Y0�  P�  QV�  ;�  �  L�  M�  �  �  T�  �  �  �  T�  PQ�  &�  T�  PQV�  �  �  �  (V�  ;�  �  T�  PQ�  &�  T�  P�  QV�  &�  T�  P�  QV�  �  �  Y`  [gd_scene load_steps=3 format=2]

[ext_resource path="res://player.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 5.74831, 6.42967 )

[node name="KinematicBody2D" type="KinematicBody2D"]

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
centered = false

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 8, 8 )
shape = SubResource( 1 )

[node name="RayCast2D" type="RayCast2D" parent="."]
position = Vector2( 8, 8 )
cast_to = Vector2( 0, 16 )
             GDSC            7      ���ׄ�   �������Ҷ���   ��������������������Ҷ��   ���϶���   ����������ƶ   �������������������Ҷ���             box                                	      
                     	      
          !      (      1      5      3YY;�  YYYY0�  P�  QV�  &�  T�  P�  QV�  �  �  YYY0�  P�  QV�  &�  T�  P�  QV�  �  Y`       [gd_scene load_steps=4 format=2]

[ext_resource path="res://goal.png" type="Texture" id=1]
[ext_resource path="res://Spot.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 6.86104, 6.96423 )

[node name="Spot" type="Area2D"]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
centered = false

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 8, 8 )
shape = SubResource( 1 )
[connection signal="body_entered" from="." to="." method="_on_Spot_body_entered"]
[connection signal="body_exited" from="." to="." method="_on_Spot_body_exited"]
           [gd_scene load_steps=3 format=2]

[ext_resource path="res://wall.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 6.96434, 6.60334 )

[node name="Wall" type="StaticBody2D"]

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )
centered = false

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 8, 8 )
shape = SubResource( 1 )
        GDST               �   PNG �PNG

   IHDR         ��a   sRGB ���   [IDAT8�c�Ys����������C����.@$�f� b\�b	1����4 �+���D�@�0��$�J�� ��&g��P0H� ���!�O;    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/box.png-196cb2b6d7422a4ab3b9c60b5a994fe3.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://box.png"
dest_files=[ "res://.import/box.png-196cb2b6d7422a4ab3b9c60b5a994fe3.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST               �   PNG �PNG

   IHDR         ��a   sRGB ���   fIDAT8�c|������<�Ȃ���D���3������*B�bXpIH���6q.@׌K���Aj � ��8c��\@
�������0`�r�1� J�ނ��    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/goal.png-d8026b4c83cd0c976a2c07258ba1a29e.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://goal.png"
dest_files=[ "res://.import/goal.png-d8026b4c83cd0c976a2c07258ba1a29e.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               GDST@   @            9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               GDST               �   PNG �PNG

   IHDR         ��a   sRGB ���   {IDAT8��RA�0+�y�>�x�I�dB�e��i��6��:�%���Z�#܍��f����}Jf.��H��gC�[�#u_��d���I�e���Tg�WKlE�YO��+�Q���f�¿�v)rx #|{���,    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/player.png-2dd0af52de4b213777cd8c9df94c0978.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://player.png"
dest_files=[ "res://.import/player.png-2dd0af52de4b213777cd8c9df94c0978.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         GDST               �   PNG �PNG

   IHDR         ��a   sRGB ���   CIDAT8�c<l%�J��"ǈ$ΈKE�#���<#6����n(\=M���;�@1`4( ����  ��Ax�    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/wall.png-e3261c66ad83b71f524576fb4f3c7b5b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://wall.png"
dest_files=[ "res://.import/wall.png-e3261c66ad83b71f524576fb4f3c7b5b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
                    �  PGDEF � �  /   $GSUB���  /0   ROS/2Q�|�  X   Vcmap��a�    .gasp��   �   glyf��^�  4  #�headܜ>�   �   6hhea�%     $hmtx<N+�  	D  �loca1X  H   �maxp � _  8    name��y  �  `postQ�  /�      �Qx��_<�      �D�A    �D�A  �V�R             R�V \T    �                z    } \             @       ��   � �   � � �   � 3	         �              PfEd @   &R�V \R �   �       ��    V        J          L        h       V x       * �        �               %8       ^       l       +t       �       �       �      J�           <     VL     *�     �     �  	   J    	   L  	   h  	  V x  	  * �  	   �  	   T r u e T y p e   c o n v e r s i o n   �   2 0 0 3   c o d e m a n 3 8 .   Y o s t e r   I s l a n d   R e g u l a r   P f a E d i t   :   Y o s t e r   I s l a n d   R e g u l a r   :   3 0 - 6 - 2 0 0 3   Y o s t e r   I s l a n d   R e g u l a r   V e r s i o n   1 . 0 1     Y o s t e r I s l a n d R e g  TrueType conversion � 2003 codeman38. Yoster Island Regular PfaEdit : Yoster Island Regular : 30-6-2003 Yoster Island Regular Version 1.01  YosterIslandReg  T r u e T y p e   c o n v e r s i o n   �   2 0 0 3   c o d e m a n 3 8 .   Y o s t e r   I s l a n d   R e g u l a r   P f a E d i t   :   Y o s t e r   I s l a n d   R e g u l a r   :   3 0 - 6 - 2 0 0 3   Y o s t e r   I s l a n d   R e g u l a r   V e r s i o n   1 . 0     Y o s t e r I s l a n d R e g                (         >        # ' . ? [ ] ~ � � � � � � � � � � � � � � � � �   " &��        & * 0 A ] ` � � � � � � � � � � � � � � � � �   " &��   �����������������������������������������~�}�{�z�_�]�Y�V    <                                                                                               	
   !"#$%&'()*+,-./012345678 9  :;<=>?@ABCDEFGHIJKLMNOPQRSTUVWX [ \^ cg ijk  lnmo   pq   rs  tuv       h                                   Y                         Z_  ] `a  b  efd                    % ? �	Gr�����3No���6Wj����D_w����)Ml���=St���2Li���2Sv���		'	<	[	y	�	�	�
	
/
L
g
�
�
�&��B_���:_���Bk���Fy�� +[|���Fl~������      U  T  � U� UT �T �T �� UT �T U  UT U� U� �� U� U� U� U� U� U� U� U� �� �� U� �� UT U� U� U� U� UT UT U� U� U� U� U� UT U� U� U� U� U� U� U� U� U� U� U� U� U� U� U�  � U� U� U� U� U� UT UT U� U� UT UT U� UT U� U� U� U� U� UT UT UT U� U� U� U� U�  � UT UT UT �� U� U� U� U� U� U� U� U  U  U� U� U� U� U� U� U� U� U� U� U� UT UT UT U� U� U� U� U� U� U� UT �T �� � U � �       �c   1!�c��  U��T� 	   3###33#��UUUUU�����UT�W�   U���    3##53%3##53�UUUU �UUUU��U���U�  ��V�� + S W [  333!###!#!5#5##!5#5!5#5#5#5!53531###33#33535333535#53535#5#5#53#73#�UUUTUUU �U��UUU��U �UUUTUUUU�UUUUUUUUUUUUU�UU�UU�UU�UUUUUU��UUUUUU��UUUUUUUUUU�UUUUUUUU�UUUUU����  ��V�� ) M Q  3333#353###!535#5#5#5#5#35335313#5#5#3!33353535###5#535#53#S�UUUU��UUU��U�U�UUU�UUUU��U ��UU�UUUUUU��UU�UUU�UU�UUUUUUUUU �UUUU�UU�U�UUUU�UUU�����U   ��TR 	  3##535#��UUUUR�UUU  U U�S #  3335353##33#5#5###53535#5#UUUUUUUUUUUUUUUUUUUSUUUUUUUU�UUUUUUUU  ��V��     !!#!#!#33535#53#�� ���W� ��UUUUUUUU���W� ��UUUUUUUUU  U�V � � 	  73##535#U�UUUU��UUU   U ��T   !!US��TU  U�� � U   73#U��U�   U  ��    !33###5#5#35;#353 � �UUUU�UUUUUU�U�UU��UUUU �����U�  �  ��   !#3!533# � �UU��UUU����UU � �  U  ��   !3###!53!535353535##53 �TUU�U �U�UU�U��U�U�UUUU��UUU�UU  U  �� #  !3#33#!5#5333535#5#535##53�TUUUUU�WUUU�UUUU��U�U�UU�UU�UUUUUU�UU  U  S�   33533#3##5#U�UU�UUU����W� ���U��  U  ��   3!#!3#!5#53!5!�� �� �UU�WU� ����UU�U�UUUU�   U  ��    !##!3#!5#5#353335#5 � ��UTUU��UUUUU�U�UUUU�UUUTU��U�U   U  ��   !####353535##53��UUU�UUU��U��U�� ��UU��  U  ��   #  !3#33#!5#53535#5;35#3535 � �UUUUU�WUUUUUUUUU�U�U�UU�UU�UU����U�U�  U  ��    !3####535#5#;#3535��UUUU�U�UU�U�U�U��U��UU �U�U�  � UT�    3#3#���������  �  T�    3#3##535#����UUUU����UUU  U�V��   3#5#5#5#5#5#5353535353���UUUUUUUUUU��YUUUUUUUUUU  � �SS    !!!!���W��WSU�U  U�V��   333333######U�UUUUUUUUUU��UUUUUUUUUUU  U��S�    !3##53535##533#�TU��UU��UU���U���U�����   U  ��    !33###35;#!5#5 � �UU���UUUU �U�UU� ���UU��U  U  ��     !3#3#!53#!353U�UUUU�UU �����U�U�UU����� �  U  ��   !3#5##335353#!5#5#353 � �U�UUUUU�U��UUUU�UUUU��UUU�UUUTU   U  ��    !33##!3#!#353#5U�UUUU�WUU �U�UU�UU��UUT ���UTU   U  S�   !##!#!!3���U ��T�U�UUUU�US   U  S�   !!!##5#3���� ��UUU�U�U�U�  U  ��   !3#5##33535#5!#!5#5#353 � �U�UUUUU�TU��UUUU�UUUU��UUUU�UUUTU  U  ��   3#!3###3��U �����U�U�T�X ��S   U  ��   !#3!53#UTUU��UU�U�UU�  U  ��   !##!5#353353#� �UU��UUU�UU��UUU �U��U�   U  ��   33535353##333#5#5#5##U�UUUUUUUUU�UUU���UUU�U�UUUUUU�  U  S�   3!!U�T����U   U  ��   3333535353###5##5#UUUUUUUU�UUUUU�UUUUUU�XTUU��U   U  ��   333333#5#5#5##UUUUUU��UUU��UU�U��XUUU�  U  ��    !33#!5#5#35;#3353#5 � �UUU��UUUUUUUUUU�UU�WUUUTUU��UUTU   U  ��    !3#!#;#3535��UU���U�U�U�U�U�SU�U�   U����  #  !33#3#5#5#5#35;#335#53#5 � �UUUU��UUUUUUUUU�U�UU���UUUUTUU��UUU �U  U  ��    !33##33#5#5#5##3535#5U�UUUUUU�UUU���UU�UU�UUUUUUU�S�UUU   U  �� !  !3#5#3333#!5#5335#5#5#53 �TU��UUUUU�WU��UUUU�UUUUUUU�UUUU�UU�   U  ��   !###35#US�U�U��U��W�U   U  ��   3#35333##!5#3��U�UUUUU��UU���WU�U�WUUU�   U  ��   333533####5#5##U�UUU�UUUUUUU����T���UUU� �   U  ��   3353333##5#5###5#U�UUUUUUUUUUUU��W���U�UUUUUU   U  �� '  333535353##33#5#5####53535#5#U�UUUUUUUUU�UUUUUUUUU��UUUU�UUU��UUUU�U�U  U  ��   3333535353#####5#UUUUUUUUUUU�UU�UUUUUU�UU���U  U  ��   !!####!!535353535!U �TUUUUT��UUUU���U�UUUUU�UUUU     �S�    !!#313!5U����UUT������WTU  U�V��    !#!!!!� �U�TU�����U � ���U�  U�V��  #  !3####5#5#5#53#33353535# � ��UUUUUUU�U�UUUUU����UUUUUU���UUUUUU�   U  ��    !33#5##5#535!5#3535 � �UU�U�UU ��UU�U��UUUU�UU��UU  U  ��    33!3##5##53#33U�U �UU�U�UU �UU�U�U��UUUUS��UT  U  ��   !3#5##35!#!5#3��U��U� �U�WUU�UUUU�UUUUT  U  ��    33#3#5##5#35!3#3535#5��UUU�U�UU �UU�UUU�U���UUUUTUU ����U�U   U  S�    !3!353#!5#;35�TU����U��UUU��U��UUUUTUU  U  S�   !3#5#!#3#5##5353 � �U�U ��U�UUUU�UUU�U��UUTU�   U�V�S  ! %  33##33#!5#53535#5#535335!5��UUUUUU�WUU�UUU�U�� �S�UUUU�UU�UUUUUUUU����  U  ��   33!3#3#5#535###53#U�U �UUU�UU�U�UU�U�U��UU������  U  T�    3#33#5#���U�U�U�UU�WUU  U�VS�    3#3###5#53353����UU�U�UU�UU�UUU��U  U  ��   335353##333#5#5###U�UU�UUUUU�UU�U��WUUUUUUUUUU�T  U  T�   3#3#5#3��UU�UU���UU�  U  �S   333533#####UU�U�U�UUU�SUUUU�WT��T��   U  ��   335333#5####U�U�UU�UU�U�UUU��UU ����  U  ��    !33##!5#35;#3535#5 � �UUUU��UUUUU�UU�UU�UUU �UU�U�U  U�V��    335!3####3#!#3U�U �UU�U�UUTU��UUU�UU� �TU� �   U�V��    !353##3#5#5#5#535;#3535 � �UUUUU�U�UUUUUUU�UU�U�UU�U�UU�U�  U  S�   33533#5###U�U�U�U�U�UUU�U���  U  SS   !3#5#33#!5#5335#5#53 � �U�U�UU��U���UUSUUU�U�UUUU�U�   U  S�   33#353##5##53����U�U�UUU��U��UUUUTU  U  ��   335333#5##5#U�UU�U�U�U��WU ���UUU  U  �S   3####5#5#5#533353��UUUUUUU�UUUS���UUU���U�   U  ��   3#35333##5##5#3��UUUU�U�U�UU�U���T�WUUUUT   U  �S #  3###33#5##53535#5#53335353SUUUUU����UUUU�UUUUS�UUUUUUUUU�UUUUUU    �V�S !  3335353######5353535#5#5#U�UUU�UUUU���UUUUUSU�U���UUUU�UUUU�  U����   !3###33#5!535353535#�T�UUUU����UUUU��UUUUUUUUUUUUU  U�V�� # A S W  335!3333###!5#5#5#5#353531##333!535#53#5#5#5##5!3##53535!#533#T�U ��UUUUU��W�UUUUUUUUUU���U�UU��UTU��U���UUU���UUUUUU��UUUUUUTUUUU��UUUUUU �UUUUU�U�UUUUUU��U  U�V�� % A U  335!3333###!5#5#5#535#5353531##3#33!5353#5#5##53333#!#535353T�U ��UUUUU���UUUUUUUUUUUU���U���UU�UUU����UUU�UUUUUU��UUUUU�U�UUUU�U�UUU� ��UUUUUUUU� �UUU   ��V��  # + / 3 7 ;  !3333!35353531###!#5#5#5!##5#3#353353!5S ��UUU��UUU��UU�UU�� �UUUUUU�WUUU���UUU����UUUU�� ��UUU�UU�U�UUUUUU  U U�T   !3353##5#5##53� �UUUU�UUUUTUUUUUUUUU   U  �R    3333###353535##!5#5TUUUU���UU�UU �URU���W ��T�UU�U��U   U  �R   !  3333###3535#53135#!5#5 ��UUU���UUUU�UU �URU���W ��T�UUUU�U��U   U  �R      3#%3#!33###35;#!5#5��� ���� �UU���UUUU �URUUUUUU� ���UU��U  U�V�� %  !3#5##335353####535#5#5#353 �TU��UUUU�UUU��UUUUU�UUUU��UUU�UUUUUUUTU  U  �R    33#5#!!!#!!3 ��U�UU��� �����URUUU�U�U�U�  U  �R    3##53!##!#!!3T�U�U���U �����URUUU�UUUU�U�   U  �R    !3#5##53!##!#!!3 � �U�U�UU��U �����URUUUUU�UUUU�U�  U  �R    !3#5##53!##3!5353#� �U�U�UTUUU��UUURUUUUU�U��UU� �  U  �R     3#%3#!##3!5335#U�� ����TUUU��UUURUUU�U��UU ��  U  �R   )  !3#5##53!33#!5#5#35;#3353#5 � �U�U�U �UUU��UUUUUUUUUURUUUUU�UU��UUU �UU�UU �U   U  �R    %  3#%3#!33#!5#5#35;#3353#5��� ���� �UUU��UUUUUUUUUURUUUUUU�WUUUTUU��UUTU   U  �R    33#5#3#3533##!5#3 ��U�UU�U�U�UU��UURUUU����U��WUUUT   U  �R    3##533#3533##!5#3T�U�U��U�U�UU��UURUUU����U��WUUUT   U  �R    !3#5##533#3533##!5#3T �U�U�U��U�U�UU��UURUUUUU����U��WUUUT  U  �R     3#%3#3#3533##!5#3��� �����U�U�UU��UURUUUU���U��UUU�  U����     !3#3##5###53373533 �TUUUU�UUUUUU��UU�U�U�UUUU��U����U �  U  ��   !  33#5#!33#5##5#535!5#3535 ��U�U �UU�U�UU ��UU�UUU�U��UUUU�UU��UU  U  ��   %  !3#5##53!33#5##5#535!5#3535 � �U�U�U �UU�U�UU ��UU�UUUUU�U��UUUU�UU��UU   U  ��    !  3#%3#!33#5##5#535!5#3535��� ���� �UU�U�UU ��UU�UUU�U��UUUU�UU��UU  U�V�S !  !3#5##!53##3##535#5#5#3��U��U ��U�UU��UUUUSUUUU�UUUUUUUUUUT   U  S�     33#5#!3!353#!5#;35 ��U�UUTU����U��UUU��UUU�U��UUUUTUU  U  S�     3##53!3!353#!5#;35T�U�U�TU����U��UUU��UUU�U��UUUUTUU  U  S�   !  !3#5##53!3!353#!5#;35 � �U�U�UUTU����U��UUU��UUUUU�U��UUUUTUU   U  ��    33#5##533#3#5#53��UU�UU�UU�UU�UUUUU���UU�  U U��     3#73#333#5#UUU�UU��UU�U�UUUU��UUU   U  ��   #  !3#5##53!3##!5#35;#353 � �U�U�UTUUU��UUUUU�U�UUUUU�U�UUU �UU�U �  U  ��      3#%3#!3##!5#35;#353��� ����TUUU��UUUUU�U�UUU�U�UUU �UU�U �   U  ��    33#5#3333#5#!5# ��U�U����UUU��U�UUU��WT��UUU   U  ��    !3#5##533333#5#!5# � �U�U�U����UUU��U�UUUUU��WT��UUU  U  ��     3#%3#3333#5#!5#��� ��������UUU��U�UUU��WT��UUU   ��TR 	  3#3#5#��UUUUR�UUU  ��TR 	  3##535#��UUUUR�UUU  ��S�    33#5#33#5#�UUUU �UUUU���U ���U   U���    3##53%3##53�UUUU �UUUU��U���U�  � ��T   3# ���T�   � �ST     3#73#73#�UU�UU�UUT�����                   {  | |           
  , DFLT      ��    liga                    |                                        }         	 
                     ! " $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > @ C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _ ` a � � b d � e � � � � g � � � h � j k l o q p r v w { |  � � � � � � � �[remap]

path="res://Box.gdc"
  [remap]

path="res://Game.gdc"
 [remap]

path="res://Player.gdc"
               [remap]

path="res://Spot.gdc"
 �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         grid   application/run/main_scene         res://Game.tscn    application/config/icon         res://icon.png     display/window/size/width            display/window/size/height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         keep)   rendering/environment/default_clear_color      ���>��4>��p>  �?)   rendering/environment/default_environment          res://default_env.tres     