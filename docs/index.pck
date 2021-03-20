GDPC                                                                               @   res://.import/favicon.png-090949abde8974d2ccf751cced4008e4.stex a      U      -��`�0��x�5�[<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex��      U      -��`�0��x�5�[@   res://.import/index.png-0c78d14d192abe5f22f8c25928ca1ab8.stex    q      
]      �녏���	��
*�   res://Scenes/Main.tscn  �            V�
9���,LO�ǫ��$   res://Supervisor/Supervisor.gd.remap��      0       �������C�^'��    res://Supervisor/Supervisor.gdc �      �      ̎���NBUX��#�   res://Tools/cw.gd.remap ��      #       �m=HV/D-�ǒ�
�   res://Tools/cw.gdc  @2      �       ��eI4L�I�D���$   res://UIComponents/Column1.gd.remap ��      /       u�+��0٘<F󁝧A�    res://UIComponents/Column1.gdc  03      >      �0>\�.��|[�w    res://UIComponents/Column1.tscn p4      �      4my�H"$6mJ����T0   res://UIComponents/NumberSelector/Question.tscn  7      H      *�+1#��+�E)����i4   res://UIComponents/NumberSelector/Selector.gd.remap �      ?       (��TP�4���\X.0   res://UIComponents/NumberSelector/Selector.gdc  pE      	      ڪ%�
AB�6d��(��$   res://UIComponents/Subtile.gd.remap P�      /       �\I�) 9쟂1��    res://UIComponents/Subtile.gdc  �M      F      y�>��zk�z_�i��    res://UIComponents/Subtile.tscn �O      �      i;g6�	t�{�m~�b$    res://UIComponents/tile.gd.remap��      ,       �-}�w�T��ϰg   res://UIComponents/tile.gdc �U      `      �J�0K~{�h���S^|   res://UIComponents/tile.tscn�]      {      >/Ge�Rf���   res://default_env.tres  ``      �       um�`�N��<*ỳ�8    res://docs/favicon.png.import   pn      �      �x��6�X�i�ӜC'   res://docs/index.png.import �      �      9���Db�l98o;�   res://icon.png  ��      �      G1?��z�c��vN��   res://icon.png.import    �      �      �����%��(#AB�   res://project.binary��      �      {n!^Ǭ����r���P        [gd_scene load_steps=4 format=2]

[ext_resource path="res://UIComponents/Column1.tscn" type="PackedScene" id=1]
[ext_resource path="res://Supervisor/Supervisor.gd" type="Script" id=2]
[ext_resource path="res://UIComponents/NumberSelector/Question.tscn" type="PackedScene" id=3]

[node name="Main" type="Node2D"]

[node name="PanelContainer" type="PanelContainer" parent="."]
margin_right = 601.0
margin_bottom = 601.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Panel" type="Panel" parent="PanelContainer"]
visible = false
margin_left = 7.0
margin_top = 7.0
margin_right = 594.0
margin_bottom = 594.0
size_flags_horizontal = 3
size_flags_vertical = 3
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Arena" type="VBoxContainer" parent="PanelContainer"]
margin_left = 7.0
margin_top = 7.0
margin_right = 594.0
margin_bottom = 594.0
size_flags_horizontal = 3
size_flags_vertical = 3
script = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Column1" parent="PanelContainer/Arena" instance=ExtResource( 1 )]
margin_right = 587.0
margin_bottom = 193.0

[node name="Column2" parent="PanelContainer/Arena" instance=ExtResource( 1 )]
margin_top = 197.0
margin_right = 587.0
margin_bottom = 390.0
ind = 1

[node name="Column3" parent="PanelContainer/Arena" instance=ExtResource( 1 )]
margin_top = 394.0
margin_right = 587.0
margin_bottom = 587.0
ind = 2

[node name="Question" parent="PanelContainer/Arena" instance=ExtResource( 3 )]
visible = false

[node name="Controls" type="PanelContainer" parent="."]
margin_top = 600.0
margin_right = 600.0
margin_bottom = 648.0
rect_min_size = Vector2( 600, 96 )
rect_clip_content = true
size_flags_horizontal = 0
size_flags_vertical = 0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="V" type="VBoxContainer" parent="Controls"]
margin_left = 7.0
margin_top = 7.0
margin_right = 593.0
margin_bottom = 89.0

[node name="HBoxContainer" type="HBoxContainer" parent="Controls/V"]
margin_right = 586.0
margin_bottom = 39.0
size_flags_horizontal = 3
size_flags_vertical = 3

[node name="Reset All" type="Button" parent="Controls/V/HBoxContainer"]
margin_right = 63.0
margin_bottom = 39.0
rect_min_size = Vector2( 63, 0 )
text = "Reset"

[node name="Load" type="Button" parent="Controls/V/HBoxContainer"]
margin_left = 67.0
margin_right = 130.0
margin_bottom = 39.0
rect_min_size = Vector2( 63, 0 )
text = "Load"

[node name="Save" type="Button" parent="Controls/V/HBoxContainer"]
margin_left = 134.0
margin_right = 197.0
margin_bottom = 39.0
rect_min_size = Vector2( 63, 0 )
text = "Save"

[node name="Yeet" type="Label" parent="Controls/V/HBoxContainer"]
visible = false
margin_left = 279.0
margin_top = 10.0
margin_right = 307.0
margin_bottom = 24.0
size_flags_horizontal = 6
size_flags_vertical = 6
text = "Yeet"

[node name="Filler" type="Label" parent="Controls/V/HBoxContainer"]
margin_left = 201.0
margin_top = 12.0
margin_right = 259.0
margin_bottom = 26.0
size_flags_horizontal = 3

[node name="Yeet2" type="Button" parent="Controls/V/HBoxContainer"]
margin_left = 263.0
margin_right = 329.0
margin_bottom = 39.0
text = "  Check  "

[node name="Filler2" type="Label" parent="Controls/V/HBoxContainer"]
margin_left = 333.0
margin_top = 12.0
margin_right = 392.0
margin_bottom = 26.0
size_flags_horizontal = 3

[node name="Update All" type="Button" parent="Controls/V/HBoxContainer"]
margin_left = 396.0
margin_right = 586.0
margin_bottom = 39.0
rect_min_size = Vector2( 190, 0 )
text = "Solve"

[node name="LineEdit" type="LineEdit" parent="Controls/V"]
margin_top = 43.0
margin_right = 586.0
margin_bottom = 82.0
size_flags_vertical = 3
[connection signal="user_finished" from="PanelContainer/Arena/Question" to="PanelContainer/Arena" method="_on_Question_user_finished"]
[connection signal="pressed" from="Controls/V/HBoxContainer/Reset All" to="PanelContainer/Arena" method="_on_Reset_All_pressed"]
[connection signal="pressed" from="Controls/V/HBoxContainer/Load" to="PanelContainer/Arena" method="_on_Load_pressed"]
[connection signal="pressed" from="Controls/V/HBoxContainer/Save" to="PanelContainer/Arena" method="_on_Save_pressed"]
[connection signal="pressed" from="Controls/V/HBoxContainer/Yeet2" to="PanelContainer/Arena" method="_on_Yeet2_pressed"]
[connection signal="pressed" from="Controls/V/HBoxContainer/Update All" to="PanelContainer/Arena" method="_on_Update_All_pressed"]
      GDSC   Q      �   z     ������������Ķ��   ��������Ҷ��   ����Ŷ��   �����϶�   ������Ӷ   ���Ӷ���   ���Ӷ���   ��Ŷ   ������Ӷ   ��������   ����   ��¶   ߶��   �����Ŷ�   �����Ҷ�   �����ڶ�   ��ڶ   �����ض�   ���������Ӷ�   ������Ӷ   ������Ӷ   ����Ӷ��   �������Ӷ���   �������������������������Ŷ�   �������Ӷ���   �������ض���   ����¶��   ������¶   ��������   �������������������������Ҷ�   �����¶�   �������Ҷ���   ��ڶ   ������������Ŷ��   �������Ӷ���   ϶��   ζ��   ���¶���   ��������Ӷ��   ��ƶ   �����¶�   ����ζ��   ��Ҷ   ����Ӷ��   �����¶�   �����������Ӷ���   ���Ҷ���   ������Ӷ   Ŷ��   �������Ӷ���   �������Ҷ���   ��������������Ҷ��   ���������������������Ҷ�   �����������Ŷ���   ж��   ��������������������Ҷ��   ���Ӷ���   ����ݶ��   ���¶���   ��������¶��   �������Ҷ���   ߄��   ��۶   ����������޶   ��Զ   ڶ��   ض��   �����Ӷ�   ���Ҷ���   ������������¶��   �����¶�   ��ն   ̶��   ���������������Ҷ���   ���Ӷ���   �嶶   ����������Ӷ   ���������¶�   ���ڶ���   ���������������Ҷ���   ��¶      ../../Controls/V/LineEdit         Registered %s                          	         .                                                   0      
   Solving...     ?B       Best score was for %s: %s         No valid moves left    
      -      
   JavaScript     "   window.prompt('Level code:', '%s')        window.prompt('Level code?')                                                    	      
                                  !      *      3      E      F      O      U      V      _      e      o      w      ~      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /     0   
  1     2     3     4     5     6     7     8   %  9   -  :   5  ;   =  <   >  =   B  >   K  ?   L  @   R  A   \  B   b  C   c  D   i  E   n  F   y  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X      Y     Z     [     \     ]   "  ^   9  _   C  `   E  a   H  b   V  c   Z  d   ^  e   d  f   i  g   l  h   q  i   u  j   ~  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x   �  y   �  z   �  {   �  |   �  }   �  ~   �       �   	  �   
  �     �     �     �     �   ,  �   3  �   9  �   F  �   R  �   X  �   e  �   f  �   l  �   s  �   }  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �   $  �   .  �   /  �   ;  �   A  �   B  �   H  �   S  �   ]  �   e  �   p  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �     �   &  �   -  �   .  �   /  �   5  �   <  �   E  �   N  �   O  �   P  �   V  �   _  �   i  �   n  �   q  �   x  �   3YYYYYYY5;�  WYY;�  NOYYY0�  PQV�  -YY0�  P�  V�  QV�  �  L�  T�  M�  �  �?  P�  P�  T�  �  P�  R�  QQQYY0�  P�  V�  QV�  .�  L�  MYY0�	  P�
  V�  QV�  ;�  LM�  )�  �  T�  PQV�  &�  T�
  �
  V�  �  T�  P�  Q�  .�  Y0�  P�  V�  QV�  ;�  LM�  )�  �  T�  PQV�  &�  T�  �  V�  �  T�  P�  Q�  .�  Y0�  P�  V�  QV�  ;�  LM�  )�  �  T�  PQV�  &�  T�  �  V�  �  T�  P�  Q�  .�  YY0�  P�  V�  R�  V�  QV�  ;�  �  L�  M�  �  T�  �  �  �  T�  PQYY0�  P�  V�  QV�  W�  T�  PQ�  W�  T�  �  T�  �  W�  T�  PQYYYYYY0�  PQV�  ;�  W�  T�  �  ;�  W�  T�  �  ;�   W�  T�  Y�  &�  V�  �  P�  RL�   MQYY0�!  PQV�  )�  �  T�  PQV�  �  T�  PQYY0�"  PQV�  ;�  �  �  )�#  �K  P�  R�  QV�  )�$  �K  P�  R�  QV�  ;�  �  )�  �  T�  PQV�  &�  T�  �$  �  T�
  �#  V�  �  �  �  &�Y  P�  QV�  &�X  P�  T�  Q�  V�  �  �  �  '�X  P�  T�  Q�  V�  �  �>  P�  T�  L�  MQ�  (V�  �  �  �  �?  P�  Q�  �  T�%  �  �  .P�  QY0�&  P�'  V�  QV�  ;�(  NO�  )�  �  T�  PQV�  ;�  �  T�)  �  �(  L�  M�  �  �  T�%  �>  P�  Q�  ;�*  �  �  )�  �'  V�  ;�  L�  R�  R�  R�	  R�
  R�  R�  R�  R�  M�  &�  �  �  �  V�  -�  (V�  �(  L�*  MT�  L�  P�  QM�  �*  �  �  �!  PQY0�+  PQV�  �?  P�  Q�  ;�,  �  ;�-  �  �  �%  PQ�  ;�.  �  T�  PQ�  �.  T�/  PQ�  )�  �.  V�  ;�0  �X  P�  T�  Q�  &�0  �  V�  &�0  	�-  V�  �,  �  �  �-  �0  �  &�-  �  V�  �?  P�  L�,  T�  R�,  T�  L�  MMQ�  �,  T�1  �  P�  R�  R�  QY�  ;�2  �,  T�  �  �2  T�/  PQ�  �,  T�  L�,  T�  L�  MM�  �  (V�  �?  P�  Q�  )�  �K  P�  QV�  �3  PQYY0�4  PQV�  �+  PQYYY0�5  PQV�  ;�6  �	  P�	  Q�  )�  �6  V�  �  T�1  �  P�  R�  R�  Q�  �6  �  P�	  Q�  )�  �6  V�  �  T�1  �  P�  R�  R�  Q�  �6  �  P�  P�  R�  QQ�  )�  �6  V�  �  T�1  �  P�  R�  R�  QYY0�7  PQV�  W�  T�8  PQ�  )�  �  T�  PQV�  �  T�  PQYY0�9  P�:  V�  QV�  ;�;  LM�  ;�<  LM�  )�=  �:  V�  ;�   �=  T�  �  &�X  P�   Q�  V�  &�   L�  M�<  V�  �;  T�  P�=  Q�  (V�  �<  T�  P�   L�  MQ�  &�X  P�<  Q�  V�  ;�>  �  �  )�  �:  V�  �>  �  T�  L�  M�  &�>  �  V�  )�  �:  V�  �;  T�  P�  Q�  .�;  Y0�?  P�  V�  QV�  ;�  �  L�  M�  ;�@  �  P�  T�  Q�  ;�  �  P�  T�  Q�  ;�
  �	  P�  T�
  QY�  )�A  L�@  R�  R�
  MV�  )�B  �A  VY�  &�B  �  V�  &�X  P�  T�  Q�  V�  ;�  �  T�  L�  M�  &�  �B  T�  V�  &�X  P�B  T�  Q�  V�  �B  T�  T�C  P�B  T�  T�D  P�  QQ�  �!  PQY0�E  PQVY�  ;�;  LM�  ;�.  �  T�  PQ�  �.  T�F  PQY�  )�  �.  V�  �  T�1  �  P�  R�  R�  R�  Q�  ;�@  �  P�  T�  Q�  ;�  �  P�  T�  Q�  ;�
  �	  P�  T�
  Q�  )�A  L�@  R�  R�
  MV�  ;�G  �9  P�A  Q�  )�H  �G  V�  &P�H  �;  QV�  �;  T�  P�H  Q�  )�  �;  V�  �  T�1  �  P�  R�  R�  QYY0�3  PQV�  �E  PQ�  )�  �  T�  PQV�  �?  P�  T�  QYYY0�I  PQV�  ;�J  �"  PQ�  &�K  T�L  P�  QV�  �M  T�N  P�  �J  QYYY0�O  PQV�  &�K  T�L  P�  QV�  ;�P  �M  T�N  P�  Q�  �&  P�P  Q�  (V�  �&  P�  T�%  QY`           GDSC                   ���Ӷ���   ���������̶�   �����϶�                                     	      
         	      
                                             3Y2�  YYYYYYYY0�  PQV�  -YYYYYY`    GDSC            )      ������������Ķ��   ��Ҷ   ���������Ķ�   �����϶�   ���������¶�                                                           	      
                     "      #      $      %      &      '      3YYYYYYY8P�  Q;�  Y;�  YYY0�  PQV�  �  �  PQYYYYYY`  [gd_scene load_steps=3 format=2]

[ext_resource path="res://UIComponents/Subtile.tscn" type="PackedScene" id=1]
[ext_resource path="res://UIComponents/Column1.gd" type="Script" id=2]

[node name="Column1" type="HBoxContainer"]
margin_right = 586.0
margin_bottom = 586.0
size_flags_horizontal = 3
size_flags_vertical = 3
script = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Subtile" parent="." instance=ExtResource( 1 )]
margin_right = 193.0

[node name="Subtile2" parent="." instance=ExtResource( 1 )]
margin_left = 197.0
margin_right = 390.0

[node name="Subtile3" parent="." instance=ExtResource( 1 )]
margin_left = 394.0
margin_right = 587.0
              [gd_scene load_steps=4 format=2]

[ext_resource path="res://UIComponents/NumberSelector/Selector.gd" type="Script" id=1]

[sub_resource type="NoiseTexture" id=1]
width = 587
height = 587

[sub_resource type="StyleBoxEmpty" id=2]

[node name="Question" type="Node2D"]
script = ExtResource( 1 )

[node name="Overlay" type="Sprite" parent="."]
self_modulate = Color( 1, 1, 1, 0.427451 )
position = Vector2( 293, 293 )
texture = SubResource( 1 )

[node name="ButtonMask" type="Button" parent="."]
margin_right = 587.0
margin_bottom = 587.0
custom_styles/hover = SubResource( 2 )
custom_styles/pressed = SubResource( 2 )
custom_styles/focus = SubResource( 2 )
custom_styles/disabled = SubResource( 2 )
custom_styles/normal = SubResource( 2 )
button_mask = 7
__meta__ = {
"_edit_use_anchors_": false
}

[node name="UI" type="Control" parent="."]
margin_right = 587.0
margin_bottom = 587.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="PanelContainer" type="PanelContainer" parent="UI"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -150.0
margin_top = -75.0
margin_right = 150.0
margin_bottom = 75.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="VBoxContainer" type="VBoxContainer" parent="UI/PanelContainer"]
margin_left = 7.0
margin_top = 7.0
margin_right = 293.0
margin_bottom = 143.0

[node name="Label" type="Label" parent="UI/PanelContainer/VBoxContainer"]
margin_right = 286.0
margin_bottom = 14.0
text = "Set the new value:"

[node name="HSeparator" type="HSeparator" parent="UI/PanelContainer/VBoxContainer"]
margin_top = 18.0
margin_right = 286.0
margin_bottom = 22.0

[node name="HBoxContainer" type="HBoxContainer" parent="UI/PanelContainer/VBoxContainer"]
margin_top = 26.0
margin_right = 286.0
margin_bottom = 42.0

[node name="Min" type="Label" parent="UI/PanelContainer/VBoxContainer/HBoxContainer"]
margin_top = 1.0
margin_right = 8.0
margin_bottom = 15.0
text = "1"

[node name="HSlider" type="HSlider" parent="UI/PanelContainer/VBoxContainer/HBoxContainer"]
margin_left = 12.0
margin_right = 274.0
margin_bottom = 16.0
size_flags_horizontal = 3
min_value = 1.0
max_value = 9.0
value = 5.0
tick_count = 9
ticks_on_borders = true

[node name="Max" type="Label" parent="UI/PanelContainer/VBoxContainer/HBoxContainer"]
margin_left = 278.0
margin_top = 1.0
margin_right = 286.0
margin_bottom = 15.0
text = "9"

[node name="Label2" type="Label" parent="UI/PanelContainer/VBoxContainer"]
visible = false
margin_top = 46.0
margin_right = 286.0
margin_bottom = 60.0
size_flags_horizontal = 3
size_flags_vertical = 6
text = "?"
align = 1
valign = 1

[node name="LineEdit" type="LineEdit" parent="UI/PanelContainer/VBoxContainer"]
margin_top = 46.0
margin_right = 286.0
margin_bottom = 70.0
align = 1

[node name="Cancel" type="Button" parent="UI/PanelContainer/VBoxContainer"]
margin_top = 74.0
margin_right = 286.0
margin_bottom = 94.0
custom_colors/font_color = Color( 1, 0, 0, 1 )
text = "Cancel"

[node name="Commit" type="Button" parent="UI/PanelContainer/VBoxContainer"]
margin_top = 98.0
margin_right = 286.0
margin_bottom = 118.0
custom_colors/font_color = Color( 0.101961, 1, 0, 1 )
text = "Set"
[connection signal="value_changed" from="UI/PanelContainer/VBoxContainer/HBoxContainer/HSlider" to="." method="_on_HSlider_value_changed"]
[connection signal="text_changed" from="UI/PanelContainer/VBoxContainer/LineEdit" to="." method="_on_LineEdit_text_changed"]
[connection signal="pressed" from="UI/PanelContainer/VBoxContainer/Cancel" to="." method="_on_Cancel_pressed"]
[connection signal="pressed" from="UI/PanelContainer/VBoxContainer/Commit" to="." method="_on_Commit_pressed"]
        GDSC   $      E   Q     ���ӄ�   ����Ӷ��   �����������¶���   ����   �������������Ķ�   ������������Ķ��   �������¶���   ������������¶��   �����¶�   �����Ķ�   ������������Ķ��   ������Ķ   ������¶   �������Ҷ���   �����϶�   �������Ҷ���   �������Ŷ���   ����׶��   ������Ӷ   ����¶��   ���������������������Ҷ�   �����������������Ҷ�   �����������������Ҷ�   ����¶��   ���¶���   ���������Ŷ�   ������������������������Ҷ��   �����̶�   ������������������������Ҷ��   ������������Ҷ��   ����������ڶ   ���Ӷ���   �������¶���   ����������Ӷ   ߶��   �������������ض�                            	   ui_accept      	   ui_cancel                user_finished          
             d                                                       	      
         (      7      8      9      :      F      K      L      M      S      Y      Z      [      \      c      g      p      t      }      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8      9     :     ;     <     =   )  >   .  ?   4  @   :  A   @  B   C  C   I  D   O  E   3YYYYYY;�  YYY5;�  W�  �  �  �  Y5;�  W�  �  �  �  Y5;�	  W�  �  �  �
  �  YYYY;�  �  P�  R�  QY;�  �  YYY0�  PQV�  �  T�  �  YYYY0�  P�  QV�  &�  V�  &�  T�  P�  QV�  �  PQ�  &�  T�  P�  QV�  �  PQY0�  PQV�  �	  T�  �  �  T�  �  �  �  T�  �  �  �  T�  PQYYY0�  P�  QV�  ;�  �  P�  Q�  �  T�  �>  P�  Q�  �  P�>  P�  QR�  QYYB�  YY0�  PQV�  �?  P�  Q�  �  �  �  �  P�  Q�  �  PQYYY0�  PQV�  �  �  P�  R�  Q�  �  �  �  �  P�  Q�  �  PQYYY0�  P�   R�!  �  QV�  ;�"  �  P�   Q�  &�"  ^�"  �  P�"  	�	  �"  �
  QV�  &�!  V�  �	  T�  �"  �  T�  �"  �  �  T�  �  �  (V�  �  T�  �  �  �  T�#  �  Y`       GDSC            Z      ����ڶ��   �����¶�   ��Ҷ   ���������Ķ�   �����϶�   ���������¶�   �����������ض���   ���Ҷ���   ߶��   ���������Ҷ�   �������Ŷ���   �����׶�                                                 	   	      
                                       !      6      <      D      J      K      L      M      N      U      V      X      Y3YYYYYYY;�  Y;�  YY;�  YYY0�  PQV�  �  �  PQ�  �  �  T�  PQT�  PQP�  T�  Q�  �  �  T�  �  )�  �  PQV�  �  T�	  �  YYYYY0�
  P�  QVY�  -Y`          [gd_scene load_steps=4 format=2]

[ext_resource path="res://UIComponents/Subtile.gd" type="Script" id=1]
[ext_resource path="res://UIComponents/tile.tscn" type="PackedScene" id=2]


[sub_resource type="StyleBoxFlat" id=1]
bg_color = Color( 0.0666667, 0.0666667, 0.0705882, 1 )

[node name="Subtile" type="Panel"]
margin_bottom = 586.0
rect_min_size = Vector2( 193, 193 )
custom_styles/panel = SubResource( 1 )
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="1" parent="." instance=ExtResource( 2 )]

[node name="2" parent="." instance=ExtResource( 2 )]
margin_left = 64.0
margin_right = 128.0

[node name="3" parent="." instance=ExtResource( 2 )]
margin_left = 128.0
margin_right = 192.0

[node name="4" parent="." instance=ExtResource( 2 )]
margin_top = 64.0
margin_bottom = 128.0

[node name="5" parent="." instance=ExtResource( 2 )]
margin_left = 64.0
margin_top = 64.0
margin_right = 128.0
margin_bottom = 128.0

[node name="6" parent="." instance=ExtResource( 2 )]
margin_left = 128.0
margin_top = 64.0
margin_right = 192.0
margin_bottom = 128.0

[node name="7" parent="." instance=ExtResource( 2 )]
margin_top = 128.0
margin_bottom = 192.0

[node name="8" parent="." instance=ExtResource( 2 )]
margin_left = 64.0
margin_top = 128.0
margin_right = 128.0
margin_bottom = 192.0

[node name="9" parent="." instance=ExtResource( 2 )]
margin_left = 128.0
margin_top = 128.0
margin_right = 192.0
margin_bottom = 192.0
     GDSC   !      E   �     �����ض�   ���Ӷ���   �����¶�   ���������Ҷ�   ��Ҷ   ���������Ķ�   ��Ŷ   �������Ӷ���   �����ض�   ����   ����ζ��   ������Ӷ   �������������������������Ŷ�   ��¶   ���¶���   Ŷ��   �����Ӷ�   ����Ӷ��   ����¶��   �������Ӷ���   �����϶�   ��������϶��   ���������¶�   �����������ض���   ���Ҷ���   ζ��   ϶��   ������Ӷ   ��������Ӷ��   �������Ŷ���   ����׶��   �����������Ҷ��   �������Ӷ���                                                   	         -         |%s|                   @@     �?      A                          Pressed %s,%s                            	                           	      
                     #      .      5      <      =      C      I      O      [      \      b      g      p      y      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *      +     ,     -     .     /     0   8  1   9  2   S  3   T  4   g  5   q  6   r  7   s  8   z  9   {  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   3Y2�  YY;�  Y;�  Y;�  YYYYYY;�  Y;�  �  PRQY;�  LR�  R�  R�  �  R�  R�  R�  �  R�  R�  MYY;�  Y;�	  Y;�
  Y;�  �  PRQYY0�  PQV�  ;�  �	  �  &�X  P�  QV�  �  �
  �X  P�  Q�  '�X  P�  QV�  �  �  L�  M�  �  �>  P�  Q�  ;�  �  P�  R�  RPP�X  P�  Q�  Q�  QQ�  W�  T�  �  P�  R�  QYY0�  PQV�  �  �  �  �  LR�  R�  R�  R�  R�  R�  R�  R�  M�  �  �  PRRRQYY0�  PQV�  -Y0�  PQV�  �  �  PQ�  �  �  T�  T�  PQ�  �  �  T�  PQT�  PQ�  �  �  T�  �  �  �  P�  R�  Q�  �
  �  �	  P�  P�  T�  �  Q�  QP�  P�  T�  �  QQ�
  �  �  P�  P�  T�  Q�  �  QP�  P�  T�  Q�  Q�  �  �  �  P�  P�	  �  QR�  P�  �  QQ�  �
  P�	  �  Q�  �  �  �  �  T�  PQ�  Y;�  �  YY0�  P�  QV�  &�  V�  �  PQ�  �  �  YYY0�  PQV�  �?  P�  L�  R�  MQ�  �  T�   PQY`[gd_scene load_steps=4 format=2]

[ext_resource path="res://UIComponents/tile.gd" type="Script" id=1]

[sub_resource type="OpenSimplexNoise" id=2]

[sub_resource type="NoiseTexture" id=1]
width = 16
height = 16
seamless = true
bump_strength = 32.0
noise = SubResource( 2 )

[node name="1" type="Button"]
margin_right = 64.0
margin_bottom = 64.0
rect_clip_content = true
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 32, 32 )
scale = Vector2( 3, 3 )
texture = SubResource( 1 )
[connection signal="pressed" from="." to="." method="_on_1_pressed"]
     [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG
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
path="res://.import/favicon.png-090949abde8974d2ccf751cced4008e4.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://docs/favicon.png"
dest_files=[ "res://.import/favicon.png-090949abde8974d2ccf751cced4008e4.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
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
  GDST   X          �\  PNG �PNG

   IHDR     X   �v�p   sRGB ���    IDATx���y�\U���Ϲ��Iw��+���-!�EqEP�U@t��}��~*���8 �""(:�	!d���I��=�?��������Nޯ�']�n�{n�ͭ�g�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        L�  �ڌ�7&����� `t�j �L� ���7 ��qu�����L�b( �xqE�Q.�X� �T @q*-t  �sP�/�t��E��JzR�_$��f��'�,I'K�'�)IOK��4��c'�ч+7 �"9���Hz���%-�T���Α��A��~��5H�?��h�
>�J�{�;I�@   p�Z��c���Bk�m��f���'�/�2�>�}7��za��3   �dQ	���^l�����7͊��2��')��Y��7|���@   ȧ*��Z��Z{��v_�5��m=���;����c_z*�g����>����C�w��m=�ӆ���1�+�� 
�N� P�ҨD�Iz���tb���w�kņf=�y�^غO;��H��M�׵���p��;��o����H���v�>s�J���M�4qL�L�c�7��Y���*Ku��OI7H�URo� ŉ�3 �$�zI��IIӒ�c��Z߬�^k�?��Ӡ���q�N�sHt�I�P�O3 �����Y���^٣o��R����_�E�6i�aM�=�.�aI�I?�t����<���b�� �T����$�\����t��ѵ����]zuW{Z��4�J7}�D��x�ɟ�tm����}� �3��y2�[}�Ok[kwZ��T�7͟�79Q5��6m�t��{� P\�:@�
�ܟ(�q��^�[��������S�nl�������p�w���I�+`Z�H��W%5F�]�U?y�Ռ����g6�-GM�)���*�%�"iEP Ņ�3 ������.�N���l�nݱ|���v崿��R��E���|Sҗ3����y��;�+��ں�s*߄�J����:k�$U��ľ�IG'� @q�� E*  yQґ�'�[�Ew�؜s�>څ'Mו���O�%g`���
��.I���t�ӛ]Q�Ue���i������/I:*:�  ���z @��<�f���C��]�M���9V��2��_|�u��U����<Y�;69�� #�  F�a#��!嬷PX�56�Ӓ�b�<ŷ�W+43א{�ݪ��A�e�����N  yA  �ǰ �*�$�q�6u�kP�P��m
L�4�P�L8m����J���t�sn[?"��	@ `�" ��cX%�*��Dg�������C%MVh��Ҩ��pڔ�6C�[�=6�q&�$��� G  �ǰ $]�"�yv�zs�:�7���Uq]���./�M" �Q�  F�a��nH�����_^ܙ�ukm�E��;��ٗ��I�*��~�� �D�-$ @���� D�~�b����hw{�v��hO{�z��7�A?|�xFU�%�(-�!u__��uzdm�,UNU� � �����U�-�����^��-I���:zԡ5w�j͎t��Mme������  Ň.X 0z�~�T[^�rܸڊؤ���  E� �Q����Z�;A�æ�j���4���i����~�I��: �  r�M6�}����[T��@�=. �����J'� $F, �R.���<"���߰J����VcM��hџ��� � �BPO���I�BICV������kȮ�(�]�J:6��2�(�o$A d�  2���Y/�I���>+�2�]�K����$��s0v�j�?f#��~&�.��+%��B�Y���A��?A d�  2���Y+�AI�����G�+�ޯ̯��Iz^ҕ�	>�w���q0�}���M6��R�:-�,=���W$}O��L
}�S�;�M�f� ���  M)*�e��(�ټ ����b�rIߔ��-V�C�w�G֫-�"~P��(�eKf�܅S���%}_җ%�Z��m��#iA���t���D00 ��� Ґ"�0�~!�}��IR)}X��$=��tIwIZ��ƽ����v��+vs'��So9B3������$��x���J:#�	��_(�ʒ�d ��� ���b��u��u���u�ӛ�7���
U�o����o���b�+�+��_o{��#ʚm��۞�]Oo�$.��R�[���J����
>}�������=�9@��\� Vܪ�R�~|@�-�	;�u��w�Ҿ�P�����┙:sބDw�wH���i
ݕvshW[���5za��� �`�X���s5�>n������풮�4)vk�\�K���F�n�$��.�u�,Ԥ�U���_ҭ��A+ $�U �H|��PW��i�ں���;Vi[kW��ӛjt���:u�!i���ך��֨���둩��R}�#�tv���M��٣�~wG�k��T��K��zغ#=
��<�(O� H�+$ $�"��"i������s�yN��jO�������5��:�6�������͉ ��t�I���������ڥ=�N�mnM�ߜ�u�ޅǪb��#�G�pD� �� H�TIZ�P4���o߿Z��ݝV�奞.<i�.:i��J�����7�{I�6%�#��3��w�ژ��}������S��?8>'��G���ϙ������j�C  ��:@��7I�Pt��7���7d���c���7��q3$I����=/vB�f4����/�����ӏ���6��w�K�K�E���&�(��D�!�x\ F�������|}������ztFҙ�'�MGN��X����2B���
���s���]z�Ywi3F����Цؗ�#����� �qU�I���V)4��$ikK�>q�Ju�%\����R���ij��;��J�� �u@  J��T��
>�}}�O�	>"]}��91k�4(�*V��-j p�! ���/KZ��e�S����qo�ny���$}>�{B �u  ��|I_�NX��Y\��@�A�ݻr��|uol�$�+@q `T! ��<�f:Z����O�{`�sĬ���o�Z;���+$�"~[ ).� �܇%-�N���ש����vm�������&/��� F Hl���D'��Ь�^�S���<�ʞ��X��й @  �}JҘȓ��A]�`�o�h�:{�̈́6V�s �  6�կߨ]m=�*�TsG�nrcl��-  $����*����b�:�� � @2�F?9s��|��B�E��Y�z㼸!�m   �dn��|t��Ϝ�ڊ�Ŧ��T�x����+t�  � @b����44¸��BW�vh�J������!u�I
�3�� 	� @r�J��脳����3
T������GO�M��B�   H�I�#O��O�i�*�J
V VEY�>��#d�'����� F 3�$z�W�n5���Ic���3�b�]}��4�*:�Wh��y���[ p�! ��,�tCt�ێ��7��~�ܩs��GO�M����8 0�pK bXk�T�P���i�����۞ն֮�(
lҘ*]��>�I'(���~ �p�� @�$�NI+��MUy�����TZ���@W�}�m�b��I�� ��/& d�9I��0gB�޿tV������Sռ���ɟ��� F- ������Nx�	�t��Ƽ�	�s��F���i�ɿ���D�� �� @)*�WJ�8�������� 1wR}��-�>�h{� H�4�& � �$�������<ct�1Z|X��O���r5Ԕ�o�WsG�v��hņ-_߬�m�3��Z��+���&�8�Q�+�X[��RO-�}j����������Z��M~�	\������ H@  	cL�Y��^�5���9DW�v�&���{���SME��7���YM��gkզV��ȫڸ7p\��1��Z�;e���9$p�����__�y�����iO{��X�Iya�H"	w@� $G  )�B�f|}����#5gb]F�[8�A7\~��|j�n{bc��$ǌ��O���N��/���!u�ě��&�|I{�{�W�>  5ƀ @F�b9or�~���2>"J<���<S_9�(U��8.]�T���+��K��(��v��z����X�R\\G� �! �"3��Z_?�h5T��ג���o���P76�>{�\-�=.�j���w�M5� �]� ���V��޵@��/�]]]Z��)�Z�J�{��[_���Z��(-Y�Dcƌ��ɇ��Kf���7��9�b�,�:琸�}���'�ԋ/����y�SӸ&w�qZ��$UWW�WU^���w�>��g��3��� �D  E��%�4yl�`sI�o�;���_���#���<�UTT���ߥ+�w�***�^�h�t-[��h�Oo�օ'N���ӣ_��+�s���?��O��Iuuu���Kt�������4T齋g��G^�[� �� ��c*���'���٩/|����ƛ�����^�qǝ�Ŀ~R{��J���N=�I9�K=͙P���T^��g䃧6l��޽{��O|Rw�����#���]7�x����/���+p�w;Y�u ��G  E�܅SUVY�}_��Ʒ��3Ϥ�׺u���Q==��	���&Mic�K��o>z�~x����e��7=E�,����)�:�Ц�������|A�֥�j�b�
]��������JK<����� � �%����������3�o������K;��[�v婇�Sf����Y���K�����ٷ����7ݬ�^{-�|�y����{_;ev�� @a� @��X��c*�һ��u�m�g��}�O�v�z~Ҭ��1Ue:��i	_?��i��*�*�g5��s�N�����G�n���a�>�+5�1�� �;  P�Qx�����ޞu�Z�Ȳ��AAN:�7�$]���3�9.�)o��?��2d?cU[[��~���� Ł  �@SmE`�s�=�s��y4�Vd5^��$���Ư�b�4����N�w|�њjs_W �; (e���={��wt���*PȗR�SiTˊ��ݛ �Ѵ"< Ȋ�W b-�}��V6缭���n��W߀�d��?諣��"�����t� ��E  E Q�xܸ���2�G�@��Z:^_�cܸ�g����Ϭ� F  P^���2q��r���c�����m9����;^/ӂ���9���������� �! �"��?���K_�x�����>��<�v�iCϟ|uo����W���>����y��4UWWkѢ���WmjUw_�"� ��G  E�5���jjjt�Ef��Yg�US�L�$���תͭY�/+7�hw�$i��)z�[ߒu^_rq`��Ț�Y�	 p�  ���/��ƽ�q�\zI`��T�N���\����?����G�����MC�?�ѫ5uꔌ�9��#���{;	@ ��� @����]7�Uii���j���i�5m�4}翿���:I�֖.���;�֭?=�]�Z�$Iuuu��w���S�����G��׿�5��_��J�y�z�6���  n� @Y��E�yjS\�رcu�u��%�^����E%���D�s�n����<y�$��oP߸�%_�G����k��:�S�N�2E7��z������$���������رc�^�s�&=��%o� d���  w��4yl�N;b�����r}�CԻ�}�{�1�Z���6�����ƍ��ҩ���I�&��o�׷�_ص��li��w����r�*/�TWW��~�3���K��ez�ŗ�w�^���h\�8w�B-=u��[�v�~�Ć>
 @*  Pd���}�jmn��{O�)�zcc��;�<�w�yI���ݯo��%��5~v��˔�6�9��Ь�����z�Qj�)�$M�4Q]|�.� �{Wn�OyU����C  E�J�퉍zuW�>x�a�ژ�T��Z���ݺ�����_.�w��ܦ5�mұfG����gu�i��s�˘�,�--]�y�z=�Zs� A  El��f��Т79Qo�7AGM�/�B���_����Wm���N˱aO�6����q5��o�۩�{�����W���˺��-:o�T-:�Ic�����^غO�٭_کA�f (f  P�}����C}a��*�4wR�k*4��B�}j��ӎ}=Z��=o�=Y���}�=G��v� ��^}���iu��������k����4il�k�UU^����j��՚�j�q�� �? E�{��bCafu��ܩ��r�޺`��O��$��ަ���C�٫�ŷVkw�i�ζ�� �  ��u���g���B 0j�   �C    `��    1   ���J$ �T@    �f� GfO���ه���O-��Go�`���,T�����\�5�j�.���
]$ 8`� �#��Ň���7ૹ�W-}j�PK���>5w����է<�!�(奞�j*�X
.k+�TS���r�V��)*�nW �  �G奞&��Ҥ1UI�����_{;z���O�}j�|=PY���վS��,Ӽ��W[j��)WSm��V����B�e*-��1  ��O��*4��"����}��/h���#\��a��1���TS�� ;n�(PSQ�˗�,t1���Kf| �(�� yd�n�������5�W[�1�e[]��)ɻqe�o������3�N%^~F>�Vkw���Y�m�]��w��XI����?����/4^��O�&�댹�s/( �  \ymO��]�5�뵕�j���������T��*UU^���ʲ����g�y���wD�g4�}�G�w�r�me⟳�A_�����;�����I�;������O{�{4��P�h�� �@  ��j;��PGπ67w&ݮ��L����[���I�U�%*-�40�;(mHy��y��|D�?�^奞��C�gTU>��l��6]���j��S[w��sb�3� G�qSIm��צ�N�n�{���8��c���;�M�+Y]eY\x�k�65w:	>$)O=� �D 8���3�VWY�֮>g���P����K{�{��?��B���cJC�6�M�
�����W��].F2H� do�2�p��QW�vH���_�c���n���O�}��r��Ҧ:L���w�@J�[���,� �7l:��R��Ԏ- .M�:��*hƫ�}�"�3q�hcEY�� �p � C  ��~�z��������e���}���߾�[��Yj���n_��L���嶏� ��� � B  ���d|}���G�$�֞�^�3T��q�I�4�����vK�v �� ���dF��;�Aw��M������3���~�����_�	֯H���Tc�ˇ�mku�����{X���\5���b�x�gT_Y���R�U���7d%    IDATyL�v�[@�7�}���  "  ���
������
5�V����RAw�O�s�N�sH\zW��PP��3���Pp��ӯ���硿'��o����U���.7�aXڌ����=,���,=�"����ڦ�<��-�- ��+�P3,P됴�� � C  �����S"	�7���;�d��]���P�|B������*(��������eHl�$�Y1 d�1  ���E?Yr�8g�t�:ː�֖<t�jq�$��ݯ�Nwk�,:�)6�Ag��A�  rs_��E�59�n�t���
O%- [�0�$��_�?�N��|LL���r����$s 8H� �d���RV�JI�H:A
�>w��l�z'�\�v���آ��jT?l������_�]�fEZ��tiGƀ��׭--]q+����ph�J{O�ڢ���wÞά�'�c&�.B��B��a�t HWL �@@ "IWH�5�w@������
3L���T"��c��mi��M��筻Դ�j}���5��J]��q�D[�@��G�(Zuy�n�Т�uF>%���� @��b@ �
M�:)����[�Ӈ_�R!>~�l�s��fI��! ��1  ��>I�G'��p����>F�������L�M�N�� 9# �$��}��W���ԛ�Py)��Ѧ��D�=kn�w�F������ 2�/# ��-����,Lm��ϙ/�
�a���g�Ք���d_҇$��T p`! �%������6N�r�켗	n\}��Z:;n��J�G���~ @�r@F��ZIOHZ�x�?6莧6�X��e'��eKf�&?��J��A�! ��q��,%	B&+�̈N��?�놇�i�w�H�����o8\�.���VIK$m	z� d��' d)I "I�%=&�1:�ٍ-�����.���U������ע��Λ%-Uh�y  �WO �A� d��?K6��N}��/k��|)̞P�?{��7�ľ�O�ْ�'z/� d�+( �(Er���%͌N���~f�~��Ƃ��}�*���?a��X2S�%qs�l�t��Չ�O� ��*
 9J�H�I�JZ�������W����|1��2F�r�lzHm��OJz�����  ��p �B�Z-�ʠWmj�M��k��e�ô�j]q�,-�sH���K��R��A� ��J
 ���H��%ݤ�LY����o/��oWl�֖.��;(Mk��'Nכ���hA�m
-2�@��> ��� �P�AH��H�<�/mۯ?�ܪ��핟^�3F:vz��[8U�kJ�Cw��O)4�<E��\�+\Q��4�I:U�w�-+��}���;��=ڱ��E�X��V�#��-GMԤ�U�6}\���M�� ��
 y�A r��o)�vHBkw�iٚ=z�����ޛk���+u�Ct��5gb]��_��EIL'o ��� �G!%��#�J�"�c�VmjժM�Z����Yذ��D�'�k��-�Ѡ�'ԥ�C���J�[�`:�!� ���
 # �@D�J�Z�e��Sm<0���mZ��Mkw��]��ݖt2�Qc|}���X�#&�k�z͝T�vG�^�Z:�Shzݴx @�q���a"I�j�X��"iռ%���O��lצ����ڥ��]��ڥ���l)��,Ӕ�*Mo��Ԇj�W�9��P]�I6��e�~#�w��3y3� ��� 0²D�д���겕������ڥ�>�m�՞�^�t��m��WG�:z��hu��RO5���(U}U���PSm���Vh\]��j�5��Zc�ʲ�ŀ��~~��4 Y\u�@�D$i��7HzS�1�U�"��P0�;���а�H�o���Bi��%C�k�V�J
�Ө�i7�db��Ï�%��& (�� P`9"��~b�q���\3-�VJzZ�
��sl�%C (,�� P$"%
M�{�����P���I�v�X�B-���]#�yI/+͙��!� ��� ���`$�'i�B-&�%M�45��$�I��]c%e4�;�>�VߧР�풶I��{K��I�A�Nx @��� �@��d�%5(�T����z�Ƅ�ޯ����=
����^�( P��R�(S�`��t ���U  KPB� �Wr 8�����@ \\� ���T                                                                                                                                    �S� 8�Xks�Ø�|�r\�x<�\�O�K H��$��JT��}_��e���6���]LvLƘ��o�Mx,��#Y�s���X��r�秵6�qf{�A����ʗ�8�J]  -���4����8
��D*�A�/T��E6�e��@�� p&�
S�;�.�~��;��'��e�w.�Q��|���/���,�zN�&��pp  ��t*_)����4ER��Z���F2m��"i��}Y�UE(Ǌ�XI�%Uk�1��%i���L�9�*��R)����:7�+�=�)�]�I�P��&i0�<��k4|� ���dXI7�HZ*�dI�ZkU����nI�ÏJzF�S�veR�TRS@�r��7*tL�%Ͷ�6���ݒ�Jz2�����t�888����t6M�0I�J��Cݒz$�*(n��C҆�kä��;:�!Y��I:U���8k�I�)��/i��U
}����B��)˘Ar��%�n<�z$ݢ��  Iq�@���{����c.�4�q1��笵x�w��W�m�������I�Zk/�t�$��^I5��!�n�*�)eyL�[k���|���y���!鯒^�dpw�-��s}���1�B�;?�Xk�y�/$��jc���^	��S���*�*S�VI:.�{��@,�
 ����P%)I%�k�Hz�F�zc%���9I�m�N������Ic�G%5eS�4m6��@�OՒ����qͲ־�P�������6��n��%��l�+�4��S���ە�J�U(����G�6��je�*��6h��[�1W䩜NcN��<&�@�P���.
�"]a�~e���>k�Ò�����0��b�}V�g2yc�G���Yk�c����4�Z�}k�K��)%ﾔaW�K4���$n���Z��Z{������587�"�4�ϩ���a����w(���F�Y��e�ڻ$MK�����󼡩��1�籜���2(0 ���T�>�4�3��$\y���iT�gZk��� �1��ef������T�l�dkZ�<�磠�$�o�}���_*�g9�2	��8?/�־l��8�2�p��v���F�)�� �1��4cʘ����=�  ��%�� U���+k폔���2�T��&���y��U�9)T��1c�U�� ���>�����c�g��X#��.I��8?+}߿�Z�+�f�*�Zk�m���,�<��IƘq�-�ƘCb�7 �E  -�+��7�<d��|D�Z��?�*4�Ea8<<��Dd�e�L���+�sR|��,I����1�NJ�1�Ƙ?( XOp�̪VFK9��b��T��%�EI*�2 ig�RT���Z�S���ʥk���*6P�.<��g��o�� %8'��9V���ਜ.��������$��h�؏�r(  ���*4]l����Z۟�B���~����*ޙk���H�I���Ϥ�^��1��<韛^O\Ŝ��~/�xw%t�TI�*�IJ|��NX$FK9�����wA��J��Hz�)-��G��Cә��</�Ӭ�?S�M�����uA]�Fi+�$�Z�_�.Ls۸����fg�G���_��������d��@� Ȋ�yc>Y�r$�y޽�iL#���Jk$=�n�k��*����bv��fԷ|Ĳ��D����|��y���ь1_�<�$�����f��@X�X �JR�g��~$˒�.I�ML4#O��k%M�g�\3�|�������DR����t��T��g�Rk�-��D'��hi�7Z�	��@ d$�e�ZI�]�D��w��ߝ���TL�$e�Xk�g�-�.c�x�1fq&o����ȯ��$��nI�#Y�lXk�F�>F � @F<�;���B�#	�y��c�]�P!
W��������Ƙs]�|��~-�w�󼹣��U,k����1i���Hz�@�J��y�$�� \ JRQ������'I�3y�1f��t0}��נ��Ʃ7c�Hg�p��WT|S'gbFl�՚�B*M��
] ů�+ ��1f��w�Ic��B����X��_�����IƘ�.D���L4�Y4���c�3B��k�U�%�?V�+VQ���\ҖB�@�+-t ���߇�v�S��Ƙ�KڪPEkP�8I�}�_l�9U��Dc�&�D�Ƕx�'km��w�^�@+���y���B����1�|���+��? �3R�g���Y�E���1�RI�7ƤjιB�����Z{��yO+tnVK�a�=G�Iy��c�I�Ĥo�4�3;�L���H:'��Xk�y�-il�c�]} �E �@ ���WH�<��6�|�Z{���$��P��1'���1�*EU⭵7c���΍1��Vf\��^6�\e�}2���b��Oç�%�s����1H��-�Ш�N�t���K�1�4����c���b����e��k��?5�|I��;}�s\�����kZ%�|6ƴIz6�L��͹���mOw���� H�+�8A��1g���B�t��c��2H�Ӓ>a��m����Ƙ/J�����;�A���~�g�r ~/�IO&��Yk�$}��v%�25%�MnĄ�q�Bco� i�1�c����-)�1In��~c��>f��Z6|�+%-
���Xkߜ�,R�� �R��: ��@Q�#"�����Z�#I�Kj��%�[}G5��vI�Sh��ogZ�	�Lҙ��<�e�.U��UtY���b��XҀ�2��a^3��I��1�dI-���.M1��[�n3k�����ӹ�o��t��{�_�K�ͦ�Е����#�`" (2��y��0��%}�Z;(���)(IV2Ɯ ���Υc�Ƙ^cL�c����^ �	k��#�CЪ�a�c>�pW�D����1r�b�ٰ��,����dAH�\3�(�Eq��b�g�Jty
��<������ �����Ii|MC�1�j��lxlI��fs�4û�κ�c�*iO��m��Ƈ+�_������e(���J��(�Y�ꢏ'&@^�h?-��})61z|C��2�c��Q9���2`_q��
>��!� �� H�s�uo���L����H%2r�>��Me&�6�[�1	���vI?z!�����pKS�1�:Ge9LR�HV �����k��w9ڍ	��(I���I�k�ޠ�"�Ut�K���r��u.������s� X� @ ��UE}���`�M��%�kIII�]�K�vN�Ͱ�����`���c�-W��ޡ�����1�
q7:j��f;%(�3W��<9�<��D�E��@$ZT��0�Lc��U��� @������~F	���/;�!�#��J�����;#�T�t��.�q�Q��R�%I�8�U�SH4��4G�?��A��}G]�uT���� ��� @���'<k�S������ú�$0"���������I�"W"i����U��Uc���c\�<��u8�{��ϾU�.���?1:0��2�)k��tV\O�E�	�J< h@ ��I���m)�7c�x�Y��%km� '-QwΟwP��?9�k$}�e]�$��\�����)fR�<|쾤:(RI�<�J�k F�:G���kA� Y�mȵ,�}����ce�ee��cs�Ek�$%Z�����c[ꬵk���� Pp.��8�U9�glB�53T+4�QY�\m��IJ�I$���Չ*���j��ǽ/��Hr�}e,��NG�':.W�e܊�9tr�]�:6 (  ��B�n��PI�)������MQ�O|E���C�FIk��WI�'>$w����9TZ��R0"��NG��ڻ:޶lޔ �ls4e.��t�D��y��+�1_ʰ�Z+�(IGc�m����e��f��
ؾ"���<�U� ����c���:�(���'Q燓�R�>�y�5 �1  ���(�zG���tc��	^sU)v���$Yk]#;�<��ԛ�eX 5���wY�(�]��bm (*�� HGo�M�2V�fGy�+Q?'������2�Ի�c��ki��\L��* I�
�k�`�d"Ĩs����hF  A]��166!A�ͥDw�]U��km�~W���
�+�.2�<o�$Q�M޾��j�+�� rF, ���(�#哉D����bnLG���Y.ʤ�5�\,�(I����ekzlB�-R��C�΃��|  '`U��.��}Q�K4>`������]�β+�1.
�yޮ����c����.���z���p���LߐdJ'ߥ�" ń @:� Ƙ�Ƙ��ǵ����ne��G���d��*�����-�r�}e*(�2�L���dU�]�Gș�ƘC$MrP�nk�>G��@�  '���y�e}�1�DGy�kX S�sQq5Ƙ��^Hw��p�R)�M�#( I�X�y�K���E�Ƙ7cJ����(������`T" ��\e����c�0<��^�yl�r�ɦ1]�e��Xk/JT9L��h�y��1.ʣЂ�#jpp��iI�}?08��vk����ZG�g�	�m	
�8*�G� @Q! ���hm	c̅��͍<O0&����~�+��V3�0�|�y�:�3#ы��i���/���!i}l�#-< �c��(ˡ`1�x��Q����#�Z�"�al���<IotT��c�c��t� �O  �
W|:$��(�Jk�����t��+]�N�l�:WH�����vp�1�rTi������`2|\�\�o�}6(��z��|�1����J�E+\��$��(��y�,�� �5�f E*�Q���f���G
_��U����f�$���ܵ�\�y޻�x�$k�\�A���+#��H�8{W>|�x�گ�ڇ�y�UģZ��t�/k폭�cS�8�~�Ƙ+%��U9$=�0/ (  ���?��c>,�V%	,b*��UN�어*�|ck�풖��k�k���D�<�{�Pwͣ�e�����e�Kz<�6u�/I�+�^IU�6�
B�n���avHZ�0? (  �$�����~�������#�^b����r7�HT�ˊk���o�>-)Ug�S$���Y�$��a~�M�0��D�׍1�r���ږ�ʞ���p��)�B�jj�R������Aٷ�ű����};�k� ��  �R���*�<d���ik�]��%�.��&I��^�e��c@�Z~�e��TZk��־$��NThM�1
�������G%�xߏ'�)ʥzIu�ǙƘ'�1_v�3c�]�V��~8pi���k�=��#i�B�>Y�ɒ�1Ƽb��O9>$����@��	��U������<�D������+t7��Zېc�ɺ`I�~��T�;ݙ�g����<�2��:B�*��IO(�2�Z�X��<��J�m��*�Xk�r��2I�־3��<�HժP0 8 � �ğ��b��d��њ��A)ye��s���M�]#��%Ƙ%#��$mIs�'$�,i^�����_[k�%���m� %���c�;�e�р�r%�_H�;b%�k�/}�����@%r�s]��Dۏ��3��y�O�~�@��@�nT�d�H�K��Gyŵ�����֕���=�Iz%e��;%�T�r @>P�T FD�1�K�.D�VBO�I��^�<��ޠ���c>���Lc�������	za��d@4 	%���R��uA�(�I�2�|P�Wx�5I_��u4WZ�����h�k��Jr|w�����[��� �o  �a�	�� )�
X�<I��o�ڛ�Z"�|c��=���<oDV=![=���\20�|L��&G����q }� ����T�7c.���	K��C�Ъ֟R�U��Bx���"���ƘK�`R���1�����nI�NK�{�1{��H��, r@�Z(���1W�v[J��V�|ߏ,L�c�y����.\.��7J
��U  �IDAT\g����Zi��1WI�����a��R�{~J�1U�*���H@B\� ���2{S��K1�I�$�ҷ��Ik���k�/%}<Qw����-�#�1�jI�J�A��w����p�Qk��0ƼSғA/��@ �" ��O�1WH�)tAb${��l��c�i
��^4��ߔt���v�����ߜ��i��PRw���Ʈp��p2�QH@J  ҒƝ�ۍ1K%m��+�]���ݒ�Zk�U1�ľ�/+�KQt2
�?m�Y$�d�:�4���Ƙ�U�L-3Ɯ �B 
� @�Ҩ�=+�xk��U]�r�vc������蝹)+3�+�w��$�Y>�Q--�{'+EW�t��4�{^�	ဲ�gWx��3%mM��($ m  2��bd�m���pkH`���a���1Fя ��#-�J����Zk��Fnf�W�]��"iS$1(I֒Y!=��\>
����gH��1&i �iE<��M��r���ۻ�(�������oQ,�h�@�A��A1$.�e�� �h��I�G�'1:=��L�br��f��n<"h4e=&����N�]����?�ŭ[�[�vuUu����9��~�����������Wv��+Wf�ƈ�Y�FĒ��ɇ�ig"i�M��ňx:p��	�.��2�0�͓�8���~f����̷��Tiǻ<"6 �>>�l�r����X�Y���]���w/��J�	�W O��g�amjD���wG�c�����a����H�w�~]����Y$�X���M��lGm6d����
E�)��̼�(�K2�+T�H��a� o8�r���t�צ��>�,7Dį _�ul���O�3�����h�s�Z��k��� f&/��S �s����C���(����7g�/����>N��O�_�io��/EqAf~:3�Lz�;{�#��C˲|UD<x�?���#�|����,�$�WD�N��SI��88�,�#��"�!�,p���ws�y+UmÏ�������w3���͹�`r��'��^�ߛ��p���QeY��w�l��[�k����ff~�[��F㮥}kL6�w����Y��s&"����GԿ�}���Mo�z�������W3���q��^�k��[ϸW'Y�J�f�}�j~T��{��3��e"ig�WDҪ�ڮ�45K5�cw���c�Z�e�$xd.�)�{�������!Y�Z�k���ۛ4�Z�+�T��ߌ	�������4��d�@o�����(�\�y{�޲�_���')���4 _o�̮��sW����L2$�%I�j�@o=�V�>ή��iw������4<�i�I��	��5�T�2�k�8�Gp���Z\���B���ܕ5;����J�$I�$I�$I�$I�$I�$I�$I�$I�ơ-$I{���;o��N?��5.�$�]v~|>I��0�&����< ����矿h�p8�(��y��q�aÆ5-�$I{+IS�y�=��z��$&�6m��N[��I��w�	�����Mk�DDS��������HҴ3�4�����4�]��+<;"���s#��G���l�%ijL�(�D�����p�%�b����I��2& ���̿��3"�h'���p�f��@��Ur�p�S�n������ �4�L@$M�%j?g��=����e�M�^o��px4�x.��1�KҪ���E�G���l�*i*�J@"b�k��2����qT��^o�H��l������=^�/I��'"�m����,�E� ��g��cv�$���r�g �u���a�!�7nܸhY����V��۷o_�}ff��,�#�،N��5FEQuw����������=�ߣ������5ۼy�ueY�{��n͛�ic"i*��ymD�9pcf�
�{M�
_���n����M@����|������-�	TН�K?|�y�<�z& ͺq�i/��Lr�nY�2j}s�Q&M@"��%MG��4�"�P}]D�ڬt��~��S�a�y��v�������yP��DoG�VٝE1�i'K%�;r���>�M�41�4���À{����o��s;�E��(�m���	�Ӹ�c�rw˼\�]��t��Z��v�ҲM��K��4& ��B;Y�?O�W}��l�\��?� �"`SY�?)˒��h���|�j�ہ� �o���xQ�}�l��T#q� �'���~�����r;p����`q�1"h=x����|xЛ$������aT#�]]�F������;ʹIu/^Y/� �
��)�y�y흖���g����\�3�=xt}�������^?�\�������g���������U�1���|���n���;�������G>�Ŗ�=�}@$M���� ��p6}6o޼l��16Dć���jY�*I �Nf�|��99">��~f^O��w�}�ޕ�O�
L�.���m��e wE����p���}�;?^/�ا� \����lڴi�}yNDl����\KD|xaf`��=>"����t��ܗ�͵�U���n��ֱ���`P�a[D��73?F�L��S�DĹ�7��j1-��F�Z���T��rF�����w�z��Cf����6����]��Fj�m0p�Yg!I{:k@$M����q@f��m�_����K�4�yZ���3�U�}�����GGą1�Dꃁ�GD?3�N��f�Q�nX���x|f��*�ٿ(��3�*��ܘ���cx��xf1/��#������zp"Um�"\p�����Ԉ�U����a�����wf�2���#����[�a��`08��� o��_��X�g�:�;�63�G�O�����_u�pPD��*����γ�yhD���/~��ck������|��pPD<:3/�z6�����`�`0�ɢK���D�T�&�ټ}t���n_��&�h%!� 3�n�����a�#f}~0<��)��c�O��"�8�YT�=�YEq2P���x!���9W��k�s�jJ]��)���æ���e��T��w�{0>�J�D�d������]��}뚠}���8����3sUm�+#���~w��̓��7��\S_����W5Ϸ3r�+�� ��_>���"b�����g����D��Ts���N,n�JJ��,˳��{���� n�O.��a�<�l�̋���E�����d"i��D��d��������zGEıT���t��kn����uҸ�����E���u��u�b��<'3� >5bhݛ����>��De��3��D�>�fA�{���֋^�.������
�_�]Y'	� �����1�Kݟ*��bwH^ #����K��4�Uӷ����\�"x�������_Jռig�#����u����xjDܿy^�s��(^W��u����EY�ò,Ϯ���}���dy%i�d"I�ؾ}{���K��MӮ~�OQ����%3�P����N�-�Q�F���C2�_��zumP%��%u��o ���&�o�����m#��L�}�OQM��Ӛr�2�����ߓ�s����z�A��e��#����&��l۶��dnn������������T��^�����Yfgg盡���5���z4�����j�?"����?G<���I��X�d�C�3�eٮ��w��ffffN�������i�x�(I�{�{�7�β�j25�(
ʲ��t@D�,����̜���(���)���}"��;M�n���F�넺�g�'o��:��f��A�^��#�{���M��KF]g+@�f�����N���e�����֩G5J�[�b}�o��=;;�֭[�g��>�������~&	�(3���5��s�P������������E��q��w�����1��W��F|xИM7K94���6�~���#������n��vޘ��
Ї��� ����F�'�kS�R������;�	��|`D4��]=j�ֽ��.�AM�m��R��R��`q|@D\��z4ϥ�x�����xxD����6Ww����^QՒ�_��K�.d"i��	����^�4�*Pn%�[�é�Q���V򦽓X�Zc��>���H���o?����l�ۿ�j�����w����;n����K�SKm�����[�&�<l�k������|_��Y-��g�l��n9�!�O�j�̑�k|L��mv�v��'3��7{ֈeo��Cd)� ��/�tW�̧�ߢ�4�;������]�����!���z$�uWߏ&Hߺ+�0���Q��=2"��L.�
��$i�f"iZ� ��Ӄmt�G���?rդvWR7���?���b�Pŉ�M�l������E1�o���aQ�׈�s"�]�o	eYޱ�V���1�4��v��FĸQ��T�n5|�*���(��˲\ؗe�e5�i��>���z?�d�X8k��Q�㶚�}G
��G�7|�y[DLt��$iژ�H�V?h�F��1jD<?3G5���7w��ݨ�̐���~eYP���ø�JBF�{W}ݳeY����`�����疺�����w@]�� "�Vg�e��H�F�"i*�g3�?_�W=���m'�hX0��3 "bps�&��i7J>7�z�G6ssLj� �7���P͗��լ���4� 3ڝewQ����G63�O�{1s�$����&iZ]I�����xN������cB���&�m&lO��,w�ur@D�rS�n��LLX����4��,ٰaâ���f�U �~�i�$��}G}� 1h��x"P���%&�\Wu�{E��D��%ضm۶m[�O�Yd&��v��Z�֐	���S��"���7df�3�߼^��NB�]�J,�=�Y��	�3���W��%�� ��[���ٱ ᚴF΢~~}����h��u�}��&)�b�L�͵����^ςu\F5G�C#��o������"Q���b"ij���177���ۛ�_PM�w<�״��5o��2�D�e��/��7���E�̎�+QE�x\�߾;���"�j�ЈxK]&2�;�H oa�����8>3�FN���� �Y�{Q7��-".�o��Q�5.eY�if>v�N���m+��z�_���=&�$����\LIZ7& ��ٍEQ�E���T����}�����Q��D\��|�����=�7_813?��g�j@�������"`[f�23��}en\�&"��Ӕl~�SO=u�i~Ju_3"��'2���ˁWe���\;a04���F�S��gG��LD�="���j��Wf~%3933������:�P��kʲ�$"�Ũg!I{:ISaT�\Ϧ}iD<#"��^��eeY��2pYY��/��x#����R��\��� 3_����EĖ��7�	EQ�|�������x΋+2���0����U��px�p8��\���Wp�M��RuH+pU������
�<�A༝����gsqRY��-��z�Z����7Eħ�����pU��cʲ��eY^|�ճypwf�(3�V��.+�$�6��4���	ܮ �����Z�-F�ՙy�p8|w�׻z�1�D�̼�������T#Bm.��TA�pI�/�!�eY6�E~���F�u��w�E�Yť���]����̼�9D�����3���g�����Dē���>��s1����n8^���_��'�X����<xoD\2���u����g�w3�'��L�Fē3��s��ہ�#�/2�yNw�V��-�s���sou�;�7���m�͂�5G�m�/��6pp4��� 3�A=��$M#�t%M��7���Z��f��"b���}B����9|lD�R%w7��}m���V��i���x�sE1r�Iކ��h�[�P͙�k�=������6m�4���d� P%3[:��������
��9���g�J|�O���G���!�}};S�q�Rպ��?�Q��O?���吤=�M�$M�3�<s��cp�7ڰ8�\" ��do��]7�踗�^I?�1ǿ���.��͈n�j6�֤�?�� ��|n�{[R�d��!i��N�T9��SW%����6V�J��(��w��l%�_�$�;�H��D�߈�G���n�g�cK�V�M�$M�͛7/Z6* n��
��8��;ot���[�ݩ	֨㵚`-0��& l;��s-k5���҄cg���o�Y��F����1���{��ι
M��]�ܳ��=�	�$i�3")|��_�& �"�b���f�u�u���I��p,I�gDm�ˁ���oQM"y�O=RٯQp���c8ĭ$�/I�4��x<��κ!�w�ٙ��I�$i�2�$M������=~0�BDN5�Ե����~�c�a���ͯ$i}��H��B=˷����`A'�Q�%I��ax%I{��䑣tf�'3aJ�vI�^�����J�v�%I{�.�`Ѳ�`��yU����3�\�rI�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I��5������/�    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/index.png-0c78d14d192abe5f22f8c25928ca1ab8.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://docs/index.png"
dest_files=[ "res://.import/index.png-0c78d14d192abe5f22f8c25928ca1ab8.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
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
        GDST@   @           9  PNG �PNG
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
flags/filter=true
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
[remap]

path="res://Supervisor/Supervisor.gdc"
[remap]

path="res://Tools/cw.gdc"
             [remap]

path="res://UIComponents/Column1.gdc"
 [remap]

path="res://UIComponents/NumberSelector/Selector.gdc"
 [remap]

path="res://UIComponents/Subtile.gdc"
 [remap]

path="res://UIComponents/tile.gdc"
    �PNG
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
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes$                    class      
   ConvertWiz        language      GDScript      path      res://Tools/cw.gd         base      Node            class         Tile      language      GDScript      path      res://UIComponents/tile.gd        base      Button     _global_script_class_icons8            
   ConvertWiz               Tile          application/config/name      
   WFC-Sudoku     application/run/main_scene          res://Scenes/Main.tscn     application/config/icon         res://icon.png     autoload/CW         *res://Tools/cw.gd     display/window/size/width      X     display/window/size/height      �     display/window/size/resizable          $   rendering/quality/driver/driver_name         GLES2   7   rendering/quality/intended_usage/framebuffer_allocation          >   rendering/quality/intended_usage/framebuffer_allocation.mobile          %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres      