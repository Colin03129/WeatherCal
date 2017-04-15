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
 l     ��������  ��  ��        l    	     r     	    n         1    ��
�� 
hour  l     ����  I    ������
�� .misccurdldt    ��� null��  ��  ��  ��    o      ���� 0 thehour theHour    works with 24hr clock     �   ,   w o r k s   w i t h   2 4 h r   c l o c k      l  
 = ����  Z   
 =      l  
  ����  A   
      o   
 ���� 0 thehour theHour   m    ���� ��  ��    r     ! " ! m     # # � $ $ 
 N i g h t " o      ���� 0 	timeofday 	timeOfDay   % & % l    '���� ' A     ( ) ( o    ���� 0 thehour theHour ) m    ���� ��  ��   &  * + * r     , - , m     . . � / /  M o r n i n g - o      ���� 0 	timeofday 	timeOfDay +  0 1 0 l  " % 2���� 2 A   " % 3 4 3 o   " #���� 0 thehour theHour 4 m   # $���� ��  ��   1  5 6 5 r   ( + 7 8 7 m   ( ) 9 9 � : :  M i d d a y 8 o      ���� 0 	timeofday 	timeOfDay 6  ; < ; l  . 1 =���� = A   . 1 > ? > o   . /���� 0 thehour theHour ? m   / 0���� ��  ��   <  @�� @ r   4 7 A B A m   4 5 C C � D D  A f t e r n o o n B o      ���� 0 	timeofday 	timeOfDay��    r   : = E F E m   : ; G G � H H 
 N i g h t F o      ���� 0 	timeofday 	timeOfDay��  ��     I J I l     ��������  ��  ��   J  K L K l     �� M N��   M G AListing all of the weather/time-of-day that you have pictures for    N � O O � L i s t i n g   a l l   o f   t h e   w e a t h e r / t i m e - o f - d a y   t h a t   y o u   h a v e   p i c t u r e s   f o r L  P Q P l  > | R���� R r   > | S T S J   > x U U  V W V m   > ? X X � Y Y 
 O t h e r W  Z [ Z m   ? @ \ \ � ] ] 
 N i g h t [  ^ _ ^ m   @ A ` ` � a a  R a i n   M o r n i n g _  b c b m   A D d d � e e  R a i n   M i d d a y c  f g f m   D G h h � i i  R a i n   A f t e r n o o n g  j k j m   G J l l � m m , C h a n c e   o f   R a i n   M o r n i n g k  n o n m   J M p p � q q * C h a n c e   o f   R a i n   M i d d a y o  r s r m   M P t t � u u 0 C h a n c e   o f   R a i n   A f t e r n o o n s  v w v m   P S x x � y y * P a r t l y   C l o u d y   M o r n i n g w  z { z m   S V | | � } } ( P a r t l y   C l o u d y   M i d d a y {  ~  ~ m   V Y � � � � � . P a r t l y   C l o u d y   A f t e r n o o n   � � � m   Y \ � � � � � * M o s t l y   C l o u d y   M o r n i n g �  � � � m   \ _ � � � � � ( M o s t l y   C l o u d y   M i d d a y �  � � � m   _ b � � � � � . M o s t l y   C l o u d y   A f t e r n o o n �  � � � m   b e � � � � �   O v e r c a s t   M o r n i n g �  � � � m   e h � � � � �  O v e r c a s t   M i d d a y �  � � � m   h k � � � � � $ O v e r c a s t   A f t e r n o o n �  � � � m   k n � � � � �  C l e a r   M o r n i n g �  � � � m   n q � � � � �  C l e a r   M i d d a y �  ��� � m   q t � � � � �  C l e a r   A f t e r n o o n��   T o      ���� 0 	grouplist 	groupList��  ��   Q  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � < 6Listing the possible weather conditions you experience    � � � � l L i s t i n g   t h e   p o s s i b l e   w e a t h e r   c o n d i t i o n s   y o u   e x p e r i e n c e �  � � � l  } � ����� � r   } � � � � J   } � � �  � � � m   } � � � � � �  R a i n �  � � � m   � � � � � � �  C h a n c e   o f   R a i n �  � � � m   � � � � � � �  P a r t l y   C l o u d y �  � � � m   � � � � � � �  M o s t l y   C l o u d y �  � � � m   � � � � � � �  O v e r c a s t �  ��� � m   � � � � � � � 
 C l e a r��   � o      ���� 0 conditionlist conditionList��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � r   � � � � � J   � � � �  ��� � m   � � � � � � �  ��   � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr��  ��   �  � � � l  � � ����� � r   � � � � � l  � � ����� � b   � � � � � l  � � ����� � I  � ��� ���
�� .earsffdralis        afdr � m   � ���
�� afdrdocs��  ��  ��   � m   � � � � � � �   G e e k T o o l / W e a t h e r��  ��   � o      ���� 0 thepath thePath��  ��   �  � � � l     �� � ���   � A ;set variable to URL of my local weatherunderground api page    � � � � v s e t   v a r i a b l e   t o   U R L   o f   m y   l o c a l   w e a t h e r u n d e r g r o u n d   a p i   p a g e �  � � � l     �� � ���   � I CNOTE: you need to enter in your api key after api/ and /hourly10day    � � � � � N O T E :   y o u   n e e d   t o   e n t e r   i n   y o u r   a p i   k e y   a f t e r   a p i /   a n d   / h o u r l y 1 0 d a y �  � � � l     �� � ���   � ; 5NOTE: change KCAARCAT10 to your local weather station    � � � � j N O T E :   c h a n g e   K C A A R C A T 1 0   t o   y o u r   l o c a l   w e a t h e r   s t a t i o n �  � � � l  � � ����� � r   � � � � � m   � � � � � � � � h t t p : / / a p i . w u n d e r g r o u n d . c o m / a p i / f a c 1 a 1 9 e 1 5 e b 7 b 8 d / h o u r l y 1 0 d a y / q / p w s : K C A A R C A T 1 0 . j s o n � o      ���� 0 wurl WURL��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � [ UPulling info from JSON file to applescript list and setting current weather condition    � � � � � P u l l i n g   i n f o   f r o m   J S O N   f i l e   t o   a p p l e s c r i p t   l i s t   a n d   s e t t i n g   c u r r e n t   w e a t h e r   c o n d i t i o n �  �  � l  � ����� O   � � k   � �  l  � �����   = 7starts JSON Helper so we can pull things from json file    �		 n s t a r t s   J S O N   H e l p e r   s o   w e   c a n   p u l l   t h i n g s   f r o m   j s o n   f i l e 

 r   � � I  � �����
�� .DfaBfEtHnull���     **** c   � � o   � ����� 0 wurl WURL m   � ���
�� 
list��   o      ����  0 tendaycastlist tenDayCastList  l  � �����   0 *pulls JSON from file into applescript list    � T p u l l s   J S O N   f r o m   f i l e   i n t o   a p p l e s c r i p t   l i s t  r   � � c   � � n   � � o   � ����� 0 	condition   n   � � 4   � ��� 
�� 
cobj  m   � �����  n   � �!"! o   � ����� 0 hourly_forecast  " o   � �����  0 tendaycastlist tenDayCastList m   � ���
�� 
TEXT o      ���� 0 currcondition currCondition #��# l  � ���$%��  $ J Dsets the current weather condition name (Sunny, Partly Cloudy, etc.)   % �&& � s e t s   t h e   c u r r e n t   w e a t h e r   c o n d i t i o n   n a m e   ( S u n n y ,   P a r t l y   C l o u d y ,   e t c . )��   m   � �''�                                                                                  DfaB  alis    `  Macintosh HD               �R�\H+   �97JSON Helper.app                                                 ���Е�        ����  	                Applications    �S!�      ЕuJ     �97  *Macintosh HD:Applications: JSON Helper.app     J S O N   H e l p e r . a p p    M a c i n t o s h   H D  Applications/JSON Helper.app  / ��  ��  ��    ()( l  � �*����* O  � �+,+ I  � �������
�� .aevtquitnull��� ��� null��  ��  , m   � �--�                                                                                  DfaB  alis    `  Macintosh HD               �R�\H+   �97JSON Helper.app                                                 ���Е�        ����  	                Applications    �S!�      ЕuJ     �97  *Macintosh HD:Applications: JSON Helper.app     J S O N   H e l p e r . a p p    M a c i n t o s h   H D  Applications/JSON Helper.app  / ��  ��  ��  ) ./. l     ��������  ��  ��  / 010 l     ��23��  2 m gset currCondition to "Hailarious" --uncomment this if you want to test setting currCondition to "Other"   3 �44 � s e t   c u r r C o n d i t i o n   t o   " H a i l a r i o u s "   - - u n c o m m e n t   t h i s   i f   y o u   w a n t   t o   t e s t   s e t t i n g   c u r r C o n d i t i o n   t o   " O t h e r "1 565 l     ��������  ��  ��  6 787 l     ��9:��  9 n h If the current weather condition (currCondition) is not within the conditionList (such as "Hailarious")   : �;; �   I f   t h e   c u r r e n t   w e a t h e r   c o n d i t i o n   ( c u r r C o n d i t i o n )   i s   n o t   w i t h i n   t h e   c o n d i t i o n L i s t   ( s u c h   a s   " H a i l a r i o u s " )8 <=< l     ��>?��  > * $- it will set currCondition to Other   ? �@@ H -   i t   w i l l   s e t   c u r r C o n d i t i o n   t o   O t h e r= ABA l  �C����C Z   �DE����D l  �F����F H   �GG E  �HIH o   � ���� 0 conditionlist conditionListI o   ���� 0 currcondition currCondition��  ��  E r  JKJ m  LL �MM 
 O t h e rK o      ���� 0 currcondition currCondition��  ��  ��  ��  B NON l     ��������  ��  ��  O PQP l !R����R r  !STS J  UU V��V m  WW �XX  ��  T n     YZY 1   ��
�� 
txdlZ 1  �
� 
ascr��  ��  Q [\[ l "5]�~�}] r  "5^_^ c  "1`a` l "-b�|�{b b  "-cdc l ")e�z�ye I ")�xf�w
�x .earsffdralis        afdrf m  "%�v
�v afdrdocs�w  �z  �y  d m  ),gg �hh 0 G e e k T o o l : W e a t h e r I n f o . t x t�|  �{  a m  -0�u
�u 
TEXT_ o      �t�t "0 weatherinfofile weatherInfoFile�~  �}  \ iji l     �s�r�q�s  �r  �q  j klk l     �pmn�p  m x r pulls all the weather info from the api forecastList into a list with only the forecast info we are interested in   n �oo �   p u l l s   a l l   t h e   w e a t h e r   i n f o   f r o m   t h e   a p i   f o r e c a s t L i s t   i n t o   a   l i s t   w i t h   o n l y   t h e   f o r e c a s t   i n f o   w e   a r e   i n t e r e s t e d   i nl pqp l 6<r�o�nr r  6<sts J  68�m�m  t o      �l�l 0 forecastlist forecastList�o  �n  q uvu l =�w�k�jw Y  =�x�iyz�hx k  I�{{ |}| r  Ib~~ n  I]��� o  Y]�g�g 0 mday_padded  � n  IY��� o  UY�f�f 0 fcttime FCTTIME� n  IU��� 4  PU�e�
�e 
cobj� o  ST�d�d 0 j  � n  IP��� o  LP�c�c 0 hourly_forecast  � o  IL�b�b  0 tendaycastlist tenDayCastList n      ���  ;  `a� o  ]`�a�a 0 forecastlist forecastList} ��� r  ck��� m  cf�� ���  ,� n      ���  ;  ij� o  fi�`�` 0 forecastlist forecastList� ��� l l����� r  l���� n  l���� o  |��_�_ 0 hour  � n  l|��� o  x|�^�^ 0 fcttime FCTTIME� n  lx��� 4  sx�]�
�] 
cobj� o  vw�\�\ 0 j  � n  ls��� o  os�[�[ 0 hourly_forecast  � o  lo�Z�Z  0 tendaycastlist tenDayCastList� n      ���  ;  ��� o  ���Y�Y 0 forecastlist forecastList�  hour in 24h   � ���  h o u r   i n   2 4 h� ��� r  ����� m  ���� ���  ,� n      ���  ;  ��� o  ���X�X 0 forecastlist forecastList� ��� l ������ r  ����� n  ����� o  ���W�W 0 english  � n  ����� o  ���V�V 0 temp  � n  ����� 4  ���U�
�U 
cobj� o  ���T�T 0 j  � n  ����� o  ���S�S 0 hourly_forecast  � o  ���R�R  0 tendaycastlist tenDayCastList� n      ���  ;  ��� o  ���Q�Q 0 forecastlist forecastList�  temp in Farenheit   � ��� " t e m p   i n   F a r e n h e i t� ��� r  ����� m  ���� ���  ,� n      ���  ;  ��� o  ���P�P 0 forecastlist forecastList� ��� l ������ r  ����� n  ����� o  ���O�O 0 pop  � n  ����� 4  ���N�
�N 
cobj� o  ���M�M 0 j  � n  ����� o  ���L�L 0 hourly_forecast  � o  ���K�K  0 tendaycastlist tenDayCastList� n      ���  ;  ��� o  ���J�J 0 forecastlist forecastList� ' !probability of precipitation as %   � ��� B p r o b a b i l i t y   o f   p r e c i p i t a t i o n   a s   %� ��I� r  ����� o  ���H
�H 
ret � n      ���  ;  ��� o  ���G�G 0 forecastlist forecastList�I  �i 0 j  y m  @A�F�F z m  AD�E�E H�h  �k  �j  v ��� l ����D�C� r  ����� c  ����� o  ���B�B 0 forecastlist forecastList� m  ���A
�A 
TEXT� o      �@�@ 0 forecastlist forecastList�D  �C  � ��� l     �?�>�=�?  �>  �=  � ��� l ������ I ���<��;
�< .sysoexecTEXT���     TEXT� m  ���� ��� ` e c h o     >   $ H O M E / D o c u m e n t s / G e e k T o o l / W e a t h e r I n f o . t x t�;  � 7 1Creates an empty file or overwrites previous file   � ��� b C r e a t e s   a n   e m p t y   f i l e   o r   o v e r w r i t e s   p r e v i o u s   f i l e� ��� l ����� I ��:��
�: .rdwrwritnull���     ****� o  ���9�9 0 forecastlist forecastList� �8��
�8 
refn� 4  ���7�
�7 
file� o  ���6�6 "0 weatherinfofile weatherInfoFile� �5��4
�5 
wrat� m  ���3�3  �4  � 0 *Saves the weather info starting at space 0   � ��� T S a v e s   t h e   w e a t h e r   i n f o   s t a r t i n g   a t   s p a c e   0� ��� l     �2�1�0�2  �1  �0  � � � l     �/�/   � �I currently only have one image to display at night. You can remove the if condition if you have multiple night images to display.    � I   c u r r e n t l y   o n l y   h a v e   o n e   i m a g e   t o   d i s p l a y   a t   n i g h t .   Y o u   c a n   r e m o v e   t h e   i f   c o n d i t i o n   i f   y o u   h a v e   m u l t i p l e   n i g h t   i m a g e s   t o   d i s p l a y .   l  �.�- Z   �,	 l 
�+�*
 =   o  �)�) 0 	timeofday 	timeOfDay m   � 
 N i g h t�+  �*   r   o  �(�( 0 	timeofday 	timeOfDay o      �'�' $0 weathercondition weatherCondition�,  	 r    b   b   o  �&�& 0 currcondition currCondition m   �    o  �%�% 0 	timeofday 	timeOfDay o      �$�$ $0 weathercondition weatherCondition�.  �-    l !%�#�" L  !% o  !$�!�! $0 weathercondition weatherCondition�#  �"    l     � ���   �  �     l     ����  �  �    !�! l     ����  �  �  �       �"#�  " �
� .aevtoappnull  �   � ****# �$��%&�
� .aevtoappnull  �   � ****$ k    %''  ((  ))  P**  �++  �,,  �--  �..  �// (00 A11 P22 [33 p44 u55 �66 �77 �88 99 ��  �  �  % �� 0 j  & X���� #�
�	 .� 9� C G X \ ` d h l p t x | � � � � � � � � � ��� � � � � � ��� ���� �� ��� ���'������������������LWg��������������������������������������
� .misccurdldt    ��� null
� 
hour� 0 thehour theHour� �
 0 	timeofday 	timeOfDay�	 � � � � 0 	grouplist 	groupList� � 0 conditionlist conditionList
� 
ascr
� 
txdl
�  afdrdocs
�� .earsffdralis        afdr�� 0 thepath thePath�� 0 wurl WURL
�� 
list
�� .DfaBfEtHnull���     ****��  0 tendaycastlist tenDayCastList�� 0 hourly_forecast  
�� 
cobj�� 0 	condition  
�� 
TEXT�� 0 currcondition currCondition
�� .aevtquitnull��� ��� null�� "0 weatherinfofile weatherInfoFile�� 0 forecastlist forecastList�� H�� 0 fcttime FCTTIME�� 0 mday_padded  �� 0 hour  �� 0 temp  �� 0 english  �� 0 pop  
�� 
ret 
�� .sysoexecTEXT���     TEXT
�� 
refn
�� 
file
�� 
wrat�� 
�� .rdwrwritnull���     ****�� $0 weathercondition weatherCondition�&*j  �,E�O�� �E�Y )�� �E�Y �� �E�Y �� �E�Y �E�O���a a a a a a a a a a a a a a a a a  a !vE` "Oa #a $a %a &a 'a (a )vE` *Oa +kv_ ,a -,FOa .j /a 0%E` 1Oa 2E` 3Oa 4 ,_ 3a 5&j 6E` 7O_ 7a 8,a 9k/a :,a ;&E` <OPUOa 4 *j =UO_ *_ < a >E` <Y hOa ?kv_ ,a -,FOa .j /a @%a ;&E` AOjvE` BO �ka Ckh  _ 7a 8,a 9�/a D,a E,_ B6FOa F_ B6FO_ 7a 8,a 9�/a D,a G,_ B6FOa H_ B6FO_ 7a 8,a 9�/a I,a J,_ B6FOa K_ B6FO_ 7a 8,a 9�/a L,_ B6FO_ M_ B6F[OY�sO_ Ba ;&E` BOa Nj OO_ Ba P*a Q_ A/a Rja S TO�a U  
�E` VY _ <a W%�%E` VO_ V ascr  ��ޭ