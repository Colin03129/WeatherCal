FasdUAS 1.101.10   ��   ��    k             l      ��  ��   VP	Description: This script will pull calendar and weather information from files and display it in a HTML table
	Purpose:
			- pulls calendar info and orders it by time
			- pulls weather info
			- places calendar and weather info next to each other in a table
			- option to have page with both calendar and background or only calendar
     � 	 	� 	 D e s c r i p t i o n :   T h i s   s c r i p t   w i l l   p u l l   c a l e n d a r   a n d   w e a t h e r   i n f o r m a t i o n   f r o m   f i l e s   a n d   d i s p l a y   i t   i n   a   H T M L   t a b l e 
 	 P u r p o s e : 
 	 	 	 -   p u l l s   c a l e n d a r   i n f o   a n d   o r d e r s   i t   b y   t i m e 
 	 	 	 -   p u l l s   w e a t h e r   i n f o 
 	 	 	 -   p l a c e s   c a l e n d a r   a n d   w e a t h e r   i n f o   n e x t   t o   e a c h   o t h e r   i n   a   t a b l e 
 	 	 	 -   o p t i o n   t o   h a v e   p a g e   w i t h   b o t h   c a l e n d a r   a n d   b a c k g r o u n d   o r   o n l y   c a l e n d a r 
   
  
 l     ��������  ��  ��        l     ��  ��    , &--------Declarations------------------     �   L - - - - - - - - D e c l a r a t i o n s - - - - - - - - - - - - - - - - - -      l     ��  ��    . (----------------------------------------     �   P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��������  ��  ��        l     ����  r         I    ������
�� .misccurdldt    ��� null��  ��    o      ���� 0 curdate curDate��  ��        l    ����  r       !   J     " "  #�� # m    	 $ $ � % %  ��   ! n      & ' & 1    ��
�� 
txdl ' 1    ��
�� 
ascr��  ��     ( ) ( l    *���� * r     + , + c     - . - l    /���� / b     0 1 0 l    2���� 2 I   �� 3��
�� .earsffdralis        afdr 3 m    ��
�� afdrdocs��  ��  ��   1 m     4 4 � 5 5 8 G e e k T o o l : C a l W e a t h e r I n f o . h t m l��  ��   . m    ��
�� 
TEXT , o      ���� 0 thehtmlpath theHTMLpath��  ��   )  6 7 6 l    8���� 8 r     9 : 9 m     ; ; � < <   : o      ���� 0 thehtmlstring theHTMLstring��  ��   7  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A + %--------Script Runs------------------    B � C C J - - - - - - - - S c r i p t   R u n s - - - - - - - - - - - - - - - - - - @  D E D l     �� F G��   F - '---------------------------------------    G � H H N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - E  I J I l     ��������  ��  ��   J  K L K l    ' M���� M r     ' N O N J     # P P  Q�� Q m     ! R R � S S  ��   O n      T U T 1   $ &��
�� 
txdl U 1   # $��
�� 
ascr��  ��   L  V W V l  ( 3 X���� X r   ( 3 Y Z Y c   ( 1 [ \ [ l  ( / ]���� ] b   ( / ^ _ ^ l  ( - `���� ` I  ( -�� a��
�� .earsffdralis        afdr a m   ( )��
�� afdrdocs��  ��  ��   _ m   - . b b � c c @ G e e k T o o l : C a l e n d a r E v e n t s P u l l . s c p t��  ��   \ m   / 0��
�� 
TEXT Z o      ���� 0 ascript aScript��  ��   W  d e d l  4 < f���� f I  4 <�� g��
�� .sysodsct****        scpt g 4   4 8�� h
�� 
file h o   6 7���� 0 ascript aScript��  ��  ��   e  i j i l     ��������  ��  ��   j  k l k l      �� m n��   m}w If you would like to change the columns that appear to the right side of the weather calendar, edit currentWeatherColumns with any of the following weather events:
--"hour" hour of the weather in 24h time
--"dateI" date of the month as MM/DD instead of "hour" when "hour" = 0
--"dateM" date of the month as DD/MM instead of "hour" when "hour" = 0
--"week" weekdate as Mon, Tue, ... instead of "hour" when "hour" = 0
--"tempF" temperature in Fahrenheit
--"tempC" temperature in Celsius
--"feelsGoodManI" what the temperature feels like in Fahrenheit
--"feelsGoodManM" what the temperature feels like in Celsius
--"feelsGoodManE" what the temperature feels like in emojis
--"conditionE" current weather condition in emojis
--"windI" wind speed in imperial units
--"windM" wind speed in metric units
--"windDir" wind direction in cardinal direction
--"windDgr" wind direction as a degree
--"sky" the amount of visible sky, inverse of cloud cover
--"uvi" the amount of uv radiation, similar to sky
--"pop" the probability of precipitation
--"qpfI" the amount of liquid precipitation that will fall within an hour in imperial units
--"qpfM" the amount of liquid precipitation that will fall within an hour in metric units
--"snowI" the current amount of snow on the ground in imperial units
--"snowM" the current amount of snow on the ground in metric units

--NOTE: The default columns are "hour", "calendar", "tempF", and "pop". Columns will be displayed from left to right in the order they are listed.
--NOTE: The dateI, dateM, and week columns will display the same item as hour, except for when the hour is 0 where they will display the date or weekday
    n � o o�   I f   y o u   w o u l d   l i k e   t o   c h a n g e   t h e   c o l u m n s   t h a t   a p p e a r   t o   t h e   r i g h t   s i d e   o f   t h e   w e a t h e r   c a l e n d a r ,   e d i t   c u r r e n t W e a t h e r C o l u m n s   w i t h   a n y   o f   t h e   f o l l o w i n g   w e a t h e r   e v e n t s : 
 - - " h o u r "   h o u r   o f   t h e   w e a t h e r   i n   2 4 h   t i m e 
 - - " d a t e I "   d a t e   o f   t h e   m o n t h   a s   M M / D D   i n s t e a d   o f   " h o u r "   w h e n   " h o u r "   =   0 
 - - " d a t e M "   d a t e   o f   t h e   m o n t h   a s   D D / M M   i n s t e a d   o f   " h o u r "   w h e n   " h o u r "   =   0 
 - - " w e e k "   w e e k d a t e   a s   M o n ,   T u e ,   . . .   i n s t e a d   o f   " h o u r "   w h e n   " h o u r "   =   0 
 - - " t e m p F "   t e m p e r a t u r e   i n   F a h r e n h e i t 
 - - " t e m p C "   t e m p e r a t u r e   i n   C e l s i u s 
 - - " f e e l s G o o d M a n I "   w h a t   t h e   t e m p e r a t u r e   f e e l s   l i k e   i n   F a h r e n h e i t 
 - - " f e e l s G o o d M a n M "   w h a t   t h e   t e m p e r a t u r e   f e e l s   l i k e   i n   C e l s i u s 
 - - " f e e l s G o o d M a n E "   w h a t   t h e   t e m p e r a t u r e   f e e l s   l i k e   i n   e m o j i s 
 - - " c o n d i t i o n E "   c u r r e n t   w e a t h e r   c o n d i t i o n   i n   e m o j i s 
 - - " w i n d I "   w i n d   s p e e d   i n   i m p e r i a l   u n i t s 
 - - " w i n d M "   w i n d   s p e e d   i n   m e t r i c   u n i t s 
 - - " w i n d D i r "   w i n d   d i r e c t i o n   i n   c a r d i n a l   d i r e c t i o n 
 - - " w i n d D g r "   w i n d   d i r e c t i o n   a s   a   d e g r e e 
 - - " s k y "   t h e   a m o u n t   o f   v i s i b l e   s k y ,   i n v e r s e   o f   c l o u d   c o v e r 
 - - " u v i "   t h e   a m o u n t   o f   u v   r a d i a t i o n ,   s i m i l a r   t o   s k y 
 - - " p o p "   t h e   p r o b a b i l i t y   o f   p r e c i p i t a t i o n 
 - - " q p f I "   t h e   a m o u n t   o f   l i q u i d   p r e c i p i t a t i o n   t h a t   w i l l   f a l l   w i t h i n   a n   h o u r   i n   i m p e r i a l   u n i t s 
 - - " q p f M "   t h e   a m o u n t   o f   l i q u i d   p r e c i p i t a t i o n   t h a t   w i l l   f a l l   w i t h i n   a n   h o u r   i n   m e t r i c   u n i t s 
 - - " s n o w I "   t h e   c u r r e n t   a m o u n t   o f   s n o w   o n   t h e   g r o u n d   i n   i m p e r i a l   u n i t s 
 - - " s n o w M "   t h e   c u r r e n t   a m o u n t   o f   s n o w   o n   t h e   g r o u n d   i n   m e t r i c   u n i t s 
 
 - - N O T E :   T h e   d e f a u l t   c o l u m n s   a r e   " h o u r " ,   " c a l e n d a r " ,   " t e m p F " ,   a n d   " p o p " .   C o l u m n s   w i l l   b e   d i s p l a y e d   f r o m   l e f t   t o   r i g h t   i n   t h e   o r d e r   t h e y   a r e   l i s t e d . 
 - - N O T E :   T h e   d a t e I ,   d a t e M ,   a n d   w e e k   c o l u m n s   w i l l   d i s p l a y   t h e   s a m e   i t e m   a s   h o u r ,   e x c e p t   f o r   w h e n   t h e   h o u r   i s   0   w h e r e   t h e y   w i l l   d i s p l a y   t h e   d a t e   o r   w e e k d a y 
 l  p q p l  = � r���� r r   = � s t s J   = � u u  v w v m   = @ x x � y y  h o u r w  z { z m   @ C | | � } } 
 d a t e I {  ~  ~ m   C F � � � � � 
 d a t e M   � � � m   F I � � � � �  w e e k �  � � � m   I L � � � � �  c a l e n d a r �  � � � m   L O � � � � � 
 t e m p F �  � � � m   O R � � � � � 
 t e m p C �  � � � m   R U � � � � �  f e e l s G o o d M a n I �  � � � m   U X � � � � �  f e e l s G o o d M a n M �  � � � m   X [ � � � � �  f e e l s G o o d M a n E �  � � � m   [ ^ � � � � �  c o n d i t i o n E �  � � � m   ^ a � � � � � 
 w i n d I �  � � � m   a d � � � � � 
 w i n d M �  � � � m   d g � � � � �  w i n d D i r �  � � � m   g j � � � � �  w i n d D g r �  � � � m   j m � � � � �  s k y �  � � � m   m p � � � � �  u v i �  � � � m   p s � � � � �  p o p �  � � � m   s v � � � � �  q p f I �  � � � m   v y � � � � �  q p f M �  � � � m   y | � � � � � 
 s n o w I �  ��� � m   |  � � � � � 
 s n o w M��   t o      ���� 00 possibleweathercolumns possibleWeatherColumns��  ��   q  � � � p       � � ������ .0 currentweathercolumns currentWeatherColumns��   �  � � � l     �� � ���   � c ]set currentWeatherColumns to {"hour", "calendar", "tempF", "pop"} --Original list for columns    � � � � � s e t   c u r r e n t W e a t h e r C o l u m n s   t o   { " h o u r " ,   " c a l e n d a r " ,   " t e m p F " ,   " p o p " }   - - O r i g i n a l   l i s t   f o r   c o l u m n s �  � � � l  � � ����� � r   � � � � � J   � � � �  � � � m   � � � � � � �  w e e k �  � � � m   � � � � � � � 
 t e m p F �  � � � m   � � � � � � �  f e e l s G o o d M a n E �  � � � m   � � � � � � �  c o n d i t i o n E �  � � � m   � � � � � � �  p o p �  ��� � m   � � � � � � �  q p f I��   � o      ���� .0 currentweathercolumns currentWeatherColumns��  ��   �  � � � l  � � ����� � r   � � � � � c   � � � � � l  � � ����� � b   � � � � � l  � � ����� � I  � ��� ���
�� .earsffdralis        afdr � m   � ���
�� afdrdocs��  ��  ��   � m   � � � � � � � 6 G e e k T o o l : W e a t h e r C h a n g e . s c p t��  ��   � m   � ���
�� 
TEXT � o      ���� 0 ascript aScript��  ��   �    l  � ����� r   � � I  � ���
�� .sysodsct****        scpt 4   � ���
�� 
file o   � ����� 0 ascript aScript ����
�� 
plst J   � �		 
��
 o   � ����� .0 currentweathercolumns currentWeatherColumns��  ��   o      ���� $0 weathercondition weatherCondition��  ��    l  � ����� I  � �����
�� .ascrcmnt****      � **** o   � ����� $0 weathercondition weatherCondition��  ��  ��    l     ����   - '--------Functions/Subroutines----------    � N - - - - - - - - F u n c t i o n s / S u b r o u t i n e s - - - - - - - - - -  l     ����   1 +-------------------------------------------    � V - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     ��������  ��  ��    i      I      ������ 0 
bubblesort 
bubbleSort  ��  o      ���� 0 datelist dateList��  ��   Z     �!"��#! l    $����$ =     %&% l    '����' I    ��(��
�� .corecnte****       ****( o     ���� 0 datelist dateList��  ��  ��  & m    ���� ��  ��  " L   
 )) o   
 ���� 0 datelist dateList��  # k    �** +,+ T    }-- k    x.. /0/ r    121 m    ����  2 o      ���� 0 swapcounter swapCounter0 343 Y    l5��67�5 Z   & g89�~�}8 l  & ?:�|�{: ?   & ?;<; 4   & 1�z=
�z 
ldt = l  ( 0>�y�x> n   ( 0?@? 4   , /�wA
�w 
cobjA m   - .�v�v @ n   ( ,BCB 4   ) ,�uD
�u 
cobjD o   * +�t�t 0 i  C o   ( )�s�s 0 datelist dateList�y  �x  < 4   1 >�rE
�r 
ldt E l  3 =F�q�pF n   3 =GHG 4   9 <�oI
�o 
cobjI m   : ;�n�n H n   3 9JKJ 4   4 9�mL
�m 
cobjL l  5 8M�l�kM [   5 8NON o   5 6�j�j 0 i  O m   6 7�i�i �l  �k  K o   3 4�h�h 0 datelist dateList�q  �p  �|  �{  9 k   B cPP QRQ r   B HSTS n   B FUVU 4   C F�gW
�g 
cobjW o   D E�f�f 0 i  V o   B C�e�e 0 datelist dateListT o      �d�d 0 temp  R XYX r   I TZ[Z n   I O\]\ 4   J O�c^
�c 
cobj^ l  K N_�b�a_ [   K N`a` o   K L�`�` 0 i  a m   L M�_�_ �b  �a  ] o   I J�^�^ 0 datelist dateList[ n      bcb 4   P S�]d
�] 
cobjd o   Q R�\�\ 0 i  c o   O P�[�[ 0 datelist dateListY efe r   U ]ghg o   U V�Z�Z 0 temp  h n      iji 4   W \�Yk
�Y 
cobjk l  X [l�X�Wl [   X [mnm o   X Y�V�V 0 i  n m   Y Z�U�U �X  �W  j o   V W�T�T 0 datelist dateListf o�So r   ^ cpqp [   ^ arsr o   ^ _�R�R 0 swapcounter swapCounters m   _ `�Q�Q q o      �P�P 0 swapcounter swapCounter�S  �~  �}  �� 0 i  6 m    �O�O 7 l   !t�N�Mt \    !uvu l   w�L�Kw n    xyx 1    �J
�J 
lengy o    �I�I 0 datelist dateList�L  �K  v m     �H�H �N  �M  �  4 z�Gz Z   m x{|�F�E{ l  m p}�D�C} =   m p~~ o   m n�B�B 0 swapcounter swapCounter m   n o�A�A  �D  �C  |  S   s t�F  �E  �G  , ��@� L   ~ ��� o   ~ �?�? 0 datelist dateList�@   ��� l     �>�=�<�>  �=  �<  � ��� i    ��� I      �;�:�9�; "0 addcolumntitles addColumnTitles�:  �9  � k    �� ��� l     �8���8  � F @Creates the table headers depending on the currentWeatherColumns   � ��� � C r e a t e s   t h e   t a b l e   h e a d e r s   d e p e n d i n g   o n   t h e   c u r r e n t W e a t h e r C o l u m n s� ��� r     ��� m     �� ��� > < t a b l e >   < t r   c l a s s = " H e a d T a b l e " >  � o      �7�7 0 tableheader tableHeader� ��� r    ��� I   �6��5
�6 .corecnte****       ****� n   ��� 2   �4
�4 
cobj� o    �3�3 .0 currentweathercolumns currentWeatherColumns�5  � o      �2�2 0 colcount colCount� ��� Y   ��1���0� k   �� ��� Z    �����/� l   #��.�-� E   #��� J    �� ��� m    �� ���  h o u r� ��� m    �� ��� 
 d a t e I� ��� m    �� ��� 
 d a t e M� ��,� m    �� ���  w e e k�,  � n    "��� 4    "�+�
�+ 
cobj� o     !�*�* 0 h  � o    �)�) .0 currentweathercolumns currentWeatherColumns�.  �-  � r   & )��� m   & '�� ���  H o u r� o      �(�( 0 colhead colHead� ��� l  , 2��'�&� =   , 2��� n   , 0��� 4   - 0�%�
�% 
cobj� o   . /�$�$ 0 h  � o   , -�#�# .0 currentweathercolumns currentWeatherColumns� m   0 1�� ���  c a l e n d a r�'  �&  � ��� r   5 8��� m   5 6�� ���  C a l e n d a r� o      �"�" 0 colhead colHead� ��� l  ; K��!� � E  ; K��� J   ; F�� ��� m   ; <�� ��� 
 t e m p F� ��� m   < =�� ��� 
 t e m p C� ��� m   = >�� ���  f e e l s G o o d M a n I� ��� m   > ?�� ���  f e e l s G o o d M a n M� ��� m   ? B�� ���  f e e l s G o o d M a n E�  � n   F J��� 4   G J��
� 
cobj� o   H I�� 0 h  � o   F G�� .0 currentweathercolumns currentWeatherColumns�!  �   � ��� r   N S��� m   N Q�� ���  T e m p� o      �� 0 colhead colHead� ��� l  V ^���� =   V ^��� n   V Z��� 4   W Z��
� 
cobj� o   X Y�� 0 h  � o   V W�� .0 currentweathercolumns currentWeatherColumns� m   Z ]�� ���  c o n d i t i o n E�  �  � ��� r   a f��� m   a d   �  W e a t h e r� o      �� 0 colhead colHead�  l  i v�� E  i v J   i q 	 m   i l

 � 
 w i n d I	 � m   l o � 
 w i n d M�   n   q u 4   r u�
� 
cobj o   s t�� 0 h   o   q r�� .0 currentweathercolumns currentWeatherColumns�  �    r   y ~ m   y | �  W i n d o      �� 0 colhead colHead  l  � ��� E  � � J   � �  m   � �   �!!  w i n d D i r "�" m   � �## �$$  w i n d D g r�   n   � �%&% 4   � ��
'
�
 
cobj' o   � ��	�	 0 h  & o   � ��� .0 currentweathercolumns currentWeatherColumns�  �   ()( r   � �*+* m   � �,, �--  F r o m+ o      �� 0 colhead colHead) ./. l  � �0��0 E  � �121 J   � �33 454 m   � �66 �77  s k y5 8�8 m   � �99 �::  u v i�  2 n   � �;<; 4   � ��=
� 
cobj= o   � ��� 0 h  < o   � ��� .0 currentweathercolumns currentWeatherColumns�  �  / >?> r   � �@A@ m   � �BB �CC  S k yA o      � �  0 colhead colHead? DED l  � �F����F =   � �GHG n   � �IJI 4   � ���K
�� 
cobjK o   � ����� 0 h  J o   � ����� .0 currentweathercolumns currentWeatherColumnsH m   � �LL �MM  p o p��  ��  E NON r   � �PQP m   � �RR �SS  R a i nQ o      ���� 0 colhead colHeadO TUT l  � �V����V E  � �WXW J   � �YY Z[Z m   � �\\ �]]  q p f I[ ^��^ m   � �__ �``  q p f M��  X n   � �aba 4   � ���c
�� 
cobjc o   � ����� 0 h  b o   � ����� .0 currentweathercolumns currentWeatherColumns��  ��  U ded r   � �fgf m   � �hh �ii  R a i n f a l lg o      ���� 0 colhead colHeade jkj l  � �l����l E  � �mnm J   � �oo pqp m   � �rr �ss 
 s n o w Iq t��t m   � �uu �vv 
 s n o w M��  n n   � �wxw 4   � ���y
�� 
cobjy o   � ����� 0 h  x o   � ����� .0 currentweathercolumns currentWeatherColumns��  ��  k z��z r   � �{|{ m   � �}} �~~  S n o w f a l l| o      ���� 0 colhead colHead��  �/  � �� r   ���� b   ���� b   � ���� b   � ���� o   � ����� 0 tableheader tableHeader� m   � ��� ���  < t h >� o   � ����� 0 colhead colHead� m   � �� ���  < / t h >  � o      ���� 0 tableheader tableHeader��  �1 0 h  � m    ���� � o    ���� 0 colcount colCount�0  � ��� r  	��� b  	��� o  	
���� 0 tableheader tableHeader� m  
�� ���  < / t r >  � o      ���� 0 tableheader tableHeader� ���� L  �� o  ���� 0 tableheader tableHeader��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� &0 addweathercolumns addWeatherColumns� ��� o      ���� 0 wrow wRow� ���� o      ���� 0 cevent cEvent��  ��  � k    ��� ��� l     ������  � 9 3Counts how many columns needed to be added to a row   � ��� f C o u n t s   h o w   m a n y   c o l u m n s   n e e d e d   t o   b e   a d d e d   t o   a   r o w� ��� l     ������  � 9 3Uses the info from item 1 of weatherInfoList (wRow)   � ��� f U s e s   t h e   i n f o   f r o m   i t e m   1   o f   w e a t h e r I n f o L i s t   ( w R o w )� ��� l     ������  � | vCalls the correct handler to write the css class or id along for the weather event data from item 1 of weatherInfoList   � ��� � C a l l s   t h e   c o r r e c t   h a n d l e r   t o   w r i t e   t h e   c s s   c l a s s   o r   i d   a l o n g   f o r   t h e   w e a t h e r   e v e n t   d a t a   f r o m   i t e m   1   o f   w e a t h e r I n f o L i s t� ��� l     ������  � / )Places it all in a package of a table row   � ��� R P l a c e s   i t   a l l   i n   a   p a c k a g e   o f   a   t a b l e   r o w� ��� r     ��� m     �� ��� 
 < t r >  � o      ���� 0 tablerow tableRow� ��� r    ��� I   �����
�� .corecnte****       ****� n   ��� 2   ��
�� 
cobj� o    ���� .0 currentweathercolumns currentWeatherColumns��  � o      ���� 0 colcount colCount� ��� Y   s�������� k   n�� ��� Z   d����� l   ������ =    ��� n    ��� 4    ���
�� 
cobj� o    ���� 0 w  � o    ���� .0 currentweathercolumns currentWeatherColumns� m    �� ���  h o u r��  ��  � r   ! ,��� I   ! *������� 0 gethour getHour� ���� n   " &��� 4   # &���
�� 
cobj� m   $ %���� � o   " #���� 0 wrow wRow��  ��  � o      ���� 0 	tabledata 	tableData� ��� l  / 5������ =   / 5��� n   / 3��� 4   0 3���
�� 
cobj� o   1 2���� 0 w  � o   / 0���� .0 currentweathercolumns currentWeatherColumns� m   3 4�� ��� 
 d a t e I��  ��  � ��� r   8 G��� I   8 E������� 0 getdatei getDateI� ��� n   9 =��� 4   : =���
�� 
cobj� m   ; <���� � o   9 :���� 0 wrow wRow� ���� n   = A��� 4   > A���
�� 
cobj� m   ? @���� � o   = >���� 0 wrow wRow��  ��  � o      ���� 0 	tabledata 	tableData� ��� l  J P������ =   J P��� n   J N��� 4   K N���
�� 
cobj� o   L M���� 0 w  � o   J K���� .0 currentweathercolumns currentWeatherColumns� m   N O�� ��� 
 d a t e M��  ��  � � � r   S b I   S `������ 0 getdatem getDateM  n   T X 4   U X��
�� 
cobj m   V W����  o   T U���� 0 wrow wRow 	��	 n   X \

 4   Y \��
�� 
cobj m   Z [����  o   X Y���� 0 wrow wRow��  ��   o      ���� 0 	tabledata 	tableData   l  e k���� =   e k n   e i 4   f i��
�� 
cobj o   g h���� 0 w   o   e f���� .0 currentweathercolumns currentWeatherColumns m   i j �  w e e k��  ��    r   n } I   n {������ 0 getweek getWeek  n   o s 4   p s�� 
�� 
cobj  m   q r����  o   o p���� 0 wrow wRow !��! n   s w"#" 4   t w��$
�� 
cobj$ m   u v���� # o   s t���� 0 wrow wRow��  ��   o      ���� 0 	tabledata 	tableData %&% l  � �'����' =   � �()( n   � �*+* 4   � ���,
�� 
cobj, o   � ����� 0 w  + o   � ����� .0 currentweathercolumns currentWeatherColumns) m   � �-- �..  c a l e n d a r��  ��  & /0/ r   � �121 I   � ���3���� 0 getcalendar getCalendar3 4��4 o   � ����� 0 cevent cEvent��  ��  2 o      ���� 0 	tabledata 	tableData0 565 l  � �7����7 =   � �898 n   � �:;: 4   � ���<
�� 
cobj< o   � ����� 0 w  ; o   � ����� .0 currentweathercolumns currentWeatherColumns9 m   � �== �>> 
 t e m p F��  ��  6 ?@? r   � �ABA I   � ���C���� 0 gettempf getTempFC D��D n   � �EFE 4   � ���G
�� 
cobjG l  � �H���H [   � �IJI o   � ��~�~ 0 w  J m   � ��}�} ��  �  F o   � ��|�| 0 wrow wRow��  ��  B o      �{�{ 0 	tabledata 	tableData@ KLK l  � �M�z�yM =   � �NON n   � �PQP 4   � ��xR
�x 
cobjR o   � ��w�w 0 w  Q o   � ��v�v .0 currentweathercolumns currentWeatherColumnsO m   � �SS �TT 
 t e m p C�z  �y  L UVU r   � �WXW I   � ��uY�t�u 0 gettempc getTempCY Z�sZ n   � �[\[ 4   � ��r]
�r 
cobj] l  � �^�q�p^ [   � �_`_ o   � ��o�o 0 w  ` m   � ��n�n �q  �p  \ o   � ��m�m 0 wrow wRow�s  �t  X o      �l�l 0 	tabledata 	tableDataV aba l  � �c�k�jc =   � �ded n   � �fgf 4   � ��ih
�i 
cobjh o   � ��h�h 0 w  g o   � ��g�g .0 currentweathercolumns currentWeatherColumnse m   � �ii �jj  f e e l s G o o d M a n I�k  �j  b klk r   � �mnm I   � ��fo�e�f 0 gettempf getTempFo p�dp n   � �qrq 4   � ��cs
�c 
cobjs l  � �t�b�at [   � �uvu o   � ��`�` 0 w  v m   � ��_�_ �b  �a  r o   � ��^�^ 0 wrow wRow�d  �e  n o      �]�] 0 	tabledata 	tableDatal wxw l  � �y�\�[y =   � �z{z n   � �|}| 4   � ��Z~
�Z 
cobj~ o   � ��Y�Y 0 w  } o   � ��X�X .0 currentweathercolumns currentWeatherColumns{ m   � � ���  f e e l s G o o d M a n M�\  �[  x ��� r   � ���� I   � ��W��V�W 0 gettempc getTempC� ��U� n   � ���� 4   � ��T�
�T 
cobj� l  � ���S�R� [   � ���� o   � ��Q�Q 0 w  � m   � ��P�P �S  �R  � o   � ��O�O 0 wrow wRow�U  �V  � o      �N�N 0 	tabledata 	tableData� ��� l  ���M�L� =   ���� n   ���� 4   ��K�
�K 
cobj� o   �J�J 0 w  � o   � ��I�I .0 currentweathercolumns currentWeatherColumns� m  �� ���  f e e l s G o o d M a n E�M  �L  � ��� r  	��� I  	�H��G�H 0 	getfeelse 	getFeelsE� ��F� n  
��� 4  �E�
�E 
cobj� l ��D�C� [  ��� o  �B�B 0 w  � m  �A�A �D  �C  � o  
�@�@ 0 wrow wRow�F  �G  � o      �?�? 0 	tabledata 	tableData� ��� l !��>�=� =  !��� n  ��� 4  �<�
�< 
cobj� o  �;�; 0 w  � o  �:�: .0 currentweathercolumns currentWeatherColumns� m   �� ���  c o n d i t i o n E�>  �=  � ��� r  $1��� I  $/�9��8�9 0 getconditione getConditionE� ��7� n  %+��� 4  &+�6�
�6 
cobj� l '*��5�4� [  '*��� o  '(�3�3 0 w  � m  ()�2�2 �5  �4  � o  %&�1�1 0 wrow wRow�7  �8  � o      �0�0 0 	tabledata 	tableData� ��� l 4<��/�.� =  4<��� n  48��� 4  58�-�
�- 
cobj� o  67�,�, 0 w  � o  45�+�+ .0 currentweathercolumns currentWeatherColumns� m  8;�� ��� 
 w i n d I�/  �.  � ��� r  ?L��� I  ?J�*��)�* 0 getwindi getWindI� ��(� n  @F��� 4  AF�'�
�' 
cobj� l BE��&�%� [  BE��� o  BC�$�$ 0 w  � m  CD�#�# �&  �%  � o  @A�"�" 0 wrow wRow�(  �)  � o      �!�! 0 	tabledata 	tableData� ��� l OW�� �� =  OW��� n  OS��� 4  PS��
� 
cobj� o  QR�� 0 w  � o  OP�� .0 currentweathercolumns currentWeatherColumns� m  SV�� ��� 
 w i n d M�   �  � ��� r  Zg��� I  Ze���� 0 getwindm getWindM� ��� n  [a��� 4  \a��
� 
cobj� l ]`���� [  ]`��� o  ]^�� 0 w  � m  ^_�� �  �  � o  [\�� 0 wrow wRow�  �  � o      �� 0 	tabledata 	tableData� ��� l jr���� =  jr��� n  jn��� 4  kn��
� 
cobj� o  lm�� 0 w  � o  jk�� .0 currentweathercolumns currentWeatherColumns� m  nq�� ���  w i n d D i r�  �  � ��� r  u���� I  u����� 0 
getwinddir 
getWindDir� ��
� n  v|��� 4  w|�	�
�	 
cobj� l x{���� [  x{��� o  xy�� 0 w  � m  yz�� �  �  � o  vw�� 0 wrow wRow�
  �  � o      �� 0 	tabledata 	tableData� ��� l ������ =  ����� n  ��   4  ��� 
�  
cobj o  ������ 0 w   o  ������ .0 currentweathercolumns currentWeatherColumns� m  �� �  w i n d D g r�  �  �  r  �� I  ����	���� 0 
getwinddir 
getWindDir	 
��
 n  �� 4  ����
�� 
cobj l ������ [  �� o  ������ 0 w   m  ������ ��  ��   o  ������ 0 wrow wRow��  ��   o      ���� 0 	tabledata 	tableData  l ������ =  �� n  �� 4  ����
�� 
cobj o  ������ 0 w   o  ������ .0 currentweathercolumns currentWeatherColumns m  �� �  s k y��  ��    r  �� I  �������� 0 getsky getSky  ��  n  ��!"! 4  ����#
�� 
cobj# l ��$����$ [  ��%&% o  ������ 0 w  & m  ������ ��  ��  " o  ������ 0 wrow wRow��  ��   o      ���� 0 	tabledata 	tableData '(' l ��)����) =  ��*+* n  ��,-, 4  ����.
�� 
cobj. o  ������ 0 w  - o  ������ .0 currentweathercolumns currentWeatherColumns+ m  ��// �00  u v i��  ��  ( 121 r  ��343 I  ����5���� 0 getuvi getUvi5 6��6 n  ��787 4  ����9
�� 
cobj9 l ��:����: [  ��;<; o  ������ 0 w  < m  ������ ��  ��  8 o  ������ 0 wrow wRow��  ��  4 o      ���� 0 	tabledata 	tableData2 =>= l ��?����? =  ��@A@ n  ��BCB 4  ����D
�� 
cobjD o  ������ 0 w  C o  ������ .0 currentweathercolumns currentWeatherColumnsA m  ��EE �FF  p o p��  ��  > GHG r  ��IJI I  ����K���� 0 getpop getPopK L��L n  ��MNM 4  ����O
�� 
cobjO l ��P����P [  ��QRQ o  ������ 0 w  R m  ������ ��  ��  N o  ������ 0 wrow wRow��  ��  J o      ���� 0 	tabledata 	tableDataH STS l ��U����U =  ��VWV n  ��XYX 4  ����Z
�� 
cobjZ o  ������ 0 w  Y o  ������ .0 currentweathercolumns currentWeatherColumnsW m  ��[[ �\\  q p f I��  ��  T ]^] r  �	_`_ I  ���a���� 0 getqpf getQpfa b��b n  �cdc 4  ���e
�� 
cobje l �f����f [  �ghg o  � ���� 0 w  h m   ���� ��  ��  d o  ������ 0 wrow wRow��  ��  ` o      ���� 0 	tabledata 	tableData^ iji l k����k =  lml n  non 4  ��p
�� 
cobjp o  ���� 0 w  o o  ���� .0 currentweathercolumns currentWeatherColumnsm m  qq �rr  q p f M��  ��  j sts r  $uvu I  "��w���� 0 getqpf getQpfw x��x n  yzy 4  ��{
�� 
cobj{ l |����| [  }~} o  ���� 0 w  ~ m  ���� ��  ��  z o  ���� 0 wrow wRow��  ��  v o      ���� 0 	tabledata 	tableDatat � l '/������ =  '/��� n  '+��� 4  (+���
�� 
cobj� o  )*���� 0 w  � o  '(���� .0 currentweathercolumns currentWeatherColumns� m  +.�� ��� 
 s n o w I��  ��  � ��� r  2?��� I  2=������� 0 getsnow getSnow� ���� n  39��� 4  49���
�� 
cobj� l 58������ [  58��� o  56���� 0 w  � m  67���� ��  ��  � o  34���� 0 wrow wRow��  ��  � o      ���� 0 	tabledata 	tableData� ��� l BJ������ =  BJ��� n  BF��� 4  CF���
�� 
cobj� o  DE���� 0 w  � o  BC���� .0 currentweathercolumns currentWeatherColumns� m  FI�� ��� 
 s n o w M��  ��  � ���� r  MZ��� I  MX������� 0 getsnow getSnow� ���� n  NT��� 4  OT���
�� 
cobj� l PS������ [  PS��� o  PQ���� 0 w  � m  QR���� ��  ��  � o  NO���� 0 wrow wRow��  ��  � o      ���� 0 	tabledata 	tableData��  � I ]d�����
�� .ascrcmnt****      � ****� m  ]`�� ��� < S e l e c t e d   c o l u m n   d o e s   n o t   e x i s t��  � ���� r  en��� c  el��� b  eh��� o  ef���� 0 tablerow tableRow� o  fg���� 0 	tabledata 	tableData� m  hk��
�� 
TEXT� o      ���� 0 tablerow tableRow��  �� 0 w  � m    ���� � o    ���� 0 colcount colCount��  � ��� r  t��� c  t}��� b  ty��� o  tu���� 0 tablerow tableRow� m  ux�� ���  < / t r >  � m  y|�
� 
TEXT� o      �~�~ 0 tablerow tableRow� ��}� L  ���� o  ���|�| 0 tablerow tableRow�}  � ��� l     �{�z�y�{  �z  �y  � ��� i    ��� I      �x��w�x  0 addsecondevent addSecondEvent� ��� o      �v�v 0 wrow wRow� ��u� o      �t�t 0 cevent cEvent�u  �w  � k     G�� ��� l     �s���s  � 9 3Counts how many columns needed to be added to a row   � ��� f C o u n t s   h o w   m a n y   c o l u m n s   n e e d e d   t o   b e   a d d e d   t o   a   r o w� ��� l     �r���r  � 7 1Either puts in the calendar event or a blank cell   � ��� b E i t h e r   p u t s   i n   t h e   c a l e n d a r   e v e n t   o r   a   b l a n k   c e l l� ��� l     �q���q  � / )Places it all in a package of a table row   � ��� R P l a c e s   i t   a l l   i n   a   p a c k a g e   o f   a   t a b l e   r o w� ��� r     ��� m     �� ��� 
 < t r >  � o      �p�p 0 tablerow tableRow� ��� r    ��� I   �o��n
�o .corecnte****       ****� n   ��� 2   �m
�m 
cobj� o    �l�l .0 currentweathercolumns currentWeatherColumns�n  � o      �k�k 0 colcount colCount� ��� Y    <��j���i� k    7�� ��� Z    /���h�� l   ��g�f� =    ��� n    ��� 4    �e�
�e 
cobj� o    �d�d 0 w  � o    �c�c .0 currentweathercolumns currentWeatherColumns� m    �� ���  c a l e n d a r�g  �f  � r   ! )��� I   ! '�b��a�b 0 getcalendar getCalendar� ��`� o   " #�_�_ 0 cevent cEvent�`  �a  � o      �^�^ 0 	tabledata 	tableData�h  � r   , /��� m   , -   �  < t d > < / t d >� o      �]�] 0 	tabledata 	tableData� �\ r   0 7 c   0 5 b   0 3 o   0 1�[�[ 0 tablerow tableRow o   1 2�Z�Z 0 	tabledata 	tableData m   3 4�Y
�Y 
TEXT o      �X�X 0 tablerow tableRow�\  �j 0 w  � m    �W�W � o    �V�V 0 colcount colCount�i  � 	
	 r   = D c   = B b   = @ o   = >�U�U 0 tablerow tableRow m   > ? �  < / t r >   m   @ A�T
�T 
TEXT o      �S�S 0 tablerow tableRow
 �R L   E G o   E F�Q�Q 0 tablerow tableRow�R  �  l     �P�O�N�P  �O  �N    i     I      �M�L�M 0 gethour getHour �K o      �J�J 0 thehour theHour�K  �L   k       r      !  c     "#" o     �I�I 0 thehour theHour# m    �H
�H 
long! o      �G�G 0 thehour theHour $%$ r    &'& b    ()( b    	*+* m    ,, �--  < t d >+ o    �F�F 0 thehour theHour) m   	 
.. �//  < / t d >  ' o      �E�E 0 
returnhour 
returnHour% 0�D0 L    11 o    �C�C 0 
returnhour 
returnHour�D   232 l     �B�A�@�B  �A  �@  3 454 i    676 I      �?8�>�? 0 getdatei getDateI8 9:9 o      �=�= 0 thedate theDate: ;�<; o      �;�; 0 thehour theHour�<  �>  7 k     \<< =>= r     ?@? c     ABA o     �:�: 0 thedate theDateB m    �9
�9 
long@ o      �8�8 0 thedate theDate> CDC r    EFE c    	GHG o    �7�7 0 thehour theHourH m    �6
�6 
longF o      �5�5 0 thehour theHourD IJI Z    YKL�4MK l   N�3�2N =    OPO o    �1�1 0 thehour theHourP m    �0�0  �3  �2  L k    OQQ RSR r    TUT l   V�/�.V I   �-�,�+
�- .misccurdldt    ��� null�,  �+  �/  �.  U o      �*�* 0 currdate currDateS WXW Z    CYZ�)[Y l   \�(�'\ A    ]^] o    �&�& 0 thedate theDate^ n    _`_ 1    �%
�% 
day ` l   a�$�#a o    �"�" 0 currdate currDate�$  �#  �(  �'  Z k   " 9bb cdc l  " +efge r   " +hih l  " )j�!� j [   " )klk l  " 'm��m c   " 'non n   " %pqp m   # %�
� 
mnthq l  " #r��r o   " #�� 0 currdate currDate�  �  o m   % &�
� 
long�  �  l m   ' (�� �!  �   i o      �� 0 themonth theMonthf  day is in next month   g �ss ( d a y   i s   i n   n e x t   m o n t hd t�t Z   , 9uv��u l  , /w��w =   , /xyx o   , -�� 0 themonth theMonthy m   - .�� �  �  v r   2 5z{z m   2 3�� { o      �� 0 themonth theMonth�  �  �  �)  [ r   < C|}| c   < A~~ n   < ?��� m   = ?�
� 
mnth� l  < =���� o   < =�
�
 0 currdate currDate�  �   m   ? @�	
�	 
long} o      �� 0 themonth theMonthX ��� r   D O��� b   D M��� b   D K��� b   D I��� b   D G��� m   D E�� ���  < t d >� o   E F�� 0 themonth theMonth� m   G H�� ���  /� o   I J�� 0 thedate theDate� m   K L�� ���  < / t d >  � o      �� 0 
returnhour 
returnHour�  �4  M r   R Y��� b   R W��� b   R U��� m   R S�� ���  < t d >� o   S T�� 0 thehour theHour� m   U V�� ���  < / t d >  � o      �� 0 
returnhour 
returnHourJ ��� L   Z \�� o   Z [� �  0 
returnhour 
returnHour�  5 ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 getdatem getDateM� ��� o      ���� 0 thedate theDate� ���� o      ���� 0 thehour theHour��  ��  � k     \�� ��� r     ��� c     ��� o     ���� 0 thedate theDate� m    ��
�� 
long� o      ���� 0 thedate theDate� ��� r    ��� c    	��� o    ���� 0 thehour theHour� m    ��
�� 
long� o      ���� 0 thehour theHour� ��� Z    Y������ l   ������ =    ��� o    ���� 0 thehour theHour� m    ����  ��  ��  � k    O�� ��� r    ��� l   ������ I   ������
�� .misccurdldt    ��� null��  ��  ��  ��  � o      ���� 0 currdate currDate� ��� Z    C������ l   ������ A    ��� o    ���� 0 thedate theDate� n    ��� 1    ��
�� 
day � l   ������ o    ���� 0 currdate currDate��  ��  ��  ��  � k   " 9�� ��� l  " +���� r   " +��� l  " )������ [   " )��� l  " '������ c   " '��� n   " %��� m   # %��
�� 
mnth� l  " #������ o   " #���� 0 currdate currDate��  ��  � m   % &��
�� 
long��  ��  � m   ' (���� ��  ��  � o      ���� 0 themonth theMonth�  day is in next month   � ��� ( d a y   i s   i n   n e x t   m o n t h� ���� Z   , 9������� l  , /������ =   , /��� o   , -���� 0 themonth theMonth� m   - .���� ��  ��  � r   2 5��� m   2 3���� � o      ���� 0 themonth theMonth��  ��  ��  ��  � r   < C��� c   < A��� n   < ?��� m   = ?��
�� 
mnth� l  < =������ o   < =���� 0 currdate currDate��  ��  � m   ? @��
�� 
long� o      ���� 0 themonth theMonth� ���� r   D O��� b   D M��� b   D K��� b   D I��� b   D G��� m   D E�� ���  < t d >� o   E F���� 0 thedate theDate� m   G H�� ���  /� o   I J���� 0 themonth theMonth� m   K L   �  < / t d >  � o      ���� 0 
returnhour 
returnHour��  ��  � r   R Y b   R W b   R U m   R S �		  < t d > o   S T���� 0 thehour theHour m   U V

 �  < / t d >   o      ���� 0 
returnhour 
returnHour� �� L   Z \ o   Z [���� 0 
returnhour 
returnHour��  �  l     ��������  ��  ��    i     I      ������ 0 getweek getWeek  o      ���� 0 thedate theDate �� o      ���� 0 thehour theHour��  ��   k     �  r      c      o     ���� 0 thedate theDate m    ��
�� 
long o      ���� 0 thedate theDate   r    !"! c    	#$# o    ���� 0 thehour theHour$ m    ��
�� 
long" o      ���� 0 thehour theHour  %&% Z    �'(��)' l   *����* =    +,+ o    ���� 0 thehour theHour, m    ����  ��  ��  ( k    -- ./. r    010 l   2����2 I   ������
�� .misccurdldt    ��� null��  ��  ��  ��  1 o      ���� 0 currdate currDate/ 343 r    565 n    787 1    ��
�� 
year8 o    ���� 0 currdate currDate6 o      ���� 0 theyear theYear4 9:9 Z     M;<��=; l    %>����> A     %?@? o     !���� 0 thedate theDate@ n   ! $ABA 1   " $��
�� 
day B l  ! "C����C o   ! "���� 0 currdate currDate��  ��  ��  ��  < k   ( EDD EFE l  ( 1GHIG r   ( 1JKJ l  ( /L����L [   ( /MNM l  ( -O����O c   ( -PQP n   ( +RSR m   ) +��
�� 
mnthS l  ( )T����T o   ( )���� 0 currdate currDate��  ��  Q m   + ,��
�� 
long��  ��  N m   - .���� ��  ��  K o      ���� 0 themonth theMonthH  day is in next month   I �UU ( d a y   i s   i n   n e x t   m o n t hF V��V Z   2 EWX����W l  2 5Y����Y =   2 5Z[Z o   2 3���� 0 themonth theMonth[ m   3 4���� ��  ��  X k   8 A\\ ]^] r   8 =_`_ [   8 ;aba o   8 9���� 0 theyear theYearb m   9 :���� ` o      ���� 0 theyear theYear^ c��c r   > Aded m   > ?���� e o      ���� 0 themonth theMonth��  ��  ��  ��  ��  = r   H Mfgf n   H Khih m   I K��
�� 
mnthi l  H Ij��~j o   H I�}�} 0 currdate currDate�  �~  g o      �|�| 0 themonth theMonth: klk r   N Smnm o   N O�{�{ 0 theyear theYearn n      opo 1   P R�z
�z 
yearp o   O P�y�y 0 currdate currDatel qrq r   T Ysts o   T U�x�x 0 themonth theMontht n      uvu m   V X�w
�w 
mnthv o   U V�v�v 0 currdate currDater wxw r   Z _yzy o   Z [�u�u 0 thedate theDatez n      {|{ 1   \ ^�t
�t 
day | o   [ \�s�s 0 currdate currDatex }~} r   ` g� J   ` c�� ��r� m   ` a�� ���  �r  � n     ��� 1   d f�q
�q 
txdl� 1   c d�p
�p 
ascr~ ��o� r   h ��� b   h }��� l  h {��n�m� c   h {��� b   h y��� m   h i�� ���  < t d >� n   i x��� 7  n x�l��
�l 
cha � m   r t�k�k � m   u w�j�j � l  i n��i�h� c   i n��� n   i l��� m   j l�g
�g 
wkdy� o   i j�f�f 0 currdate currDate� m   l m�e
�e 
TEXT�i  �h  � m   y z�d
�d 
TEXT�n  �m  � m   { |�� ���  < / t d >  � o      �c�c 0 
returnhour 
returnHour�o  ��  ) r   � ���� b   � ���� b   � ���� m   � ��� ���  < t d >� o   � ��b�b 0 thehour theHour� m   � ��� ���  < / t d >  � o      �a�a 0 
returnhour 
returnHour& ��`� L   � ��� o   � ��_�_ 0 
returnhour 
returnHour�`   ��� l     �^�]�\�^  �]  �\  � ��� i     #��� I      �[��Z�[ 0 getcalendar getCalendar� ��Y� o      �X�X 0 cevent cEvent�Y  �Z  � k     �� ��� Z     ���W�� l    ��V�U� =     ��� o     �T�T 0 cevent cEvent� m    �S
�S boovfals�V  �U  � r    	��� m    �� ���  < t d > < / t d >  � o      �R�R  0 returncalendar returnCalendar�W  � r    ��� b    ��� b    ��� m    �� ���  < t d >� o    �Q�Q 0 cevent cEvent� m    �� ���  < / t d >  � o      �P�P  0 returncalendar returnCalendar� ��O� L    �� o    �N�N  0 returncalendar returnCalendar�O  � ��� l     �M�L�K�M  �L  �K  � ��� i   $ '��� I      �J��I�J 0 gettempf getTempF� ��H� o      �G�G 0 thetemp theTemp�H  �I  � k     ��� ��� r     ��� c     ��� o     �F�F 0 thetemp theTemp� m    �E
�E 
long� o      �D�D 0 thetemp theTemp� ��� Z    ������ l   	��C�B� A    	��� o    �A�A 0 thetemp theTemp� m    �@�@ �C  �B  � r    ��� b    ��� b    ��� m    �� ��� . < t d   c l a s s = " F r e e z e T e m p " >� o    �?�? 0 thetemp theTemp� m    �� ���  < / t d >  � o      �>�> 0 
returntemp 
returnTemp� ��� l   ��=�<� A    ��� o    �;�; 0 thetemp theTemp� m    �:�: )�=  �<  � ��� r    #��� b    !��� b    ��� m    �� ��� . < t d   c l a s s = " L o w e s t T e m p " >� o    �9�9 0 thetemp theTemp� m     �� ���  < / t d >  � o      �8�8 0 
returntemp 
returnTemp� ��� l  & ) �7�6  A   & ) o   & '�5�5 0 thetemp theTemp m   ' (�4�4 3�7  �6  �  r   , 3 b   , 1 b   , /	
	 m   , - � , < t d   c l a s s = " L o w e r T e m p " >
 o   - .�3�3 0 thetemp theTemp m   / 0 �  < / t d >   o      �2�2 0 
returntemp 
returnTemp  l  6 9�1�0 A   6 9 o   6 7�/�/ 0 thetemp theTemp m   7 8�.�. =�1  �0    r   < C b   < A b   < ? m   < = � ( < t d   c l a s s = " L o w T e m p " > o   = >�-�- 0 thetemp theTemp m   ? @ �  < / t d >   o      �,�, 0 
returntemp 
returnTemp  !  l  F I"�+�*" A   F I#$# o   F G�)�) 0 thetemp theTemp$ m   G H�(�( G�+  �*  ! %&% r   L S'(' b   L Q)*) b   L O+,+ m   L M-- �.. ( < t d   c l a s s = " M e d T e m p " >, o   M N�'�' 0 thetemp theTemp* m   O P// �00  < / t d >  ( o      �&�& 0 
returntemp 
returnTemp& 121 l  V [3�%�$3 A   V [454 o   V W�#�# 0 thetemp theTemp5 m   W Z�"�" Q�%  �$  2 676 r   ^ i898 b   ^ g:;: b   ^ c<=< m   ^ a>> �?? * < t d   c l a s s = " H i g h T e m p " >= o   a b�!�! 0 thetemp theTemp; m   c f@@ �AA  < / t d >  9 o      � �  0 
returntemp 
returnTemp7 BCB l  l qD��D A   l qEFE o   l m�� 0 thetemp theTempF m   m p�� [�  �  C GHG r   t IJI b   t }KLK b   t yMNM m   t wOO �PP . < t d   c l a s s = " H i g h e r T e m p " >N o   w x�� 0 thetemp theTempL m   y |QQ �RR  < / t d >  J o      �� 0 
returntemp 
returnTempH STS l  � �U��U A   � �VWV o   � ��� 0 thetemp theTempW m   � ��� e�  �  T X�X r   � �YZY b   � �[\[ b   � �]^] m   � �__ �`` 0 < t d   c l a s s = " H i g h e s t T e m p " >^ o   � ��� 0 thetemp theTemp\ m   � �aa �bb  < / t d >  Z o      �� 0 
returntemp 
returnTemp�  � r   � �cdc b   � �efe b   � �ghg m   � �ii �jj * < t d   c l a s s = " B u r n T e m p " >h o   � ��� 0 thetemp theTempf m   � �kk �ll  < / t d >  d o      �� 0 
returntemp 
returnTemp� m�m L   � �nn o   � ��� 0 
returntemp 
returnTemp�  � opo l     ����  �  �  p qrq i   ( +sts I      �u�
� 0 gettempc getTempCu v�	v o      �� 0 thetemp theTemp�	  �
  t k     �ww xyx r     z{z c     |}| o     �� 0 thetemp theTemp} m    �
� 
long{ o      �� 0 thetemp theTempy ~~ Z    ������ l   	���� A    	��� o    �� 0 thetemp theTemp� m    ��  �  �  � r    ��� b    ��� b    ��� m    �� ��� . < t d   c l a s s = " F r e e z e T e m p " >� o    � �  0 thetemp theTemp� m    �� ���  < / t d >  � o      ���� 0 
returntemp 
returnTemp� ��� l   ������ A    ��� o    ���� 0 thetemp theTemp� m    ���� ��  ��  � ��� r    #��� b    !��� b    ��� m    �� ��� . < t d   c l a s s = " L o w e s t T e m p " >� o    ���� 0 thetemp theTemp� m     �� ���  < / t d >  � o      ���� 0 
returntemp 
returnTemp� ��� l  & )������ A   & )��� o   & '���� 0 thetemp theTemp� m   ' (���� ��  ��  � ��� r   , 3��� b   , 1��� b   , /��� m   , -�� ��� , < t d   c l a s s = " L o w e r T e m p " >� o   - .���� 0 thetemp theTemp� m   / 0�� ���  < / t d >  � o      ���� 0 
returntemp 
returnTemp� ��� l  6 9������ A   6 9��� o   6 7���� 0 thetemp theTemp� m   7 8���� ��  ��  � ��� r   < C��� b   < A��� b   < ?��� m   < =�� ��� ( < t d   c l a s s = " L o w T e m p " >� o   = >���� 0 thetemp theTemp� m   ? @�� ���  < / t d >  � o      ���� 0 
returntemp 
returnTemp� ��� l  F I������ A   F I��� o   F G���� 0 thetemp theTemp� m   G H���� ��  ��  � ��� r   L S��� b   L Q��� b   L O��� m   L M�� ��� ( < t d   c l a s s = " M e d T e m p " >� o   M N���� 0 thetemp theTemp� m   O P�� ���  < / t d >  � o      ���� 0 
returntemp 
returnTemp� ��� l  V Y������ A   V Y��� o   V W���� 0 thetemp theTemp� m   W X���� ��  ��  � ��� r   \ g��� b   \ e��� b   \ a��� m   \ _�� ��� * < t d   c l a s s = " H i g h T e m p " >� o   _ `���� 0 thetemp theTemp� m   a d�� ���  < / t d >  � o      ���� 0 
returntemp 
returnTemp� ��� l  j o������ A   j o��� o   j k���� 0 thetemp theTemp� m   k n���� !��  ��  � ��� r   r }��� b   r {��� b   r w��� m   r u�� ��� . < t d   c l a s s = " H i g h e r T e m p " >� o   u v���� 0 thetemp theTemp� m   w z�� ���  < / t d >  � o      ���� 0 
returntemp 
returnTemp� ��� l  � ������� A   � ���� o   � ����� 0 thetemp theTemp� m   � ����� &��  ��  � ���� r   � ���� b   � �� � b   � � m   � � � 0 < t d   c l a s s = " H i g h e s t T e m p " > o   � ����� 0 thetemp theTemp  m   � � �  < / t d >  � o      ���� 0 
returntemp 
returnTemp��  � r   � � b   � �	
	 b   � � m   � � � * < t d   c l a s s = " B u r n T e m p " > o   � ����� 0 thetemp theTemp
 m   � � �  < / t d >   o      ���� 0 
returntemp 
returnTemp �� L   � � o   � ����� 0 
returntemp 
returnTemp��  r  l     ��������  ��  ��    i   , / I      ������ 0 	getfeelse 	getFeelsE �� o      ���� 0 thetemp theTemp��  ��   k     p  r      c      !  o     ���� 0 thetemp theTemp! m    ��
�� 
long o      ���� 0 thetemp theTemp "#" Z    m$%&'$ l   	(����( A    	)*) o    ���� 0 thetemp theTemp* m    ���� ��  ��  % l   +,-+ r    ./. m    00 �11 " < t d > & # 9 9 2 4 ; < / t d >  / o      ���� 0 
returntemp 
returnTemp,  Snowman emoji   - �22  S n o w m a n   e m o j i& 343 l   5����5 A    676 o    ���� 0 thetemp theTemp7 m    ���� )��  ��  4 898 l   :;<: r    =>= m    ?? �@@ & < t d > & # x 1 F 3 D 4 ; < / t d >  > o      ���� 0 
returntemp 
returnTemp;  Snowcapped emoji   < �AA   S n o w c a p p e d   e m o j i9 BCB l   !D����D A    !EFE o    ���� 0 thetemp theTempF m     ���� 3��  ��  C GHG l  $ 'IJKI r   $ 'LML m   $ %NN �OO & < t d > & # x 1 F 3 E 0 ; < / t d >  M o      ���� 0 
returntemp 
returnTempJ  House emoji   K �PP  H o u s e   e m o j iH QRQ l  * -S����S A   * -TUT o   * +���� 0 thetemp theTempU m   + ,���� =��  ��  R VWV l  0 3XYZX r   0 3[\[ m   0 1]] �^^ & < t d > & # x 1 F 3 3 2 ; < / t d >  \ o      ���� 0 
returntemp 
returnTempY  Evergeen tree emoji   Z �__ & E v e r g e e n   t r e e   e m o j iW `a` l  6 9b����b A   6 9cdc o   6 7���� 0 thetemp theTempd m   7 8���� G��  ��  a efe l  < ?ghig r   < ?jkj m   < =ll �mm & < t d > & # x 1 F 3 3 3 ; < / t d >  k o      ���� 0 
returntemp 
returnTemph  Deciduous tree emoji   i �nn ( D e c i d u o u s   t r e e   e m o j if opo l  B Eq����q A   B Ersr o   B C���� 0 thetemp theTemps m   C D���� Q��  ��  p tut l  H Kvwxv r   H Kyzy m   H I{{ �|| & < t d > & # x 1 F 3 3 4 ; < / t d >  z o      ���� 0 
returntemp 
returnTempw  Palm tree emoji   x �}}  P a l m   t r e e   e m o j iu ~~ l  N Q������ A   N Q��� o   N O���� 0 thetemp theTemp� m   O P���� [��  ��   ��� l  T W���� r   T W��� m   T U�� ��� & < t d > & # x 1 F 3 3 6 ; < / t d >  � o      ���� 0 
returntemp 
returnTemp�  Pepper emoji   � ���  P e p p e r   e m o j i� ��� l  Z ]������ A   Z ]��� o   Z [���� 0 thetemp theTemp� m   [ \���� e��  ��  � ���� l  ` e���� r   ` e��� m   ` c�� ��� & < t d > & # x 1 F 5 2 5 ; < / t d >  � o      ���� 0 
returntemp 
returnTemp�  
Fire emoji   � ���  F i r e   e m o j i��  ' l  h m���� r   h m��� m   h k�� ��� $ < t d > & # x 2 6 0 4 ; < / t d >  � o      ���� 0 
returntemp 
returnTemp�  Comet emoji (fireball)   � ��� , C o m e t   e m o j i   ( f i r e b a l l )# ���� L   n p�� o   n o���� 0 
returntemp 
returnTemp��   ��� l     ��������  ��  ��  � ��� i   0 3��� I      ������� 0 getconditione getConditionE� ���� o      ���� 0 thecond theCond��  ��  � k     Z�� ��� Z     W����� l    ������ =     ��� o     ���� 0 thecond theCond� m    �� ���  S n o w��  ��  � l   	���� r    	��� m    �� ��� & < t d > & # x 1 F 3 2 8 ; < / t d >  � o      ���� 0 
returncond 
returnCond�  Snow Cloud emoji   � ���   S n o w   C l o u d   e m o j i� ��� l   ������ =    ��� o    ���� 0 thecond theCond� m    �� ���  R a i n��  ��  � ��� l   ���� r    ��� m    �� ��� & < t d > & # x 1 F 3 2 7 ; < / t d >  � o      ���� 0 
returncond 
returnCond�  Rain Cloud emoji   � ���   R a i n   C l o u d   e m o j i� ��� l   ������ =    ��� o    ���� 0 thecond theCond� m    �� ���  C h a n c e   o f   R a i n��  ��  � ��� l   !���� r    !��� m    �� ��� & < t d > & # x 1 F 3 2 6 ; < / t d >  � o      ���� 0 
returncond 
returnCond�  Sun & Rain Cloud emoji   � ��� , S u n   &   R a i n   C l o u d   e m o j i� ��� l  $ '������ =   $ '��� o   $ %���� 0 thecond theCond� m   % &�� ���  P a r t l y   C l o u d y��  ��  � ��� l  * -���� r   * -��� m   * +�� ��� & < t d > & # x 1 F 3 2 4 ; < / t d >  � o      ���� 0 
returncond 
returnCond�  Partly Cloudy emoji   � ��� & P a r t l y   C l o u d y   e m o j i� ��� l  0 3������ =   0 3��� o   0 1���� 0 thecond theCond� m   1 2�� ���  M o s t l y   C l o u d y��  ��  � ��� l  6 9���� r   6 9	 		  m   6 7		 �		 & < t d > & # x 1 F 3 2 5 ; < / t d >  	 o      �� 0 
returncond 
returnCond�  Mostly Cloudy emoji   � �		 & M o s t l y   C l o u d y   e m o j i� 			 l  < ?	�~�}	 =   < ?				 o   < =�|�| 0 thecond theCond		 m   = >	
	
 �		  O v e r c a s t�~  �}  	 			 l  B E				 r   B E			 m   B C		 �		 & < t d > & # x 1 F 3 2 B ; < / t d >  	 o      �{�{ 0 
returncond 
returnCond	  	Fog emoji   	 �		  F o g   e m o j i	 			 l  H K	�z�y	 =   H K			 o   H I�x�x 0 thecond theCond	 m   I J		 �		 
 C l e a r�z  �y  	 	�w	 l  N Q			 	 r   N Q	!	"	! m   N O	#	# �	$	$ $ < t d > & # x 2 6 0 0 ; < / t d >  	" o      �v�v 0 
returncond 
returnCond	  	Sun emoji   	  �	%	%  S u n   e m o j i�w  � l  T W	&	'	(	& r   T W	)	*	) m   T U	+	+ �	,	, & < t d > & # x 1 F 3 E 0 ; < / t d >  	* o      �u�u 0 
returncond 
returnCond	'   House emoji   	( �	-	-    H o u s e   e m o j i� 	.�t	. L   X Z	/	/ o   X Y�s�s 0 
returncond 
returnCond�t  � 	0	1	0 l     �r�q�p�r  �q  �p  	1 	2	3	2 i   4 7	4	5	4 I      �o	6�n�o 0 getwindi getWindI	6 	7�m	7 o      �l�l 0 thewind theWind�m  �n  	5 k     x	8	8 	9	:	9 r     	;	<	; c     	=	>	= o     �k�k 0 thewind theWind	> m    �j
�j 
long	< o      �i�i 0 thewind theWind	: 	?	@	? Z    u	A	B	C	D	A l   		E�h�g	E =    		F	G	F o    �f�f 0 thewind theWind	G m    �e�e  �h  �g  	B r    	H	I	H b    	J	K	J b    	L	M	L m    	N	N �	O	O & < t d   c l a s s = " N o W i n d " >	M o    �d�d 0 thewind theWind	K m    	P	P �	Q	Q 
 < / t d >	I o      �c�c 0 
returnwind 
returnWind	C 	R	S	R l   	T�b�a	T A    	U	V	U o    �`�` 0 thewind theWind	V m    �_�_ �b  �a  	S 	W	X	W r    #	Y	Z	Y b    !	[	\	[ b    	]	^	] m    	_	_ �	`	` , < t d   c l a s s = " L o w e r W i n d " >	^ o    �^�^ 0 thewind theWind	\ m     	a	a �	b	b 
 < / t d >	Z o      �]�] 0 
returnwind 
returnWind	X 	c	d	c l  & )	e�\�[	e A   & )	f	g	f o   & '�Z�Z 0 thewind theWind	g m   ' (�Y�Y 
�\  �[  	d 	h	i	h r   , 3	j	k	j b   , 1	l	m	l b   , /	n	o	n m   , -	p	p �	q	q ( < t d   c l a s s = " L o w W i n d " >	o o   - .�X�X 0 thewind theWind	m m   / 0	r	r �	s	s 
 < / t d >	k o      �W�W 0 
returnwind 
returnWind	i 	t	u	t l  6 9	v�V�U	v A   6 9	w	x	w o   6 7�T�T 0 thewind theWind	x m   7 8�S�S �V  �U  	u 	y	z	y r   < C	{	|	{ b   < A	}	~	} b   < ?		�	 m   < =	�	� �	�	� ( < t d   c l a s s = " M e d W i n d " >	� o   = >�R�R 0 thewind theWind	~ m   ? @	�	� �	�	� 
 < / t d >	| o      �Q�Q 0 
returnwind 
returnWind	z 	�	�	� l  F I	��P�O	� A   F I	�	�	� o   F G�N�N 0 thewind theWind	� m   G H�M�M �P  �O  	� 	�	�	� r   L S	�	�	� b   L Q	�	�	� b   L O	�	�	� m   L M	�	� �	�	� * < t d   c l a s s = " H i g h W i n d " >	� o   M N�L�L 0 thewind theWind	� m   O P	�	� �	�	� 
 < / t d >	� o      �K�K 0 
returnwind 
returnWind	� 	�	�	� l  V Y	��J�I	� A   V Y	�	�	� o   V W�H�H 0 thewind theWind	� m   W X�G�G �J  �I  	� 	��F	� r   \ g	�	�	� b   \ e	�	�	� b   \ a	�	�	� m   \ _	�	� �	�	� . < t d   c l a s s = " H i g h e r W i n d " >	� o   _ `�E�E 0 thewind theWind	� m   a d	�	� �	�	� 
 < / t d >	� o      �D�D 0 
returnwind 
returnWind�F  	D r   j u	�	�	� b   j s	�	�	� b   j o	�	�	� m   j m	�	� �	�	� , < t d   c l a s s = " S u p e r W i n d " >	� o   m n�C�C 0 thewind theWind	� m   o r	�	� �	�	� 
 < / t d >	� o      �B�B 0 
returnwind 
returnWind	@ 	��A	� L   v x	�	� o   v w�@�@ 0 
returnwind 
returnWind�A  	3 	�	�	� l     �?�>�=�?  �>  �=  	� 	�	�	� i   8 ;	�	�	� I      �<	��;�< 0 getwindm getWindM	� 	��:	� o      �9�9 0 thewind theWind�:  �;  	� k     x	�	� 	�	�	� r     	�	�	� c     	�	�	� o     �8�8 0 thewind theWind	� m    �7
�7 
long	� o      �6�6 0 thewind theWind	� 	�	�	� Z    u	�	�	�	�	� l   		��5�4	� =    		�	�	� o    �3�3 0 thewind theWind	� m    �2�2  �5  �4  	� r    	�	�	� b    	�	�	� b    	�	�	� m    	�	� �	�	� & < t d   c l a s s = " N o W i n d " >	� o    �1�1 0 thewind theWind	� m    	�	� �	�	� 
 < / t d >	� o      �0�0 0 
returnwind 
returnWind	� 	�	�	� l   	��/�.	� A    	�	�	� o    �-�- 0 thewind theWind	� m    �,�, �/  �.  	� 	�	�	� r    #	�	�	� b    !	�	�	� b    	�	�	� m    	�	� �	�	� , < t d   c l a s s = " L o w e r W i n d " >	� o    �+�+ 0 thewind theWind	� m     	�	� �	�	� 
 < / t d >	� o      �*�* 0 
returnwind 
returnWind	� 	�	�	� l  & )	��)�(	� A   & )	�	�	� o   & '�'�' 0 thewind theWind	� m   ' (�&�& �)  �(  	� 	�	�	� r   , 3	�	�	� b   , 1	�	�	� b   , /	�	�	� m   , -	�	� �	�	� ( < t d   c l a s s = " L o w W i n d " >	� o   - .�%�% 0 thewind theWind	� m   / 0	�	� �	�	� 
 < / t d >	� o      �$�$ 0 
returnwind 
returnWind	� 	�	�	� l  6 9	��#�"	� A   6 9	�	�	� o   6 7�!�! 0 thewind theWind	� m   7 8� �  �#  �"  	� 	�	�	� r   < C	�	�	� b   < A	�
 	� b   < ?


 m   < =

 �

 ( < t d   c l a s s = " M e d W i n d " >
 o   = >�� 0 thewind theWind
  m   ? @

 �

 
 < / t d >	� o      �� 0 
returnwind 
returnWind	� 


 l  F I
	��
	 A   F I




 o   F G�� 0 thewind theWind
 m   G H��  �  �  
 


 r   L S


 b   L Q


 b   L O


 m   L M

 �

 * < t d   c l a s s = " H i g h W i n d " >
 o   M N�� 0 thewind theWind
 m   O P

 �

 
 < / t d >
 o      �� 0 
returnwind 
returnWind
 


 l  V Y
��
 A   V Y


 o   V W�� 0 thewind theWind
 m   W X�� (�  �  
 
�
 r   \ g


 b   \ e
 
!
  b   \ a
"
#
" m   \ _
$
$ �
%
% . < t d   c l a s s = " H i g h e r W i n d " >
# o   _ `�� 0 thewind theWind
! m   a d
&
& �
'
' 
 < / t d >
 o      �� 0 
returnwind 
returnWind�  	� r   j u
(
)
( b   j s
*
+
* b   j o
,
-
, m   j m
.
. �
/
/ , < t d   c l a s s = " S u p e r W i n d " >
- o   m n�� 0 thewind theWind
+ m   o r
0
0 �
1
1 
 < / t d >
) o      �� 0 
returnwind 
returnWind	� 
2�
2 L   v x
3
3 o   v w�� 0 
returnwind 
returnWind�  	� 
4
5
4 l     ���
�  �  �
  
5 
6
7
6 i   < ?
8
9
8 I      �	
:��	 0 
getwinddir 
getWindDir
: 
;�
; o      �� 0 thewind theWind�  �  
9 k     

<
< 
=
>
= r     
?
@
? b     
A
B
A b     
C
D
C m     
E
E �
F
F  < t d >
D o    �� 0 thewind theWind
B m    
G
G �
H
H 
 < / t d >
@ o      �� 0 
returnwind 
returnWind
> 
I�
I L    

J
J o    	�� 0 
returnwind 
returnWind�  
7 
K
L
K l     �� ���  �   ��  
L 
M
N
M i   @ C
O
P
O I      ��
Q���� 0 getsky getSky
Q 
R��
R o      ���� 0 thesky theSky��  ��  
P k     
S
S 
T
U
T r     
V
W
V c     
X
Y
X o     ���� 0 thesky theSky
Y m    ��
�� 
long
W o      ���� 0 thesky theSky
U 
Z
[
Z r    
\
]
\ b    
^
_
^ b    	
`
a
` m    
b
b �
c
c  < t d >
a o    ���� 0 thesky theSky
_ m   	 

d
d �
e
e  < / t d >  
] o      ���� 0 	returnsky 	returnSky
[ 
f��
f L    
g
g o    ���� 0 	returnsky 	returnSky��  
N 
h
i
h l     ��������  ��  ��  
i 
j
k
j i   D G
l
m
l I      ��
n���� 0 getuvi getUvi
n 
o��
o o      ���� 0 theuvi theUvi��  ��  
m k     P
p
p 
q
r
q r     
s
t
s c     
u
v
u o     ���� 0 theuvi theUvi
v m    ��
�� 
long
t o      ���� 0 theuvi theUvi
r 
w
x
w Z    M
y
z
{
|
y l   	
}����
} =    	
~

~ o    ���� 0 theuvi theUvi
 m    ����  ��  ��  
z r    
�
�
� b    
�
�
� b    
�
�
� m    
�
� �
�
� " < t d   c l a s s = " N o U V " >
� o    ���� 0 theuvi theUvi
� m    
�
� �
�
�  < / t d >  
� o      ���� 0 	returnuvi 	returnUvi
{ 
�
�
� l   
�����
� A    
�
�
� o    ���� 0 theuvi theUvi
� m    ���� ��  ��  
� 
�
�
� r    #
�
�
� b    !
�
�
� b    
�
�
� m    
�
� �
�
� ( < t d   c l a s s = " L o w e r U V " >
� o    ���� 0 theuvi theUvi
� m     
�
� �
�
�  < / t d >  
� o      ���� 0 	returnuvi 	returnUvi
� 
�
�
� l  & )
�����
� A   & )
�
�
� o   & '���� 0 theuvi theUvi
� m   ' (���� ��  ��  
� 
�
�
� r   , 3
�
�
� b   , 1
�
�
� b   , /
�
�
� m   , -
�
� �
�
� $ < t d   c l a s s = " M e d U V " >
� o   - .���� 0 theuvi theUvi
� m   / 0
�
� �
�
�  < / t d >  
� o      ���� 0 	returnuvi 	returnUvi
� 
�
�
� l  6 9
�����
� A   6 9
�
�
� o   6 7���� 0 theuvi theUvi
� m   7 8���� ��  ��  
� 
���
� r   < C
�
�
� b   < A
�
�
� b   < ?
�
�
� m   < =
�
� �
�
� & < t d   c l a s s = " H i g h U V " >
� o   = >���� 0 theuvi theUvi
� m   ? @
�
� �
�
�  < / t d >  
� o      ���� 0 	returnuvi 	returnUvi��  
| r   F M
�
�
� b   F K
�
�
� b   F I
�
�
� m   F G
�
� �
�
�  < t d >
� o   G H���� 0 theuvi theUvi
� m   I J
�
� �
�
�  < / t d >  
� o      ���� 0 	returnuvi 	returnUvi
x 
���
� L   N P
�
� o   N O���� 0 	returnuvi 	returnUvi��  
k 
�
�
� l     ��������  ��  ��  
� 
�
�
� i   H K
�
�
� I      ��
����� 0 getpop getPop
� 
���
� o      ���� 0 thepop thePop��  ��  
� k     0
�
� 
�
�
� r     
�
�
� c     
�
�
� o     ���� 0 thepop thePop
� m    ��
�� 
long
� o      ���� 0 thepop thePop
� 
�
�
� Z    -
�
�
�
�
� l   	
�����
� A    	
�
�
� o    ���� 0 thepop thePop
� m    ���� !��  ��  
� r    
�
�
� b    
�
�
� b    
�
�
� m    
�
� �
�
� ( < t d   c l a s s = " L o w R a i n " >
� o    ���� 0 thepop thePop
� m    
�
� �
�
�  < / t d >  
� o      ���� 0 	returnpop 	returnPop
� 
�
�
� l   
�����
� A    
�
�
� o    ���� 0 thepop thePop
� m    ���� B��  ��  
� 
���
� r    #
�
�
� b    !
�
�
� b    
�
�
� m    
�
� �
�
� ( < t d   c l a s s = " M e d R a i n " >
� o    ���� 0 thepop thePop
� m     
�
� �
�
�  < / t d >  
� o      ���� 0 	returnpop 	returnPop��  
� r   & -
�
�
� b   & +
�
�
� b   & )
�
�
� m   & '   � * < t d   c l a s s = " H i g h R a i n " >
� o   ' (���� 0 thepop thePop
� m   ) * �  < / t d >  
� o      ���� 0 	returnpop 	returnPop
� �� L   . 0 o   . /���� 0 	returnpop 	returnPop��  
�  l     ��������  ��  ��   	 i   L O

 I      ������ 0 getqpf getQpf �� o      ���� 0 theqpf theQpf��  ��   k       r      c      o     ���� 0 theqpf theQpf m    ��
�� 
long o      ���� 0 theqpf theQpf  r     b     b    	 m     �  < t d > o    ���� 0 theqpf theQpf m   	 
 �    < / t d >   o      ���� 0 	returnqpf 	returnQpf !��! L    "" o    ���� 0 	returnqpf 	returnQpf��  	 #$# l     ��������  ��  ��  $ %&% i   P S'(' I      ��)���� 0 getsnow getSnow) *��* o      ���� 0 thesnow theSnow��  ��  ( k     ++ ,-, r     ./. c     010 o     ���� 0 thesnow theSnow1 m    ��
�� 
long/ o      ���� 0 thesnow theSnow- 232 r    454 b    676 b    	898 m    :: �;;  < t d >9 o    ���� 0 thesnow theSnow7 m   	 
<< �==  < / t d >  5 o      ���� 0 
returnsnow 
returnSnow3 >��> L    ?? o    ���� 0 
returnsnow 
returnSnow��  & @A@ l     ��������  ��  ��  A BCB i   T WDED I      ��F���� 0 
shrinklist 
shrinkListF G��G o      ���� 0 alist aList��  ��  E k     HH IJI Q     KLMK r    NON n    PQP 7   ��RS
�� 
cobjR m    
���� S m    ������Q o    ���� 0 alist aListO o      ���� 0 alist aListL R      ������
�� .ascrerr ****      � ****��  ��  M r    TUT J    ����  U o      ���� 0 alist aListJ V��V L    WW o    ���� 0 alist aList��  C XYX l     ��������  ��  ��  Y Z[Z i   X [\]\ I      �^�~� 0 
checkempty 
checkEmpty^ _�}_ o      �|�| 0 thelist theList�}  �~  ] k     '`` aba l     �{cd�{  c 4 .Checks if a list is empty or effectively empty   d �ee \ C h e c k s   i f   a   l i s t   i s   e m p t y   o r   e f f e c t i v e l y   e m p t yb f�zf Z     'gh�yig l    j�x�wj G     klk G     mnm l    o�v�uo =     pqp o     �t�t 0 thelist theListq J    �s�s  �v  �u  n l   r�r�qr =    sts n    uvu 4    �pw
�p 
cobjw m   	 
�o�o v o    �n�n 0 thelist theListt J    �m�m  �r  �q  l l   x�l�kx A    yzy n    {|{ 1    �j
�j 
leng| l   }�i�h} n    ~~ 4    �g�
�g 
cobj� m    �f�f  o    �e�e 0 thelist theList�i  �h  z m    �d�d �l  �k  �x  �w  h L     "�� m     !�c
�c boovtrue�y  i L   % '�� m   % &�b
�b boovfals�z  [ ��� l     �a�`�_�a  �`  �_  � ��� i   \ _��� I      �^��]�^ 0 pmdays pmDays� ��\� o      �[�[ 0 themonth theMonth�\  �]  � k     >�� ��� l     �Z���Z  � 6 0Returns the number of days in the previous month   � ��� ` R e t u r n s   t h e   n u m b e r   o f   d a y s   i n   t h e   p r e v i o u s   m o n t h� ��� r     ��� \     ��� l    ��Y�X� c     ��� o     �W�W 0 themonth theMonth� m    �V
�V 
long�Y  �X  � m    �U�U � o      �T�T 0 	prevmonth 	prevMonth� ��� Z    ;����� l   ��S�R� =    ��� o    	�Q�Q 0 themonth theMonth� m   	 
�P�P �S  �R  � Z    !���O�� l   ��N�M� =    ��� `    ��� l   ��L�K� n    ��� 1    �J
�J 
year� o    �I�I 0 currdate currDate�L  �K  � m    �H�H � m    �G�G  �N  �M  � r    ��� m    �F�F � o      �E�E 0 	totaldays 	totalDays�O  � r    !��� m    �D�D � o      �C�C 0 	totaldays 	totalDays� ��� l  $ /��B�A� =   $ /��� o   $ %�@�@ 0 themonth theMonth� J   % .�� ��� m   % &�?�? � ��� m   & '�>�> � ��� m   ' (�=�= � ��� m   ( )�<�< � ��� m   ) *�;�; � ��� m   * +�:�: 
� ��9� m   + ,�8�8 �9  �B  �A  � ��7� r   2 5��� m   2 3�6�6 � o      �5�5 0 	totaldays 	totalDays�7  � r   8 ;��� m   8 9�4�4 � o      �3�3 0 	totaldays 	totalDays� ��2� L   < >�� o   < =�1�1 0 	totaldays 	totalDays�2  � ��� l     �0�/�.�0  �/  �.  � ��� i   ` c��� I      �-��,�-  0 getweatherdate getWeatherDate� ��+� o      �*�* 0 listdate listDate�+  �,  � k     Q�� ��� r     ��� I    �)�(�'
�) .misccurdldt    ��� null�(  �'  � o      �&�& 0 weatherdate weatherDate� ��� r    ��� \    ��� o    	�%�% 0 weatherdate weatherDate� l  	 ��$�#� n   	 ��� 1   
 �"
�" 
time� o   	 
�!�! 0 weatherdate weatherDate�$  �#  � o      � �  0 weatherdate weatherDate� ��� Z    <����� l   ���� A    ��� n    ��� 4    ��
� 
cobj� m    �� � o    �� 0 listdate listDate� n    ��� 1    �
� 
day � o    �� 0 weatherdate weatherDate�  �  � l   8���� k    8�� ��� r    $��� [    "��� l    ���� c     ��� n    ��� m    �
� 
mnth� o    �� 0 weatherdate weatherDate� m    �
� 
long�  �  � m     !�� � o      �� 0 amonth aMonth� ��� Z   % 8��� � l  % (�� =   % ( o   % &�� 0 amonth aMonth m   & '�
�
 �  �  � l  + 0 r   + 0 m   + ,�	�	  n      	
	 m   - /�
� 
mnth
 o   , -�� 0 weatherdate weatherDate ) #If next month is into the next year    � F I f   n e x t   m o n t h   i s   i n t o   t h e   n e x t   y e a r�    r   3 8 o   3 4�� 0 amonth aMonth n       m   5 7�
� 
mnth o   4 5�� 0 weatherdate weatherDate�  �   If date is into next month   � � 4 I f   d a t e   i s   i n t o   n e x t   m o n t h�  �  �  r   = E n   = A 4   > A�
� 
cobj m   ? @��  o   = >�� 0 listdate listDate n       1   B D� 
�  
day  o   A B���� 0 weatherdate weatherDate  r   F N n   F J 4   G J�� 
�� 
cobj  m   H I����  o   F G���� 0 listdate listDate n      !"! 1   K M��
�� 
hour" o   J K���� 0 weatherdate weatherDate #��# L   O Q$$ o   O P���� 0 weatherdate weatherDate��  � %&% l     ��������  ��  ��  & '(' l     ��)*��  ) 0 *--------Script----------------------------   * �++ T - - - - - - - - S c r i p t - - - - - - - - - - - - - - - - - - - - - - - - - - - -( ,-, l     ��./��  . 1 +-------------------------------------------   / �00 V - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- 121 l     ��������  ��  ��  2 343 l     ��56��  5 3 -Get weather items formatted to repeat through   6 �77 Z G e t   w e a t h e r   i t e m s   f o r m a t t e d   t o   r e p e a t   t h r o u g h4 898 l  � �:����: r   � �;<; J   � �== >��> m   � �?? �@@  ��  < n     ABA 1   � ���
�� 
txdlB 1   � ���
�� 
ascr��  ��  9 CDC l  � �E����E r   � �FGF c   � �HIH l  � �J����J b   � �KLK l  � �M����M I  � ���N��
�� .earsffdralis        afdrN m   � ���
�� afdrdocs��  ��  ��  L m   � �OO �PP 0 G e e k T o o l : W e a t h e r I n f o . t x t��  ��  I m   � ���
�� 
TEXTG o      ���� 0 textfile textFile��  ��  D QRQ l  � �S����S r   � �TUT n   � �VWV 2  � ���
�� 
cparW l  � �X����X I  � ���Y��
�� .rdwrread****        ****Y 4   � ���Z
�� 
fileZ o   � ����� 0 textfile textFile��  ��  ��  U o      ���� "0 weatherinfolist weatherInfoList��  ��  R [\[ l  �]����] r   �^_^ o   � ���
�� 
ret _ n     `a` 1   ���
�� 
txdla 1   � ���
�� 
ascr��  ��  \ bcb l d����d r  efe c  ghg n 
iji 2  
��
�� 
citmj o  ���� "0 weatherinfolist weatherInfoListh m  
��
�� 
listf o      ���� 0 templist tempList��  ��  c klk l m����m r  non J  pp q��q m  rr �ss  ,��  o n     tut 1  ��
�� 
txdlu 1  ��
�� 
ascr��  ��  l vwv l #x����x r  #yzy J  ����  z o      ���� "0 weatherinfolist weatherInfoList��  ��  w {|{ l $M}����} X  $M~��~ r  >H��� n >C��� 2  ?C��
�� 
citm� o  >?���� 0 w  � n      ���  ;  FG� o  CF���� "0 weatherinfolist weatherInfoList�� 0 w   n '.��� 2  *.��
�� 
citm� o  '*���� 0 templist tempList��  ��  | ��� l     ��������  ��  ��  � ��� l     ������  � E ?Get calendar events formatted to repeat through and then sorted   � ��� ~ G e t   c a l e n d a r   e v e n t s   f o r m a t t e d   t o   r e p e a t   t h r o u g h   a n d   t h e n   s o r t e d� ��� l NW������ r  NW��� J  NS�� ���� m  NQ�� ���  ��  � n     ��� 1  TV��
�� 
txdl� 1  ST��
�� 
ascr��  ��  � ��� l Xg������ r  Xg��� c  Xc��� l Xa������ b  Xa��� l X]������ I X]�����
�� .earsffdralis        afdr� m  XY��
�� afdrdocs��  ��  ��  � m  ]`�� ��� ( G e e k T o o l : C a l I n f o . t x t��  ��  � m  ab��
�� 
TEXT� o      ���� 0 textfile textFile��  ��  � ��� l hz������ r  hz��� n  hv��� 2 rv��
�� 
cpar� l hr������ I hr�����
�� .rdwrread****        ****� 4  hn���
�� 
file� o  jm���� 0 textfile textFile��  ��  ��  � o      ���� 0 calinfolist calInfoList��  ��  � ��� l {������� r  {���� o  {~��
�� 
ret � n     ��� 1  ���
�� 
txdl� 1  ~��
�� 
ascr��  ��  � ��� l �������� r  ����� c  ����� n ����� 7 ������
�� 
citm� m  ������ � m  ��������� o  ������ 0 calinfolist calInfoList� m  ����
�� 
list� o      ���� 0 calinfolist calInfoList��  ��  � ��� l �������� r  ����� J  ���� ���� m  ���� ���  ;��  � n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr��  ��  � ��� l �������� r  ����� J  ������  � o      ���� 0 templist tempList��  ��  � ��� l �������� X  ������� r  ����� n ����� 2  ����
�� 
citm� o  ������ 0 cal  � n      ���  ;  ��� o  ���� 0 templist tempList�� 0 cal  � n ����� 2  ���~
�~ 
citm� o  ���}�} 0 calinfolist calInfoList��  ��  � ��� l ����|�{� r  ����� I  ���z��y�z 0 
bubblesort 
bubbleSort� ��x� o  ���w�w 0 templist tempList�x  �y  � o      �v�v 0 calinfolist calInfoList�|  �{  � ��� l     �u�t�s�u  �t  �s  � ��� l     �r���r  � &  ------HTML construction---------   � ��� @ - - - - - - H T M L   c o n s t r u c t i o n - - - - - - - - -� ��� l     �q���q  � $ Start the HTML document header   � ��� < S t a r t   t h e   H T M L   d o c u m e n t   h e a d e r� ��� l ����p�o� r  ����� b  ����� l ����n�m� c  ����� b  ����� o  ���l�l 0 thehtmlstring theHTMLstring� m  ��   �� < ! D O C T Y P E   h t m l >   < h t m l     x m l n s = " h t t p : / / w w w . w 3 . o r g / 1 9 9 9 / x h t m l " > 
 < ! - - 
         b y :   C o l i n   D u r k i n 
         f i r s t   m o d i f i e d :   1 2   F e b   2 0 1 7 
         l a s t   m o d i f i e d :   2 3   M a r   2 0 1 7 
 - - > 
 < h e a d >   < t i t l e >   C a l e n d a r   a n d   W e a t h e r   < / t i t l e >   < m e t a   c h a r s e t = " u t f - 8 "   / >  � m  ���k
�k 
TEXT�n  �m  � o  ���j
�j 
ret � o      �i�i 0 thehtmlstring theHTMLstring�p  �o  �  l     �h�g�f�h  �g  �f    l     �e�e   + %Option to add backgrounds to calendar    � J O p t i o n   t o   a d d   b a c k g r o u n d s   t o   c a l e n d a r 	
	 l     �d�d   s mNOTE: All images must be located in the Weather or Background folder. Aliases will not be found by the script    � � N O T E :   A l l   i m a g e s   m u s t   b e   l o c a t e d   i n   t h e   W e a t h e r   o r   B a c k g r o u n d   f o l d e r .   A l i a s e s   w i l l   n o t   b e   f o u n d   b y   t h e   s c r i p t
  l     �c�c   Y SNOTE: If you do not want a background to be added, leave addBackground to true and     � � N O T E :   I f   y o u   d o   n o t   w a n t   a   b a c k g r o u n d   t o   b e   a d d e d ,   l e a v e   a d d B a c k g r o u n d   t o   t r u e   a n d    l     �b�a�`�b  �a  �`    l ���_�^ r  �� m  ���]
�] boovtrue o      �\�\ 0 addbackground addBackground�_  �^    l     �[�[   Q KNOTE: set this to false if you just want the calendar without a background.    � � N O T E :   s e t   t h i s   t o   f a l s e   i f   y o u   j u s t   w a n t   t h e   c a l e n d a r   w i t h o u t   a   b a c k g r o u n d .   l     �Z�Y�X�Z  �Y  �X    !"! l ��#�W�V# r  ��$%$ m  ���U
�U boovtrue% o      �T�T 00 addweathertobackground addWeatherToBackground�W  �V  " &'& l     �S()�S  ( K ENOTE: set this to false if you want your own images as the background   ) �** � N O T E :   s e t   t h i s   t o   f a l s e   i f   y o u   w a n t   y o u r   o w n   i m a g e s   a s   t h e   b a c k g r o u n d' +,+ l     �R�Q�P�R  �Q  �P  , -.- l ��/�O�N/ Z  ��01�M20 l �3�L�K3 =  �454 o  ��J�J 0 addbackground addBackground5 m  �I
�I boovtrue�L  �K  1 l �6786 k  �99 :;: r  <=< b  >?> l @�H�G@ c  ABA b  CDC o  �F�F 0 thehtmlstring theHTMLstringD m  EE �FF � < l i n k   h r e f = " W e a t h e r C a l . c s s "   t y p e = " t e x t / c s s "   r e l = " s t y l e s h e e t "   / >   < / h e a d >   < b o d y >  B m  �E
�E 
TEXT�H  �G  ? o  �D
�D 
ret = o      �C�C 0 thehtmlstring theHTMLstring; G�BG Z  �HI�AJH l K�@�?K =  LML o  �>�> 00 addweathertobackground addWeatherToBackgroundM m  �=
�= boovtrue�@  �?  I l :NOPN r  :QRQ b  8STS l 4U�<�;U c  4VWV b  2XYX b  .Z[Z b  *\]\ b  &^_^ b  "`a` o  �:�: 0 thehtmlstring theHTMLstringa m  !bb �cc $ < i m g   s r c = " W e a t h e r /_ o  "%�9�9 $0 weathercondition weatherCondition] m  &)dd �ee  . j p g "   a l t = "[ o  *-�8�8 $0 weathercondition weatherConditionY m  .1ff �gg : . j p g   n o t   f o u n d "   w i d t h = " 1 0 0 % " >W m  23�7
�7 
TEXT�<  �;  T o  47�6
�6 
ret R o      �5�5 0 thehtmlstring theHTMLstringO  weather-based background   P �hh 0 w e a t h e r - b a s e d   b a c k g r o u n d�A  J l =�ijki k  =�ll mnm l ==�4op�4  o& NOTE: A background image should be placed within Documents<GeekTool<Background. If the file extension is not jpg, change it in the above line. The script will choose a random image from within the Background folder and if there is only one picture, it will choose that picture every time.   p �qq@ N O T E :   A   b a c k g r o u n d   i m a g e   s h o u l d   b e   p l a c e d   w i t h i n   D o c u m e n t s < G e e k T o o l < B a c k g r o u n d .   I f   t h e   f i l e   e x t e n s i o n   i s   n o t   j p g ,   c h a n g e   i t   i n   t h e   a b o v e   l i n e .   T h e   s c r i p t   w i l l   c h o o s e   a   r a n d o m   i m a g e   f r o m   w i t h i n   t h e   B a c k g r o u n d   f o l d e r   a n d   i f   t h e r e   i s   o n l y   o n e   p i c t u r e ,   i t   w i l l   c h o o s e   t h a t   p i c t u r e   e v e r y   t i m e .n rsr r  =Ftut J  =Bvv w�3w m  =@xx �yy  �3  u n     z{z 1  CE�2
�2 
txdl{ 1  BC�1
�1 
ascrs |}| r  GV~~ c  GR��� l GP��0�/� b  GP��� l GL��.�-� I GL�,��+
�, .earsffdralis        afdr� m  GH�*
�* afdrdocs�+  �.  �-  � m  LO�� ��� & G e e k T o o l : B a c k g r o u n d�0  �/  � m  PQ�)
�) 
TEXT o      �(�( 0 
folderpath 
folderPath} ��� O  W���� r  ]���� n  ]���� 1  ���'
�' 
pnam� n  ]���� 4  e��&�
�& 
file� l f���%�$� I f��#�"�
�# .sysorandnmbr    ��� nmbr�"  � �!��
�! 
from� m  jk� �  � ���
� 
to  � l n|���� I n|���
� .corecnte****       ****� n  nx��� 2 vx�
� 
file� 4  nv��
� 
cfol� o  ru�� 0 
folderpath 
folderPath�  �  �  �  �%  �$  � 4  ]e��
� 
cfol� o  ad�� 0 
folderpath 
folderPath� o      ��  0 backgroundname backgroundName� m  WZ���                                                                                  MACS  alis    t  Macintosh HD               �R�\H+   �9
Finder.app                                                      ����GЎ        ����  	                CoreServices    �S!�      �HA     �9 �9 �9  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� r  ����� b  ����� l ������ c  ����� b  ����� b  ����� b  ����� b  ����� b  ����� o  ���� 0 thehtmlstring theHTMLstring� m  ���� ��� * < i m g   s r c = " B a c k g r o u n d /� o  ����  0 backgroundname backgroundName� m  ���� ���  "   a l t = "� o  ����  0 backgroundname backgroundName� m  ���� ��� 2   n o t   f o u n d "   w i d t h = " 1 0 0 % " >� m  ���
� 
TEXT�  �  � o  ���
� 
ret � o      �� 0 thehtmlstring theHTMLstring�  j  non-weather background   k ��� , n o n - w e a t h e r   b a c k g r o u n d�B  7 ! add background to HTML page   8 ��� 6 a d d   b a c k g r o u n d   t o   H T M L   p a g e�M  2 l ������ r  ����� b  ����� l ����
�	� c  ����� b  ����� o  ���� 0 thehtmlstring theHTMLstring� m  ���� ��� � < l i n k   h r e f = " W e a t h e r C a l 2 . c s s "   t y p e = " t e x t / c s s "   r e l = " s t y l e s h e e t "   / >   < / h e a d >   < b o d y >  � m  ���
� 
TEXT�
  �	  � o  ���
� 
ret � o      �� 0 thehtmlstring theHTMLstring�   no background in HTML page   � ��� 4 n o   b a c k g r o u n d   i n   H T M L   p a g e�O  �N  . ��� l     ����  �  �  � ��� l     �� ���  �   ��  � ��� l �������� r  ����� b  ����� l �������� c  ����� b  ����� o  ������ 0 thehtmlstring theHTMLstring� I  ���������� "0 addcolumntitles addColumnTitles��  ��  � m  ����
�� 
TEXT��  ��  � o  ����
�� 
ret � o      ���� 0 thehtmlstring theHTMLstring��  ��  � ��� l     ��������  ��  ��  � ��� l �������� Z  ��������� l �������� =  ����� I  ��������� 0 
checkempty 
checkEmpty� ���� o  ������ 0 calinfolist calInfoList��  ��  � m  ����
�� boovfals��  ��  � l ������ k  ���� ��� l ��������  � T NSets up table row if there is an All Day event today before first weather hour   � ��� � S e t s   u p   t a b l e   r o w   i f   t h e r e   i s   a n   A l l   D a y   e v e n t   t o d a y   b e f o r e   f i r s t   w e a t h e r   h o u r� ��� T  �4�� Z  �/������ l �������� C  ����� n  ����� 4  �����
�� 
cobj� m  ������ � n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 calinfolist calInfoList� m  ���� ���  A l l D a y :��  ��  � k  �+��    l ������   * $Writing all day event on its own row    � H W r i t i n g   a l l   d a y   e v e n t   o n   i t s   o w n   r o w  r  � b  �	
	 l ����� c  � b  � b  � b  �� o  ������ 0 thehtmlstring theHTMLstring m  �� � & < t r >   < t d > < / t d >   < t d > l ����� n  � 7 ��
�� 
ctxt m  	���� 
 m  ������ n  � 4  ���
�� 
cobj m  ����  n  �� 4  ���� 
�� 
cobj  m  ������  o  ������ 0 calinfolist calInfoList��  ��   m  !! �"" > < / t d >   < t d > < / t d >   < t d > < / t d >   < / t r > m  ��
�� 
TEXT��  ��  
 o  ��
�� 
ret  o      ���� 0 thehtmlstring theHTMLstring #$# l ��%&��  % ' !Text starts at 10 for the summary   & �'' B T e x t   s t a r t s   a t   1 0   f o r   t h e   s u m m a r y$ (��( r  +)*) I  '��+���� 0 
shrinklist 
shrinkList+ ,��, o   #���� 0 calinfolist calInfoList��  ��  * o      ���� 0 calinfolist calInfoList��  ��  �  S  ./� -.- l 55��������  ��  ��  . /0/ l 55��12��  1 1 +Remove any events before first weather hour   2 �33 V R e m o v e   a n y   e v e n t s   b e f o r e   f i r s t   w e a t h e r   h o u r0 4��4 T  5�55 k  :�66 787 r  :K9:9 I  :G��;����  0 getweatherdate getWeatherDate; <��< n  ;C=>= 4  >C��?
�� 
cobj? m  AB���� > o  ;>���� "0 weatherinfolist weatherInfoList��  ��  : o      ���� 0 wdate wDate8 @A@ r  L]BCB n  LYDED 4  TY��F
�� 
cobjF m  WX���� E n  LTGHG 4  OT��I
�� 
cobjI m  RS���� H o  LO���� 0 calinfolist calInfoListC o      ���� 0 	startdate 	startDateA JKJ r  ^jLML 4  ^f��N
�� 
ldt N o  be���� 0 	startdate 	startDateM o      ���� 0 	startdate 	startDateK O��O Z  k�PQ��RP l krS����S A  krTUT o  kn���� 0 	startdate 	startDateU o  nq���� 0 wdate wDate��  ��  Q k  u�VV WXW l uu��YZ��  Y b \if this is the first event is today or earlier and the hour is before the first weather item   Z �[[ � i f   t h i s   i s   t h e   f i r s t   e v e n t   i s   t o d a y   o r   e a r l i e r   a n d   t h e   h o u r   i s   b e f o r e   t h e   f i r s t   w e a t h e r   i t e mX \]\ Z  u�^_��`^ l u~a����a =  u~bcb n  u|ded 1  x|��
�� 
lenge o  ux���� 0 calinfolist calInfoListc m  |}���� ��  ��  _ r  ��fgf J  ������  g o      ���� 0 calinfolist calInfoList��  ` l ��hijh r  ��klk n  ��mnm 7 ����op
�� 
cobjo m  ������ p m  ��������n o  ������ 0 calinfolist calInfoListl o      ���� 0 calinfolist calInfoListi  remove first item   j �qq " r e m o v e   f i r s t   i t e m] r��r I ����s��
�� .ascrcmnt****      � ****s m  ��tt �uu  E v e n t   r e m o v e d��  ��  ��  R  S  ����  ��  � 8 2If the calendar is empty, we can skip this section   � �vv d I f   t h e   c a l e n d a r   i s   e m p t y ,   w e   c a n   s k i p   t h i s   s e c t i o n��  ��  ��  ��  � wxw l     ��������  ��  ��  x yzy l ��{����{ r  ��|}| J  ������  } o      ���� 0 ongoinglist ongoingList��  ��  z ~~ l �������� T  ���� k  ���� ��� Z  ������� l �������� F  ����� l �������� =  ����� I  ��������� 0 
checkempty 
checkEmpty� ���� o  ������ "0 weatherinfolist weatherInfoList��  ��  � m  ����
�� boovtrue��  ��  � l �������� =  ����� I  ��������� 0 
checkempty 
checkEmpty� ���� o  ������ 0 calinfolist calInfoList��  ��  � m  ���
� boovtrue��  ��  ��  ��  � k  ���� ��� l ���~���~  � K EOnce the lists are empty, the HTML document has all of its table rows   � ��� � O n c e   t h e   l i s t s   a r e   e m p t y ,   t h e   H T M L   d o c u m e n t   h a s   a l l   o f   i t s   t a b l e   r o w s� ��}�  S  ���}  � ��� l ����|�{� F  ����� l ����z�y� =  ����� I  ���x��w�x 0 
checkempty 
checkEmpty� ��v� o  ���u�u "0 weatherinfolist weatherInfoList�v  �w  � m  ���t
�t boovtrue�z  �y  � l ����s�r� =  ����� I  ���q��p�q 0 
checkempty 
checkEmpty� ��o� o  ���n�n 0 calinfolist calInfoList�o  �p  � m  ���m
�m boovfals�s  �r  �|  �{  � ��l� k  ��� ��� I ��k��j
�k .ascrcmnt****      � ****� m  ��� ��� n E R R O R ,   a   c a l e n d a r   e v e n t   w a s   n o t   l i s t e d   i n   t h e   H T M L   f i l e�j  � ��i�  S  �i  �l  ��  � ��� r  "��� c  ��� n  ��� 4  �h�
�h 
cobj� m  �g�g � n  ��� 4  �f�
�f 
cobj� m  �e�e � o  �d�d "0 weatherinfolist weatherInfoList� m  �c
�c 
long� o      �b�b 0 midnight midNight� ��� Z  #����a�`� l #(��_�^� =  #(��� o  #&�]�] 0 midnight midNight� m  &'�\�\  �_  �^  � k  +��� ��� r  +4��� c  +0��� m  +.�� ��� , < t r   c l a s s = " L a s t H o u r " >  � m  ./�[
�[ 
TEXT� o      �Z�Z 0 	ftablerow 	fTableRow� ��� r  5D��� I 5@�Y��X
�Y .corecnte****       ****� n 5<��� 2 8<�W
�W 
cobj� o  58�V�V .0 currentweathercolumns currentWeatherColumns�X  � o      �U�U 0 colcount colCount� ��� Y  Ea��T���S� r  Q\��� b  QX��� o  QT�R�R 0 	ftablerow 	fTableRow� m  TW�� ���  < t d > < / t d >  � o      �Q�Q 0 	ftablerow 	fTableRow�T 0 f  � m  HI�P�P � o  IL�O�O 0 colcount colCount�S  � ��� r  bo��� c  bk��� b  bi��� o  be�N�N 0 	ftablerow 	fTableRow� m  eh�� ���  < / t r >  � m  ij�M
�M 
TEXT� o      �L�L 0 	ftablerow 	fTableRow� ��� r  p{��� b  py��� b  pu��� o  pq�K�K 0 thehtmlstring theHTMLstring� o  qt�J�J 0 	ftablerow 	fTableRow� o  ux�I
�I 
ret � o      �H�H 0 thehtmlstring theHTMLstring� ��G� I |��F��E
�F .ascrcmnt****      � ****� o  |�D�D 0 	ftablerow 	fTableRow�E  �G  �a  �`  � ��� l ���C�B�A�C  �B  �A  � ��� l ���@���@  �  ||Ongoing Events||   � ��� $ | | O n g o i n g   E v e n t s | |� ��� r  ����� m  ���?
�? boovfals� o      �>�> 0 
eventadded 
eventAdded�    Z  ���=�< l ���;�: =  �� I  ���9�8�9 0 
checkempty 
checkEmpty �7 o  ���6�6 0 ongoinglist ongoingList�7  �8   m  ���5
�5 boovfals�;  �:   l ��	
	 k  ��  Y  ��4�3 k  �  I ���2�1
�2 .ascrcmnt****      � **** m  �� �   a n   o n g o i n g   e v e n t�1   �0 Z  ��/ l ���.�- =  �� o  ���,�, 0 
eventadded 
eventAdded m  ���+
�+ boovfals�.  �-   l �� ! k  ��"" #$# r  ��%&% b  ��'(' l ��)�*�)) b  ��*+* o  ���(�( 0 thehtmlstring theHTMLstring+ l ��,�'�&, I  ���%-�$�% &0 addweathercolumns addWeatherColumns- ./. n  ��010 4  ���#2
�# 
cobj2 m  ���"�" 1 o  ���!�! "0 weatherinfolist weatherInfoList/ 3� 3 n  ��454 4  ���6
� 
cobj6 m  ���� 5 n  ��787 4  ���9
� 
cobj9 o  ���� 0 i  8 o  ���� 0 ongoinglist ongoingList�   �$  �'  �&  �*  �)  ( o  ���
� 
ret & o      �� 0 thehtmlstring theHTMLstring$ :�: r  ��;<; m  ���
� boovtrue< o      �� 0 
eventadded 
eventAdded�    % first event on the weather line   ! �== > f i r s t   e v e n t   o n   t h e   w e a t h e r   l i n e�/   l �>?@> r  �ABA b  �
CDC l �E��E b  �FGF o  ���� 0 thehtmlstring theHTMLstringG l �H��H I  ��I��  0 addsecondevent addSecondEventI JKJ n  ��LML 4  ���N
� 
cobjN m  ���� M o  ���� "0 weatherinfolist weatherInfoListK O�O n  �PQP 4  ��
R
�
 
cobjR m  � �	�	 Q n  ��STS 4  ���U
� 
cobjU o  ���� 0 i  T o  ���� 0 ongoinglist ongoingList�  �  �  �  �  �  D o  	�
� 
ret B o      �� 0 thehtmlstring theHTMLstring? * $subsequent event on the weather line   @ �VV H s u b s e q u e n t   e v e n t   o n   t h e   w e a t h e r   l i n e�0  �4 0 i   m  ����  I ���W�
� .corecnte****       ****W o  ��� �  0 ongoinglist ongoingList�  �3   XYX r  Z[Z J  ����  [ o      ���� 0 templist tempListY \]\ r  *^_^ I  &��`����  0 getweatherdate getWeatherDate` a��a n  "bcb 4  "��d
�� 
cobjd m   !���� c o  ���� "0 weatherinfolist weatherInfoList��  ��  _ o      ���� 0 weatherdate weatherDate] efe Y  +zg��hi��g l ;ujklj k  ;umm non r  ;Lpqp n  ;Hrsr 4  CH��t
�� 
citmt m  FG���� s n  ;Cuvu 4  >C��w
�� 
cobjw o  AB���� 0 i  v o  ;>���� 0 ongoinglist ongoingListq o      ���� 0 enddate endDateo xyx r  MYz{z 4  MU��|
�� 
ldt | o  QT���� 0 enddate endDate{ o      ���� 0 enddate endDatey }��} Z  Zu~����~ l Za������ ?  Za��� o  Z]���� 0 enddate endDate� o  ]`���� 0 weatherdate weatherDate��  ��   l dq���� r  dq��� n  dl��� 4  gl���
�� 
cobj� o  jk���� 0 i  � o  dg���� 0 ongoinglist ongoingList� n      ���  ;  op� o  lo���� 0 templist tempList� = 7check if ongoing event will be ongoing to the next hour   � ��� n c h e c k   i f   o n g o i n g   e v e n t   w i l l   b e   o n g o i n g   t o   t h e   n e x t   h o u r��  ��  ��  k % removing items from ongoingList   l ��� > r e m o v i n g   i t e m s   f r o m   o n g o i n g L i s t�� 0 i  h m  ./���� i I /6�����
�� .corecnte****       ****� o  /2���� 0 ongoinglist ongoingList��  ��  f ���� r  {���� o  {~���� 0 templist tempList� o      ���� 0 ongoinglist ongoingList��  
  ongoing events to add    ��� * o n g o i n g   e v e n t s   t o   a d d�=  �<   ��� l ��������  �  ||New Events||   � ���  | | N e w   E v e n t s | |� ��� Z  ��������� l �������� =  ����� I  ��������� 0 
checkempty 
checkEmpty� ���� o  ������ 0 calinfolist calInfoList��  ��  � m  ����
�� boovfals��  ��  � k  ���� ��� T  �@�� k  �;�� ��� l ��������  �  ||AllDay Events||   � ��� " | | A l l D a y   E v e n t s | |� ���� Z  �;����� l �������� =  ����� I  ��������� 0 
checkempty 
checkEmpty� ���� o  ������ 0 calinfolist calInfoList��  ��  � m  ����
�� boovtrue��  ��  �  S  ��� ��� l �������� F  ����� l �������� C  ����� n  ����� 4  �����
�� 
cobj� m  ������ � n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 calinfolist calInfoList� m  ���� ���  A l l   D a y :��  ��  � l �������� =  ����� c  ����� n  ����� 1  ����
�� 
day � 4  �����
�� 
ldt � l �������� n  ����� 4  �����
�� 
cobj� m  ������ � n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 calinfolist calInfoList��  ��  � m  ����
�� 
long� c  ����� n  ����� 4  �����
�� 
cobj� m  ������ � n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ "0 weatherinfolist weatherInfoList� m  ����
�� 
long��  ��  ��  ��  � ���� k  �7�� ��� I �������
�� .ascrcmnt****      � ****� m  ���� ���  I t ' s   A l l   D a y��  � ��� l ��������  � * $Writing all day event on its own row   � ��� H W r i t i n g   a l l   d a y   e v e n t   o n   i t s   o w n   r o w� ��� r  �*��� b  �(��� l �$������ b  �$��� o  ������ 0 thehtmlstring theHTMLstring� l �#������ I  �#�������  0 addsecondevent addSecondEvent� ��� n  ���� 4  ����
�� 
cobj� m  ���� � o  ������ "0 weatherinfolist weatherInfoList� ���� n  ��� 7 ����
�� 
ctxt� m  ���� 
� m  ������� n  ��� 4  �� 
�� 
cobj  m  ���� � n   4  ��
�� 
cobj m  
����  o  ���� 0 calinfolist calInfoList��  ��  ��  ��  ��  ��  � o  $'��
�� 
ret � o      ���� 0 thehtmlstring theHTMLstring�  l ++����   ' !Text starts at 10 for the summary    � B T e x t   s t a r t s   a t   1 0   f o r   t h e   s u m m a r y 	��	 r  +7

 I  +3������ 0 
shrinklist 
shrinkList �� o  ,/���� 0 calinfolist calInfoList��  ��   o      ���� 0 calinfolist calInfoList��  ��  �  S  :;��  � �� T  A� k  F�  l FF����    ||Hourly Events||    � " | | H o u r l y   E v e n t s | | �� Z  F� l FP���� =  FP I  FN������ 0 
checkempty 
checkEmpty �� o  GJ���� 0 calinfolist calInfoList��  ��   m  NO��
�� boovtrue��  ��    S  ST  !  l W�"����" F  W�#$# l W�%��~% =  W�&'& n  Wn()( 1  jn�}
�} 
day ) 4  Wj�|*
�| 
ldt * l [i+�{�z+ n  [i,-, 4  ch�y.
�y 
cobj. m  fg�x�x - n  [c/0/ 4  ^c�w1
�w 
cobj1 m  ab�v�v 0 o  [^�u�u 0 calinfolist calInfoList�{  �z  ' c  n232 n  n{454 4  v{�t6
�t 
cobj6 m  yz�s�s 5 n  nv787 4  qv�r9
�r 
cobj9 m  tu�q�q 8 o  nq�p�p "0 weatherinfolist weatherInfoList3 m  {~�o
�o 
long�  �~  $ l ��:�n�m: F  ��;<; l ��=�l�k= @  ��>?> n  ��@A@ 1  ���j
�j 
hourA 4  ���iB
�i 
ldt B l ��C�h�gC n  ��DED 4  ���fF
�f 
cobjF m  ���e�e E n  ��GHG 4  ���dI
�d 
cobjI m  ���c�c H o  ���b�b 0 calinfolist calInfoList�h  �g  ? c  ��JKJ n  ��LML 4  ���aN
�a 
cobjN m  ���`�` M n  ��OPO 4  ���_Q
�_ 
cobjQ m  ���^�^ P o  ���]�] "0 weatherinfolist weatherInfoListK m  ���\
�\ 
long�l  �k  < A  ��RSR l ��T�[�ZT n  ��UVU 1  ���Y
�Y 
hourV 4  ���XW
�X 
ldt W l ��X�W�VX n  ��YZY 4  ���U[
�U 
cobj[ m  ���T�T Z n  ��\]\ 4  ���S^
�S 
cobj^ m  ���R�R ] o  ���Q�Q 0 calinfolist calInfoList�W  �V  �[  �Z  S [  ��_`_ l ��a�P�Oa c  ��bcb n  ��ded 4  ���Nf
�N 
cobjf m  ���M�M e n  ��ghg 4  ���Li
�L 
cobji m  ���K�K h o  ���J�J "0 weatherinfolist weatherInfoListc m  ���I
�I 
long�P  �O  ` m  ���H�H �n  �m  ��  ��  ! j�Gj k  ��kk lml I ���Fn�E
�F .ascrcmnt****      � ****n m  ��oo �pp  a   n e w   e v e n t�E  m qrq Z  �Fst�Dus l ��v�C�Bv =  ��wxw o  ���A�A 0 
eventadded 
eventAddedx m  ���@
�@ boovfals�C  �B  t l �yz{y k  �|| }~} r  �� b  ���� l ���?�>� b  ���� o  ���=�= 0 thehtmlstring theHTMLstring� l ���<�;� I  ��:��9�: &0 addweathercolumns addWeatherColumns� ��� n  ����� 4  ���8�
�8 
cobj� m  ���7�7 � o  ���6�6 "0 weatherinfolist weatherInfoList� ��5� n  ���� 4  �4�
�4 
cobj� m  
�3�3 � n  ���� 4  �2�
�2 
cobj� m  �1�1 � o  ��0�0 0 calinfolist calInfoList�5  �9  �<  �;  �?  �>  � o  �/
�/ 
ret � o      �.�. 0 thehtmlstring theHTMLstring~ ��-� r  ��� m  �,
�, boovtrue� o      �+�+ 0 
eventadded 
eventAdded�-  z % first event on the weather line   { ��� > f i r s t   e v e n t   o n   t h e   w e a t h e r   l i n e�D  u l "F���� r  "F��� b  "D��� l "@��*�)� b  "@��� o  "#�(�( 0 thehtmlstring theHTMLstring� l #?��'�&� I  #?�%��$�%  0 addsecondevent addSecondEvent� ��� n  $,��� 4  ',�#�
�# 
cobj� m  *+�"�" � o  $'�!�! "0 weatherinfolist weatherInfoList� �� � n  ,;��� 4  4;��
� 
cobj� m  7:�� � n  ,4��� 4  /4��
� 
cobj� m  23�� � o  ,/�� 0 calinfolist calInfoList�   �$  �'  �&  �*  �)  � o  @C�
� 
ret � o      �� 0 thehtmlstring theHTMLstring� * $subsequent event on the weather line   � ��� H s u b s e q u e n t   e v e n t   o n   t h e   w e a t h e r   l i n er ��� r  GX��� n  GT��� 4  OT��
� 
citm� m  RS�� � n  GO��� 4  JO��
� 
cobj� m  MN�� � o  GJ�� 0 calinfolist calInfoList� o      �� 0 enddate endDate� ��� r  Ye��� 4  Ya��
� 
ldt � o  ]`�� 0 enddate endDate� o      �� 0 enddate endDate� ��� r  fw��� I  fs����  0 getweatherdate getWeatherDate� ��� n  go��� 4  jo��
� 
cobj� m  mn�� � o  gj�
�
 "0 weatherinfolist weatherInfoList�  �  � o      �	�	 0 weatherdate weatherDate� ��� Z  x������ l x���� ?  x��� o  x{�� 0 enddate endDate� o  {~�� 0 weatherdate weatherDate�  �  � k  ���� ��� I �����
� .ascrcmnt****      � ****� m  ���� ���  w i l l   b e   o n g o i n g�  � ��� l ��� ���   � B <Checking to see if event is ongoing to the next weather time   � ��� x C h e c k i n g   t o   s e e   i f   e v e n t   i s   o n g o i n g   t o   t h e   n e x t   w e a t h e r   t i m e� ���� r  ����� n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 calinfolist calInfoList� n      ���  ;  ��� o  ������ 0 ongoinglist ongoingList��  �  �  � ���� r  ����� I  ��������� 0 
shrinklist 
shrinkList� ���� o  ������ 0 calinfolist calInfoList��  ��  � o      ���� 0 calinfolist calInfoList��  �G    S  ����  ��  ��  ��  � ��� Z  ��������� l �������� =  ����� o  ������ 0 
eventadded 
eventAdded� m  ����
�� boovfals��  ��  � k  ���� ��� I �������
�� .ascrcmnt****      � ****� m  ���� ���  n o   e v e n t��  � ���� r  ����� b  ����� l �������� b  ����� o  ������ 0 thehtmlstring theHTMLstring� l �������� I  ��������� &0 addweathercolumns addWeatherColumns� � � n  �� 4  ����
�� 
cobj m  ������  o  ������ "0 weatherinfolist weatherInfoList  �� m  ����
�� boovfals��  ��  ��  ��  ��  ��  � o  ����
�� 
ret � o      ���� 0 thehtmlstring theHTMLstring��  ��  ��  � �� r  �� I  �������� 0 
shrinklist 
shrinkList 	��	 o  ������ "0 weatherinfolist weatherInfoList��  ��   o      ���� "0 weatherinfolist weatherInfoList��  ��  ��   

 l     ��������  ��  ��    l � ���� r  �  b  �� l ������ c  �� b  �� o  ������ 0 thehtmlstring theHTMLstring m  �� � 2   < / t a b l e >   < / b o d y >   < / h t m l > m  ����
�� 
TEXT��  ��   o  ����
�� 
ret  o      ���� 0 thehtmlstring theHTMLstring��  ��    l     ��������  ��  ��    l      ����   � �--Setup HTML file with proper formatting and attach css filetry --delete HTML file if already exists	tell application "System Events"		move theHTMLpath to (path to trash)	end tellend try
    �  �  - - S e t u p   H T M L   f i l e   w i t h   p r o p e r   f o r m a t t i n g   a n d   a t t a c h   c s s   f i l e  t r y   - - d e l e t e   H T M L   f i l e   i f   a l r e a d y   e x i s t s  	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 	 m o v e   t h e H T M L p a t h   t o   ( p a t h   t o   t r a s h )  	 e n d   t e l l  e n d   t r y 
 !"! l #����# I ��$��
�� .sysoexecTEXT���     TEXT$ m  %% �&& h e c h o     >   $ H O M E / D o c u m e n t s / G e e k T o o l / c a l W e a t h e r I n f o . h t m l��  ��  ��  " '(' l     ��)*��  ) 9 3--creates an empty file or overwrites previous file   * �++ f - - c r e a t e s   a n   e m p t y   f i l e   o r   o v e r w r i t e s   p r e v i o u s   f i l e( ,-, l     ��������  ��  ��  - ./. l 	0����0 r  	121 I 	��34
�� .rdwropenshor       file3 o  	
���� 0 thehtmlpath theHTMLpath4 ��5��
�� 
perm5 m  ��
�� boovtrue��  2 o      ���� 0 pathnum pathNum��  ��  / 676 l )8����8 I )��9:
�� .rdwrwritnull���     ****9 l ;����; o  ���� 0 thehtmlstring theHTMLstring��  ��  : ��<=
�� 
refn< 4  ��>
�� 
file> o  ���� 0 thehtmlpath theHTMLpath= ��?��
�� 
as  ? m  "#��
�� 
TEXT��  ��  ��  7 @��@ l *1A����A I *1��B��
�� .rdwrclosnull���     ****B o  *-���� 0 pathnum pathNum��  ��  ��  ��       ��CDEFGHIJKLMNOPQRSTUVWXYZ[\]��  C ������������������������������������������������������ 0 
bubblesort 
bubbleSort�� "0 addcolumntitles addColumnTitles�� &0 addweathercolumns addWeatherColumns��  0 addsecondevent addSecondEvent�� 0 gethour getHour�� 0 getdatei getDateI�� 0 getdatem getDateM�� 0 getweek getWeek�� 0 getcalendar getCalendar�� 0 gettempf getTempF�� 0 gettempc getTempC�� 0 	getfeelse 	getFeelsE�� 0 getconditione getConditionE�� 0 getwindi getWindI�� 0 getwindm getWindM�� 0 
getwinddir 
getWindDir�� 0 getsky getSky�� 0 getuvi getUvi�� 0 getpop getPop�� 0 getqpf getQpf�� 0 getsnow getSnow�� 0 
shrinklist 
shrinkList�� 0 
checkempty 
checkEmpty�� 0 pmdays pmDays��  0 getweatherdate getWeatherDate
�� .aevtoappnull  �   � ****D ������^_���� 0 
bubblesort 
bubbleSort�� ��`�� `  ���� 0 datelist dateList��  ^ ���������� 0 datelist dateList�� 0 swapcounter swapCounter�� 0 i  �� 0 temp  _ ������~
�� .corecnte****       ****
�� 
leng
� 
ldt 
�~ 
cobj�� ��j  k  �Y s mhZjE�O Sk��,kkh *��/�k/E/*��k/�k/E/ &��/E�O��k/��/FO���k/FO�kE�Y h[OY��O�j  Y h[OY��O�E �}��|�{ab�z�} "0 addcolumntitles addColumnTitles�|  �{  a �y�x�w�v�y 0 tableheader tableHeader�x 0 colcount colCount�w 0 h  �v 0 colhead colHeadb )��u�t�s�����r���������q�� 
 #,69BLR\_hru}����u .0 currentweathercolumns currentWeatherColumns
�t 
cobj
�s .corecnte****       ****�r �q �z�E�O��-j E�O �k�kh �����v��/ �E�Y ���/�  �E�Y �����a a v��/ 
a E�Y ���/a   
a E�Y �a a lv��/ 
a E�Y va a lv��/ 
a E�Y ^a a lv��/ 
a E�Y F��/a   
a E�Y 3a  a !lv��/ 
a "E�Y a #a $lv��/ 
a %E�Y hO�a &%�%a '%E�[OY�O�a (%E�O�F �p��o�ncd�m�p &0 addweathercolumns addWeatherColumns�o �le�l e  �k�j�k 0 wrow wRow�j 0 cevent cEvent�n  c �i�h�g�f�e�d�i 0 wrow wRow�h 0 cevent cEvent�g 0 tablerow tableRow�f 0 colcount colCount�e 0 w  �d 0 	tabledata 	tableDatad /��c�b�a��`��_��^�]-�\=�[S�Zi��Y��X��W��V��U�T/�SE�R[�Qq��P���O�N��c .0 currentweathercolumns currentWeatherColumns
�b 
cobj
�a .corecnte****       ****�` 0 gethour getHour�_ 0 getdatei getDateI�^ 0 getdatem getDateM�] 0 getweek getWeek�\ 0 getcalendar getCalendar�[ 0 gettempf getTempF�Z 0 gettempc getTempC�Y 0 	getfeelse 	getFeelsE�X 0 getconditione getConditionE�W 0 getwindi getWindI�V 0 getwindm getWindM�U 0 
getwinddir 
getWindDir�T 0 getsky getSky�S 0 getuvi getUvi�R 0 getpop getPop�Q 0 getqpf getQpf�P 0 getsnow getSnow
�O .ascrcmnt****      � ****
�N 
TEXT�m��E�O��-j E�Odk�kh ��/�  *��l/k+ E�Y7��/�  *��k/��l/l+ E�Y��/�  *��k/��l/l+ 	E�Y��/�  *��k/��l/l+ E�Y���/�  *�k+ E�Y���/�  *��l/k+ E�Y���/a   *��l/k+ E�Y���/a   *��l/k+ E�Y���/a   *��l/k+ E�Yh��/a   *��l/k+ E�YM��/a   *��l/k+ E�Y2��/a   *��l/k+ E�Y��/a   *��l/k+ E�Y ���/a   *��l/k+ E�Y ���/a   *��l/k+ E�Y ���/a   *��l/k+  E�Y ���/a !  *��l/k+ "E�Y ���/a #  *��l/k+ $E�Y u��/a %  *��l/k+ &E�Y Z��/a '  *��l/k+ &E�Y ?��/a (  *��l/k+ )E�Y $��/a *  *��l/k+ )E�Y 	a +j ,O��%a -&E�[OY��O�a .%a -&E�O�G �M��L�Kfg�J�M  0 addsecondevent addSecondEvent�L �Ih�I h  �H�G�H 0 wrow wRow�G 0 cevent cEvent�K  f �F�E�D�C�B�A�F 0 wrow wRow�E 0 cevent cEvent�D 0 tablerow tableRow�C 0 colcount colCount�B 0 w  �A 0 	tabledata 	tableDatag 	��@�?�>��= �<�@ .0 currentweathercolumns currentWeatherColumns
�? 
cobj
�> .corecnte****       ****�= 0 getcalendar getCalendar
�< 
TEXT�J H�E�O��-j E�O -k�kh ��/�  *�k+ E�Y �E�O��%�&E�[OY��O��%�&E�O�H �;�:�9ij�8�; 0 gethour getHour�: �7k�7 k  �6�6 0 thehour theHour�9  i �5�4�5 0 thehour theHour�4 0 
returnhour 
returnHourj �3,.
�3 
long�8 ��&E�O�%�%E�O�I �27�1�0lm�/�2 0 getdatei getDateI�1 �.n�. n  �-�,�- 0 thedate theDate�, 0 thehour theHour�0  l �+�*�)�(�'�+ 0 thedate theDate�* 0 thehour theHour�) 0 currdate currDate�( 0 themonth theMonth�' 0 
returnhour 
returnHourm 
�&�%�$�#�"�����
�& 
long
�% .misccurdldt    ��� null
�$ 
day 
�# 
mnth�" �/ ]��&E�O��&E�O�j  B*j E�O���, ��,�&kE�O��  kE�Y hY 	��,�&E�O�%�%�%�%E�Y 	�%�%E�O�J �!�� �op��! 0 getdatem getDateM�  �q� q  ��� 0 thedate theDate� 0 thehour theHour�  o ������ 0 thedate theDate� 0 thehour theHour� 0 currdate currDate� 0 themonth theMonth� 0 
returnhour 
returnHourp 
������� 

� 
long
� .misccurdldt    ��� null
� 
day 
� 
mnth� � ]��&E�O��&E�O�j  B*j E�O���, ��,�&kE�O��  kE�Y hY 	��,�&E�O�%�%�%�%E�Y 	�%�%E�O�K ���rs�� 0 getweek getWeek� �t� t  ��
� 0 thedate theDate�
 0 thehour theHour�  r �	������	 0 thedate theDate� 0 thehour theHour� 0 currdate currDate� 0 theyear theYear� 0 themonth theMonth� 0 
returnhour 
returnHours ���� �������������������
� 
long
� .misccurdldt    ��� null
� 
year
�  
day 
�� 
mnth�� 
�� 
ascr
�� 
txdl
�� 
wkdy
�� 
TEXT
�� 
cha � ���&E�O��&E�O�j  r*j E�O��,E�O���, "��,�&kE�O��  �kE�OkE�Y hY ��,E�O���,FO���,FO���,FO�kv��,FO��,�&[�\[Zk\Zm2%�&�%E�Y 	�%�%E�O�L �������uv���� 0 getcalendar getCalendar�� ��w�� w  ���� 0 cevent cEvent��  u ������ 0 cevent cEvent��  0 returncalendar returnCalendarv ����� �f  �E�Y 	�%�%E�O�M �������xy���� 0 gettempf getTempF�� ��z�� z  ���� 0 thetemp theTemp��  x ������ 0 thetemp theTemp�� 0 
returntemp 
returnTempy ����������������-/��>@��OQ��_aik
�� 
long�� �� )�� 3�� =�� G�� Q�� [�� e�� ���&E�O�� �%�%E�Y ��� �%�%E�Y �� �%�%E�Y o�� �%�%E�Y _�� �%�%E�Y O�a  a �%a %E�Y 9�a  a �%a %E�Y #�a  a �%a %E�Y a �%a %E�O�N ��t����{|���� 0 gettempc getTempC�� ��}�� }  ���� 0 thetemp theTemp��  { ������ 0 thetemp theTemp�� 0 
returntemp 
returnTemp| ������������������������������
�� 
long�� �� �� �� �� �� !�� &�� ���&E�O�j �%�%E�Y ��� �%�%E�Y }�� �%�%E�Y m�� �%�%E�Y ]�� ��%�%E�Y M�� a �%a %E�Y 9�a  a �%a %E�Y #�a  a �%a %E�Y a �%a %E�O�O ������~���� 0 	getfeelse 	getFeelsE�� ����� �  ���� 0 thetemp theTemp��  ~ ������ 0 thetemp theTemp�� 0 
returntemp 
returnTemp ����0��?��N��]��l��{�������
�� 
long�� �� )�� 3�� =�� G�� Q�� [�� e�� q��&E�O�� �E�Y ]�� �E�Y Q�� �E�Y E�� �E�Y 9�� �E�Y -�� �E�Y !�� �E�Y �� 
a E�Y a E�O�P ������������� 0 getconditione getConditionE�� ����� �  ���� 0 thecond theCond��  � ������ 0 thecond theCond�� 0 
returncond 
returnCond� ���������		
			#	+�� [��  �E�Y M��  �E�Y A��  �E�Y 5��  �E�Y )��  �E�Y ��  �E�Y ��  �E�Y �E�O�Q ��	5���������� 0 getwindi getWindI�� ����� �  ���� 0 thewind theWind��  � ������ 0 thewind theWind�� 0 
returnwind 
returnWind� ��	N	P��	_	a��	p	r��	�	���	�	���	�	�	�	�
�� 
long�� �� 
�� �� �� �� y��&E�O�j  �%�%E�Y a�� �%�%E�Y Q�� �%�%E�Y A�� �%�%E�Y 1�� ��%�%E�Y !�� a �%a %E�Y a �%a %E�O�R ��	����������� 0 getwindm getWindM�� ����� �  ���� 0 thewind theWind��  � ������ 0 thewind theWind�� 0 
returnwind 
returnWind� ��	�	���	�	���	�	���

��

��
$
&
.
0
�� 
long�� �� �� ��  �� (�� y��&E�O�j  �%�%E�Y a�� �%�%E�Y Q�� �%�%E�Y A�� �%�%E�Y 1�� ��%�%E�Y !�� a �%a %E�Y a �%a %E�O�S ��
9���������� 0 
getwinddir 
getWindDir�� ����� �  ���� 0 thewind theWind��  � ������ 0 thewind theWind�� 0 
returnwind 
returnWind� 
E
G�� �%�%E�O�T ��
P���������� 0 getsky getSky�� ����� �  ���� 0 thesky theSky��  � ������ 0 thesky theSky�� 0 	returnsky 	returnSky� ��
b
d
�� 
long�� ��&E�O�%�%E�O�U ��
m���������� 0 getuvi getUvi�� ����� �  ���� 0 theuvi theUvi��  � ������ 0 theuvi theUvi�� 0 	returnuvi 	returnUvi� ��
�
���
�
��
�
��~
�
�
�
�
�� 
long�� � �~ �� Q��&E�O�j  �%�%E�Y 9�� �%�%E�Y )�� �%�%E�Y �� �%�%E�Y 	�%�%E�O�V �}
��|�{���z�} 0 getpop getPop�| �y��y �  �x�x 0 thepop thePop�{  � �w�v�w 0 thepop thePop�v 0 	returnpop 	returnPop� 	�u�t
�
��s
�
� 
�u 
long�t !�s B�z 1��&E�O�� �%�%E�Y �� �%�%E�Y 	�%�%E�O�W �r�q�p���o�r 0 getqpf getQpf�q �n��n �  �m�m 0 theqpf theQpf�p  � �l�k�l 0 theqpf theQpf�k 0 	returnqpf 	returnQpf� �j
�j 
long�o ��&E�O�%�%E�O�X �i(�h�g���f�i 0 getsnow getSnow�h �e��e �  �d�d 0 thesnow theSnow�g  � �c�b�c 0 thesnow theSnow�b 0 
returnsnow 
returnSnow� �a:<
�a 
long�f ��&E�O�%�%E�O�Y �`E�_�^���]�` 0 
shrinklist 
shrinkList�_ �\��\ �  �[�[ 0 alist aList�^  � �Z�Z 0 alist aList� �Y�X�W
�Y 
cobj�X  �W  �]   �[�\[Zl\Zi2E�W X  jvE�O�Z �V]�U�T���S�V 0 
checkempty 
checkEmpty�U �R��R �  �Q�Q 0 thelist theList�T  � �P�P 0 thelist theList� �O�N�M
�O 
cobj
�N 
bool
�M 
leng�S (�jv 
 ��k/jv �&
 ��k/�,l�& eY f[ �L��K�J���I�L 0 pmdays pmDays�K �H��H �  �G�G 0 themonth theMonth�J  � �F�E�D�C�F 0 themonth theMonth�E 0 	prevmonth 	prevMonth�D 0 currdate currDate�C 0 	totaldays 	totalDays� �B�A�@�?�>�=�<�;�:�9�8�7
�B 
long
�A 
year�@ �? �> �= �< �; �: 
�9 �8 �7 �I ?��&kE�O�l  ��,�#j  �E�Y �E�Y �km������v  �E�Y �E�O�\ �6��5�4���3�6  0 getweatherdate getWeatherDate�5 �2��2 �  �1�1 0 listdate listDate�4  � �0�/�.�0 0 listdate listDate�/ 0 weatherdate weatherDate�. 0 amonth aMonth� �-�,�+�*�)�(�'�&
�- .misccurdldt    ��� null
�, 
time
�+ 
cobj
�* 
day 
�) 
mnth
�( 
long�' 
�& 
hour�3 R*j  E�O���,E�O��k/��, "��,�&kE�O��  
k��,FY ���,FY hO��k/��,FO��l/��,FO�] �%��$�#���"
�% .aevtoappnull  �   � ****� k    1��  ��  ��  (��  6��  K��  V��  d��  p��  ���  ���  �� �� 8�� C�� Q�� [�� b�� k�� v�� {�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� �� !�� -�� ��� ��� y�� ~�� �� !�� .�� 6�� @�!�!  �$  �#  � � ����  0 w  � 0 cal  � 0 f  � 0 i  � ��� $���� 4�� ;� R b��� x | � � � � � � � � � � � � � � � � � � � ��� � � � � � ��� ����
?O�	�������r�� ����������� ����Ebdfx�������������������������������!������������t��������������������������������o��%����������������
� .misccurdldt    ��� null� 0 curdate curDate
� 
ascr
� 
txdl
� afdrdocs
� .earsffdralis        afdr
� 
TEXT� 0 thehtmlpath theHTMLpath� 0 thehtmlstring theHTMLstring� 0 ascript aScript
� 
file
� .sysodsct****        scpt� � 00 possibleweathercolumns possibleWeatherColumns� � .0 currentweathercolumns currentWeatherColumns
� 
plst� $0 weathercondition weatherCondition
�
 .ascrcmnt****      � ****�	 0 textfile textFile
� .rdwrread****        ****
� 
cpar� "0 weatherinfolist weatherInfoList
� 
ret 
� 
citm
� 
list� 0 templist tempList
� 
kocl
�  
cobj
�� .corecnte****       ****�� 0 calinfolist calInfoList������ 0 
bubblesort 
bubbleSort�� 0 addbackground addBackground�� 00 addweathertobackground addWeatherToBackground�� 0 
folderpath 
folderPath
�� 
cfol
�� 
from
�� 
to  �� 
�� .sysorandnmbr    ��� nmbr
�� 
pnam��  0 backgroundname backgroundName�� "0 addcolumntitles addColumnTitles�� 0 
checkempty 
checkEmpty
�� 
ctxt�� 
�� 0 
shrinklist 
shrinkList��  0 getweatherdate getWeatherDate�� 0 wdate wDate�� 0 	startdate 	startDate
�� 
ldt 
�� 
leng�� 0 ongoinglist ongoingList
�� 
bool
�� 
long�� 0 midnight midNight�� 0 	ftablerow 	fTableRow�� 0 colcount colCount�� 0 
eventadded 
eventAdded�� &0 addweathercolumns addWeatherColumns��  0 addsecondevent addSecondEvent�� 0 weatherdate weatherDate�� 0 enddate endDate
�� 
day 
�� 
hour
�� .sysoexecTEXT���     TEXT
�� 
perm
�� .rdwropenshor       file�� 0 pathnum pathNum
�� 
refn
�� 
as  
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�"2*j  E�O�kv��,FO�j �%�&E�O�E�O�kv��,FO�j �%�&E�O*��/j Oa a a a a a a a a a a a a a a a  a !a "a #a $a %a &a 'vE` (Oa )a *a +a ,a -a .a /vE` 0O�j a 1%�&E�O*��/a 2_ 0kvl E` 3O_ 3j 4Oa 5kv��,FO�j a 6%�&E` 7O*�_ 7/j 8a 9-E` :O_ ;��,FO_ :a <-a =&E` >Oa ?kv��,FOjvE` :O (_ >a <-[a @a Al Bkh  �a <-_ :6F[OY��Oa Ckv��,FO�j a D%�&E` 7O*�_ 7/j 8a 9-E` EO_ ;��,FO_ E[a <\[Zk\Za F2a =&E` EOa Gkv��,FOjvE` >O (_ Ea <-[a @a Al Bkh �a <-_ >6F[OY��O*_ >k+ HE` EO�a I%�&_ ;%E�OeE` JOeE` KO_ Je  ��a L%�&_ ;%E�O_ Ke  "�a M%_ 3%a N%_ 3%a O%�&_ ;%E�Y oa Pkv��,FO�j a Q%�&E` ROa S 0*a T_ R/�*a Uka V*a T_ R/�-j Ba W X/a Y,E` ZUO�a [%_ Z%a \%_ Z%a ]%�&_ ;%E�Y �a ^%�&_ ;%E�O�*j+ _%�&_ ;%E�O*_ Ek+ `f  � [hZ_ Ea Ak/a Al/a a ?�a b%_ Ea Ak/a Al/[a c\[Za d\Zi2%a e%�&_ ;%E�O*_ Ek+ fE` EY [OY��O xhZ*_ :a Ak/k+ gE` hO_ Ea Ak/a Ak/E` iO*a j_ i/E` iO_ i_ h 5_ Ea k,k  jvE` EY _ E[a A\[Zl\Zi2E` EOa lj 4Y [OY��Y hOjvE` mO7hZ*_ :k+ `e 	 *_ Ek+ `e a n& Y -*_ :k+ `e 	 *_ Ek+ `f a n& a oj 4OY hO_ :a Ak/a Al/a p&E` qO_ qj  ]a r�&E` sO_ 0a A-j BE` tO k_ tkh _ sa u%E` s[OY��O_ sa v%�&E` sO�_ s%_ ;%E�O_ sj 4Y hOfE` wO*_ mk+ `f  � uk_ mj Bkh a xj 4O_ wf  /�*_ :a Ak/_ ma A�/a Aa W/l+ y%_ ;%E�OeE` wY &�*_ :a Ak/_ ma A�/a Aa W/l+ z%_ ;%E�[OY��OjvE` >O*_ :a Ak/k+ gE` {O Nk_ mj Bkh _ ma A�/a <m/E` |O*a j_ |/E` |O_ |_ { _ ma A�/_ >6FY h[OY��O_ >E` mY hO*_ Ek+ `f " �hZ*_ Ek+ `e  Y �_ Ea Ak/a Al/a }	 3*a j_ Ea Ak/a Ak/E/a ~,a p&_ :a Ak/a Ak/a p& a n& Ja j 4O�*_ :a Ak/_ Ea Ak/a Al/[a c\[Za d\Zi2l+ z%_ ;%E�O*_ Ek+ fE` EY [OY�ZOohZ*_ Ek+ `e  YW*a j_ Ea Ak/a Ak/E/a ~,_ :a Ak/a Ak/a p& 	 a*a j_ Ea Ak/a Ak/E/a �,_ :a Ak/a Al/a p&	 1*a j_ Ea Ak/a Ak/E/a �,_ :a Ak/a Al/a p&ka n&a n& �a �j 4O_ wf  /�*_ :a Ak/_ Ea Ak/a Aa W/l+ y%_ ;%E�OeE` wY &�*_ :a Ak/_ Ea Ak/a Aa W/l+ z%_ ;%E�O_ Ea Ak/a <m/E` |O*a j_ |/E` |O*_ :a Ak/k+ gE` {O_ |_ { a �j 4O_ Ea Ak/_ m6FY hO*_ Ek+ fE` EY [OY��Y hO_ wf  #a �j 4O�*_ :a Ak/fl+ y%_ ;%E�Y hO*_ :k+ fE` :[OY��O�a �%�&_ ;%E�Oa �j �O�a �el �E` �O�a �*��/a ��a W �O_ �j � ascr  ��ޭ