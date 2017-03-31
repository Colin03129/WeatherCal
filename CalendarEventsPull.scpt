FasdUAS 1.101.10   ��   ��    k             l      ��  ��   xr	Description: This is a script to output the next 72 hours worth of events from your calendar into a text file
	Purpose:
			- pulls non-recurring events and adds them to a string
			- goes through all recurring events and adds the events recurring in the next 72 hours to a string
			- saves the string to a text file after deleting any previous copies of the text file
     � 	 	� 	 D e s c r i p t i o n :   T h i s   i s   a   s c r i p t   t o   o u t p u t   t h e   n e x t   7 2   h o u r s   w o r t h   o f   e v e n t s   f r o m   y o u r   c a l e n d a r   i n t o   a   t e x t   f i l e 
 	 P u r p o s e : 
 	 	 	 -   p u l l s   n o n - r e c u r r i n g   e v e n t s   a n d   a d d s   t h e m   t o   a   s t r i n g 
 	 	 	 -   g o e s   t h r o u g h   a l l   r e c u r r i n g   e v e n t s   a n d   a d d s   t h e   e v e n t s   r e c u r r i n g   i n   t h e   n e x t   7 2   h o u r s   t o   a   s t r i n g 
 	 	 	 -   s a v e s   t h e   s t r i n g   t o   a   t e x t   f i l e   a f t e r   d e l e t i n g   a n y   p r e v i o u s   c o p i e s   o f   t h e   t e x t   f i l e 
   
  
 l     ��������  ��  ��        l     ��  ��    , &--------Declarations------------------     �   L - - - - - - - - D e c l a r a t i o n s - - - - - - - - - - - - - - - - - -      l     ��  ��    . (----------------------------------------     �   P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��������  ��  ��        l         r         l     ����  I    ������
�� .misccurdldt    ��� null��  ��  ��  ��    o      ���� 0 	todaydate 	todayDate   today's date and time     �     * t o d a y ' s   d a t e   a n d   t i m e   ! " ! l    #���� # r     $ % $ [     & ' & o    	���� 0 	todaydate 	todayDate ' l  	  (���� ( ]   	  ) * ) ]   	  + , + m   	 
����  , m   
 ���� < * m    ���� <��  ��   % o      ���� 0 	tomordate 	tomorDate��  ��   "  - . - l    /���� / r     0 1 0 [     2 3 2 o    ���� 0 	todaydate 	todayDate 3 l    4���� 4 ]     5 6 5 ]     7 8 7 m    ���� 0 8 m    ���� < 6 m    ���� <��  ��   1 o      ���� 0 
seconddate 
secondDate��  ��   .  9 : 9 l   % ; < = ; r    % > ? > [    # @ A @ o    ���� 0 	todaydate 	todayDate A l   " B���� B ]    " C D C ]      E F E m    ���� H F m    ���� < D m     !���� <��  ��   ? o      ���� 0 	thirddate 	thirdDate < 0 *add hours till we get to 72 hours from now    = � G G T a d d   h o u r s   t i l l   w e   g e t   t o   7 2   h o u r s   f r o m   n o w :  H I H l     ��������  ��  ��   I  J K J l  & - L���� L r   & - M N M \   & + O P O o   & '���� 0 	todaydate 	todayDate P l  ' * Q���� Q n   ' * R S R 1   ( *��
�� 
time S o   ' (���� 0 	todaydate 	todayDate��  ��   N o      ���� 0 todayday todayDay��  ��   K  T U T l  . 5 V���� V r   . 5 W X W \   . 3 Y Z Y o   . /���� 0 	tomordate 	tomorDate Z l  / 2 [���� [ n   / 2 \ ] \ 1   0 2��
�� 
time ] o   / 0���� 0 	tomordate 	tomorDate��  ��   X o      ���� 0 tomorday tomorDay��  ��   U  ^ _ ^ l  6 = `���� ` r   6 = a b a \   6 ; c d c o   6 7���� 0 
seconddate 
secondDate d l  7 : e���� e n   7 : f g f 1   8 :��
�� 
time g o   7 8���� 0 
seconddate 
secondDate��  ��   b o      ���� 0 	secondday 	secondDay��  ��   _  h i h l  > E j���� j r   > E k l k \   > C m n m o   > ?���� 0 	thirddate 	thirdDate n l  ? B o���� o n   ? B p q p 1   @ B��
�� 
time q o   ? @���� 0 	thirddate 	thirdDate��  ��   l o      ���� 0 thirdday thirdDay��  ��   i  r s r l     ��������  ��  ��   s  t u t l  F [ v w x v r   F [ y z y n   F W { | { 7  K W�� } ~
�� 
ctxt } m   Q S����  ~ m   T V����  | l  F K ����  c   F K � � � n   F I � � � m   G I��
�� 
wkdy � o   F G���� 0 	todaydate 	todayDate � m   I J��
�� 
TEXT��  ��   z o      ���� 0 todaywd todayWd w  today's day of the week    x � � � . t o d a y ' s   d a y   o f   t h e   w e e k u  � � � l  \ q ����� � r   \ q � � � n   \ m � � � 7  a m�� � �
�� 
ctxt � m   g i����  � m   j l����  � l  \ a ����� � c   \ a � � � n   \ _ � � � m   ] _��
�� 
wkdy � o   \ ]���� 0 	tomordate 	tomorDate � m   _ `��
�� 
TEXT��  ��   � o      ���� 0 tomorwd tomorWd��  ��   �  � � � l  r � ����� � r   r � � � � n   r � � � � 7  w ��� � �
�� 
ctxt � m   } ����  � m   � �����  � l  r w ����� � c   r w � � � n   r u � � � m   s u��
�� 
wkdy � o   r s���� 0 
seconddate 
secondDate � m   u v��
�� 
TEXT��  ��   � o      ���� 0 secondwd secondWd��  ��   �  � � � l  � � ����� � r   � � � � � n   � � � � � 7  � ��� � �
�� 
ctxt � m   � �����  � m   � �����  � l  � � ����� � c   � � � � � n   � � � � � m   � ���
�� 
wkdy � o   � ����� 0 	thirddate 	thirdDate � m   � ���
�� 
TEXT��  ��   � o      ���� 0 thirdwd thirdWd��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � - '--------Functions/Subroutines----------    � � � � N - - - - - - - - F u n c t i o n s / S u b r o u t i n e s - - - - - - - - - - �  � � � l     �� � ���   � 1 +-------------------------------------------    � � � � V - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l     �������  ��  �   �  � � � l     �~ � ��~   � ; 5Function gets the date of the previous Sunday morning    � � � � j F u n c t i o n   g e t s   t h e   d a t e   o f   t h e   p r e v i o u s   S u n d a y   m o r n i n g �  � � � i      � � � I      �} ��|�} &0 getprevioussunday getPreviousSunday �  ��{ � o      �z�z 0 thedate theDate�{  �|   � k     � � �  � � � r      � � � c      � � � n      � � � m    �y
�y 
wkdy � o     �x�x 0 thedate theDate � m    �w
�w 
TEXT � o      �v�v 0 theweekdate theWeekDate �  � � � Z    � � � � � � l    ��u�t � =     � � � o    	�s�s 0 theweekdate theWeekDate � m   	 
 � � � � �  M o n d a y�u  �t   � r     � � � \     � � � \     � � � o    �r�r 0 thedate theDate � l    ��q�p � n     � � � 1    �o
�o 
time � o    �n�n 0 thedate theDate�q  �p   � l    ��m�l � ]     � � � m    �k�k  � 1    �j
�j 
days�m  �l   � o      �i�i 0 	thesunday 	theSunday �  � � � l    ��h�g � =     � � � o    �f�f 0 theweekdate theWeekDate � m     � � � � �  T u e s d a y�h  �g   �  � � � r   " - � � � \   " + � � � \   " ' � � � o   " #�e�e 0 thedate theDate � l  # & ��d�c � n   # & � � � 1   $ &�b
�b 
time � o   # $�a�a 0 thedate theDate�d  �c   � l  ' * ��`�_ � ]   ' * � � � m   ' (�^�^  � 1   ( )�]
�] 
days�`  �_   � o      �\�\ 0 	thesunday 	theSunday �  � � � l  0 3 ��[�Z � =   0 3   o   0 1�Y�Y 0 theweekdate theWeekDate m   1 2 �  W e d n e s d a y�[  �Z   �  r   6 A \   6 ?	 \   6 ;

 o   6 7�X�X 0 thedate theDate l  7 :�W�V n   7 : 1   8 :�U
�U 
time o   7 8�T�T 0 thedate theDate�W  �V  	 l  ; >�S�R ]   ; > m   ; <�Q�Q  1   < =�P
�P 
days�S  �R   o      �O�O 0 	thesunday 	theSunday  l  D G�N�M =   D G o   D E�L�L 0 theweekdate theWeekDate m   E F �  T h u r s d a y�N  �M    r   J U \   J S \   J O  o   J K�K�K 0 thedate theDate  l  K N!�J�I! n   K N"#" 1   L N�H
�H 
time# o   K L�G�G 0 thedate theDate�J  �I   l  O R$�F�E$ ]   O R%&% m   O P�D�D & 1   P Q�C
�C 
days�F  �E   o      �B�B 0 	thesunday 	theSunday '(' l  X [)�A�@) =   X [*+* o   X Y�?�? 0 theweekdate theWeekDate+ m   Y Z,, �--  F r i d a y�A  �@  ( ./. r   ^ i010 \   ^ g232 \   ^ c454 o   ^ _�>�> 0 thedate theDate5 l  _ b6�=�<6 n   _ b787 1   ` b�;
�; 
time8 o   _ `�:�: 0 thedate theDate�=  �<  3 l  c f9�9�89 ]   c f:;: m   c d�7�7 ; 1   d e�6
�6 
days�9  �8  1 o      �5�5 0 	thesunday 	theSunday/ <=< l  l o>�4�3> =   l o?@? o   l m�2�2 0 theweekdate theWeekDate@ m   m nAA �BB  S a t u r d a y�4  �3  = C�1C r   r }DED \   r {FGF \   r wHIH o   r s�0�0 0 thedate theDateI l  s vJ�/�.J n   s vKLK 1   t v�-
�- 
timeL o   s t�,�, 0 thedate theDate�/  �.  G l  w zM�+�*M ]   w zNON m   w x�)�) O 1   x y�(
�( 
days�+  �*  E o      �'�' 0 	thesunday 	theSunday�1   � l  � �PQRP r   � �STS \   � �UVU o   � ��&�& 0 thedate theDateV l  � �W�%�$W n   � �XYX 1   � ��#
�# 
timeY o   � ��"�" 0 thedate theDate�%  �$  T o      �!�! 0 	thesunday 	theSundayQ < 6It's Sunday or we are no longer using 7 days in a week   R �ZZ l I t ' s   S u n d a y   o r   w e   a r e   n o   l o n g e r   u s i n g   7   d a y s   i n   a   w e e k � [� [ L   � �\\ o   � ��� 0 	thesunday 	theSunday�    � ]^] l     ����  �  �  ^ _`_ l     �ab�  a D >Function determines the number of months since starting months   b �cc | F u n c t i o n   d e t e r m i n e s   t h e   n u m b e r   o f   m o n t h s   s i n c e   s t a r t i n g   m o n t h s` ded i    fgf I      �h�� 0 getmonthdif getMonthDifh iji o      �� 0 	startdate 	startDatej k�k o      �� 0 currentdate currentDate�  �  g k     .ll mnm r     opo c     qrq n     sts m    �
� 
mntht o     �� 0 	startdate 	startDater m    �
� 
longp o      �� 0 startmonthint startMonthIntn uvu r    wxw c    yzy n    {|{ 1   	 �
� 
year| o    	�� 0 	startdate 	startDatez m    �
� 
longx o      �� 0 startyearint startYearIntv }~} l   ����  �  �  ~ � r    ��� c    ��� n    ��� m    �

�
 
mnth� o    �	�	 0 currentdate currentDate� m    �
� 
long� o      �� 0 currmonthint currMonthInt� ��� r    ��� c    ��� n    ��� 1    �
� 
year� o    �� 0 currentdate currentDate� m    �
� 
long� o      �� 0 curryearint currYearInt� ��� l     ��� �  �  �   � ��� r     +��� [     )��� l    #������ \     #��� o     !���� 0 currmonthint currMonthInt� o   ! "���� 0 startmonthint startMonthInt��  ��  � l  # (������ ]   # (��� l  # &������ \   # &��� o   # $���� 0 curryearint currYearInt� o   $ %���� 0 startyearint startYearInt��  ��  � m   & '���� ��  ��  � o      ���� 0 thedif theDif� ���� L   , .�� o   , -���� 0 thedif theDif��  e ��� l     ��������  ��  ��  � ��� l     ������  � q kFunction gives day of month that is set by a position into the days, weekdays, or weekend days of the month   � ��� � F u n c t i o n   g i v e s   d a y   o f   m o n t h   t h a t   i s   s e t   b y   a   p o s i t i o n   i n t o   t h e   d a y s ,   w e e k d a y s ,   o r   w e e k e n d   d a y s   o f   t h e   m o n t h� ��� i    ��� I      �������  0 getmonthposday getMonthPosDay� ��� o      ���� 0 postype posType� ��� o      ���� 0 	posnumber 	posNumber� ���� o      ���� 0 currdate currDate��  ��  � k    :�� ��� l    ���� r     ��� c     ��� o     ���� 0 	posnumber 	posNumber� m    ��
�� 
long� o      ���� 0 	posnumber 	posNumber� % converting from text to integer   � ��� > c o n v e r t i n g   f r o m   t e x t   t o   i n t e g e r� ��� r    ��� c    ��� n    	��� m    	��
�� 
mnth� o    ���� 0 currdate currDate� m   	 
��
�� 
long� o      ���� 0 themonth theMonth� ��� Z    A����� l   ������ =    ��� o    ���� 0 themonth theMonth� m    ���� ��  ��  � Z    '������ l   ������ =    ��� `    ��� l   ������ n    ��� 1    ��
�� 
year� o    ���� 0 currdate currDate��  ��  � m    ���� � m    ����  ��  ��  � r    !��� m    ���� � o      ���� 0 	totaldays 	totalDays��  � r   $ '��� m   $ %���� � o      ���� 0 	totaldays 	totalDays� ��� l  * 5������ =   * 5��� o   * +���� 0 themonth theMonth� J   + 4�� ��� m   + ,���� � ��� m   , -���� � ��� m   - .���� � ��� m   . /���� � ��� m   / 0���� � ��� m   0 1���� 
� ���� m   1 2���� ��  ��  ��  � ���� r   8 ;��� m   8 9���� � o      ���� 0 	totaldays 	totalDays��  � r   > A��� m   > ?���� � o      ���� 0 	totaldays 	totalDays� ��� r   B Q��� \   B O��� [   B K��� o   B C���� 0 currdate currDate� l  C J������ ]   C J� � l  C H���� \   C H o   C D���� 0 	totaldays 	totalDays l  D G���� n   D G 1   E G��
�� 
day  o   D E���� 0 currdate currDate��  ��  ��  ��    1   H I��
�� 
days��  ��  � l  K N���� n   K N	 1   L N��
�� 
time	 o   K L���� 0 currdate currDate��  ��  � o      ���� 0 lastday lastDay� 

 l  R R����   u olast day of month in date format, calculated from inputed curr date (there is probably a better way to do this)    � � l a s t   d a y   o f   m o n t h   i n   d a t e   f o r m a t ,   c a l c u l a t e d   f r o m   i n p u t e d   c u r r   d a t e   ( t h e r e   i s   p r o b a b l y   a   b e t t e r   w a y   t o   d o   t h i s )  r   R [ c   R Y n   R W m   S W��
�� 
wkdy o   R S���� 0 lastday lastDay m   W X��
�� 
long o      ���� 0 
lastdayint 
lastDayInt  r   \ k \   \ i \   \ e o   \ ]���� 0 currdate currDate l  ] d���� ]   ] d !  l  ] b"����" \   ] b#$# l  ] `%����% n   ] `&'& 1   ^ `��
�� 
day ' o   ] ^���� 0 currdate currDate��  ��  $ m   ` a���� ��  ��  ! 1   b c��
�� 
days��  ��   l  e h(����( n   e h)*) 1   f h��
�� 
time* o   e f���� 0 currdate currDate��  ��   o      ���� 0 firstofmonth firstOfMonth +,+ l  l u-./- r   l u010 c   l s232 n   l q454 m   m q��
�� 
wkdy5 o   l m���� 0 firstofmonth firstOfMonth3 m   q r��
�� 
long1 o      ���� 0 firstday firstDay.  We = 4, Th = 5 ...   / �66 $ W e   =   4 ,   T h   =   5   . . ., 787 l  v v��������  ��  ��  8 9:9 Z   v7;<=>; l  v y?����? =   v y@A@ o   v w���� 0 postype posTypeA m   w x���� ��  ��  < l  |BCDB k   |EE FGF I  | ���H��
�� .ascrcmnt****      � ****H m   | II �JJ  P O S 2��  G KLK l  � ���MN��  M # check if positive or negative   N �OO : c h e c k   i f   p o s i t i v e   o r   n e g a t i v eL PQP Z   �RS��TR l  � �U����U =   � �VWV o   � ����� 0 	posnumber 	posNumberW m   � ���������  ��  S l  � �XYZX Z   � �[\��][ l  � �^����^ =   � �_`_ o   � ����� 0 
lastdayint 
lastDayInt` m   � ����� ��  ��  \ l  � �abca r   � �ded o   � ����� 0 	totaldays 	totalDayse o      ���� 0 thedoi theDOIb 8 2if the last day is Saturday, return number of days   c �ff d i f   t h e   l a s t   d a y   i s   S a t u r d a y ,   r e t u r n   n u m b e r   o f   d a y s��  ] k   � �gg hih r   � �jkj l  � �l���l \   � �mnm o   � ��~�~ 0 	totaldays 	totalDaysn l  � �o�}�|o \   � �pqp o   � ��{�{ 0 
lastdayint 
lastDayIntq m   � ��z�z �}  �|  ��  �  k o      �y�y 0 thedoi theDOIi r�xr l  � ��wst�w  s = 7subtracting days from the month till we get to a Sunday   t �uu n s u b t r a c t i n g   d a y s   f r o m   t h e   m o n t h   t i l l   w e   g e t   t o   a   S u n d a y�x  Y &  start counting from end of month   Z �vv @ s t a r t   c o u n t i n g   f r o m   e n d   o f   m o n t h��  T l  �wxyw k   �zz {|{ r   � �}~} m   � ��v�v  ~ o      �u�u &0 weekenddaycounter weekendDayCounter| � r   � ���� m   � ��t�t  � o      �s�s  0 weekdaycounter weekDayCounter� ��� Z   � ������ l  � ���r�q� =   � ���� o   � ��p�p 0 firstday firstDay� m   � ��o�o �r  �q  � l  � ����� Z   � ����n�� l  � ���m�l� =   � ���� o   � ��k�k 0 	posnumber 	posNumber� m   � ��j�j �m  �l  � r   � ���� m   � ��i�i � o      �h�h &0 weekenddaycounter weekendDayCounter�n  � r   � ���� m   � ��g�g � o      �f�f &0 weekenddaycounter weekendDayCounter� $ first day of month is Saturday   � ��� < f i r s t   d a y   o f   m o n t h   i s   S a t u r d a y� ��� l  � ���e�d� =   � ���� o   � ��c�c 0 firstday firstDay� m   � ��b�b �e  �d  � ��a� l  � ����� r   � ���� m   � ��`�` � o      �_�_ &0 weekenddaycounter weekendDayCounter� " first day of month is Sunday   � ��� 8 f i r s t   d a y   o f   m o n t h   i s   S u n d a y�a  � l  � ����� l  � ����� r   � ���� l  � ���^�]� \   � ���� m   � ��\�\ � o   � ��[�[ 0 firstday firstDay�^  �]  � o      �Z�Z  0 weekdaycounter weekDayCounter� # # of weekdays before Saturday   � ��� : #   o f   w e e k d a y s   b e f o r e   S a t u r d a y� # first day of month is weekday   � ��� : f i r s t   d a y   o f   m o n t h   i s   w e e k d a y� ��Y� Z   ����X�� l  � ���W�V� =   � ���� o   � ��U�U &0 weekenddaycounter weekendDayCounter� o   � ��T�T 0 	posnumber 	posNumber�W  �V  � r   � ���� o   � ��S�S &0 weekenddaycounter weekendDayCounter� o      �R�R 0 thedoi theDOI�X  � l  ����� k   ��� ��� T   ��� k   ��� ��� r   � ���� [   � ���� o   � ��Q�Q &0 weekenddaycounter weekendDayCounter� m   � ��P�P � o      �O�O &0 weekenddaycounter weekendDayCounter� ��� Z   � ����N�M� l  � ���L�K� =   � ���� o   � ��J�J &0 weekenddaycounter weekendDayCounter� o   � ��I�I 0 	posnumber 	posNumber�L  �K  �  S   � ��N  �M  � ��� r   � ���� [   � ���� o   � ��H�H &0 weekenddaycounter weekendDayCounter� m   � ��G�G � o      �F�F &0 weekenddaycounter weekendDayCounter� ��� Z   ����E�D� l  � ��C�B� =   � ��� o   � ��A�A &0 weekenddaycounter weekendDayCounter� o   � ��@�@ 0 	posnumber 	posNumber�C  �B  �  S  �E  �D  � ��?� r  	��� [  	��� o  	
�>�>  0 weekdaycounter weekDayCounter� m  
�=�= � o      �<�<  0 weekdaycounter weekDayCounter�?  � ��;� r  ��� [  ��� o  �:�: &0 weekenddaycounter weekendDayCounter� o  �9�9  0 weekdaycounter weekDayCounter� o      �8�8 0 thedoi theDOI�;  � / )Need to continue cycling through the week   � ��� R N e e d   t o   c o n t i n u e   c y c l i n g   t h r o u g h   t h e   w e e k�Y  x ( "start counting from start of month   y ��� D s t a r t   c o u n t i n g   f r o m   s t a r t   o f   m o n t hQ ��7� l �6�5�4�6  �5  �4  �7  C # counting through weekend days   D ��� : c o u n t i n g   t h r o u g h   w e e k e n d   d a y s= ��� l !��3�2� =  !��� o  �1�1 0 postype posType� m   �0�0 �3  �2  � ��� l $���� k  $�� ��� I $+�/��.
�/ .ascrcmnt****      � ****� m  $'�� ���  P O S 5�.  � ��� l ,,�-���-  � # check if positive or negative   � �   : c h e c k   i f   p o s i t i v e   o r   n e g a t i v e�  Z  ,�, l ,/�+�* =  ,/ o  ,-�)�) 0 	posnumber 	posNumber m  -.�(�(���+  �*   l 2Y	
	 Z  2Y l 2=�'�& E 2= J  2;  m  23�%�%   m  34�$�$   m  45�#�#   m  56�"�"  �! m  69� �  �!   o  ;<�� 0 
lastdayint 
lastDayInt�'  �&   l @C r  @C !  o  @A�� 0 	totaldays 	totalDays! o      �� 0 thedoi theDOI 6 0if last DoM is weekday, return last day of month    �"" ` i f   l a s t   D o M   i s   w e e k d a y ,   r e t u r n   l a s t   d a y   o f   m o n t h #$# l FI%��% =  FI&'& o  FG�� 0 
lastdayint 
lastDayInt' m  GH�� �  �  $ (�( l LQ)*+) r  LQ,-, l LO.��. \  LO/0/ o  LM�� 0 	totaldays 	totalDays0 m  MN�� �  �  - o      �� 0 thedoi theDOI* 5 /if last DoM is saturday, return previous Friday   + �11 ^ i f   l a s t   D o M   i s   s a t u r d a y ,   r e t u r n   p r e v i o u s   F r i d a y�   l TY2342 r  TY565 l TW7��7 \  TW898 o  TU�� 0 	totaldays 	totalDays9 m  UV�� �  �  6 o      �� 0 thedoi theDOI3 3 -if last DoM is sunday, return previous Friday   4 �:: Z i f   l a s t   D o M   i s   s u n d a y ,   r e t u r n   p r e v i o u s   F r i d a y
 &  start counting from end of month    �;; @ s t a r t   c o u n t i n g   f r o m   e n d   o f   m o n t h�,   l \<=>< k  \?? @A@ r  \_BCB m  \]��  C o      �� &0 weekenddaycounter weekendDayCounterA DED r  `cFGF m  `a��  G o      �
�
  0 weekdaycounter weekDayCounterE HIH Z  d�JKLMJ l dgN�	�N =  dgOPO o  de�� 0 firstday firstDayP m  ef�� �	  �  K l jmQRSQ r  jmTUT m  jk�� U o      �� &0 weekenddaycounter weekendDayCounterR  It's Saturday   S �VV  I t ' s   S a t u r d a yL WXW l psY��Y =  psZ[Z o  pq�� 0 firstday firstDay[ m  qr� �  �  �  X \��\ l vy]^_] r  vy`a` m  vw���� a o      ���� &0 weekenddaycounter weekendDayCounter^  It's Sunday   _ �bb  I t ' s   S u n d a y��  M l |�cdec k  |�ff ghg l |�ijki T  |�ll l ��mnom k  ��pp qrq r  ��sts [  ��uvu o  ������  0 weekdaycounter weekDayCounterv m  ������ t o      ����  0 weekdaycounter weekDayCounterr w��w Z  ��xy����x l ��z����z G  ��{|{ l ��}����} =  ��~~ o  ������ 0 	posnumber 	posNumber o  ������  0 weekdaycounter weekDayCounter��  ��  | l �������� =  ����� [  ����� o  ������ 0 firstday firstDay� o  ������  0 weekdaycounter weekDayCounter� m  ������ ��  ��  ��  ��  y  S  ����  ��  ��  n > 8keep repeating until we reach posNumber or reach weekend   o ��� p k e e p   r e p e a t i n g   u n t i l   w e   r e a c h   p o s N u m b e r   o r   r e a c h   w e e k e n dj   at first weekend or done   k ��� 2   a t   f i r s t   w e e k e n d   o r   d o n eh ���� Z  �������� l �������� =  ����� o  ������ 0 	posnumber 	posNumber� o  ������  0 weekdaycounter weekDayCounter��  ��  � r  ����� o  ������  0 weekdaycounter weekDayCounter� o      ���� 0 thedoi theDOI��  � l ������ r  ����� m  ������ � o      ���� &0 weekenddaycounter weekendDayCounter�  still counting   � ���  s t i l l   c o u n t i n g��  d - 'First DoM is weekday (2, 3, 4, 5, or 6)   e ��� N F i r s t   D o M   i s   w e e k d a y   ( 2 ,   3 ,   4 ,   5 ,   o r   6 )I ��� l ��������  � 0 *if we need to keep counting, keep counting   � ��� T i f   w e   n e e d   t o   k e e p   c o u n t i n g ,   k e e p   c o u n t i n g� ���� Z  �������� l �������� >  ����� o  ������ 0 	posnumber 	posNumber� o  ������  0 weekdaycounter weekDayCounter��  ��  � T  ��� l ����� k  ��� ��� r  ����� m  ������  � o      ����  0 theweekcounter theWeekCounter� ��� T  ���� l ������ k  ���� ��� r  ����� [  ����� o  ������  0 weekdaycounter weekDayCounter� m  ������ � o      ����  0 weekdaycounter weekDayCounter� ��� r  ����� [  ����� o  ������  0 theweekcounter theWeekCounter� m  ������ � o      ����  0 theweekcounter theWeekCounter� ���� Z  ��������� l �������� G  ����� l �������� =  ����� o  ������ 0 	posnumber 	posNumber� o  ������  0 weekdaycounter weekDayCounter��  ��  � l �������� =  ����� o  ������  0 theweekcounter theWeekCounter� m  ������ ��  ��  ��  ��  �  S  ����  ��  ��  � C =repeat through the week adding days until we get to posNumber   � ��� z r e p e a t   t h r o u g h   t h e   w e e k   a d d i n g   d a y s   u n t i l   w e   g e t   t o   p o s N u m b e r� ��� Z  � ������� l �������� =  ����� o  ������ 0 	posnumber 	posNumber� o  ������  0 weekdaycounter weekDayCounter��  ��  � k  ���� ��� r  ����� [  ����� o  ������  0 weekdaycounter weekDayCounter� o  ������ &0 weekenddaycounter weekendDayCounter� o      ���� 0 thedoi theDOI� ����  S  ����  ��  ��  � ���� r  ��� [  ��� o  ���� &0 weekenddaycounter weekendDayCounter� m  ���� � o      ���� &0 weekenddaycounter weekendDayCounter��  � % keep repeating the weekly cycle   � ��� > k e e p   r e p e a t i n g   t h e   w e e k l y   c y c l e��  ��  ��  = ( "start counting from start of month   > ��� D s t a r t   c o u n t i n g   f r o m   s t a r t   o f   m o n t h ���� l ��������  ��  ��  ��  �  counting through weekdays   � ��� 2 c o u n t i n g   t h r o u g h   w e e k d a y s� ��� l ������ =  ��� o  ���� 0 postype posType� m  ���� ��  ��  � ���� l 1���� k  1�� ��� I !�����
�� .ascrcmnt****      � ****� m  �� ���  P O S 7��  � ���� Z  "1������ l "%������ =  "%��� o  "#���� 0 	posnumber 	posNumber� m  #$��������  ��  � r  (+��� o  ()���� 0 	totaldays 	totalDays� o      ���� 0 thedoi theDOI��  � r  .1��� o  ./���� 0 	posnumber 	posNumber� o      ���� 0 thedoi theDOI��  �  counting through days   � ��� * c o u n t i n g   t h r o u g h   d a y s��  > r  47��� m  45����  � o      ���� 0 thedoi theDOI:  ��  l 8: L  8: o  89���� 0 thedoi theDOI  date of interest    �   d a t e   o f   i n t e r e s t��  �  l     ��������  ��  ��   	 l     ��
��  
 Y SFunction gives the first, second, third ... or last MO, TU, WE, TH ... of the month    � � F u n c t i o n   g i v e s   t h e   f i r s t ,   s e c o n d ,   t h i r d   . . .   o r   l a s t   M O ,   T U ,   W E ,   T H   . . .   o f   t h e   m o n t h	  i     I      ������ "0 getmonthweekday getMonthWeekday  o      ���� 0 	recurrday 	recurrDay �� o      ���� 0 currdate currDate��  ��   k    z  r      c      n      m    ��
�� 
mnth o     ���� 0 currdate currDate m    ��
�� 
long o      ���� 0 themonth theMonth  Z    ; !"#  l   $����$ =    %&% o    	���� 0 themonth theMonth& m   	 
���� ��  ��  ! Z    !'(��)' l   *����* =    +,+ `    -.- l   /����/ n    010 1    ��
�� 
year1 o    ���� 0 currdate currDate��  ��  . m    ���� , m    ����  ��  ��  ( r    232 m    ���� 3 o      ���� 0 	totaldays 	totalDays��  ) r    !454 m    ���� 5 o      ���� 0 	totaldays 	totalDays" 676 l  $ /8��~8 E  $ /9:9 J   $ -;; <=< m   $ %�}�} = >?> m   % &�|�| ? @A@ m   & '�{�{ A BCB m   ' (�z�z C DED m   ( )�y�y E FGF m   ) *�x�x 
G H�wH m   * +�v�v �w  : o   - .�u�u 0 themonth theMonth�  �~  7 I�tI r   2 5JKJ m   2 3�s�s K o      �r�r 0 	totaldays 	totalDays�t  # r   8 ;LML m   8 9�q�q M o      �p�p 0 	totaldays 	totalDays NON r   < KPQP \   < IRSR [   < ETUT o   < =�o�o 0 currdate currDateU l  = DV�n�mV ]   = DWXW l  = BY�l�kY \   = BZ[Z o   = >�j�j 0 	totaldays 	totalDays[ l  > A\�i�h\ n   > A]^] 1   ? A�g
�g 
day ^ o   > ?�f�f 0 currdate currDate�i  �h  �l  �k  X 1   B C�e
�e 
days�n  �m  S l  E H_�d�c_ n   E H`a` 1   F H�b
�b 
timea o   E F�a�a 0 currdate currDate�d  �c  Q o      �`�` 0 lastday lastDayO bcb l  L L�_de�_  d u olast day of month in date format, calculated from inputed curr date (there is probably a better way to do this)   e �ff � l a s t   d a y   o f   m o n t h   i n   d a t e   f o r m a t ,   c a l c u l a t e d   f r o m   i n p u t e d   c u r r   d a t e   ( t h e r e   i s   p r o b a b l y   a   b e t t e r   w a y   t o   d o   t h i s )c ghg r   L Uiji c   L Sklk n   L Qmnm m   M Q�^
�^ 
wkdyn o   L M�]�] 0 lastday lastDayl m   Q R�\
�\ 
longj o      �[�[ 0 
lastdayint 
lastDayInth opo r   V eqrq \   V csts \   V _uvu o   V W�Z�Z 0 currdate currDatev l  W ^w�Y�Xw ]   W ^xyx l  W \z�W�Vz \   W \{|{ l  W Z}�U�T} n   W Z~~ 1   X Z�S
�S 
day  o   W X�R�R 0 currdate currDate�U  �T  | m   Z [�Q�Q �W  �V  y 1   \ ]�P
�P 
days�Y  �X  t l  _ b��O�N� n   _ b��� 1   ` b�M
�M 
time� o   _ `�L�L 0 currdate currDate�O  �N  r o      �K�K 0 firstofmonth firstOfMonthp ��� l  f o���� r   f o��� c   f m��� n   f k��� m   g k�J
�J 
wkdy� o   f g�I�I 0 firstofmonth firstOfMonth� m   k l�H
�H 
long� o      �G�G 0 firstday firstDay�  We = 4, Th = 5 ...   � ��� $ W e   =   4 ,   T h   =   5   . . .� ��� l  p p�F�E�D�F  �E  �D  � ��� l  p p�C�B�A�C  �B  �A  � ��� r   p w��� c   p u��� o   p q�@�@ 0 	recurrday 	recurrDay� m   q t�?
�? 
ctxt� o      �>�> 0 	recurrday 	recurrDay� ��� r   x ���� n   x ~��� 4   y ~�=�
�= 
cha � m   | }�<�< � o   x y�;�; 0 	recurrday 	recurrDay� o      �:�: 0 
weeknumber 
weekNumber� ��� r   � ���� m   � ��9
�9 boovfals� o      �8�8 0 isneg isNeg� ��� Z   � ����7�� l  � ���6�5� =   � ���� o   � ��4�4 0 
weeknumber 
weekNumber� m   � ��� ���  -�6  �5  � k   � ��� ��� r   � ���� b   � ���� m   � ��� ���  -� n   � ���� 4   � ��3�
�3 
cha � m   � ��2�2 � o   � ��1�1 0 	recurrday 	recurrDay� o      �0�0 0 
weeknumber 
weekNumber� ��� r   � ���� b   � ���� n   � ���� 4   � ��/�
�/ 
cha � m   � ��.�. � o   � ��-�- 0 	recurrday 	recurrDay� n   � ���� 4   � ��,�
�, 
cha � m   � ��+�+ � o   � ��*�* 0 	recurrday 	recurrDay� o      �)�) 0 	dayofweek 	dayOfWeek� ��(� r   � ���� m   � ��'
�' boovtrue� o      �&�& 0 isneg isNeg�(  �7  � r   � ���� b   � ���� n   � ���� 4   � ��%�
�% 
cha � m   � ��$�$ � o   � ��#�# 0 	recurrday 	recurrDay� n   � ���� 4   � ��"�
�" 
cha � m   � ��!�! � o   � �� �  0 	recurrday 	recurrDay� o      �� 0 	dayofweek 	dayOfWeek� ��� Z   ������ l  � ����� =   � ���� o   � ��� 0 	dayofweek 	dayOfWeek� m   � ��� ���  S U�  �  � r   � ���� m   � ��� � o      �� 0 	dayofweek 	dayOfWeek� ��� l  � ����� =   � ���� o   � ��� 0 	dayofweek 	dayOfWeek� m   � ��� ���  M O�  �  � ��� r   � ���� m   � ��� � o      �� 0 	dayofweek 	dayOfWeek� ��� l  � ����� =   � ���� o   � ��� 0 	dayofweek 	dayOfWeek� m   � ��� ���  T U�  �  � ��� r   � ���� m   � ��� � o      �� 0 	dayofweek 	dayOfWeek� ��� l  � ����� =   � ���� o   � ��� 0 	dayofweek 	dayOfWeek� m   � ��� ���  W E�  �  � ��� r   � �� � m   � ���   o      �� 0 	dayofweek 	dayOfWeek�  l  � ��
�	 =   � � o   � ��� 0 	dayofweek 	dayOfWeek m   � � �  T H�
  �	   	 r   

 m   ��  o      �� 0 	dayofweek 	dayOfWeek	  l �� =   o  �� 0 	dayofweek 	dayOfWeek m  
 �  F R�  �   � r   m  ��  o      � �  0 	dayofweek 	dayOfWeek�  � r   m  ����  o      ���� 0 	dayofweek 	dayOfWeek�  l ��������  ��  ��    Z  w�� l ���� =   !  o  ���� 0 isneg isNeg! m  ��
�� boovtrue��  ��   Z   O"#��$" l  #%����% A   #&'& o   !���� 0 
lastdayint 
lastDayInt' o  !"���� 0 	dayofweek 	dayOfWeek��  ��  # r  &:()( l &8*����* \  &8+,+ \  &--.- o  &'���� 0 	totaldays 	totalDays. l ',/����/ \  ',010 l '*2����2 [  '*343 o  '(���� 0 
lastdayint 
lastDayInt4 m  ()���� ��  ��  1 o  *+���� 0 	dayofweek 	dayOfWeek��  ��  , l -75����5 ]  -7676 m  -.���� 7 l .68����8 \  .69:9 l .4;����; n  .4<=< 4  /4��>
�� 
cha > m  23���� = o  ./���� 0 
weeknumber 
weekNumber��  ��  : m  45���� ��  ��  ��  ��  ��  ��  ) o      ���� 0 thedoi theDOI��  $ r  =O?@? l =MA����A \  =MBCB \  =BDED o  =>���� 0 	totaldays 	totalDaysE l >AF����F \  >AGHG o  >?���� 0 
lastdayint 
lastDayIntH o  ?@���� 0 	dayofweek 	dayOfWeek��  ��  C l BLI����I ]  BLJKJ m  BC���� K l CKL����L \  CKMNM l CIO����O n  CIPQP 4  DI��R
�� 
cha R m  GH���� Q o  CD���� 0 
weeknumber 
weekNumber��  ��  N m  IJ���� ��  ��  ��  ��  ��  ��  @ o      ���� 0 thedoi theDOI��   Z  RwST��US l RUV����V ?  RUWXW o  RS���� 0 firstday firstDayX o  ST���� 0 	dayofweek 	dayOfWeek��  ��  T r  XgYZY [  Xe[\[ [  Xc]^] l X]_����_ \  X]`a` l X[b����b [  X[cdc o  XY���� 0 	dayofweek 	dayOfWeekd m  YZ���� ��  ��  a o  [\���� 0 firstday firstDay��  ��  ^ l ]be����e ]  ]bfgf l ]`h����h \  ]`iji o  ]^���� 0 
weeknumber 
weekNumberj m  ^_���� ��  ��  g m  `a���� ��  ��  \ m  cd���� Z o      ���� 0 thedoi theDOI��  U r  jwklk [  jumnm [  jsopo l jmq����q \  jmrsr o  jk���� 0 	dayofweek 	dayOfWeeks o  kl���� 0 firstday firstDay��  ��  p l mrt����t ]  mruvu l mpw����w \  mpxyx o  mn���� 0 
weeknumber 
weekNumbery m  no���� ��  ��  v m  pq���� ��  ��  n m  st���� l o      ���� 0 thedoi theDOI z��z L  xz{{ o  xy���� 0 thedoi theDOI��   |}| l     ��������  ��  ��  } ~~ l     ������  � L FFunction returns the number of years between startDate and currentDate   � ��� � F u n c t i o n   r e t u r n s   t h e   n u m b e r   o f   y e a r s   b e t w e e n   s t a r t D a t e   a n d   c u r r e n t D a t e ��� i    ��� I      ������� 0 
getyeardif 
getYearDif� ��� o      ���� 0 	startdate 	startDate� ���� o      ���� 0 currentdate currentDate��  ��  � k     �� ��� r     ��� c     ��� n     ��� 1    ��
�� 
year� o     ���� 0 	startdate 	startDate� m    ��
�� 
long� o      ���� 0 startyearint startYearInt� ��� r    ��� c    ��� n    ��� 1   	 ��
�� 
year� o    	���� 0 currentdate currentDate� m    ��
�� 
long� o      ���� 0 curryearint currYearInt� ��� r    ��� l   ������ \    ��� o    ���� 0 curryearint currYearInt� o    ���� 0 startyearint startYearInt��  ��  � o      ���� 0 thedif theDif� ���� L    �� o    ���� 0 thedif theDif��  � ��� l     ��������  ��  ��  � ��� l     ������  � 0 *--------Script----------------------------   � ��� T - - - - - - - - S c r i p t - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ������  � 1 +-------------------------------------------   � ��� V - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ��������  ��  ��  � ��� l     ������  � @ :pulling all events from this calendar into a text document   � ��� t p u l l i n g   a l l   e v e n t s   f r o m   t h i s   c a l e n d a r   i n t o   a   t e x t   d o c u m e n t� ��� l  � ������� r   � ���� J   � �����  � o      �� 0 calinfolist calInfoList��  ��  � ��� l  � ���~�}� r   � ���� m   � ��|
�| boovfals� o      �{�{ 0 eventpresent eventPresent�~  �}  � ��� l  �&��z�y� O   �&��� X   �%��x�� k   � �� ��� r   � ���� m   � ��w
�w boovfals� o      �v�v 0 eventpresent eventPresent� ��� l  � ��u���u  � + %1. Get info from non-recurring events   � ��� J 1 .   G e t   i n f o   f r o m   n o n - r e c u r r i n g   e v e n t s� ��� l  �$���� r   �$��� l  � ��t�s� 6  � ��� l  � ���r�q� n  � ���� 2  � ��p
�p 
wrev� o   � ��o�o 0 c  �r  �q  � G   ���� l  � ���n�m� F   � ���� @  � ���� l  � ���l�k� 1   � ��j
�j 
wr1s�l  �k  � o   � ��i�i 0 	todaydate 	todayDate� A  � ���� l  � ���h�g� 1   � ��f
�f 
wr1s�h  �g  � o   � ��e�e 0 	thirddate 	thirdDate�n  �m  � l  ���d�c� F   ���� F   ���� @  ���� l  ��b�a� 1   �`
�` 
wr1s�b  �a  � o  �_�_ 0 	tomordate 	tomorDate� A 	��� l 
��^�]� 1  
�\
�\ 
wr1s�^  �]  � o  �[�[ 0 	todaydate 	todayDate� =  ��� l ��Z�Y� 1  �X
�X 
wrad�Z  �Y  � m  �W
�W boovtrue�d  �c  �t  �s  � o      �V�V 0 onetimeevents oneTimeEvents� H Bfinds events 72 hours after current time and today's allday events   � ��� � f i n d s   e v e n t s   7 2   h o u r s   a f t e r   c u r r e n t   t i m e   a n d   t o d a y ' s   a l l d a y   e v e n t s� ��� X  %���U�� Z  ;����T � l ;A�S�R n  ;A 1  <@�Q
�Q 
wrad o  ;<�P�P 0 e  �S  �R  � k  Dh  r  DM l DI	�O�N	 n  DI

 1  EI�M
�M 
wr1s o  DE�L�L 0 e  �O  �N   o      �K�K 0 	startdate 	startDate �J r  Nh b  Nc b  N_ b  NY b  NU l NQ�I�H o  NQ�G�G 0 	startdate 	startDate�I  �H   m  QT �  ; m  UX �  A l l   D a y :   l Y^�F�E n  Y^ 1  Z^�D
�D 
wr11 o  YZ�C�C 0 e  �F  �E   o  _b�B
�B 
ret  n         ;  fg  o  cf�A�A 0 calinfolist calInfoList�J  �T    k  k�!! "#" r  kt$%$ l kp&�@�?& n  kp'(' 1  lp�>
�> 
wr1s( o  kl�=�= 0 e  �@  �?  % o      �<�< 0 	startdate 	startDate# )*) r  u~+,+ l uz-�;�:- n  uz./. 1  vz�9
�9 
wr5s/ o  uv�8�8 0 e  �;  �:  , o      �7�7 0 enddate endDate* 0�60 r  �121 b  �343 b  �565 b  �787 b  �9:9 b  �;<; b  �=>= b  �?@? l �A�5�4A o  ��3�3 0 	startdate 	startDate�5  �4  @ m  ��BB �CC  ;> l ��D�2�1D n  ��EFE 1  ���0
�0 
tstrF l ��G�/�.G o  ���-�- 0 	startdate 	startDate�/  �.  �2  �1  < m  ��HH �II  ;: l ��J�,�+J n  ��KLK 1  ���*
�* 
tstrL l ��M�)�(M o  ���'�' 0 enddate endDate�)  �(  �,  �+  8 m  ��NN �OO  ;6 l ��P�&�%P n  ��QRQ 1  ���$
�$ 
wr11R o  ���#�# 0 e  �&  �%  4 o  ���"
�" 
ret 2 n      STS  ;  ��T o  ���!�! 0 calinfolist calInfoList�6  �U 0 e  � o  (+� �  0 onetimeevents oneTimeEvents� UVU l ���WX�  W ' !2. Get info from recurring events   X �YY B 2 .   G e t   i n f o   f r o m   r e c u r r i n g   e v e n t sV Z[Z r  ��\]\ l ��^��^ 6 ��_`_ l ��a��a n ��bcb 2  ���
� 
wrevc o  ���� 0 c  �  �  ` F  ��ded B ��fgf l ��h��h 1  ���
� 
wr1s�  �  g o  ���� 0 	thirddate 	thirdDatee C  ��iji 1  ���
� 
wr15j m  ��kk �ll  F R E Q�  �  ] o      �� $0 recurrenceevents recurrenceEvents[ m�m X  � n�on k  �pp qrq r  ��sts l ��u��u n  ��vwv 1  ���
� 
wr15w o  ���� 0 e  �  �  t o      ��  0 recurrenceinfo recurrenceInfor xyx r  �z{z J  ��|| }�} m  ��~~ �  ;�  { n     ��� 1   �

�
 
txdl� 1  � �	
�	 
ascry ��� r  ��� c  ��� l ���� n ��� 2  	�
� 
citm� o  	��  0 recurrenceinfo recurrenceInfo�  �  � m  �
� 
list� o      �� "0 recurrenceparts recurrenceParts� ��� l ��� �  �  �   � ��� l ������  � H B2.1 If there is an UNTIL/end date, make sure that it hasn't passed   � ��� � 2 . 1   I f   t h e r e   i s   a n   U N T I L / e n d   d a t e ,   m a k e   s u r e   t h a t   i t   h a s n ' t   p a s s e d� ��� r  ��� m  ��
�� boovfals� o      ���� 0 isuntil isUNTIL� ��� Y  V�������� Z  ,Q������� l ,8������ C ,8��� n  ,4��� 4  /4���
�� 
cobj� o  23���� 0 r  � o  ,/���� "0 recurrenceparts recurrenceParts� m  47�� ��� 
 U N T I L��  ��  � k  ;M�� ��� r  ;G��� n  ;C��� 4  >C���
�� 
cobj� o  AB���� 0 r  � o  ;>���� "0 recurrenceparts recurrenceParts� o      ���� (0 recurrencepreuntil recurrencePreUNTIL� ���� r  HM��� m  HI��
�� boovtrue� o      ���� 0 isuntil isUNTIL��  ��  ��  �� 0 r  � m   ���� � I  '�����
�� .corecnte****       ****� o   #���� "0 recurrenceparts recurrenceParts��  ��  � ��� Z  W ������ l W\������ = W\��� o  WZ���� 0 isuntil isUNTIL� m  Z[��
�� boovtrue��  ��  � k  _�� ��� r  _l��� J  _d�� ���� m  _b�� ���  =��  � n     ��� 1  gk��
�� 
txdl� 1  dg��
�� 
ascr� ��� r  m���� c  m}��� n  my��� 4  ty���
�� 
cobj� m  wx���� � l mt������ n mt��� 2  pt��
�� 
citm� o  mp���� (0 recurrencepreuntil recurrencePreUNTIL��  ��  � m  y|��
�� 
ctxt� o      ���� "0 recurrenceuntil recurrenceUntil� ��� r  ����� b  ����� b  ����� b  ����� n  ����� 4  �����
�� 
cha � m  ������ � o  ������ "0 recurrenceuntil recurrenceUntil� n  ����� 4  �����
�� 
cha � m  ������ � o  ������ "0 recurrenceuntil recurrenceUntil� n  ����� 4  �����
�� 
cha � m  ������ � o  ������ "0 recurrenceuntil recurrenceUntil� n  ����� 4  �����
�� 
cha � m  ������ � o  ������ "0 recurrenceuntil recurrenceUntil� o      ���� 0 lastyear lastYear� ��� r  ����� c  ����� b  ����� n  ����� 4  �����
�� 
cha � m  ������ � o  ������ "0 recurrenceuntil recurrenceUntil� n  ����� 4  �����
�� 
cha � m  ������ � o  ������ "0 recurrenceuntil recurrenceUntil� m  ����
�� 
long� o      ���� 0 	lastmonth 	lastMonth� ��� r  ����� c  ����� b  ����� n  ����� 4  �����
�� 
cha � m  ������ � o  ������ "0 recurrenceuntil recurrenceUntil� n  ��� � 4  ����
�� 
cha  m  ������   o  ������ "0 recurrenceuntil recurrenceUntil� m  ����
�� 
long� o      ���� 0 lastday lastDay�  l ����������  ��  ��    l ������   Y Scheck if todays date is before the above day data. Turn above data into date format    � � c h e c k   i f   t o d a y s   d a t e   i s   b e f o r e   t h e   a b o v e   d a y   d a t a .   T u r n   a b o v e   d a t a   i n t o   d a t e   f o r m a t 	
	 s  �� o  ������ 0 	todaydate 	todayDate o      ���� 0 lastdate lastDate
  r  �� o  ������ 0 lastday lastDay l     ���� n       1  ����
�� 
day  o  ������ 0 lastdate lastDate��  ��    r  � o  ������ 0 	lastmonth 	lastMonth l     ���� n       m  ��
�� 
mnth o  ����� 0 lastdate lastDate��  ��   �� r   o  
���� 0 lastyear lastYear l     ���� n        1  ��
�� 
year  o  
���� 0 lastdate lastDate��  ��  ��  ��  � l  !"#! r   $%$ [  &'& o  ���� 0 	todaydate 	todayDate' ]  ()( m  ���� ) 1  ��
�� 
hour% o      ���� 0 lastdate lastDate" * $There is no UNTIL date in recurrence   # �** H T h e r e   i s   n o   U N T I L   d a t e   i n   r e c u r r e n c e� +,+ l !!��������  ��  ��  , -.- l !!��/0��  / - '2.2 Checks if event is still reoccuring   0 �11 N 2 . 2   C h e c k s   i f   e v e n t   i s   s t i l l   r e o c c u r i n g. 2��2 Z  !34����3 l !&5����5 A  !&676 o  !"���� 0 	todaydate 	todayDate7 o  "%���� 0 lastdate lastDate��  ��  4 k  )88 9:9 l ))��������  ��  ��  : ;<; l ))��=>��  = B <2.2.1 Get frequency of recurrence, as well as other measures   > �?? x 2 . 2 . 1   G e t   f r e q u e n c y   o f   r e c u r r e n c e ,   a s   w e l l   a s   o t h e r   m e a s u r e s< @A@ r  )nBCB J  )2DD EFE m  )*��
�� boovfalsF GHG m  *+��
�� boovfalsH IJI m  +,��
�� boovfalsJ KLK m  ,-��
�� boovfalsL M��M m  -.��
�� boovfals��  C J      NN OPO o      ���� 0 isinter isInterP QRQ o      ���� 0 isbyday isBYDAYR STS o      ���� 0 isbymonthday isBYMONTHDAYT UVU o      ���� 0 
isbysetpos 
isBYSETPOSV W��W o      ���� 0 	isbymonth 	isBYMONTH��  A XYX Y  oaZ��[\��Z k  \]] ^_^ Z  �`a����` l �b����b C �cdc n  �efe 4  ����g
�� 
cobjg o  ���� 0 r  f o  ��~�~ "0 recurrenceparts recurrencePartsd m  ��hh �ii  F R E Q��  ��  a r  ��jkj n  ��lml 4  ���}n
�} 
cobjn o  ���|�| 0 r  m o  ���{�{ "0 recurrenceparts recurrencePartsk o      �z�z &0 recurrenceprefreq recurrencePreFREQ��  ��  _ opo Z  ��qr�y�xq l ��s�w�vs C ��tut n  ��vwv 4  ���ux
�u 
cobjx o  ���t�t 0 r  w o  ���s�s "0 recurrenceparts recurrencePartsu m  ��yy �zz  I N T E R V A L�w  �v  r k  ��{{ |}| r  ��~~ n  ����� 4  ���r�
�r 
cobj� o  ���q�q 0 r  � o  ���p�p "0 recurrenceparts recurrenceParts o      �o�o (0 recurrencepreinter recurrencePreINTER} ��n� r  ����� m  ���m
�m boovtrue� o      �l�l 0 isinter isInter�n  �y  �x  p ��� Z  �����k�j� l ����i�h� C ����� n  ����� 4  ���g�
�g 
cobj� o  ���f�f 0 r  � o  ���e�e "0 recurrenceparts recurrenceParts� m  ���� ��� 
 B Y D A Y�i  �h  � k  ���� ��� r  ����� n  ����� 4  ���d�
�d 
cobj� o  ���c�c 0 r  � o  ���b�b "0 recurrenceparts recurrenceParts� o      �a�a (0 recurrenceprebyday recurrencePreBYDAY� ��`� r  ����� m  ���_
�_ boovtrue� o      �^�^ 0 isbyday isBYDAY�`  �k  �j  � ��� Z  ����]�\� l ����[�Z� C ����� n  ����� 4  ���Y�
�Y 
cobj� o  ���X�X 0 r  � o  ���W�W "0 recurrenceparts recurrenceParts� m  ���� ���  B Y M O N T H D A Y�[  �Z  � k  ��� ��� r  ���� n  ���� 4  ��V�
�V 
cobj� o   �U�U 0 r  � o  ���T�T "0 recurrenceparts recurrenceParts� o      �S�S 20 recurrenceprebymonthday recurrencePreBYMONTHDAY� ��R� r  ��� m  �Q
�Q boovtrue� o      �P�P 0 isbymonthday isBYMONTHDAY�R  �]  �\  � ��� Z  6���O�N� l ��M�L� C ��� n  ��� 4  �K�
�K 
cobj� o  �J�J 0 r  � o  �I�I "0 recurrenceparts recurrenceParts� m  �� ���  B Y S E T P O S�M  �L  � k   2�� ��� r   ,��� n   (��� 4  #(�H�
�H 
cobj� o  &'�G�G 0 r  � o   #�F�F "0 recurrenceparts recurrenceParts� o      �E�E .0 recurrenceprebysetpos recurrencePreBYSETPOS� ��D� r  -2��� m  -.�C
�C boovtrue� o      �B�B 0 
isbysetpos 
isBYSETPOS�D  �O  �N  � ��A� Z  7\���@�?� l 7C��>�=� C 7C��� n  7?��� 4  :?�<�
�< 
cobj� o  =>�;�; 0 r  � o  7:�:�: "0 recurrenceparts recurrenceParts� m  ?B�� ���  B Y M O N T H�>  �=  � k  FX�� ��� r  FR��� n  FN��� 4  IN�9�
�9 
cobj� o  LM�8�8 0 r  � o  FI�7�7 "0 recurrenceparts recurrenceParts� o      �6�6 ,0 recurrenceprebymonth recurrencePreBYMONTH� ��5� r  SX��� m  ST�4
�4 boovtrue� o      �3�3 0 	isbymonth 	isBYMONTH�5  �@  �?  �A  �� 0 r  [ m  rs�2�2 \ I sz�1��0
�1 .corecnte****       ****� o  sv�/�/ "0 recurrenceparts recurrenceParts�0  ��  Y ��� r  bo��� J  bg�� ��.� m  be�� ���  =�.  � n     ��� 1  jn�-
�- 
txdl� 1  gj�,
�, 
ascr� ��� r  p���� n  p|��� 4  w|�+�
�+ 
cobj� m  z{�*�* � l pw��)�(� n pw��� 2  sw�'
�' 
citm� o  ps�&�& &0 recurrenceprefreq recurrencePreFREQ�)  �(  � o      �%�%  0 recurrencefreq recurrenceFREQ� ��� Z  �����$�#� l ����"�!� =  ����� o  ��� �  0 isinter isInter� m  ���
� boovtrue�"  �!  � l ������ r  ��   n  �� 4  ���
� 
cobj m  ����  l ���� n �� 2  ���
� 
citm o  ���� (0 recurrencepreinter recurrencePreINTER�  �   o      �� "0 recurrenceinter recurrenceINTER� - ' everything after equals sign in string   � � N   e v e r y t h i n g   a f t e r   e q u a l s   s i g n   i n   s t r i n g�$  �#  � 	
	 Z  ���� l ���� =  �� o  ���� 0 isbyday isBYDAY m  ���
� boovtrue�  �   k  ��  r  �� n  �� 4  ���
� 
cobj m  ����  l ���� n �� 2  ���
� 
citm o  ���� (0 recurrenceprebyday recurrencePreBYDAY�  �   o      �� "0 recurrencebyday recurrenceBYDAY  r  �� J  ��  �
  m  ��!! �""  ,�
   n     #$# 1  ���	
�	 
txdl$ 1  ���
� 
ascr %&% r  ��'(' n  ��)*) 2  ���
� 
citm* o  ���� "0 recurrencebyday recurrenceBYDAY( o      �� 0 recurrenceday recurrenceDay& +,+ l ��-./- r  ��010 J  ��22 3�3 m  ��44 �55  =�  1 n     676 1  ���
� 
txdl7 1  ���
� 
ascr. $  return delimiters to original   / �88 <   r e t u r n   d e l i m i t e r s   t o   o r i g i n a l, 9�9 l ��� :;�   : C = returns 2 letter abreviations for days of the week as a list   ; �<< z   r e t u r n s   2   l e t t e r   a b r e v i a t i o n s   f o r   d a y s   o f   t h e   w e e k   a s   a   l i s t�  �  �  
 =>= Z  �)?@����? l ��A����A =  ��BCB o  ������ 0 isbymonthday isBYMONTHDAYC m  ����
�� boovtrue��  ��  @ k  �%DD EFE r  ��GHG n  ��IJI 4  ����K
�� 
cobjK m  ������ J l ��L����L n ��MNM 2  ����
�� 
citmN o  ������ 20 recurrenceprebymonthday recurrencePreBYMONTHDAY��  ��  H o      ���� ,0 recurrencebymonthday recurrenceBYMONTHDAYF OPO r  �QRQ J  �SS T��T m  �UU �VV  ,��  R n     WXW 1  
��
�� 
txdlX 1  ��
�� 
ascrP YZY r  [\[ n ]^] 2  ��
�� 
citm^ o  ���� ,0 recurrencebymonthday recurrenceBYMONTHDAY\ o      ���� (0 recurrencemonthday recurrenceMonthDayZ _��_ l %`ab` r  %cdc J  ee f��f m  gg �hh  =��  d n     iji 1   $��
�� 
txdlj 1   ��
�� 
ascra $  return delimiters to original   b �kk <   r e t u r n   d e l i m i t e r s   t o   o r i g i n a l��  ��  ��  > lml Z  *Fno����n l */p����p =  */qrq o  *-���� 0 
isbysetpos 
isBYSETPOSr m  -.��
�� boovtrue��  ��  o r  2Bsts n  2>uvu 4  9>��w
�� 
cobjw m  <=���� v l 29x����x n 29yzy 2  59��
�� 
citmz o  25���� .0 recurrenceprebysetpos recurrencePreBYSETPOS��  ��  t o      ���� (0 recurrencebysetpos recurrenceBYSETPOS��  ��  m {|{ Z  G�}~����} l GL���� =  GL��� o  GJ���� 0 	isbymonth 	isBYMONTH� m  JK��
�� boovtrue��  ��  ~ k  O��� ��� r  O_��� n  O[��� 4  V[���
�� 
cobj� m  YZ���� � l OV������ n OV��� 2  RV��
�� 
citm� o  OR���� ,0 recurrenceprebymonth recurrencePreBYMONTH��  ��  � o      ���� &0 recurrencebymonth recurrenceBYMONTH� ��� r  `m��� J  `e�� ���� m  `c�� ���  ,��  � n     ��� 1  hl��
�� 
txdl� 1  eh��
�� 
ascr� ��� r  ny��� n nu��� 2  qu��
�� 
citm� o  nq���� &0 recurrencebymonth recurrenceBYMONTH� o      ���� "0 recurrencemonth recurrenceMonth� ���� l z����� r  z���� J  z�� ���� m  z}�� ���  =��  � n     ��� 1  ����
�� 
txdl� 1  ���
�� 
ascr� $  return delimiters to original   � ��� <   r e t u r n   d e l i m i t e r s   t o   o r i g i n a l��  ��  ��  | ��� l ����������  ��  ��  � ��� l ��������  � 2 ,2.2.2 Set original event to start of the day   � ��� X 2 . 2 . 2   S e t   o r i g i n a l   e v e n t   t o   s t a r t   o f   t h e   d a y� ��� r  ����� n  ����� l �������� 1  ����
�� 
wr1s��  ��  � o  ������ 0 e  � o      ���� 0 	startdate 	startDate� ��� r  ����� \  ����� o  ������ 0 	startdate 	startDate� l �������� n  ����� 1  ����
�� 
time� o  ������ 0 	startdate 	startDate��  ��  � o      ���� 0 startday startDay� ��� r  ����� J  ���� ��� o  ������ 0 todayday todayDay� ��� o  ������ 0 tomorday tomorDay� ��� o  ������ 0 	secondday 	secondDay� ���� o  ������ 0 thirdday thirdDay��  � o      ���� 0 soondays soonDays� ��� l ����������  ��  ��  � ��� l ��������  � d ^2.2.3 Get the original start date of reoccurence and see if it is occuring within the next 72h   � ��� � 2 . 2 . 3   G e t   t h e   o r i g i n a l   s t a r t   d a t e   o f   r e o c c u r e n c e   a n d   s e e   i f   i t   i s   o c c u r i n g   w i t h i n   t h e   n e x t   7 2 h� ��� Z  ������� l �������� =  ����� o  ������  0 recurrencefreq recurrenceFREQ� m  ���� ��� 
 D A I L Y��  ��  � k  ���� ��� l ��������  � . (2.2.3.D Check recurrence of daily events   � ��� P 2 . 2 . 3 . D   C h e c k   r e c u r r e n c e   o f   d a i l y   e v e n t s� ��� I �������
�� .ascrcmnt****      � ****� m  ���� ��� 
 D A I L Y��  � ��� Z  ��������� l �������� =  ����� o  ������ 0 isinter isInter� m  ����
�� boovfals��  ��  � r  ����� m  ������ � o      ���� "0 recurrenceinter recurrenceINTER��  ��  � ��� X  ������� k  ���� ��� r  ����� ^  ����� l �������� \  ����� o  ������ 0 soonday soonDay� o  ������ 0 startday startDay��  ��  � 1  ����
�� 
days� o      ���� 0 datedif DateDif� 	 ��	  Z  ��		����	 l �	����	 =  �			 l � 	����	 `  � 			 o  ������ 0 datedif DateDif	 o  ������ "0 recurrenceinter recurrenceINTER��  ��  	 m   ����  ��  ��  	 l �			
			 Z  �		����	 l $	����	 G  $			 l 	����	 >  			 c  
			 o  ���� 0 soonday soonDay	 m  	��
�� 
ldt 	 c  
			 o  
���� 0 todayday todayDay	 m  ��
�� 
ldt ��  ��  	 l  	����	 ?   			 n  			 1  �
� 
tstr	 o  �~�~ 0 	startdate 	startDate	 n  			 1  �}
�} 
tstr	 o  �|�| 0 	todaydate 	todayDate��  ��  ��  ��  	 Z  '�		 �{	!	 l '-	"�z�y	" n  '-	#	$	# 1  (,�x
�x 
wrad	$ o  '(�w�w 0 e  �z  �y  	  k  0X	%	% 	&	'	& r  09	(	)	( l 05	*�v�u	* n  05	+	,	+ 1  15�t
�t 
wr1s	, o  01�s�s 0 e  �v  �u  	) o      �r�r 0 	startdate 	startDate	' 	-�q	- r  :X	.	/	. b  :S	0	1	0 b  :O	2	3	2 b  :I	4	5	4 b  :E	6	7	6 l :A	8�p�o	8 [  :A	9	:	9 o  :;�n�n 0 soonday soonDay	: l ;@	;�m�l	; n  ;@	<	=	< 1  >@�k
�k 
time	= o  ;>�j�j 0 	startdate 	startDate�m  �l  �p  �o  	7 m  AD	>	> �	?	?  ;	5 m  EH	@	@ �	A	A  A l l   D a y :  	3 l IN	B�i�h	B n  IN	C	D	C 1  JN�g
�g 
wr11	D o  IJ�f�f 0 e  �i  �h  	1 o  OR�e
�e 
ret 	/ n      	E	F	E  ;  VW	F o  SV�d�d 0 calinfolist calInfoList�q  �{  	! k  [�	G	G 	H	I	H r  [d	J	K	J l [`	L�c�b	L n  [`	M	N	M 1  \`�a
�a 
wr1s	N o  [\�`�` 0 e  �c  �b  	K o      �_�_ 0 	startdate 	startDate	I 	O	P	O r  en	Q	R	Q l ej	S�^�]	S n  ej	T	U	T 1  fj�\
�\ 
wr5s	U o  ef�[�[ 0 e  �^  �]  	R o      �Z�Z 0 enddate endDate	P 	V�Y	V r  o�	W	X	W b  o�	Y	Z	Y b  o�	[	\	[ b  o�	]	^	] b  o�	_	`	_ b  o�	a	b	a b  o�	c	d	c b  oz	e	f	e l ov	g�X�W	g [  ov	h	i	h o  op�V�V 0 soonday soonDay	i l pu	j�U�T	j n  pu	k	l	k 1  su�S
�S 
time	l o  ps�R�R 0 	startdate 	startDate�U  �T  �X  �W  	f m  vy	m	m �	n	n  ;	d l z�	o�Q�P	o n  z�	p	q	p 1  }��O
�O 
tstr	q l z}	r�N�M	r o  z}�L�L 0 	startdate 	startDate�N  �M  �Q  �P  	b m  ��	s	s �	t	t  ;	` l ��	u�K�J	u n  ��	v	w	v 1  ���I
�I 
tstr	w l ��	x�H�G	x o  ���F�F 0 enddate endDate�H  �G  �K  �J  	^ m  ��	y	y �	z	z  ;	\ l ��	{�E�D	{ n  ��	|	}	| 1  ���C
�C 
wr11	} o  ���B�B 0 e  �E  �D  	Z o  ���A
�A 
ret 	X n      	~		~  ;  ��	 o  ���@�@ 0 calinfolist calInfoList�Y  ��  ��  	
 ' !mod returns remainder of division   	 �	�	� B m o d   r e t u r n s   r e m a i n d e r   o f   d i v i s i o n��  ��  ��  �� 0 soonday soonDay� o  ���?�? 0 soondays soonDays� 	��>	� l ���=�<�;�=  �<  �;  �>  � 	�	�	� l ��	��:�9	� =  ��	�	�	� o  ���8�8  0 recurrencefreq recurrenceFREQ	� m  ��	�	� �	�	�  W E E K L Y�:  �9  	� 	�	�	� k  �s	�	� 	�	�	� l ���7	�	��7  	� / )2.2.3.W Check recurrence of weekly events   	� �	�	� R 2 . 2 . 3 . W   C h e c k   r e c u r r e n c e   o f   w e e k l y   e v e n t s	� 	�	�	� I ���6	��5
�6 .ascrcmnt****      � ****	� m  ��	�	� �	�	�  W E E K L Y�5  	� 	�	�	� Z  ��	�	��4�3	� l ��	��2�1	� =  ��	�	�	� o  ���0�0 0 isinter isInter	� m  ���/
�/ boovfals�2  �1  	� r  ��	�	�	� m  ���.�. 	� o      �-�- "0 recurrenceinter recurrenceINTER�4  �3  	� 	�	�	� r  ��	�	�	� n ��	�	�	� I  ���,	��+�, &0 getprevioussunday getPreviousSunday	� 	��*	� o  ���)�) 0 	startdate 	startDate�*  �+  	�  f  ��	� o      �(�( 0 firstsunday firstSunday	� 	�	�	� l ���'	�	��'  	� N Hneed to use "my" when calling function (aka subroutine) from inside tell   	� �	�	� � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l l	� 	�	�	� X  �q	��&	�	� k  �l	�	� 	�	�	� r  �	�	�	� n � 	�	�	� I  � �%	��$�% &0 getprevioussunday getPreviousSunday	� 	��#	� o  ���"�" 0 soonday soonDay�#  �$  	�  f  ��	� o      �!�! 0 	nowsunday 	nowSunday	� 	�	�	� r  	�	�	� ^  	�	�	� l 	�� �	� \  	�	�	� o  �� 0 	nowsunday 	nowSunday	� o  �� 0 firstsunday firstSunday�   �  	� 1  �
� 
week	� o      �� 0 weekdif weekDif	� 	��	� Z  l	�	���	� l 	���	� =  	�	�	� l 	���	� `  	�	�	� o  �� 0 weekdif weekDif	� o  �� "0 recurrenceinter recurrenceINTER�  �  	� m  ��  �  �  	� Z  !h	�	���	� l !&	���	� =  !&	�	�	� o  !$�� 0 isbyday isBYDAY	� m  $%�
� boovtrue�  �  	� Z  )d	�	�	��
	� l )>	��	�	� E )>	�	�	� o  ),�� 0 recurrenceday recurrenceDay	� n  ,=	�	�	� 7 1=�	�	�
� 
ctxt	� m  79�� 	� m  :<�� 	� l ,1	���	� c  ,1	�	�	� n  ,/	�	�	� m  -/�
� 
wkdy	� o  ,-� �  0 soonday soonDay	� m  /0��
�� 
TEXT�  �  �	  �  	� Z  A�	�	���	�	� l AG	�����	� n  AG	�	�	� 1  BF��
�� 
wrad	� o  AB���� 0 e  ��  ��  	� k  Jr	�	� 	�	�	� r  JS	�	�	� l JO	�����	� n  JO	�	�	� 1  KO��
�� 
wr1s	� o  JK���� 0 e  ��  ��  	� o      ���� 0 	startdate 	startDate	� 	���	� r  Tr	�	�	� b  Tm	�	�	� b  Ti	�	�	� b  Tc	�	�	� b  T_	�	�	� l T[	�����	� [  T[	�	�	� o  TU���� 0 soonday soonDay	� l UZ	�����	� n  UZ	�	�	� 1  XZ��
�� 
time	� o  UX���� 0 	startdate 	startDate��  ��  ��  ��  	� m  [^	�	� �	�	�  ;	� m  _b
 
  �

  A l l   D a y :  	� l ch
����
 n  ch


 1  dh��
�� 
wr11
 o  cd���� 0 e  ��  ��  	� o  il��
�� 
ret 	� n      


  ;  pq
 o  mp���� 0 calinfolist calInfoList��  ��  	� k  u�

 

	
 r  u~




 l uz
����
 n  uz


 1  vz��
�� 
wr1s
 o  uv���� 0 e  ��  ��  
 o      ���� 0 	startdate 	startDate
	 


 r  �


 l �
����
 n  �


 1  ����
�� 
wr5s
 o  ����� 0 e  ��  ��  
 o      ���� 0 enddate endDate
 
��
 r  ��


 b  ��


 b  ��


 b  ��


 b  ��

 
 b  ��
!
"
! b  ��
#
$
# b  ��
%
&
% l ��
'����
' [  ��
(
)
( o  ������ 0 soonday soonDay
) l ��
*����
* n  ��
+
,
+ 1  ����
�� 
time
, o  ������ 0 	startdate 	startDate��  ��  ��  ��  
& m  ��
-
- �
.
.  ;
$ l ��
/����
/ n  ��
0
1
0 1  ����
�� 
tstr
1 l ��
2����
2 o  ������ 0 	startdate 	startDate��  ��  ��  ��  
" m  ��
3
3 �
4
4  ;
  l ��
5����
5 n  ��
6
7
6 1  ����
�� 
tstr
7 l ��
8����
8 o  ������ 0 enddate endDate��  ��  ��  ��  
 m  ��
9
9 �
:
:  ;
 l ��
;����
; n  ��
<
=
< 1  ����
�� 
wr11
= o  ������ 0 e  ��  ��  
 o  ����
�� 
ret 
 n      
>
?
>  ;  ��
? o  ������ 0 calinfolist calInfoList��  	� 
@
A
@ l ��
B����
B =  ��
C
D
C n  ��
E
F
E 7 ����
G
H
�� 
ctxt
G m  ������ 
H m  ������ 
F l ��
I����
I c  ��
J
K
J n  ��
L
M
L m  ����
�� 
wkdy
M o  ������ 0 	startdate 	startDate
K m  ����
�� 
TEXT��  ��  
D n  ��
N
O
N 7 ����
P
Q
�� 
ctxt
P m  ������ 
Q m  ������ 
O l ��
R����
R c  ��
S
T
S n  ��
U
V
U m  ����
�� 
wkdy
V o  ������ 0 soonday soonDay
T m  ����
�� 
TEXT��  ��  ��  ��  
A 
W��
W Z  �`
X
Y��
Z
X l ��
[����
[ n  ��
\
]
\ 1  ����
�� 
wrad
] o  ������ 0 e  ��  ��  
Y k  �
^
^ 
_
`
_ r  ��
a
b
a l ��
c����
c n  ��
d
e
d 1  ����
�� 
wr1s
e o  ������ 0 e  ��  ��  
b o      ���� 0 	startdate 	startDate
` 
f��
f r  �
g
h
g b  �
i
j
i b  �
k
l
k b  �
m
n
m b  �
o
p
o l � 
q����
q [  � 
r
s
r o  ������ 0 soonday soonDay
s l ��
t����
t n  ��
u
v
u 1  ����
�� 
time
v o  ������ 0 	startdate 	startDate��  ��  ��  ��  
p m   
w
w �
x
x  ;
n m  
y
y �
z
z  A l l   D a y :  
l l 
{����
{ n  
|
}
| 1  	��
�� 
wr11
} o  	���� 0 e  ��  ��  
j o  ��
�� 
ret 
h n      
~

~  ;  
 o  ���� 0 calinfolist calInfoList��  ��  
Z k  `
�
� 
�
�
� r  #
�
�
� l 
�����
� n  
�
�
� 1  ��
�� 
wr1s
� o  ���� 0 e  ��  ��  
� o      ���� 0 	startdate 	startDate
� 
�
�
� r  $-
�
�
� l $)
�����
� n  $)
�
�
� 1  %)��
�� 
wr5s
� o  $%���� 0 e  ��  ��  
� o      ���� 0 enddate endDate
� 
���
� r  .`
�
�
� b  .[
�
�
� b  .W
�
�
� b  .Q
�
�
� b  .M
�
�
� b  .E
�
�
� b  .A
�
�
� b  .9
�
�
� l .5
�����
� [  .5
�
�
� o  ./���� 0 soonday soonDay
� l /4
�����
� n  /4
�
�
� 1  24��
�� 
time
� o  /2���� 0 	startdate 	startDate��  ��  ��  ��  
� m  58
�
� �
�
�  ;
� l 9@
�����
� n  9@
�
�
� 1  <@��
�� 
tstr
� l 9<
�����
� o  9<���� 0 	startdate 	startDate��  ��  ��  ��  
� m  AD
�
� �
�
�  ;
� l EL
���~
� n  EL
�
�
� 1  HL�}
�} 
tstr
� l EH
��|�{
� o  EH�z�z 0 enddate endDate�|  �{  �  �~  
� m  MP
�
� �
�
�  ;
� l QV
��y�x
� n  QV
�
�
� 1  RV�w
�w 
wr11
� o  QR�v�v 0 e  �y  �x  
� o  WZ�u
�u 
ret 
� n      
�
�
�  ;  ^_
� o  [^�t�t 0 calinfolist calInfoList��  ��  �
  �  �  �  �  �  �& 0 soonday soonDay	� o  ���s�s 0 soondays soonDays	� 
��r
� l rr�q�p�o�q  �p  �o  �r  	� 
�
�
� l v}
��n�m
� =  v}
�
�
� o  vy�l�l  0 recurrencefreq recurrenceFREQ
� m  y|
�
� �
�
�  M O N T H L Y�n  �m  
� 
�
�
� k  �
�
� 
�
�
� l ���k
�
��k  
� 0 *2.2.3.M Check recurrence of monthly events   
� �
�
� T 2 . 2 . 3 . M   C h e c k   r e c u r r e n c e   o f   m o n t h l y   e v e n t s
� 
�
�
� I ���j
��i
�j .ascrcmnt****      � ****
� m  ��
�
� �
�
�  M O N T H L Y�i  
� 
�
�
� Z  ��
�
��h�g
� l ��
��f�e
� =  ��
�
�
� o  ���d�d 0 isinter isInter
� m  ���c
�c boovfals�f  �e  
� r  ��
�
�
� m  ���b�b 
� o      �a�a "0 recurrenceinter recurrenceINTER�h  �g  
� 
��`
� Z  �
�
�
�
�
� l ��
��_�^
� =  ��
�
�
� o  ���]�] 0 isbymonthday isBYMONTHDAY
� m  ���\
�\ boovtrue�_  �^  
� k  �	m
�
� 
�
�
� l ���[
�
��[  
� = 72.2.3.M.1 Check events recurring several days per month   
� �
�
� n 2 . 2 . 3 . M . 1   C h e c k   e v e n t s   r e c u r r i n g   s e v e r a l   d a y s   p e r   m o n t h
� 
�
�
� I ���Z
��Y
�Z .ascrcmnt****      � ****
� m  ��
�
� �
�
�  M 1�Y  
� 
��X
� X  �	m
��W
�
� k  �	h
�
� 
�
�
� r  ��
�
�
� n ��
�
�
� I  ���V
��U�V 0 getmonthdif getMonthDif
� 
�
�
� o  ���T�T 0 	startdate 	startDate
� 
��S
� o  ���R�R 0 soonday soonDay�S  �U  
�  f  ��
� o      �Q�Q 0 monthdif monthDif
� 
�
�
� l ���P
�
��P  
� N Hneed to use "my" when calling function (aka subroutine) from inside tell   
� �
�
� � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l l
� 
��O
� Z  �	h
�
��N�M
� l �� �L�K  =  �� l ���J�I `  �� o  ���H�H 0 monthdif monthDif o  ���G�G "0 recurrenceinter recurrenceINTER�J  �I   m  ���F�F  �L  �K  
� Z  �	d�E�D l ���C�B E ��	
	 o  ���A�A (0 recurrencemonthday recurrenceMonthDay
 n  �� 1  ���@
�@ 
day  o  ���?�? 0 soonday soonDay�C  �B   Z  �	`�> l ���=�< n  �� 1  ���;
�; 
wrad o  ���:�: 0 e  �=  �<   k  �	  r  �� l ���9�8 n  �� 1  ���7
�7 
wr1s o  ���6�6 0 e  �9  �8   o      �5�5 0 	startdate 	startDate �4 r  �	 b  �	 b  �	 !  b  �	"#" b  �	$%$ l �	 &�3�2& [  �	 '(' o  ���1�1 0 soonday soonDay( l ��)�0�/) n  ��*+* 1  ���.
�. 
time+ o  ���-�- 0 	startdate 	startDate�0  �/  �3  �2  % m  	 	,, �--  ;# m  		.. �//  A l l   D a y :  ! l 		0�,�+0 n  		121 1  			�*
�* 
wr112 o  			�)�) 0 e  �,  �+   o  		�(
�( 
ret  n      343  ;  		4 o  		�'�' 0 calinfolist calInfoList�4  �>   k  		`55 676 r  		#898 l 		:�&�%: n  		;<; 1  		�$
�$ 
wr1s< o  		�#�# 0 e  �&  �%  9 o      �"�" 0 	startdate 	startDate7 =>= r  	$	-?@? l 	$	)A�!� A n  	$	)BCB 1  	%	)�
� 
wr5sC o  	$	%�� 0 e  �!  �   @ o      �� 0 enddate endDate> D�D r  	.	`EFE b  	.	[GHG b  	.	WIJI b  	.	QKLK b  	.	MMNM b  	.	EOPO b  	.	AQRQ b  	.	9STS l 	.	5U��U [  	.	5VWV o  	.	/�� 0 soonday soonDayW l 	/	4X��X n  	/	4YZY 1  	2	4�
� 
timeZ o  	/	2�� 0 	startdate 	startDate�  �  �  �  T m  	5	8[[ �\\  ;R l 	9	@]��] n  	9	@^_^ 1  	<	@�
� 
tstr_ l 	9	<`��` o  	9	<�� 0 	startdate 	startDate�  �  �  �  P m  	A	Daa �bb  ;N l 	E	Lc��c n  	E	Lded 1  	H	L�
� 
tstre l 	E	Hf��
f o  	E	H�	�	 0 enddate endDate�  �
  �  �  L m  	M	Pgg �hh  ;J l 	Q	Vi��i n  	Q	Vjkj 1  	R	V�
� 
wr11k o  	Q	R�� 0 e  �  �  H o  	W	Z�
� 
ret F n      lml  ;  	^	_m o  	[	^�� 0 calinfolist calInfoList�  �E  �D  �N  �M  �O  �W 0 soonday soonDay
� o  ���� 0 soondays soonDays�X  
� non l 	p	up�� p =  	p	uqrq o  	p	s���� 0 
isbysetpos 
isBYSETPOSr m  	s	t��
�� boovtrue�  �   o sts k  	x
`uu vwv l 	x	x��xy��  x d ^2.2.3.M.2 Check events recurring on weekDays, weekendDays, or Days from start/end of the month   y �zz � 2 . 2 . 3 . M . 2   C h e c k   e v e n t s   r e c u r r i n g   o n   w e e k D a y s ,   w e e k e n d D a y s ,   o r   D a y s   f r o m   s t a r t / e n d   o f   t h e   m o n t hw {|{ I 	x	��}��
�� .ascrcmnt****      � ****} m  	x	{~~ �  M 2��  | ��� l 	�	����� r  	�	���� I 	�	������
�� .corecnte****       ****� o  	�	����� 0 recurrenceday recurrenceDay��  � o      ���� 0 daytype dayType�   2, 5, or 7   � ���    2 ,   5 ,   o r   7� ���� X  	�
`����� k  	�
[�� ��� r  	�	���� n 	�	���� I  	�	�������� 0 getmonthdif getMonthDif� ��� o  	�	����� 0 	startdate 	startDate� ���� o  	�	����� 0 soonday soonDay��  ��  �  f  	�	�� o      ���� 0 monthdif monthDif� ��� l 	�	�������  � N Hneed to use "my" when calling function (aka subroutine) from inside tell   � ��� � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l l� ���� Z  	�
[������� l 	�	������� =  	�	���� l 	�	������� `  	�	���� o  	�	����� 0 monthdif monthDif� o  	�	����� "0 recurrenceinter recurrenceINTER��  ��  � m  	�	�����  ��  ��  � k  	�
W�� ��� r  	�	���� n 	�	���� I  	�	��������  0 getmonthposday getMonthPosDay� ��� o  	�	����� 0 daytype dayType� ��� o  	�	����� (0 recurrencebysetpos recurrenceBYSETPOS� ���� o  	�	����� 0 soonday soonDay��  ��  �  f  	�	�� o      ���� 0 monthday monthDay� ���� Z  	�
W������� l 	�	������� =  	�	���� l 	�	������� n  	�	���� 1  	�	���
�� 
day � o  	�	����� 0 soonday soonDay��  ��  � o  	�	����� 0 monthday monthDay��  ��  � Z  	�
S������ l 	�	������� n  	�	���� 1  	�	���
�� 
wrad� o  	�	����� 0 e  ��  ��  � k  	�

�� ��� r  	�	���� l 	�	������� n  	�	���� 1  	�	���
�� 
wr1s� o  	�	����� 0 e  ��  ��  � o      ���� 0 	startdate 	startDate� ���� r  	�

��� b  	�
��� b  	�
��� b  	�	���� b  	�	���� l 	�	������� [  	�	���� o  	�	����� 0 soonday soonDay� l 	�	������� n  	�	���� 1  	�	���
�� 
time� o  	�	����� 0 	startdate 	startDate��  ��  ��  ��  � m  	�	��� ���  ;� m  	�	��� ���  A l l   D a y :  � l 	�
 ������ n  	�
 ��� 1  	�
 ��
�� 
wr11� o  	�	����� 0 e  ��  ��  � o  

��
�� 
ret � n      ���  ;  

	� o  

���� 0 calinfolist calInfoList��  ��  � k  

S�� ��� r  

��� l 

������ n  

��� 1  

��
�� 
wr1s� o  

���� 0 e  ��  ��  � o      ���� 0 	startdate 	startDate� ��� r  

 ��� l 

������ n  

��� 1  

��
�� 
wr5s� o  

���� 0 e  ��  ��  � o      ���� 0 enddate endDate� ���� r  
!
S��� b  
!
N��� b  
!
J��� b  
!
D��� b  
!
@��� b  
!
8��� b  
!
4� � b  
!
, l 
!
(���� [  
!
( o  
!
"���� 0 soonday soonDay l 
"
'���� n  
"
' 1  
%
'��
�� 
time o  
"
%���� 0 	startdate 	startDate��  ��  ��  ��   m  
(
+		 �

  ;  l 
,
3���� n  
,
3 1  
/
3��
�� 
tstr l 
,
/���� o  
,
/���� 0 	startdate 	startDate��  ��  ��  ��  � m  
4
7 �  ;� l 
8
?���� n  
8
? 1  
;
?��
�� 
tstr l 
8
;���� o  
8
;���� 0 enddate endDate��  ��  ��  ��  � m  
@
C �  ;� l 
D
I���� n  
D
I 1  
E
I��
�� 
wr11 o  
D
E���� 0 e  ��  ��  � o  
J
M��
�� 
ret � n        ;  
Q
R o  
N
Q���� 0 calinfolist calInfoList��  ��  ��  ��  ��  ��  ��  �� 0 soonday soonDay� o  	�	����� 0 soondays soonDays��  t  l 
c
h���� =  
c
h  o  
c
f���� 0 isbyday isBYDAY  m  
f
g��
�� boovtrue��  ��   !��! k  
kD"" #$# l 
k
k��%&��  % W Q2.2.3.M.3 Check events recurring on specific weekdays from start/end of the month   & �'' � 2 . 2 . 3 . M . 3   C h e c k   e v e n t s   r e c u r r i n g   o n   s p e c i f i c   w e e k d a y s   f r o m   s t a r t / e n d   o f   t h e   m o n t h$ ()( I 
k
r��*��
�� .ascrcmnt****      � ***** m  
k
n++ �,,  M 3��  ) -��- X  
sD.��/. k  
�?00 121 r  
�
�343 n 
�
�565 I  
�
���7���� 0 getmonthdif getMonthDif7 898 o  
�
����� 0 	startdate 	startDate9 :��: o  
�
����� 0 soonday soonDay��  ��  6  f  
�
�4 o      ���� 0 monthdif monthDif2 ;<; l 
�
���=>��  = N Hneed to use "my" when calling function (aka subroutine) from inside tell   > �?? � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l l< @��@ Z  
�?AB����A l 
�
�C����C =  
�
�DED l 
�
�F��~F `  
�
�GHG o  
�
��}�} 0 monthdif monthDifH o  
�
��|�| "0 recurrenceinter recurrenceINTER�  �~  E m  
�
��{�{  ��  ��  B k  
�;II JKJ r  
�
�LML n 
�
�NON I  
�
��zP�y�z "0 getmonthweekday getMonthWeekdayP QRQ o  
�
��x�x 0 recurrenceday recurrenceDayR S�wS o  
�
��v�v 0 soonday soonDay�w  �y  O  f  
�
�M o      �u�u 0 monthday monthDayK T�tT Z  
�;UV�s�rU l 
�
�W�q�pW =  
�
�XYX l 
�
�Z�o�nZ n  
�
�[\[ 1  
�
��m
�m 
day \ o  
�
��l�l 0 soonday soonDay�o  �n  Y o  
�
��k�k 0 monthday monthDay�q  �p  V Z  
�7]^�j_] l 
�
�`�i�h` n  
�
�aba 1  
�
��g
�g 
wradb o  
�
��f�f 0 e  �i  �h  ^ k  
�
�cc ded r  
�
�fgf l 
�
�h�e�dh n  
�
�iji 1  
�
��c
�c 
wr1sj o  
�
��b�b 0 e  �e  �d  g o      �a�a 0 	startdate 	startDatee k�`k r  
�
�lml b  
�
�non b  
�
�pqp b  
�
�rsr b  
�
�tut l 
�
�v�_�^v [  
�
�wxw o  
�
��]�] 0 soonday soonDayx l 
�
�y�\�[y n  
�
�z{z 1  
�
��Z
�Z 
time{ o  
�
��Y�Y 0 	startdate 	startDate�\  �[  �_  �^  u m  
�
�|| �}}  ;s m  
�
�~~ �  A l l   D a y :  q l 
�
���X�W� n  
�
���� 1  
�
��V
�V 
wr11� o  
�
��U�U 0 e  �X  �W  o o  
�
��T
�T 
ret m n      ���  ;  
�
�� o  
�
��S�S 0 calinfolist calInfoList�`  �j  _ k  
�7�� ��� r  
�
���� l 
�
���R�Q� n  
�
���� 1  
�
��P
�P 
wr1s� o  
�
��O�O 0 e  �R  �Q  � o      �N�N 0 	startdate 	startDate� ��� r  
���� l 
� ��M�L� n  
� ��� 1  
� �K
�K 
wr5s� o  
�
��J�J 0 e  �M  �L  � o      �I�I 0 enddate endDate� ��H� r  7��� b  2��� b  .��� b  (��� b  $��� b  ��� b  ��� b  ��� l ��G�F� [  ��� o  �E�E 0 soonday soonDay� l ��D�C� n  ��� 1  	�B
�B 
time� o  	�A�A 0 	startdate 	startDate�D  �C  �G  �F  � m  �� ���  ;� l ��@�?� n  ��� 1  �>
�> 
tstr� l ��=�<� o  �;�; 0 	startdate 	startDate�=  �<  �@  �?  � m  �� ���  ;� l #��:�9� n  #��� 1  #�8
�8 
tstr� l ��7�6� o  �5�5 0 enddate endDate�7  �6  �:  �9  � m  $'�� ���  ;� l (-��4�3� n  (-��� 1  )-�2
�2 
wr11� o  ()�1�1 0 e  �4  �3  � o  .1�0
�0 
ret � n      ���  ;  56� o  25�/�/ 0 calinfolist calInfoList�H  �s  �r  �t  ��  ��  ��  �� 0 soonday soonDay/ o  
v
y�.�. 0 soondays soonDays��  ��  
� k  G�� ��� l GG�-���-  � 8 22.2.3.M.4 Check events recurring one day per month   � ��� d 2 . 2 . 3 . M . 4   C h e c k   e v e n t s   r e c u r r i n g   o n e   d a y   p e r   m o n t h� ��� I GN�,��+
�, .ascrcmnt****      � ****� m  GJ�� ���  M 4�+  � ��� r  OZ��� n  OV��� 1  RV�*
�* 
day � o  OR�)�) 0 	startdate 	startDate� o      �(�( 0 
dayofmonth 
dayOfMonth� ��'� X  [��&�� k  q�� ��� r  q~��� n qz��� I  rz�%��$�% 0 getmonthdif getMonthDif� ��� o  ru�#�# 0 	startdate 	startDate� ��"� o  uv�!�! 0 soonday soonDay�"  �$  �  f  qr� o      � �  0 monthdif monthDif� ��� l ����  � N Hneed to use "my" when calling function (aka subroutine) from inside tell   � ��� � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l l� ��� Z  ����� l ����� =  ���� l ����� `  ���� o  ��� 0 monthdif monthDif� o  ���� "0 recurrenceinter recurrenceINTER�  �  � m  ����  �  �  � Z  ������ l ������ =  ����� n  ����� 1  ���
� 
day � o  ���� 0 soonday soonDay� o  ���� 0 
dayofmonth 
dayOfMonth�  �  � Z  ������ l ������ n  ����� 1  ���

�
 
wrad� o  ���	�	 0 e  �  �  � k  ���� ��� r  ����� l ������ n  ����� 1  ���
� 
wr1s� o  ���� 0 e  �  �  � o      �� 0 	startdate 	startDate�  �  r  �� b  �� b  �� b  �� b  ��	
	 l ���� [  �� o  ��� �  0 soonday soonDay l ������ n  �� 1  ����
�� 
time o  ������ 0 	startdate 	startDate��  ��  �  �  
 m  �� �  ; m  �� �  A l l   D a y :   l ������ n  �� 1  ����
�� 
wr11 o  ������ 0 e  ��  ��   o  ����
�� 
ret  n        ;  �� o  ������ 0 calinfolist calInfoList�  �  � k  �  r  �� l ������ n  �� !  1  ����
�� 
wr1s! o  ������ 0 e  ��  ��   o      ���� 0 	startdate 	startDate "#" r  ��$%$ l ��&����& n  ��'(' 1  ����
�� 
wr5s( o  ������ 0 e  ��  ��  % o      ���� 0 enddate endDate# )��) r  �*+* b  �,-, b  �./. b  �010 b  ��232 b  ��454 b  ��676 b  ��898 l ��:����: [  ��;<; o  ������ 0 soonday soonDay< l ��=����= n  ��>?> 1  ����
�� 
time? o  ������ 0 	startdate 	startDate��  ��  ��  ��  9 m  ��@@ �AA  ;7 l ��B����B n  ��CDC 1  ����
�� 
tstrD l ��E����E o  ������ 0 	startdate 	startDate��  ��  ��  ��  5 m  ��FF �GG  ;3 l ��H����H n  ��IJI 1  ����
�� 
tstrJ l ��K����K o  ������ 0 enddate endDate��  ��  ��  ��  1 m  �LL �MM  ;/ l N����N n  OPO 1  ��
�� 
wr11P o  ���� 0 e  ��  ��  - o  ��
�� 
ret + n      QRQ  ;  R o  ���� 0 calinfolist calInfoList��  �  �  �  �  �  �& 0 soonday soonDay� o  ^a���� 0 soondays soonDays�'  �`  
� STS l !(U����U =  !(VWV o  !$����  0 recurrencefreq recurrenceFREQW m  $'XX �YY  Y E A R L Y��  ��  T Z��Z k  +[[ \]\ l ++��^_��  ^ / )2.2.3.Y Check recurrence of yearly events   _ �`` R 2 . 2 . 3 . Y   C h e c k   r e c u r r e n c e   o f   y e a r l y   e v e n t s] aba I +2��c��
�� .ascrcmnt****      � ****c m  +.dd �ee  Y E A R L Y��  b f��f Z  3ghijg l 38k����k =  38lml o  36���� 0 
isbysetpos 
isBYSETPOSm m  67��
�� boovtrue��  ��  h k  ;;nn opo l ;;��qr��  q a [2.2.3.Y.1 The x weekDay, weekendDay, Day from start/end of months listed in recurrenceMonth   r �ss � 2 . 2 . 3 . Y . 1   T h e   x   w e e k D a y ,   w e e k e n d D a y ,   D a y   f r o m   s t a r t / e n d   o f   m o n t h s   l i s t e d   i n   r e c u r r e n c e M o n t hp tut l ;;��vw��  v N H NOTE: When yearly interval is every 1 year, interval changes to monthly   w �xx �   N O T E :   W h e n   y e a r l y   i n t e r v a l   i s   e v e r y   1   y e a r ,   i n t e r v a l   c h a n g e s   t o   m o n t h l yu yzy I ;B��{��
�� .ascrcmnt****      � ****{ m  ;>|| �}}  Y 1��  z ~~ l CN���� r  CN��� I CJ�����
�� .corecnte****       ****� o  CF���� 0 recurrenceday recurrenceDay��  � o      ���� 0 daytype dayType�   2, 5, or 7   � ���    2 ,   5 ,   o r   7 ���� X  O;����� k  e6�� ��� r  er��� n en��� I  fn������� 0 
getyeardif 
getYearDif� ��� o  fi���� 0 	startdate 	startDate� ���� o  ij���� 0 soonday soonDay��  ��  �  f  ef� o      ���� 0 yeardif yearDif� ��� l ss������  � N Hneed to use "my" when calling function (aka subroutine) from inside tell   � ��� � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l l� ���� Z  s6������� l s|������ =  s|��� l sz������ `  sz��� o  sv���� 0 yeardif yearDif� o  vy���� "0 recurrenceinter recurrenceINTER��  ��  � m  z{����  ��  ��  � Z  2������� l ������� E ���� o  ����� "0 recurrencemonth recurrenceMonth� l �������� c  ����� c  ����� n  ����� m  ����
�� 
mnth� o  ������ 0 soonday soonDay� m  ����
�� 
long� m  ����
�� 
ctxt��  ��  ��  ��  � k  �.�� ��� l ��������  � S Myes, I am setting the month to its integer value and then it into a character   � ��� � y e s ,   I   a m   s e t t i n g   t h e   m o n t h   t o   i t s   i n t e g e r   v a l u e   a n d   t h e n   i t   i n t o   a   c h a r a c t e r� ��� r  ����� n ����� I  ���������  0 getmonthposday getMonthPosDay� ��� o  ������ 0 daytype dayType� ��� o  ������ (0 recurrencebysetpos recurrenceBYSETPOS� ���� o  ������ 0 soonday soonDay��  ��  �  f  ��� o      ���� 0 yearday yearDay� ���� Z  �.������� l �������� =  ����� l �������� n  ����� 1  ����
�� 
day � o  ������ 0 soonday soonDay��  ��  � o  ������ 0 yearday yearDay��  ��  � Z  �*������ l �������� n  ����� 1  ����
�� 
wrad� o  ������ 0 e  ��  ��  � k  ���� ��� r  ����� l �������� n  ����� 1  ����
�� 
wr1s� o  ������ 0 e  ��  ��  � o      ���� 0 	startdate 	startDate� ���� r  ����� b  ����� b  ����� b  ����� b  ����� l �������� [  ����� o  ���� 0 soonday soonDay� l ����~�}� n  ����� 1  ���|
�| 
time� o  ���{�{ 0 	startdate 	startDate�~  �}  ��  ��  � m  ���� ���  ;� m  ���� ���  A l l   D a y :  � l ����z�y� n  ����� 1  ���x
�x 
wr11� o  ���w�w 0 e  �z  �y  � o  ���v
�v 
ret � n      ���  ;  ��� o  ���u�u 0 calinfolist calInfoList��  ��  � k  �*�� ��� r  ����� l ����t�s� n  ����� 1  ���r
�r 
wr1s� o  ���q�q 0 e  �t  �s  � o      �p�p 0 	startdate 	startDate� ��� r  ����� l ����o�n� n  ��� � 1  ���m
�m 
wr5s  o  ���l�l 0 e  �o  �n  � o      �k�k 0 enddate endDate� �j r  �* b  �% b  �! b  �	 b  �

 b  � b  � b  � l ���i�h [  �� o  ���g�g 0 soonday soonDay l ���f�e n  �� 1  ���d
�d 
time o  ���c�c 0 	startdate 	startDate�f  �e  �i  �h   m  � �  ; l 
�b�a n  
 1  
�`
�` 
tstr l �_�^ o  �]�] 0 	startdate 	startDate�_  �^  �b  �a   m   �  ; l  �\�[  n  !"! 1  �Z
�Z 
tstr" l #�Y�X# o  �W�W 0 enddate endDate�Y  �X  �\  �[  	 m  $$ �%%  ; l  &�V�U& n   '(' 1   �T
�T 
wr11( o  �S�S 0 e  �V  �U   o  !$�R
�R 
ret  n      )*)  ;  ()* o  %(�Q�Q 0 calinfolist calInfoList�j  ��  ��  ��  ��  ��  ��  ��  ��  �� 0 soonday soonDay� o  RU�P�P 0 soondays soonDays��  i +,+ l >C-�O�N- =  >C./. o  >A�M�M 0 isbyday isBYDAY/ m  AB�L
�L boovtrue�O  �N  , 010 k  F722 343 l FF�K56�K  5 W Q2.2.3.Y.2 Check events recurring on specific weekdays from start/end of the month   6 �77 � 2 . 2 . 3 . Y . 2   C h e c k   e v e n t s   r e c u r r i n g   o n   s p e c i f i c   w e e k d a y s   f r o m   s t a r t / e n d   o f   t h e   m o n t h4 898 I FM�J:�I
�J .ascrcmnt****      � ****: m  FI;; �<<  Y 2�I  9 =�H= X  N7>�G?> k  d2@@ ABA r  dqCDC n dmEFE I  em�FG�E�F 0 
getyeardif 
getYearDifG HIH o  eh�D�D 0 	startdate 	startDateI J�CJ o  hi�B�B 0 soonday soonDay�C  �E  F  f  deD o      �A�A 0 yeardif yearDifB KLK l rr�@MN�@  M N Hneed to use "my" when calling function (aka subroutine) from inside tell   N �OO � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l lL P�?P Z  r2QR�>�=Q l r{S�<�;S =  r{TUT l ryV�:�9V `  ryWXW o  ru�8�8 0 yeardif yearDifX o  ux�7�7 "0 recurrenceinter recurrenceINTER�:  �9  U m  yz�6�6  �<  �;  R Z  ~.YZ�5�4Y l ~�[�3�2[ E ~�\]\ o  ~��1�1 "0 recurrencemonth recurrenceMonth] l ��^�0�/^ c  ��_`_ c  ��aba n  ��cdc m  ���.
�. 
mnthd o  ���-�- 0 soonday soonDayb m  ���,
�, 
long` m  ���+
�+ 
ctxt�0  �/  �3  �2  Z k  �*ee fgf r  ��hih n ��jkj I  ���*l�)�* "0 getmonthweekday getMonthWeekdayl mnm o  ���(�( 0 recurrenceday recurrenceDayn o�'o o  ���&�& 0 soonday soonDay�'  �)  k  f  ��i o      �%�% 0 yearday yearDayg p�$p Z  �*qr�#�"q l ��s�!� s =  ��tut l ��v��v n  ��wxw 1  ���
� 
day x o  ���� 0 soonday soonDay�  �  u o  ���� 0 yearday yearDay�!  �   r Z  �&yz�{y l ��|��| n  ��}~} 1  ���
� 
wrad~ o  ���� 0 e  �  �  z k  �� ��� r  ����� l ������ n  ����� 1  ���
� 
wr1s� o  ���� 0 e  �  �  � o      �� 0 	startdate 	startDate� ��� r  ����� b  ����� b  ����� b  ����� b  ����� l ������ [  ����� o  ���� 0 soonday soonDay� l ������ n  ����� 1  ���

�
 
time� o  ���	�	 0 	startdate 	startDate�  �  �  �  � m  ���� ���  ;� m  ���� ���  A l l   D a y :  � l ������ n  ����� 1  ���
� 
wr11� o  ���� 0 e  �  �  � o  ���
� 
ret � n      ���  ;  ��� o  ���� 0 calinfolist calInfoList�  �  { k  �&�� ��� r  ����� l ������ n  ����� 1  ��� 
�  
wr1s� o  ������ 0 e  �  �  � o      ���� 0 	startdate 	startDate� ��� r  ����� l �������� n  ����� 1  ����
�� 
wr5s� o  ������ 0 e  ��  ��  � o      ���� 0 enddate endDate� ���� r  �&��� b  �!��� b  ���� b  ���� b  ���� b  ���� b  ���� b  ����� l �������� [  ����� o  ������ 0 soonday soonDay� l �������� n  ����� 1  ����
�� 
time� o  ������ 0 	startdate 	startDate��  ��  ��  ��  � m  ���� ���  ;� l ������� n  ���� 1  ��
�� 
tstr� l ������� o  ����� 0 	startdate 	startDate��  ��  ��  ��  � m  
�� ���  ;� l ������ n  ��� 1  ��
�� 
tstr� l ������ o  ���� 0 enddate endDate��  ��  ��  ��  � m  �� ���  ;� l ������ n  ��� 1  ��
�� 
wr11� o  ���� 0 e  ��  ��  � o   ��
�� 
ret � n      ���  ;  $%� o  !$���� 0 calinfolist calInfoList��  �#  �"  �$  �5  �4  �>  �=  �?  �G 0 soonday soonDay? o  QT���� 0 soondays soonDays�H  1 ��� l :?������ =  :?��� o  :=���� 0 	isbymonth 	isBYMONTH� m  =>��
�� boovtrue��  ��  � ���� k  B+�� ��� l BB������  � F @2.2.3.Y.3 The specific day from months listed in recurrenceMonth   � ��� � 2 . 2 . 3 . Y . 3   T h e   s p e c i f i c   d a y   f r o m   m o n t h s   l i s t e d   i n   r e c u r r e n c e M o n t h� ��� I BI�����
�� .ascrcmnt****      � ****� m  BE�� ���  Y 3��  � ���� X  J+����� k  `&�� ��� r  `m��� n `i��� I  ai������� 0 
getyeardif 
getYearDif� ��� o  ad���� 0 	startdate 	startDate� ���� o  de���� 0 soonday soonDay��  ��  �  f  `a� o      ���� 0 yeardif yearDif� ���� Z  n&������� l nw������ =  nw��� l nu������ `  nu   o  nq���� 0 yeardif yearDif o  qt���� "0 recurrenceinter recurrenceINTER��  ��  � m  uv����  ��  ��  � Z  z"���� l z����� E z� o  z}���� "0 recurrencemonth recurrenceMonth l }����� c  }�	 c  }�

 n  }� m  ~���
�� 
mnth o  }~���� 0 soonday soonDay m  ����
�� 
long	 m  ����
�� 
ctxt��  ��  ��  ��   Z  ����� l ������ =  �� n  �� 1  ����
�� 
day  o  ������ 0 soondate soonDate n  �� 1  ����
�� 
day  o  ������ 0 	startdate 	startDate��  ��   Z  ��� l ������ n  �� 1  ����
�� 
wrad o  ������ 0 e  ��  ��   k  ��  r  �� !  l ��"����" n  ��#$# 1  ����
�� 
wr1s$ o  ������ 0 e  ��  ��  ! o      ���� 0 	startdate 	startDate %��% r  ��&'& b  ��()( b  ��*+* b  ��,-, b  ��./. l ��0����0 [  ��121 o  ������ 0 soonday soonDay2 l ��3����3 n  ��454 1  ����
�� 
time5 o  ������ 0 	startdate 	startDate��  ��  ��  ��  / m  ��66 �77  ;- m  ��88 �99  A l l   D a y :  + l ��:����: n  ��;<; 1  ����
�� 
wr11< o  ������ 0 e  ��  ��  ) o  ����
�� 
ret ' n      =>=  ;  ��> o  ������ 0 calinfolist calInfoList��  ��   k  �?? @A@ r  ��BCB l ��D����D n  ��EFE 1  ����
�� 
wr1sF o  ������ 0 e  ��  ��  C o      ���� 0 	startdate 	startDateA GHG r  ��IJI l ��K����K n  ��LML 1  ����
�� 
wr5sM o  ������ 0 e  ��  ��  J o      ���� 0 enddate endDateH N��N r  �OPO b  �QRQ b  �STS b  �UVU b  �WXW b  ��YZY b  ��[\[ b  ��]^] l ��_����_ [  ��`a` o  ������ 0 soonday soonDaya l ��b����b n  ��cdc 1  ����
�� 
timed o  ������ 0 	startdate 	startDate��  ��  ��  ��  ^ m  ��ee �ff  ;\ l ��g����g n  ��hih 1  ����
�� 
tstri l ��j����j o  ������ 0 	startdate 	startDate��  ��  ��  ��  Z m  ��kk �ll  ;X l �m���m n  �non 1  �~
�~ 
tstro l �p�}�|p o  ��{�{ 0 enddate endDate�}  �|  ��  �  V m  
qq �rr  ;T l s�z�ys n  tut 1  �x
�x 
wr11u o  �w�w 0 e  �z  �y  R o  �v
�v 
ret P n      vwv  ;  w o  �u�u 0 calinfolist calInfoList��  ��  ��  ��  ��  ��  ��  ��  �� 0 soonday soonDay� o  MP�t�t 0 soondays soonDays��  ��  j k  .xx yzy l ..�s{|�s  { + %2.2.3.Y.4 One day per year recurrence   | �}} J 2 . 2 . 3 . Y . 4   O n e   d a y   p e r   y e a r   r e c u r r e n c ez ~~ I .5�r��q
�r .ascrcmnt****      � ****� m  .1�� ���  Y 4�q   ��p� X  6��o�� k  L�� ��� r  LY��� n LU��� I  MU�n��m�n 0 
getyeardif 
getYearDif� ��� o  MP�l�l 0 	startdate 	startDate� ��k� o  PQ�j�j 0 soonday soonDay�k  �m  �  f  LM� o      �i�i 0 yeardif yearDif� ��h� Z  Z���g�f� l Zc��e�d� =  Zc��� l Za��c�b� `  Za��� o  Z]�a�a 0 yeardif yearDif� o  ]`�`�` "0 recurrenceinter recurrenceINTER�c  �b  � m  ab�_�_  �e  �d  � Z  f���^�]� l f���\�[� F  f���� l fs��Z�Y� =  fs��� n  fk��� m  gk�X
�X 
mnth� o  fg�W�W 0 soonday soonDay� n  kr��� m  nr�V
�V 
mnth� o  kn�U�U 0 	startdate 	startDate�Z  �Y  � l v���T�S� =  v���� n  v{��� 1  w{�R
�R 
day � o  vw�Q�Q 0 soonday soonDay� n  {���� 1  ~��P
�P 
day � o  {~�O�O 0 	startdate 	startDate�T  �S  �\  �[  � Z  ����N�� l ����M�L� n  ����� 1  ���K
�K 
wrad� o  ���J�J 0 e  �M  �L  � k  ���� ��� r  ����� l ����I�H� n  ����� 1  ���G
�G 
wr1s� o  ���F�F 0 e  �I  �H  � o      �E�E 0 	startdate 	startDate� ��D� r  ����� b  ����� b  ����� b  ����� b  ����� l ����C�B� [  ����� o  ���A�A 0 soonday soonDay� l ����@�?� n  ����� 1  ���>
�> 
time� o  ���=�= 0 	startdate 	startDate�@  �?  �C  �B  � m  ���� ���  ;� m  ���� ���  A l l   D a y :  � l ����<�;� n  ����� 1  ���:
�: 
wr11� o  ���9�9 0 e  �<  �;  � o  ���8
�8 
ret � n      ���  ;  ��� o  ���7�7 0 calinfolist calInfoList�D  �N  � k  ��� ��� r  ����� l ����6�5� n  ����� 1  ���4
�4 
wr1s� o  ���3�3 0 e  �6  �5  � o      �2�2 0 	startdate 	startDate� ��� r  ����� l ����1�0� n  ����� 1  ���/
�/ 
wr5s� o  ���.�. 0 e  �1  �0  � o      �-�- 0 enddate endDate� ��,� r  ���� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� l ����+�*� [  ����� o  ���)�) 0 soonday soonDay� l ����(�'� n  ����� 1  ���&
�& 
time� o  ���%�% 0 	startdate 	startDate�(  �'  �+  �*  � m  ���� ���  ;� l ����$�#� n  ����� 1  ���"
�" 
tstr� l �� �!�   o  ���� 0 	startdate 	startDate�!  �   �$  �#  � m  �� �  ;� l ���� n  �� 1  ���
� 
tstr l ���� o  ���� 0 enddate endDate�  �  �  �  � m  �� �  ;� l ��	��	 n  ��

 1  ���
� 
wr11 o  ���� 0 e  �  �  � o  ���
� 
ret � n        ;   o  ��� 0 calinfolist calInfoList�,  �^  �]  �g  �f  �h  �o 0 soonday soonDay� o  9<�� 0 soondays soonDays�p  ��  ��  ��  � � l ����  �  �  �  ��  ��  ��  � 0 e  o o  ���� $0 recurrenceevents recurrenceEvents�  �x 0 c  � l  � ��� 6  � � 2   � ��

�
 
wres >  � � l  � ��	� 1   � ��
� 
pnam�	  �   m   � � �  A r c h i v e d�  �  � m   � ��                                                                                  wrbt  alis    V  Macintosh HD               �R�\H+   �97Calendar.app                                                    �A��GЯ        ����  	                Applications    �S!�      �HA/     �97  'Macintosh HD:Applications: Calendar.app     C a l e n d a r . a p p    M a c i n t o s h   H D  Applications/Calendar.app   / ��  �z  �y  �  l     ����  �  �    l '2�� r  '2 m  '* �     n     !"! 1  -1�
� 
txdl" 1  *-� 
�  
ascr�  �   #$# l 3<%����% r  3<&'& c  38()( o  36���� 0 calinfolist calInfoList) m  67��
�� 
TEXT' o      ���� 0 calinfolist calInfoList��  ��  $ *+* l     ��������  ��  ��  + ,-, l     ��./��  . 2 ,ADD recurrent events to the end of the list.   / �00 X A D D   r e c u r r e n t   e v e n t s   t o   t h e   e n d   o f   t h e   l i s t .- 121 l     ��34��  3 H BSort events using the mergeSortShort function (ADAPT it as needed)   4 �55 � S o r t   e v e n t s   u s i n g   t h e   m e r g e S o r t S h o r t   f u n c t i o n   ( A D A P T   i t   a s   n e e d e d )2 676 l     ��89��  8 h b-Each event listing would be it's own list within the list for the calendar within the ListOfLists   9 �:: � - E a c h   e v e n t   l i s t i n g   w o u l d   b e   i t ' s   o w n   l i s t   w i t h i n   t h e   l i s t   f o r   t h e   c a l e n d a r   w i t h i n   t h e   L i s t O f L i s t s7 ;<; l     ��=>��  = � �-NEED TO BE ABLE TO DIFFERENTIATE lists based on what calendar they came from. Maybe make a list for each calendar and merge them all at the end   > �??  - N E E D   T O   B E   A B L E   T O   D I F F E R E N T I A T E   l i s t s   b a s e d   o n   w h a t   c a l e n d a r   t h e y   c a m e   f r o m .   M a y b e   m a k e   a   l i s t   f o r   e a c h   c a l e n d a r   a n d   m e r g e   t h e m   a l l   a t   t h e   e n d< @A@ l     ��BC��  B  -		OR   C �DD 
 - 	 	 O RA EFE l     ��GH��  G l f-Add brackets to the list before and after each calendar so that it can be read back as separate lists   H �II � - A d d   b r a c k e t s   t o   t h e   l i s t   b e f o r e   a n d   a f t e r   e a c h   c a l e n d a r   s o   t h a t   i t   c a n   b e   r e a d   b a c k   a s   s e p a r a t e   l i s t sF JKJ l     ��������  ��  ��  K LML l =IN����N r  =IOPO 4  =E��Q
�� 
psxfQ l ADR����R m  ADSS �TT b / U s e r s / c o l i n d u r k i n / D o c u m e n t s / G e e k T o o l / C a l I n f o . t x t��  ��  P o      ���� 0 calinfofile calInfoFile��  ��  M UVU l     ��WX��  W ; 5converts path from POSIX format to Applescript format   X �YY j c o n v e r t s   p a t h   f r o m   P O S I X   f o r m a t   t o   A p p l e s c r i p t   f o r m a tV Z[Z l     ��������  ��  ��  [ \]\ l     ��^_��  ^ 5 / will delete previous CalInfo file if it exists   _ �`` ^   w i l l   d e l e t e   p r e v i o u s   C a l I n f o   f i l e   i f   i t   e x i s t s] aba l Jic����c Q  Jide��d O M`fgf I S_��h��
�� .coredeloobj        obj h 4  S[��i
�� 
filei o  WZ���� 0 calinfofile calInfoFile��  g m  MPjj�                                                                                  MACS  alis    t  Macintosh HD               �R�\H+   �9
Finder.app                                                      ����GЎ        ����  	                CoreServices    �S!�      �HA     �9 �9 �9  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  e R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  b klk l     ��������  ��  ��  l mnm l jqopqo I jq��r��
�� .sysoexecTEXT���     TEXTr m  jmss �tt X e c h o     >   $ H O M E / D o c u m e n t s / G e e k T o o l / C a l I n f o . t x t��  p > 8Creates an empty file (even if it is not the best style)   q �uu p C r e a t e s   a n   e m p t y   f i l e   ( e v e n   i f   i t   i s   n o t   t h e   b e s t   s t y l e )n vwv l r�xyzx I r���{|
�� .rdwrwritnull���     ****{ o  ru���� 0 calinfolist calInfoList| ��}~
�� 
refn} o  x{���� 0 calinfofile calInfoFile~ ����
�� 
wrat m  ~����  ��  y 1 +Saves the calendar info starting at space 0   z ��� V S a v e s   t h e   c a l e n d a r   i n f o   s t a r t i n g   a t   s p a c e   0w ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       b����������������������������������������������������������������������������������������������������������������������������������������������������������  � `������������������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�� &0 getprevioussunday getPreviousSunday�� 0 getmonthdif getMonthDif��  0 getmonthposday getMonthPosDay�� "0 getmonthweekday getMonthWeekday�� 0 
getyeardif 
getYearDif
�� .aevtoappnull  �   � ****�� 0 	todaydate 	todayDate�� 0 	tomordate 	tomorDate�� 0 
seconddate 
secondDate�� 0 	thirddate 	thirdDate�� 0 todayday todayDay�� 0 tomorday tomorDay�� 0 	secondday 	secondDay�� 0 thirdday thirdDay�� 0 todaywd todayWd�� 0 tomorwd tomorWd�� 0 secondwd secondWd� 0 thirdwd thirdWd�~ 0 calinfolist calInfoList�} 0 eventpresent eventPresent�| 0 onetimeevents oneTimeEvents�{ 0 	startdate 	startDate�z 0 enddate endDate�y $0 recurrenceevents recurrenceEvents�x  0 recurrenceinfo recurrenceInfo�w "0 recurrenceparts recurrenceParts�v 0 isuntil isUNTIL�u 0 lastdate lastDate�t 0 isinter isInter�s 0 isbyday isBYDAY�r 0 isbymonthday isBYMONTHDAY�q 0 
isbysetpos 
isBYSETPOS�p 0 	isbymonth 	isBYMONTH�o &0 recurrenceprefreq recurrencePreFREQ�n (0 recurrencepreinter recurrencePreINTER�m (0 recurrenceprebyday recurrencePreBYDAY�l  0 recurrencefreq recurrenceFREQ�k "0 recurrenceinter recurrenceINTER�j "0 recurrencebyday recurrenceBYDAY�i 0 recurrenceday recurrenceDay�h 0 startday startDay�g 0 soondays soonDays�f 0 firstsunday firstSunday�e 0 	nowsunday 	nowSunday�d 0 weekdif weekDif�c 0 datedif DateDif�b (0 recurrencepreuntil recurrencePreUNTIL�a "0 recurrenceuntil recurrenceUntil�` 0 lastyear lastYear�_ 0 	lastmonth 	lastMonth�^ 0 lastday lastDay�] 0 yeardif yearDif�\ 0 calinfofile calInfoFile�[  �Z  �Y  �X  �W  �V  �U  �T  �S  �R  �Q  �P  �O  �N  �M  �L  �K  �J  �I  �H  �G  �F  �E  �D  �C  �B  �A  �@  �?  �>  �=  �<  �;  �:  �9  �8  �7  �6  �5  �4  �3  �2  �1  � �0 ��/�.���-�0 &0 getprevioussunday getPreviousSunday�/ �,��, �  �+�+ 0 thedate theDate�.  � �*�)�(�* 0 thedate theDate�) 0 theweekdate theWeekDate�( 0 	thesunday 	theSunday� �'�& ��%�$ ��#,�"A�!
�' 
wkdy
�& 
TEXT
�% 
time
�$ 
days�# �" �! �- ���,�&E�O��  ���,k� E�Y m��  ���,l� E�Y Y��  ���,m� E�Y E��  ���,�� E�Y 1��  ���,�� E�Y ��  ���,�� E�Y 	���,E�O�� � g������  0 getmonthdif getMonthDif� ��� �  ��� 0 	startdate 	startDate� 0 currentdate currentDate�  � �������� 0 	startdate 	startDate� 0 currentdate currentDate� 0 startmonthint startMonthInt� 0 startyearint startYearInt� 0 currmonthint currMonthInt� 0 curryearint currYearInt� 0 thedif theDif� ����
� 
mnth
� 
long
� 
year� � /��,�&E�O��,�&E�O��,�&E�O��,�&E�O����� E�O�� ��������  0 getmonthposday getMonthPosDay� �
��
 �  �	���	 0 postype posType� 0 	posnumber 	posNumber� 0 currdate currDate�  � ������� ������������� 0 postype posType� 0 	posnumber 	posNumber� 0 currdate currDate� 0 themonth theMonth� 0 	totaldays 	totalDays� 0 lastday lastDay�  0 
lastdayint 
lastDayInt�� 0 firstofmonth firstOfMonth�� 0 firstday firstDay�� 0 thedoi theDOI�� &0 weekenddaycounter weekendDayCounter��  0 weekdaycounter weekDayCounter��  0 theweekcounter theWeekCounter� ����������������������������������I��������
�� 
long
�� 
mnth
�� 
year�� �� �� �� �� �� �� 
�� �� �� 
�� 
day 
�� 
days
�� 
time
�� 
wkdy
�� .ascrcmnt****      � ****�� 
�� 
bool�;��&E�O��,�&E�O�l  ��,�#j  �E�Y �E�Y �km������v  �E�Y �E�O����,� ��,E�O�a ,�&E�O���,k� ��,E�O�a ,�&E�O�l  �a j O�i  ��  �E�Y ��kE�OPY yjE�OjE�O��  �k  kE�Y lE�Y �k  kE�Y �E�O��  �E�Y ; 2hZ�kE�O��  Y hO�kE�O��  Y hO��E�[OY��O��E�OPY��  �a j O�i  ,lm��a �v� �E�Y ��  
�kE�Y �lE�Y �jE�OjE�O��  lE�Y E�k  kE�Y 9 &hZ�kE�O�� 
 ��� a & Y h[OY��O��  �E�Y lE�O�� V PhZjE�O *hZ�kE�O�kE�O�� 
 	�� a & Y h[OY��O��  ��E�OY hO�lE�[OY��Y hOPY %��  a j O�i  �E�Y �E�Y jE�O�� ������������ "0 getmonthweekday getMonthWeekday�� ����� �  ������ 0 	recurrday 	recurrDay�� 0 currdate currDate��  � �������������������������� 0 	recurrday 	recurrDay�� 0 currdate currDate�� 0 themonth theMonth�� 0 	totaldays 	totalDays�� 0 lastday lastDay�� 0 
lastdayint 
lastDayInt�� 0 firstofmonth firstOfMonth�� 0 firstday firstDay�� 0 
weeknumber 
weekNumber�� 0 isneg isNeg�� 0 	dayofweek 	dayOfWeek�� 0 thedoi theDOI� ����������������������������������������������
�� 
mnth
�� 
long
�� 
year�� �� �� �� �� �� �� 
�� �� �� 
�� 
day 
�� 
days
�� 
time
�� 
wkdy
�� 
ctxt
�� 
cha �� ��{��,�&E�O�l  ��,�#j  �E�Y �E�Y km������v� �E�Y �E�O����,� ��,E�O�a ,�&E�O���,k� ��,E�O�a ,�&E�O�a &E�O�a k/E�OfE�O�a   %a �a l/%E�O�a m/�a �/%E�OeE�Y �a l/�a m/%E�O�a   kE�Y M�a   lE�Y ?�a   mE�Y 1�a   �E�Y #�a   �E�Y �a   
a E�Y �E�O�e  4�� �����a l/k E�Y ����a l/k E�Y '�� ����k� kE�Y ���k� kE�O�� ������������� 0 
getyeardif 
getYearDif�� ����� �  ������ 0 	startdate 	startDate�� 0 currentdate currentDate��  � ������������ 0 	startdate 	startDate�� 0 currentdate currentDate�� 0 startyearint startYearInt�� 0 curryearint currYearInt�� 0 thedif theDif� ����
�� 
year
�� 
long�� ��,�&E�O��,�&E�O��E�O�� �����������
�� .aevtoappnull  �   � ****� k    ���  ��  !��  -��  9��  J��  T��  ^��  h��  t��  ���  ���  ��� ��� ��� ��� �� #�� L�� a�� m�� v����  ��  ��  � ���������� 0 c  �� 0 e  �� 0 r  �� 0 soonday soonDay� ���������������������������������������������������������������B�HN�k��~�~�}�|�{�z�y��x��w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�ch�by�a��`��_��^��]��\�[�Z!�Y4�XU�Wg�V�U��T��S�R���Q�P�O�N�M	>	@	m	s	y	�	��L�K�J�I�H	�
 
-
3
9
w
y
�
�
�
�
�
��G�F,.[ag~�E�D�C��	+�B|~�����A@FLXd|�@�?�>��$;�������=68ekq�����<S�;j�:�9�8�7s�6�5�4�3
�� .misccurdldt    ��� null�� 0 	todaydate 	todayDate�� �� <�� 0 	tomordate 	tomorDate�� 0�� 0 
seconddate 
secondDate�� H�� 0 	thirddate 	thirdDate
�� 
time�� 0 todayday todayDay�� 0 tomorday tomorDay�� 0 	secondday 	secondDay�� 0 thirdday thirdDay
�� 
wkdy
�� 
TEXT
�� 
ctxt�� 0 todaywd todayWd�� 0 tomorwd tomorWd�� 0 secondwd secondWd�� 0 thirdwd thirdWd�� 0 calinfolist calInfoList�� 0 eventpresent eventPresent
�� 
wres�  
� 
pnam
� 
kocl
� 
cobj
� .corecnte****       ****
� 
wrev
� 
wr1s
� 
wrad� 0 onetimeevents oneTimeEvents� 0 	startdate 	startDate
� 
wr11
� 
ret 
� 
wr5s� 0 enddate endDate
� 
tstr
� 
wr15� $0 recurrenceevents recurrenceEvents�  0 recurrenceinfo recurrenceInfo
�~ 
ascr
�} 
txdl
�| 
citm
�{ 
list�z "0 recurrenceparts recurrenceParts�y 0 isuntil isUNTIL�x (0 recurrencepreuntil recurrencePreUNTIL�w "0 recurrenceuntil recurrenceUntil
�v 
cha �u �t 0 lastyear lastYear�s �r 
�q 
long�p 0 	lastmonth 	lastMonth�o �n �m 0 lastday lastDay�l 0 lastdate lastDate
�k 
day 
�j 
mnth
�i 
year
�h 
hour�g 0 isinter isInter�f 0 isbyday isBYDAY�e 0 isbymonthday isBYMONTHDAY�d 0 
isbysetpos 
isBYSETPOS�c 0 	isbymonth 	isBYMONTH�b &0 recurrenceprefreq recurrencePreFREQ�a (0 recurrencepreinter recurrencePreINTER�` (0 recurrenceprebyday recurrencePreBYDAY�_ 20 recurrenceprebymonthday recurrencePreBYMONTHDAY�^ .0 recurrenceprebysetpos recurrencePreBYSETPOS�] ,0 recurrenceprebymonth recurrencePreBYMONTH�\  0 recurrencefreq recurrenceFREQ�[ "0 recurrenceinter recurrenceINTER�Z "0 recurrencebyday recurrenceBYDAY�Y 0 recurrenceday recurrenceDay�X ,0 recurrencebymonthday recurrenceBYMONTHDAY�W (0 recurrencemonthday recurrenceMonthDay�V (0 recurrencebysetpos recurrenceBYSETPOS�U &0 recurrencebymonth recurrenceBYMONTH�T "0 recurrencemonth recurrenceMonth�S 0 startday startDay�R 0 soondays soonDays
�Q .ascrcmnt****      � ****
�P 
days�O 0 datedif DateDif
�N 
ldt 
�M 
bool�L &0 getprevioussunday getPreviousSunday�K 0 firstsunday firstSunday�J 0 	nowsunday 	nowSunday
�I 
week�H 0 weekdif weekDif�G 0 getmonthdif getMonthDif�F 0 monthdif monthDif�E 0 daytype dayType�D  0 getmonthposday getMonthPosDay�C 0 monthday monthDay�B "0 getmonthweekday getMonthWeekday�A 0 
dayofmonth 
dayOfMonth�@ 0 
getyeardif 
getYearDif�? 0 yeardif yearDif�> 0 yearday yearDay�= 0 soondate soonDate
�< 
psxf�; 0 calinfofile calInfoFile
�: 
file
�9 .coredeloobj        obj �8  �7  
�6 .sysoexecTEXT���     TEXT
�5 
refn
�4 
wrat
�3 .rdwrwritnull���     ****���*j  E�O��� � E�O��� � E�O��� � E�O���,E�O���,E�O���,E�O���,E�O��,�&[a \[Zk\Zl2E` O��,�&[a \[Zk\Zl2E` O��,�&[a \[Zk\Zl2E` O��,�&[a \[Zk\Zl2E` OjvE` OfE` Oa vs*a -a [a ,\Za 91[a a l kh  fE` O�a -a [[[a  ,\Z�;\[a  ,\Z�<A\[[[a  ,\Z�;\[a  ,\Z�<A\[a !,\Ze8AB1E` "O �_ "[a a l kh �a !,E )�a  ,E` #O_ #a $%a %%�a &,%_ '%_ 6FY D�a  ,E` #O�a (,E` )O_ #a *%_ #a +,%a ,%_ )a +,%a -%�a &,%_ '%_ 6F[OY��O�a -a [[a  ,\Z�=\[a .,\Za />A1E` 0OG_ 0[a a l kh �a .,E` 1Oa 2kv_ 3a 4,FO_ 1a 5-a 6&E` 7OfE` 8O 9k_ 7j kh _ 7a �/a 9 _ 7a �/E` :OeE` 8Y h[OY��O_ 8e  �a ;kv_ 3a 4,FO_ :a 5-a l/a &E` <O_ <a =k/_ <a =l/%_ <a =m/%_ <a =a >/%E` ?O_ <a =a @/_ <a =a A/%a B&E` CO_ <a =a D/_ <a =a E/%a B&E` FO�EQ` GO_ F_ Ga H,FO_ C_ Ga I,FO_ ?_ Ga J,FY ��_ K E` GO�_ G�fffffa @vE[a k/E` LZ[a l/E` MZ[a m/E` NZ[a a >/E` OZ[a a @/E` PZO �k_ 7j kh _ 7a �/a Q _ 7a �/E` RY hO_ 7a �/a S _ 7a �/E` TOeE` LY hO_ 7a �/a U _ 7a �/E` VOeE` MY hO_ 7a �/a W _ 7a �/E` XOeE` NY hO_ 7a �/a Y _ 7a �/E` ZOeE` OY hO_ 7a �/a [ _ 7a �/E` \OeE` PY h[OY�Oa ]kv_ 3a 4,FO_ Ra 5-a l/E` ^O_ Le  _ Ta 5-a l/E` _Y hO_ Me  ?_ Va 5-a l/E` `Oa akv_ 3a 4,FO_ `a 5-E` bOa ckv_ 3a 4,FOPY hO_ Ne  =_ Xa 5-a l/E` dOa ekv_ 3a 4,FO_ da 5-E` fOa gkv_ 3a 4,FY hO_ Oe  _ Za 5-a l/E` hY hO_ Pe  =_ \a 5-a l/E` iOa jkv_ 3a 4,FO_ ia 5-E` kOa lkv_ 3a 4,FY hO�a  ,E` #O_ #_ #�,E` mO����a >vE` nO_ ^a o  �a pj qO_ Lf  
kE` _Y hO �_ n[a a l kh �_ m_ r!E` sO_ s_ _#j  ��a t&�a t&
 _ #a +,�a +,a u& �a !,E -�a  ,E` #O�_ #�,a v%a w%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a x%_ #a +,%a y%_ )a +,%a z%�a &,%_ '%_ 6FY hY h[OY�<OPY	d_ ^a { �a |j qO_ Lf  
kE` _Y hO)_ #k+ }E` ~O�_ n[a a l kh )�k+ }E` O_ _ ~_ �!E` �O_ �_ _#j L_ Me @_ b��,�&[a \[Zk\Zl2 �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY �_ #�,�&[a \[Zk\Zl2��,�&[a \[Zk\Zl2  �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY hY h[OY��OPY�_ ^a � �a �j qO_ Lf  
kE` _Y hO_ Ne  �a �j qO �_ n[a a l kh )_ #�l+ �E` �O_ �_ _#j  �_ f�a H, �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY h[OY�RY�_ Oe  �a �j qO_ bj E` �O �_ n[a a l kh )_ #�l+ �E` �O_ �_ _#j  �)_ �_ h�m+ �E` �O�a H,_ �  �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY h[OY�AY�_ Me  �a �j qO �_ n[a a l kh )_ #�l+ �E` �O_ �_ _#j  �)_ b�l+ �E` �O�a H,_ �  �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY h[OY�DY �a �j qO_ #a H,E` �O �_ n[a a l kh )_ #�l+ �E` �O_ �_ _#j  ��a H,_ �  �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY h[OY�RY�_ ^a � �a �j qO_ Oe a �j qO_ bj E` �O �_ n[a a l kh )_ #�l+ �E` �O_ �_ _#j  �_ k�a I,a B&a & �)_ �_ h�m+ �E` �O�a H,_ �  �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY hY h[OY�)Y�_ Me  �a �j qO �_ n[a a l kh )_ #�l+ �E` �O_ �_ _#j  �_ k�a I,a B&a & �)_ b�l+ �E` �O�a H,_ �  �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY hY h[OY�,Y�_ Pe  �a �j qO �_ n[a a l kh )_ #�l+ �E` �O_ �_ _#j  �_ k�a I,a B&a & �_ �a H,_ #a H,  �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY hY h[OY�4Y �a �j qO �_ n[a a l kh )_ #�l+ �E` �O_ �_ _#j  ��a I,_ #a I, 	 �a H,_ #a H, a u& �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY h[OY�:Y hOPY h[OY��[OY�UOa �_ 3a 4,FO_ �&E` O)a �a �/E` �O a � *a �_ �/j �UW X � �hOa �j �O_ a �_ �a �ja > �� ldt     ���� ldt     �2y� ldt     ���� ldt     ��y� ldt     �� � ldt     �L�� ldt     �� � ldt     ��� ���  T h� ���  F r� ���  S a� ���  S u� ���n S u n d a y ,   A p r i l   2 ,   2 0 1 7   a t   1 6 : 0 0 : 0 0 ; 1 6 : 0 0 : 0 0 ; 1 7 : 0 0 : 0 0 ; S o c c e r  S u n d a y ,   A p r i l   2 ,   2 0 1 7   a t   0 9 : 0 0 : 0 0 ; 0 9 : 0 0 : 0 0 ; 1 0 : 0 0 : 0 0 ; L a u n d r y  F r i d a y ,   M a r c h   3 1 ,   2 0 1 7   a t   1 0 : 0 0 : 0 0 ; 1 0 : 0 0 : 0 0 ; 1 8 : 0 0 : 0 0 ; S i m p l y   M a c 
�� boovfals� �2��2  �   � ldt     ��� � ldt     �I�� �1��1  �   � ��� , F R E Q = W E E K L Y ; I N T E R V A L = 1� �0��0 �  ���/�.�-�,�+�*�)�(�'�&�%�$�#�"� ���  F R E Q = W E E K L Y� ���  I N T E R V A L = 1�/  �.  �-  �,  �+  �*  �)  �(  �'  �&  �%  �$  �#  �"  
�� boovfals� ldt     �2y
�� boovtrue
�� boovfals
�� boovfals
�� boovfals
�� boovfals� ���  B Y D A Y = M O , W E� ���  W E E K L Y� ���  1� ��� 
 M O , W E� �!��! �  ��� �������������� ���  M O� ���  W E�   �  �  �  �  �  �  �  �  �  �  �  �  �  � ldt     ��b�� ��� �  ����� ldt     ��� � ldt     ��� @      � @@      � ��� , U N T I L = 2 0 1 7 0 5 0 5 T 0 7 0 0 0 0 Z� ���   2 0 1 7 0 5 0 5 T 0 7 0 0 0 0 Z� ���  2 0 1 7�� �� ��  � <furlfile:///Users/colindurkin/Documents/GeekTool/CalInfo.txt��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ascr  ��ޭ