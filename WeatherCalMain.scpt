FasdUAS 1.101.10   ��   ��    k             l      ��  ��   LF
	Description: Script runs everything other Weather & Calendar scripts in their correct order
	Purpose:
		- Is run from the GeekTool Group base_group
		- Script is set to have a timeout of 2 minutes within the geeklet
		- Checks every 30 seconds when the script was last run
		- Scripts are run on the 1st and 31st minute of the hour. If the script has not run in the last 30 minutes (computer was shutoff or asleep), it will run within 30 seconds from start up.
		- This script runs WeatherCalHTMLconstructor.scpt which in turn runs WeatherChanges.scpt and CalendarEventsPull.scpt
     � 	 	� 
 	 D e s c r i p t i o n :   S c r i p t   r u n s   e v e r y t h i n g   o t h e r   W e a t h e r   &   C a l e n d a r   s c r i p t s   i n   t h e i r   c o r r e c t   o r d e r 
 	 P u r p o s e : 
 	 	 -   I s   r u n   f r o m   t h e   G e e k T o o l   G r o u p   b a s e _ g r o u p 
 	 	 -   S c r i p t   i s   s e t   t o   h a v e   a   t i m e o u t   o f   2   m i n u t e s   w i t h i n   t h e   g e e k l e t 
 	 	 -   C h e c k s   e v e r y   3 0   s e c o n d s   w h e n   t h e   s c r i p t   w a s   l a s t   r u n 
 	 	 -   S c r i p t s   a r e   r u n   o n   t h e   1 s t   a n d   3 1 s t   m i n u t e   o f   t h e   h o u r .   I f   t h e   s c r i p t   h a s   n o t   r u n   i n   t h e   l a s t   3 0   m i n u t e s   ( c o m p u t e r   w a s   s h u t o f f   o r   a s l e e p ) ,   i t   w i l l   r u n   w i t h i n   3 0   s e c o n d s   f r o m   s t a r t   u p . 
 	 	 -   T h i s   s c r i p t   r u n s   W e a t h e r C a l H T M L c o n s t r u c t o r . s c p t   w h i c h   i n   t u r n   r u n s   W e a t h e r C h a n g e s . s c p t   a n d   C a l e n d a r E v e n t s P u l l . s c p t 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        j     �� �� 0 lastrun lastRun  m     ����        l    	 ����  I    	�� ��
�� .ascrcmnt****      � ****  o     ���� 0 lastrun lastRun��  ��  ��        l  
 ] ����  Z   
 ]  ����  l  
 6 ����  G   
 6    G   
 "    l  
  ����  E  
    !   J   
  " "  # $ # m   
 ����  $  %�� % m    ���� ��   ! l    &���� & n     ' ( ' 1    ��
�� 
min  ( l    )���� ) I   ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  ��  ��    l     *���� * =      + , + o    ���� 0 lastrun lastRun , m    ����  ��  ��    l  % 4 -���� - A   % 4 . / . [   % . 0 1 0 o   % *���� 0 lastrun lastRun 1 ]   * - 2 3 2 m   * +����  3 m   + ,���� < / l  . 3 4���� 4 I  . 3������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  ��  ��    k   9 Y 5 5  6 7 6 r   9 D 8 9 8 c   9 B : ; : l  9 @ <���� < b   9 @ = > = l  9 > ?���� ? I  9 >�� @��
�� .earsffdralis        afdr @ m   9 :��
�� afdrdocs��  ��  ��   > m   > ? A A � B B N G e e k T o o l : W e a t h e r C a l H T M L c o n s t r u c t o r . s c p t��  ��   ; m   @ A��
�� 
TEXT 9 o      ���� 0 ascript aScript 7  C D C I  E M�� E��
�� .sysodsct****        scpt E 4   E I�� F
�� 
file F o   G H���� 0 ascript aScript��   D  G�� G r   N Y H I H l  N S J���� J I  N S������
�� .misccurdldt    ��� null��  ��  ��  ��   I o      ���� 0 lastrun lastRun��  ��  ��  ��  ��     K L K l     ��������  ��  ��   L  M�� M l     ��������  ��  ��  ��       �� N O P Q����   N ���������� 0 lastrun lastRun
�� .aevtoappnull  �   � ****�� 0 ascript aScript��   O ldt     ��S P �� R���� S T��
�� .aevtoappnull  �   � **** R k     ] U U   V V  ����  ��  ��   S   T ������������������ A��������
�� .ascrcmnt****      � ****�� 
�� .misccurdldt    ��� null
�� 
min 
�� 
bool�� �� <
�� afdrdocs
�� .earsffdralis        afdr
�� 
TEXT�� 0 ascript aScript
�� 
file
�� .sysodsct****        scpt�� ^b   j  Ok�lv*j �,
 b   j �&
 b   �� *j �& %�j �%�&E�O*��/j O*j Ec   Y h Q � W W � M a c i n t o s h   H D : U s e r s : c o l i n d u r k i n : D o c u m e n t s : G e e k T o o l : W e a t h e r C a l H T M L c o n s t r u c t o r . s c p t��   ascr  ��ޭ