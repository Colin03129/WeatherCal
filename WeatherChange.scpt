FasdUAS 1.101.10   ��   ��    k             l      ��  ��   =7	Description: This is a weather prompted background/geektool group changer
	Purpose:
			- pulls time from computer
			- pulls api from weather underground
			- saves the needed weather underground info into a file so that there aren�t 2 calls to the api for each update
			- returns current weather/time-of-day
     � 	 	n 	 D e s c r i p t i o n :   T h i s   i s   a   w e a t h e r   p r o m p t e d   b a c k g r o u n d / g e e k t o o l   g r o u p   c h a n g e r 
 	 P u r p o s e : 
 	 	 	 -   p u l l s   t i m e   f r o m   c o m p u t e r 
 	 	 	 -   p u l l s   a p i   f r o m   w e a t h e r   u n d e r g r o u n d 
 	 	 	 -   s a v e s   t h e   n e e d e d   w e a t h e r   u n d e r g r o u n d   i n f o   i n t o   a   f i l e   s o   t h a t   t h e r e   a r e n  t   2   c a l l s   t o   t h e   a p i   f o r   e a c h   u p d a t e 
 	 	 	 -   r e t u r n s   c u r r e n t   w e a t h e r / t i m e - o f - d a y 
   
  
 i         I     �� ��
�� .aevtoappnull  �   � ****  J          ��  o      ���� 0 
columnlist 
columnList��  ��    k    2       l    	     r     	    n         1    ��
�� 
hour  l     ����  I    ������
�� .misccurdldt    ��� null��  ��  ��  ��    o      ���� 0 thehour theHour    works with 24hr clock     �   ,   w o r k s   w i t h   2 4 h r   c l o c k      Z   
 =    ! "  l  
  #���� # A   
  $ % $ o   
 ���� 0 thehour theHour % m    ���� ��  ��     r     & ' & m     ( ( � ) ) 
 N i g h t ' o      ���� 0 	timeofday 	timeOfDay !  * + * l    ,���� , A     - . - o    ���� 0 thehour theHour . m    ���� ��  ��   +  / 0 / r     1 2 1 m     3 3 � 4 4  M o r n i n g 2 o      ���� 0 	timeofday 	timeOfDay 0  5 6 5 l  " % 7���� 7 A   " % 8 9 8 o   " #���� 0 thehour theHour 9 m   # $���� ��  ��   6  : ; : r   ( + < = < m   ( ) > > � ? ?  M i d d a y = o      ���� 0 	timeofday 	timeOfDay ;  @ A @ l  . 1 B���� B A   . 1 C D C o   . /���� 0 thehour theHour D m   / 0���� ��  ��   A  E�� E r   4 7 F G F m   4 5 H H � I I  A f t e r n o o n G o      ���� 0 	timeofday 	timeOfDay��   " r   : = J K J m   : ; L L � M M 
 N i g h t K o      ���� 0 	timeofday 	timeOfDay   N O N l  > >��������  ��  ��   O  P Q P l  > >�� R S��   R G AListing all of the weather/time-of-day that you have pictures for    S � T T � L i s t i n g   a l l   o f   t h e   w e a t h e r / t i m e - o f - d a y   t h a t   y o u   h a v e   p i c t u r e s   f o r Q  U V U r   > � W X W J   > � Y Y  Z [ Z m   > ? \ \ � ] ] 
 O t h e r [  ^ _ ^ m   ? @ ` ` � a a 
 N i g h t _  b c b m   @ A d d � e e  S n o w   M o r n i n g c  f g f m   A D h h � i i  S n o w   M i d d a y g  j k j m   D G l l � m m  S n o w   A f t e r n o o n k  n o n m   G J p p � q q  R a i n   M o r n i n g o  r s r m   J M t t � u u  R a i n   M i d d a y s  v w v m   M P x x � y y  R a i n   A f t e r n o o n w  z { z m   P S | | � } } , C h a n c e   o f   R a i n   M o r n i n g {  ~  ~ m   S V � � � � � * C h a n c e   o f   R a i n   M i d d a y   � � � m   V Y � � � � � 0 C h a n c e   o f   R a i n   A f t e r n o o n �  � � � m   Y \ � � � � � * P a r t l y   C l o u d y   M o r n i n g �  � � � m   \ _ � � � � � ( P a r t l y   C l o u d y   M i d d a y �  � � � m   _ b � � � � � . P a r t l y   C l o u d y   A f t e r n o o n �  � � � m   b e � � � � � * M o s t l y   C l o u d y   M o r n i n g �  � � � m   e h � � � � � ( M o s t l y   C l o u d y   M i d d a y �  � � � m   h k � � � � � . M o s t l y   C l o u d y   A f t e r n o o n �  � � � m   k n � � � � �   O v e r c a s t   M o r n i n g �  � � � m   n q � � � � �  O v e r c a s t   M i d d a y �  � � � m   q t � � � � � $ O v e r c a s t   A f t e r n o o n �  � � � m   t w � � � � �  C l e a r   M o r n i n g �  � � � m   w z � � � � �  C l e a r   M i d d a y �  ��� � m   z } � � � � �  C l e a r   A f t e r n o o n��   X o      ���� 0 	grouplist 	groupList V  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � < 6Listing the possible weather conditions you experience    � � � � l L i s t i n g   t h e   p o s s i b l e   w e a t h e r   c o n d i t i o n s   y o u   e x p e r i e n c e �  � � � r   � � � � � J   � � � �  � � � m   � � � � � � �  S n o w �  � � � m   � � � � � � �  R a i n �  � � � m   � � � � � � �  C h a n c e   o f   R a i n �  � � � m   � � � � � � �  P a r t l y   C l o u d y �  � � � m   � � � � � � �  M o s t l y   C l o u d y �  � � � m   � � � � � � �  O v e r c a s t �  ��� � m   � � � � � � � 
 C l e a r��   � o      ���� 0 conditionlist conditionList �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � J   � � � �  ��� � m   � � � � � � �  ��   � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr �  � � � r   � � � � � l  � � ����� � b   � � � � � l  � � ����� � I  � ��� ���
�� .earsffdralis        afdr � m   � ���
�� afdrdocs��  ��  ��   � m   � � � � � � �   G e e k T o o l / W e a t h e r��  ��   � o      ���� 0 thepath thePath �  � � � l  � ��� � ���   � A ;set variable to URL of my local weatherunderground api page    � � � � v s e t   v a r i a b l e   t o   U R L   o f   m y   l o c a l   w e a t h e r u n d e r g r o u n d   a p i   p a g e �  � � � l  � ��� � ���   � I CNOTE: you need to enter in your api key after api/ and /hourly10day    � � � � � N O T E :   y o u   n e e d   t o   e n t e r   i n   y o u r   a p i   k e y   a f t e r   a p i /   a n d   / h o u r l y 1 0 d a y �  � � � l  � ��� � ��   � ; 5NOTE: change KCAARCAT10 to your local weather station     � j N O T E :   c h a n g e   K C A A R C A T 1 0   t o   y o u r   l o c a l   w e a t h e r   s t a t i o n �  r   � � m   � � � � h t t p : / / a p i . w u n d e r g r o u n d . c o m / a p i / < y o u r A P I k e y > / h o u r l y 1 0 d a y / q / p w s : K C A A R C A T 1 0 . j s o n o      ���� 0 wurl WURL 	 l  � ���������  ��  ��  	 

 l  � �����   [ UPulling info from JSON file to applescript list and setting current weather condition    � � P u l l i n g   i n f o   f r o m   J S O N   f i l e   t o   a p p l e s c r i p t   l i s t   a n d   s e t t i n g   c u r r e n t   w e a t h e r   c o n d i t i o n  O   � � k   � �  l  � �����   = 7starts JSON Helper so we can pull things from json file    � n s t a r t s   J S O N   H e l p e r   s o   w e   c a n   p u l l   t h i n g s   f r o m   j s o n   f i l e  r   � � I  � �����
�� .DfaBfEtHnull���     **** c   � � o   � ����� 0 wurl WURL m   � ���
�� 
list��   o      ����  0 tendaycastlist tenDayCastList  !  l  � ���"#��  " 0 *pulls JSON from file into applescript list   # �$$ T p u l l s   J S O N   f r o m   f i l e   i n t o   a p p l e s c r i p t   l i s t! %&% r   � �'(' c   � �)*) n   � �+,+ o   � ����� 0 	condition  , n   � �-.- 4   � ���/
�� 
cobj/ m   � ����� . n   � �010 o   � ����� 0 hourly_forecast  1 o   � �����  0 tendaycastlist tenDayCastList* m   � ���
�� 
TEXT( o      ���� 0 currcondition currCondition& 2��2 l  � ���34��  3 J Dsets the current weather condition name (Sunny, Partly Cloudy, etc.)   4 �55 � s e t s   t h e   c u r r e n t   w e a t h e r   c o n d i t i o n   n a m e   ( S u n n y ,   P a r t l y   C l o u d y ,   e t c . )��   m   � �66�                                                                                  DfaB  alis    `  Macintosh HD               �R�\H+   �97JSON Helper.app                                                 ���Е�        ����  	                Applications    �S!�      ЕuJ     �97  *Macintosh HD:Applications: JSON Helper.app     J S O N   H e l p e r . a p p    M a c i n t o s h   H D  Applications/JSON Helper.app  / ��   787 O  �9:9 I  ������
�� .aevtquitnull��� ��� null��  ��  : m   � �;;�                                                                                  DfaB  alis    `  Macintosh HD               �R�\H+   �97JSON Helper.app                                                 ���Е�        ����  	                Applications    �S!�      ЕuJ     �97  *Macintosh HD:Applications: JSON Helper.app     J S O N   H e l p e r . a p p    M a c i n t o s h   H D  Applications/JSON Helper.app  / ��  8 <=< l ��������  ��  ��  = >?> l ��@A��  @ m gset currCondition to "Hailarious" --uncomment this if you want to test setting currCondition to "Other"   A �BB � s e t   c u r r C o n d i t i o n   t o   " H a i l a r i o u s "   - - u n c o m m e n t   t h i s   i f   y o u   w a n t   t o   t e s t   s e t t i n g   c u r r C o n d i t i o n   t o   " O t h e r "? CDC l ��������  ��  ��  D EFE l ��GH��  G n h If the current weather condition (currCondition) is not within the conditionList (such as "Hailarious")   H �II �   I f   t h e   c u r r e n t   w e a t h e r   c o n d i t i o n   ( c u r r C o n d i t i o n )   i s   n o t   w i t h i n   t h e   c o n d i t i o n L i s t   ( s u c h   a s   " H a i l a r i o u s " )F JKJ l ��LM��  L * $- it will set currCondition to Other   M �NN H -   i t   w i l l   s e t   c u r r C o n d i t i o n   t o   O t h e rK OPO Z  QR����Q l S����S H  TT E UVU o  
���� 0 conditionlist conditionListV o  
���� 0 currcondition currCondition��  ��  R r  WXW m  YY �ZZ 
 O t h e rX o      ���� 0 currcondition currCondition��  ��  P [\[ l ��������  ��  ��  \ ]^] r  +_`_ J  #aa b��b m  !cc �dd  ��  ` n     efe 1  &*��
�� 
txdlf 1  #&��
�� 
ascr^ ghg r  ,?iji c  ,;klk l ,7m����m b  ,7non l ,3p����p I ,3��q��
�� .earsffdralis        afdrq m  ,/��
�� afdrdocs��  ��  ��  o m  36rr �ss 0 G e e k T o o l : W e a t h e r I n f o . t x t��  ��  l m  7:��
�� 
TEXTj o      ���� "0 weatherinfofile weatherInfoFileh tut l @@��������  ��  ��  u vwv l @@��xy��  x x r pulls all the weather info from the api forecastList into a list with only the forecast info we are interested in   y �zz �   p u l l s   a l l   t h e   w e a t h e r   i n f o   f r o m   t h e   a p i   f o r e c a s t L i s t   i n t o   a   l i s t   w i t h   o n l y   t h e   f o r e c a s t   i n f o   w e   a r e   i n t e r e s t e d   i nw {|{ r  @F}~} J  @B����  ~ o      ���� 0 forecastlist forecastList| � Y  G��������� l S����� k  S��� ��� l Sp���� r  Sp��� b  Sk��� n  Sg��� o  cg���� 0 mday_padded  � n  Sc��� o  _c�� 0 fcttime FCTTIME� n  S_��� 4  Z_�~�
�~ 
cobj� o  ]^�}�} 0 j  � n  SZ��� o  VZ�|�| 0 hourly_forecast  � o  SV�{�{  0 tendaycastlist tenDayCastList� m  gj�� ���  ,� n      ���  ;  no� o  kn�z�z 0 forecastlist forecastList�  
month date   � ���  m o n t h   d a t e� ��� l q����� r  q���� b  q���� n  q���� o  ���y�y 0 hour  � n  q���� o  }��x�x 0 fcttime FCTTIME� n  q}��� 4  x}�w�
�w 
cobj� o  {|�v�v 0 j  � n  qx��� o  tx�u�u 0 hourly_forecast  � o  qt�t�t  0 tendaycastlist tenDayCastList� m  ���� ���  ,� n      ���  ;  ��� o  ���s�s 0 forecastlist forecastList�  hour in 24h   � ���  h o u r   i n   2 4 h� ��� Y  ����r���q� l ������ Z  ������� l ����p�o� E ����� J  ���� ��� m  ���� ���  h o u r� ��� m  ���� ��� 
 d a t e I� ��� m  ���� ��� 
 d a t e M� ��� m  ���� ���  w e e k� ��n� m  ���� ���  c a l e n d a r�n  � n  ����� 4  ���m�
�m 
cobj� o  ���l�l 0 k  � o  ���k�k 0 
columnlist 
columnList�p  �o  � r  ����� b  ����� n  ����� o  ���j�j 0 hour  � n  ����� o  ���i�i 0 fcttime FCTTIME� n  ����� 4  ���h�
�h 
cobj� o  ���g�g 0 j  � n  ����� o  ���f�f 0 hourly_forecast  � o  ���e�e  0 tendaycastlist tenDayCastList� m  ���� ���  ,� n      ���  ;  ��� o  ���d�d 0 forecastlist forecastList� ��� l ����c�b� =  ����� n  ����� 4  ���a�
�a 
cobj� o  ���`�` 0 k  � o  ���_�_ 0 
columnlist 
columnList� m  ���� ��� 
 t e m p F�c  �b  � ��� r  ���� b  ���� n  ����� o  ���^�^ 0 english  � n  ��� � o  ���]�] 0 temp    n  �� 4  ���\
�\ 
cobj o  ���[�[ 0 j   n  �� o  ���Z�Z 0 hourly_forecast   o  ���Y�Y  0 tendaycastlist tenDayCastList� m  � �  ,� n      	  ;  	 o  �X�X 0 forecastlist forecastList� 

 l �W�V =   n   4  �U
�U 
cobj o  �T�T 0 k   o  �S�S 0 
columnlist 
columnList m   � 
 t e m p C�W  �V    r  5 b  0 n  , o  (,�R�R 
0 metric   n  ( o  $(�Q�Q 0 temp   n  $ 4  $�P 
�P 
cobj  o  "#�O�O 0 j   n  !"! o  �N�N 0 hourly_forecast  " o  �M�M  0 tendaycastlist tenDayCastList m  ,/## �$$  , n      %&%  ;  34& o  03�L�L 0 forecastlist forecastList '(' l 8G)�K�J) E 8G*+* J  8@,, -.- m  8;// �00  f e e l s G o o d M a n I. 1�I1 m  ;>22 �33  f e e l s G o o d M a n E�I  + n  @F454 4  AF�H6
�H 
cobj6 o  DE�G�G 0 k  5 o  @A�F�F 0 
columnlist 
columnList�K  �J  ( 787 r  Jg9:9 b  Jb;<; n  J^=>= o  Z^�E�E 0 english  > n  JZ?@? o  VZ�D�D 0 	feelslike  @ n  JVABA 4  QV�CC
�C 
cobjC o  TU�B�B 0 j  B n  JQDED o  MQ�A�A 0 hourly_forecast  E o  JM�@�@  0 tendaycastlist tenDayCastList< m  ^aFF �GG  ,: n      HIH  ;  efI o  be�?�? 0 forecastlist forecastList8 JKJ l jtL�>�=L =  jtMNM n  jpOPO 4  kp�<Q
�< 
cobjQ o  no�;�; 0 k  P o  jk�:�: 0 
columnlist 
columnListN m  psRR �SS  f e e l s G o o d M a n M�>  �=  K TUT r  w�VWV b  w�XYX n  w�Z[Z o  ���9�9 
0 metric  [ n  w�\]\ o  ���8�8 0 	feelslike  ] n  w�^_^ 4  ~��7`
�7 
cobj` o  ���6�6 0 j  _ n  w~aba o  z~�5�5 0 hourly_forecast  b o  wz�4�4  0 tendaycastlist tenDayCastListY m  ��cc �dd  ,W n      efe  ;  ��f o  ���3�3 0 forecastlist forecastListU ghg l ��i�2�1i =  ��jkj n  ��lml 4  ���0n
�0 
cobjn o  ���/�/ 0 k  m o  ���.�. 0 
columnlist 
columnListk m  ��oo �pp  c o n d i t i o n E�2  �1  h qrq r  ��sts b  ��uvu n  ��wxw o  ���-�- 0 	condition  x n  ��yzy 4  ���,{
�, 
cobj{ o  ���+�+ 0 j  z n  ��|}| o  ���*�* 0 hourly_forecast  } o  ���)�)  0 tendaycastlist tenDayCastListv m  ��~~ �  ,t n      ���  ;  ��� o  ���(�( 0 forecastlist forecastListr ��� l ����'�&� =  ����� n  ����� 4  ���%�
�% 
cobj� o  ���$�$ 0 k  � o  ���#�# 0 
columnlist 
columnList� m  ���� ��� 
 w i n d I�'  �&  � ��� r  ����� b  ����� n  ����� o  ���"�" 0 english  � n  ����� o  ���!�! 0 wspd  � n  ����� 4  ��� �
�  
cobj� o  ���� 0 j  � n  ����� o  ���� 0 hourly_forecast  � o  ����  0 tendaycastlist tenDayCastList� m  ���� ���  ,� n      ���  ;  ��� o  ���� 0 forecastlist forecastList� ��� l ������ =  ����� n  ����� 4  ����
� 
cobj� o  ���� 0 k  � o  ���� 0 
columnlist 
columnList� m  ���� ��� 
 w i n d M�  �  � ��� r  ���� b  ���� n  ���� o  
�� 
0 metric  � n  �
��� o  
�� 0 wspd  � n  ���� 4  ��
� 
cobj� o  �� 0 j  � n  ���� o  ��� 0 hourly_forecast  � o  ����  0 tendaycastlist tenDayCastList� m  �� ���  ,� n      ���  ;  � o  �� 0 forecastlist forecastList� ��� l $���� =  $��� n   ��� 4   ��
� 
cobj� o  �� 0 k  � o  �� 0 
columnlist 
columnList� m   #�� ���  w i n d D i r�  �  � ��� r  'D��� b  '?��� n  ';��� o  7;�
�
 0 dir  � n  '7��� o  37�	�	 0 wdir  � n  '3��� 4  .3��
� 
cobj� o  12�� 0 j  � n  '.��� o  *.�� 0 hourly_forecast  � o  '*��  0 tendaycastlist tenDayCastList� m  ;>�� ���  ,� n      ���  ;  BC� o  ?B�� 0 forecastlist forecastList� ��� l GQ���� =  GQ��� n  GM��� 4  HM��
� 
cobj� o  KL� �  0 k  � o  GH���� 0 
columnlist 
columnList� m  MP�� ���  w i n d D g r�  �  � ��� r  Tq��� b  Tl��� n  Th��� o  dh���� 0 degrees  � n  Td��� o  `d���� 0 wdir  � n  T`��� 4  [`���
�� 
cobj� o  ^_���� 0 j  � n  T[��� o  W[���� 0 hourly_forecast  � o  TW����  0 tendaycastlist tenDayCastList� m  hk�� ���  ,� n      ���  ;  op� o  lo���� 0 forecastlist forecastList� ��� l t~������ =  t~��� n  tz��� 4  uz���
�� 
cobj� o  xy���� 0 k  � o  tu���� 0 
columnlist 
columnList� m  z}�� ���  s k y��  ��  �    r  �� b  �� n  �� o  ������ 0 sky   n  ��	 4  ����

�� 
cobj
 o  ������ 0 j  	 n  �� o  ������ 0 hourly_forecast   o  ������  0 tendaycastlist tenDayCastList m  �� �  , n        ;  �� o  ������ 0 forecastlist forecastList  l ������ =  �� n  �� 4  ����
�� 
cobj o  ������ 0 k   o  ������ 0 
columnlist 
columnList m  �� �  u v i��  ��    r  �� b  ��  n  ��!"! o  ������ 0 uvi  " n  ��#$# 4  ����%
�� 
cobj% o  ������ 0 j  $ n  ��&'& o  ������ 0 hourly_forecast  ' o  ������  0 tendaycastlist tenDayCastList  m  ��(( �))  , n      *+*  ;  ��+ o  ������ 0 forecastlist forecastList ,-, l ��.����. =  ��/0/ n  ��121 4  ����3
�� 
cobj3 o  ������ 0 k  2 o  ������ 0 
columnlist 
columnList0 m  ��44 �55  p o p��  ��  - 676 r  ��898 b  ��:;: n  ��<=< o  ������ 0 pop  = n  ��>?> 4  ����@
�� 
cobj@ o  ������ 0 j  ? n  ��ABA o  ������ 0 hourly_forecast  B o  ������  0 tendaycastlist tenDayCastList; m  ��CC �DD  ,9 n      EFE  ;  ��F o  ������ 0 forecastlist forecastList7 GHG l ��I����I =  ��JKJ n  ��LML 4  ����N
�� 
cobjN o  ������ 0 k  M o  ������ 0 
columnlist 
columnListK m  ��OO �PP  q p f I��  ��  H QRQ r  �STS b  �UVU n  �WXW o  ���� 0 english  X n  �YZY o  ���� 0 qpf  Z n  �[\[ 4  ��]
�� 
cobj] o  ���� 0 j  \ n  �^_^ o  ����� 0 hourly_forecast  _ o  ������  0 tendaycastlist tenDayCastListV m  `` �aa  ,T n      bcb  ;  c o  ���� 0 forecastlist forecastListR ded l &f����f =  &ghg n  "iji 4  "��k
�� 
cobjk o   !���� 0 k  j o  ���� 0 
columnlist 
columnListh m  "%ll �mm  q p f M��  ��  e non r  )Fpqp b  )Arsr n  )=tut o  9=���� 
0 metric  u n  )9vwv o  59���� 0 qpf  w n  )5xyx 4  05��z
�� 
cobjz o  34���� 0 j  y n  )0{|{ o  ,0���� 0 hourly_forecast  | o  ),����  0 tendaycastlist tenDayCastLists m  =@}} �~~  ,q n      �  ;  DE� o  AD���� 0 forecastlist forecastListo ��� l IS������ =  IS��� n  IO��� 4  JO���
�� 
cobj� o  MN���� 0 k  � o  IJ���� 0 
columnlist 
columnList� m  OR�� ��� 
 s n o w I��  ��  � ��� r  Vs��� b  Vn��� n  Vj��� o  fj���� 0 english  � n  Vf��� o  bf���� 0 snow  � n  Vb��� 4  ]b���
�� 
cobj� o  `a���� 0 j  � n  V]��� o  Y]���� 0 hourly_forecast  � o  VY����  0 tendaycastlist tenDayCastList� m  jm�� ���  ,� n      ���  ;  qr� o  nq���� 0 forecastlist forecastList� ��� l v������� =  v���� n  v|��� 4  w|���
�� 
cobj� o  z{���� 0 k  � o  vw���� 0 
columnlist 
columnList� m  |�� ��� 
 s n o w M��  ��  � ���� r  ����� b  ����� n  ����� o  ������ 
0 metric  � n  ����� o  ������ 0 snow  � n  ����� 4  �����
�� 
cobj� o  ������ 0 j  � n  ����� o  ������ 0 hourly_forecast  � o  ������  0 tendaycastlist tenDayCastList� m  ���� ���  ,� n      ���  ;  ��� o  ������ 0 forecastlist forecastList��  � r  ����� b  ����� m  ���� ��� 
 e r r o r� m  ���� ���  ,� n      ���  ;  ��� o  ������ 0 forecastlist forecastList� 7 1loops through all the weather columns at one hour   � ��� b l o o p s   t h r o u g h   a l l   t h e   w e a t h e r   c o l u m n s   a t   o n e   h o u r�r 0 k  � m  ������ � I �������
�� .corecnte****       ****� n ����� 2 ����
�� 
cobj� o  ������ 0 
columnlist 
columnList��  �q  � ��� l ������ r  ����� n  ����� 7 ������
�� 
cha � m  ������ � m  ��������� n  ����� 4  �����
�� 
cobj� m  ��������� o  ������ 0 forecastlist forecastList� n      ��� 4  �����
�� 
cobj� m  ��������� o  ������ 0 forecastlist forecastList�  remove trailing comma   � ��� * r e m o v e   t r a i l i n g   c o m m a� ���� r  ����� o  ����
�� 
ret � n      ���  ;  ��� o  ������ 0 forecastlist forecastList��  � J Dloops through all the weather hours, starting with the date and hour   � ��� � l o o p s   t h r o u g h   a l l   t h e   w e a t h e r   h o u r s ,   s t a r t i n g   w i t h   t h e   d a t e   a n d   h o u r�� 0 j  � m  JK���� � m  KN���� H��  � ��� r  ����� c  ����� o  ������ 0 forecastlist forecastList� m  ����
�� 
TEXT� o      ���� 0 forecastlist forecastList� ��� l ����������  ��  ��  � ��� l ������ I �������
�� .sysoexecTEXT���     TEXT� m  ���� ��� ` e c h o     >   $ H O M E / D o c u m e n t s / G e e k T o o l / W e a t h e r I n f o . t x t��  � 4 .Creates an empty file/overwrites previous file   � ��� \ C r e a t e s   a n   e m p t y   f i l e / o v e r w r i t e s   p r e v i o u s   f i l e� ��� l ����� I �����
�� .rdwrwritnull���     ****� o  ������ 0 forecastlist forecastList� ����
�� 
refn� 4  ����
�� 
file� o  ���� "0 weatherinfofile weatherInfoFile� �����
�� 
wrat� m  	����  ��  � 0 *Saves the weather info starting at space 0   � ��� T S a v e s   t h e   w e a t h e r   i n f o   s t a r t i n g   a t   s p a c e   0� ��� l �������  ��  �  � � � l �~�~   R LI currently only have one image to display at night, regardless of condition    � � I   c u r r e n t l y   o n l y   h a v e   o n e   i m a g e   t o   d i s p l a y   a t   n i g h t ,   r e g a r d l e s s   o f   c o n d i t i o n   Z  -�} l 	�|�{	 =  

 o  �z�z 0 	timeofday 	timeOfDay m   � 
 N i g h t�|  �{   r   o  �y�y 0 	timeofday 	timeOfDay o      �x�x $0 weathercondition weatherCondition�}   r   - b   ) b   ' o   #�w�w 0 currcondition currCondition m  #& �    o  '(�v�v 0 	timeofday 	timeOfDay o      �u�u $0 weathercondition weatherCondition �t L  .2 o  .1�s�s $0 weathercondition weatherCondition�t     l     �r�q�p�r  �q  �p   �o l     �n�m�l�n  �m  �l  �o       �k�k   �j
�j .aevtoappnull  �   � **** �i �h�g �f
�i .aevtoappnull  �   � ****�h �e!�e !  �d�d 0 
columnlist 
columnList�g   �c�b�a�c 0 
columnlist 
columnList�b 0 j  �a 0 k    ��`�_�^�] (�\�[ 3�Z >�Y H L \ ` d h l p t x | � � � � � � � � � � � � � ��X�W � � � � � � ��V ��U�T�S�R ��Q�P6�O�N�M�L�K�J�I�H�GYcr�F�E�D�C�B��A��@������?���>�=�<#/2�;FRco~��:�����9�8���7���6�5(4�4CO�3`l}��2������1�0�/��.�-�,�+�*�)�(
�` .misccurdldt    ��� null
�_ 
hour�^ 0 thehour theHour�] �\ 0 	timeofday 	timeOfDay�[ �Z �Y �X �W 0 	grouplist 	groupList�V 0 conditionlist conditionList
�U 
ascr
�T 
txdl
�S afdrdocs
�R .earsffdralis        afdr�Q 0 thepath thePath�P 0 wurl WURL
�O 
list
�N .DfaBfEtHnull���     ****�M  0 tendaycastlist tenDayCastList�L 0 hourly_forecast  
�K 
cobj�J 0 	condition  
�I 
TEXT�H 0 currcondition currCondition
�G .aevtquitnull��� ��� null�F "0 weatherinfofile weatherInfoFile�E 0 forecastlist forecastList�D H�C 0 fcttime FCTTIME�B 0 mday_padded  �A 0 hour  
�@ .corecnte****       ****�? �> 0 temp  �= 0 english  �< 
0 metric  �; 0 	feelslike  �: 0 wspd  �9 0 wdir  �8 0 dir  �7 0 degrees  �6 0 sky  �5 0 uvi  �4 0 pop  �3 0 qpf  �2 0 snow  
�1 
cha �0��
�/ 
ret 
�. .sysoexecTEXT���     TEXT
�- 
refn
�, 
file
�+ 
wrat�* 
�) .rdwrwritnull���     ****�( $0 weathercondition weatherCondition�f3*j  �,E�O�� �E�Y )�� �E�Y �� �E�Y �� �E�Y �E�O���a a a a a a a a a a a a a a a a a  a !a "a #a $vE` %Oa &a 'a (a )a *a +a ,�vE` -Oa .kv_ /a 0,FOa 1j 2a 3%E` 4Oa 5E` 6Oa 7 ,_ 6a 8&j 9E` :O_ :a ;,a <k/a =,a >&E` ?OPUOa 7 *j @UO_ -_ ? a AE` ?Y hOa Bkv_ /a 0,FOa 1j 2a C%a >&E` DOjvE` EO�ka Fkh _ :a ;,a <�/a G,a H,a I%_ E6FO_ :a ;,a <�/a G,a J,a K%_ E6FO$k�a <-j Lkh a Ma Na Oa Pa Qa Rv�a <�/ "_ :a ;,a <�/a G,a J,a S%_ E6FYӠa <�/a T  "_ :a ;,a <�/a U,a V,a W%_ E6FY��a <�/a X  "_ :a ;,a <�/a U,a Y,a Z%_ E6FYya [a \lv�a <�/ "_ :a ;,a <�/a ],a V,a ^%_ E6FYG�a <�/a _  "_ :a ;,a <�/a ],a Y,a `%_ E6FY�a <�/a a  _ :a ;,a <�/a =,a b%_ E6FY�a <�/a c  "_ :a ;,a <�/a d,a V,a e%_ E6FYĠa <�/a f  "_ :a ;,a <�/a d,a Y,a g%_ E6FY��a <�/a h  "_ :a ;,a <�/a i,a j,a k%_ E6FYj�a <�/a l  "_ :a ;,a <�/a i,a m,a n%_ E6FY=�a <�/a o  _ :a ;,a <�/a p,a q%_ E6FY�a <�/a r  _ :a ;,a <�/a s,a t%_ E6FY �a <�/a u  _ :a ;,a <�/a v,a w%_ E6FY  a <�/a x  "_ :a ;,a <�/a y,a V,a z%_ E6FY ��a <�/a {  "_ :a ;,a <�/a y,a Y,a |%_ E6FY h�a <�/a }  "_ :a ;,a <�/a ~,a V,a %_ E6FY ;�a <�/a �  "_ :a ;,a <�/a ~,a Y,a �%_ E6FY a �a �%_ E6F[OY��O_ Ea <i/[a �\[Zk\Za �2_ Ea <i/FO_ �_ E6F[OY�pO_ Ea >&E` EOa �j �O_ Ea �*a �_ D/a �ja � �O�a �  
�E` �Y _ ?a �%�%E` �O_ � ascr  ��ޭ