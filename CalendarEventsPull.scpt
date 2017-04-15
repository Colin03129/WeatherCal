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
�| boovfals� o      �{�{ 0 eventpresent eventPresent�~  �}  � ��� l  �.��z�y� O   �.��� X   �-��x�� k   �(�� ��� r   � ���� m   � ��w
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
wr15j m  ��kk �ll  F R E Q�  �  ] o      �� $0 recurrenceevents recurrenceEvents[ m�m X  �(n�on k  �#pp qrq r  ��sts l ��u��u n  ��vwv 1  ���
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
hour% o      ���� 0 lastdate lastDate" * $There is no UNTIL date in recurrence   # �** H T h e r e   i s   n o   U N T I L   d a t e   i n   r e c u r r e n c e� +,+ l !!��������  ��  ��  , -.- l !!��/0��  / - '2.2 Checks if event is still reoccuring   0 �11 N 2 . 2   C h e c k s   i f   e v e n t   i s   s t i l l   r e o c c u r i n g. 2��2 Z  !#34����3 l !&5����5 A  !&676 o  !"���� 0 	todaydate 	todayDate7 o  "%���� 0 lastdate lastDate��  ��  4 k  )88 9:9 l ))��������  ��  ��  : ;<; l ))��=>��  = B <2.2.1 Get frequency of recurrence, as well as other measures   > �?? x 2 . 2 . 1   G e t   f r e q u e n c y   o f   r e c u r r e n c e ,   a s   w e l l   a s   o t h e r   m e a s u r e s< @A@ r  )nBCB J  )2DD EFE m  )*��
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
time� o  ������ 0 	startdate 	startDate��  ��  � o      ���� 0 startday startDay� ��� r  ����� J  ���� ��� o  ������ 0 todayday todayDay� ��� o  ������ 0 tomorday tomorDay� ��� o  ������ 0 	secondday 	secondDay� ���� o  ������ 0 thirdday thirdDay��  � o      ���� 0 soondays soonDays� ��� l ����������  ��  ��  � ��� l ��������  � d ^2.2.3 Get the original start date of reoccurence and see if it is occuring within the next 72h   � ��� � 2 . 2 . 3   G e t   t h e   o r i g i n a l   s t a r t   d a t e   o f   r e o c c u r e n c e   a n d   s e e   i f   i t   i s   o c c u r i n g   w i t h i n   t h e   n e x t   7 2 h� ��� Z  ������� l �������� =  ����� o  ������  0 recurrencefreq recurrenceFREQ� m  ���� ��� 
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
 ' !mod returns remainder of division   	 �	�	� B m o d   r e t u r n s   r e m a i n d e r   o f   d i v i s i o n��  ��  ��  �� 0 soonday soonDay� o  ���?�? 0 soondays soonDays� 	��>	� l ���=�<�;�=  �<  �;  �>  � 	�	�	� l ��	��:�9	� =  ��	�	�	� o  ���8�8  0 recurrencefreq recurrenceFREQ	� m  ��	�	� �	�	�  W E E K L Y�:  �9  	� 	�	�	� k  �{	�	� 	�	�	� l ���7	�	��7  	� / )2.2.3.W Check recurrence of weekly events   	� �	�	� R 2 . 2 . 3 . W   C h e c k   r e c u r r e n c e   o f   w e e k l y   e v e n t s	� 	�	�	� I ���6	��5
�6 .ascrcmnt****      � ****	� m  ��	�	� �	�	�  W E E K L Y�5  	� 	�	�	� Z  ��	�	��4�3	� l ��	��2�1	� =  ��	�	�	� o  ���0�0 0 isinter isInter	� m  ���/
�/ boovfals�2  �1  	� r  ��	�	�	� m  ���.�. 	� o      �-�- "0 recurrenceinter recurrenceINTER�4  �3  	� 	�	�	� r  ��	�	�	� n ��	�	�	� I  ���,	��+�, &0 getprevioussunday getPreviousSunday	� 	��*	� o  ���)�) 0 	startdate 	startDate�*  �+  	�  f  ��	� o      �(�( 0 firstsunday firstSunday	� 	�	�	� l ���'	�	��'  	� N Hneed to use "my" when calling function (aka subroutine) from inside tell   	� �	�	� � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l l	� 	�	�	� X  �y	��&	�	� k  �t	�	� 	�	�	� r  �	�	�	� n � 	�	�	� I  � �%	��$�% &0 getprevioussunday getPreviousSunday	� 	��#	� o  ���"�" 0 soonday soonDay�#  �$  	�  f  ��	� o      �!�! 0 	nowsunday 	nowSunday	� 	�	�	� r  	�	�	� ^  	�	�	� l 	�� �	� \  	�	�	� o  �� 0 	nowsunday 	nowSunday	� o  �� 0 firstsunday firstSunday�   �  	� 1  �
� 
week	� o      �� 0 weekdif weekDif	� 	�	�	� I �	��
� .ascrcmnt****      � ****	� o  �� 0 weekdif weekDif�  	� 	��	� Z  t	�	���	� l &	���	� =  &	�	�	� l $	���	� `  $	�	�	� o   �� 0 weekdif weekDif	� o   #�� "0 recurrenceinter recurrenceINTER�  �  	� m  $%��  �  �  	� Z  )p	�	�	��	� l ).	���	� =  ).	�	�	� o  ),�
�
 0 isbyday isBYDAY	� m  ,-�	
�	 boovtrue�  �  	� Z  1�	�	���	� l 1F	���	� E 1F	�	�	� o  14�� 0 recurrenceday recurrenceDay	� n  4E	�	�	� 7 9E�	�	�
� 
ctxt	� m  ?A�� 	� m  BD�� 	� l 49	�� ��	� c  49	�	�	� n  47	�	�	� m  57��
�� 
wkdy	� o  45���� 0 soonday soonDay	� m  78��
�� 
TEXT�   ��  �  �  	� Z  I�	�	���	�	� l IO	�����	� n  IO	�	�	� 1  JN��
�� 
wrad	� o  IJ���� 0 e  ��  ��  	� k  Rz	�	� 	�	�	� r  R[	�	�	� l RW	�����	� n  RW	�	�	� 1  SW��
�� 
wr1s	� o  RS���� 0 e  ��  ��  	� o      ���� 0 	startdate 	startDate	� 	���	� r  \z	�	�	� b  \u	�	�	� b  \q	�	�	� b  \k	�	�	� b  \g	�	�	� l \c	�����	� [  \c	�	�	� o  \]���� 0 soonday soonDay	� l ]b	�����	� n  ]b	�
 	� 1  `b��
�� 
time
  o  ]`���� 0 	startdate 	startDate��  ��  ��  ��  	� m  cf

 �

  ;	� m  gj

 �

  A l l   D a y :  	� l kp
����
 n  kp


 1  lp��
�� 
wr11
 o  kl���� 0 e  ��  ��  	� o  qt��
�� 
ret 	� n      

	
  ;  xy
	 o  ux���� 0 calinfolist calInfoList��  ��  	� k  }�



 


 r  }�


 l }�
����
 n  }�


 1  ~���
�� 
wr1s
 o  }~���� 0 e  ��  ��  
 o      ���� 0 	startdate 	startDate
 


 r  ��


 l ��
����
 n  ��


 1  ����
�� 
wr5s
 o  ������ 0 e  ��  ��  
 o      ���� 0 enddate endDate
 
��
 r  ��


 b  ��


 b  ��


 b  ��
 
!
  b  ��
"
#
" b  ��
$
%
$ b  ��
&
'
& b  ��
(
)
( l ��
*����
* [  ��
+
,
+ o  ������ 0 soonday soonDay
, l ��
-����
- n  ��
.
/
. 1  ����
�� 
time
/ o  ������ 0 	startdate 	startDate��  ��  ��  ��  
) m  ��
0
0 �
1
1  ;
' l ��
2����
2 n  ��
3
4
3 1  ����
�� 
tstr
4 l ��
5����
5 o  ������ 0 	startdate 	startDate��  ��  ��  ��  
% m  ��
6
6 �
7
7  ;
# l ��
8����
8 n  ��
9
:
9 1  ����
�� 
tstr
: l ��
;����
; o  ������ 0 enddate endDate��  ��  ��  ��  
! m  ��
<
< �
=
=  ;
 l ��
>����
> n  ��
?
@
? 1  ����
�� 
wr11
@ o  ������ 0 e  ��  ��  
 o  ����
�� 
ret 
 n      
A
B
A  ;  ��
B o  ������ 0 calinfolist calInfoList��  �  �  	� 
C
D
C l ��
E����
E =  ��
F
G
F n  ��
H
I
H 7 ����
J
K
�� 
ctxt
J m  ������ 
K m  ������ 
I l ��
L����
L c  ��
M
N
M n  ��
O
P
O m  ����
�� 
wkdy
P o  ������ 0 	startdate 	startDate
N m  ����
�� 
TEXT��  ��  
G n  ��
Q
R
Q 7 ����
S
T
�� 
ctxt
S m  ������ 
T m  ������ 
R l ��
U����
U c  ��
V
W
V n  ��
X
Y
X m  ����
�� 
wkdy
Y o  ������ 0 soonday soonDay
W m  ����
�� 
TEXT��  ��  ��  ��  
D 
Z��
Z Z  �l
[
\��
]
[ l ��
^����
^ n  ��
_
`
_ 1  ����
�� 
wrad
` o  ������ 0 e  ��  ��  
\ k  �#
a
a 
b
c
b r  �
d
e
d l � 
f����
f n  � 
g
h
g 1  � ��
�� 
wr1s
h o  ������ 0 e  ��  ��  
e o      ���� 0 	startdate 	startDate
c 
i��
i r  #
j
k
j b  
l
m
l b  
n
o
n b  
p
q
p b  
r
s
r l 
t����
t [  
u
v
u o  ���� 0 soonday soonDay
v l 
w����
w n  
x
y
x 1  	��
�� 
time
y o  	���� 0 	startdate 	startDate��  ��  ��  ��  
s m  
z
z �
{
{  ;
q m  
|
| �
}
}  A l l   D a y :  
o l 
~����
~ n  

�
 1  ��
�� 
wr11
� o  ���� 0 e  ��  ��  
m o  ��
�� 
ret 
k n      
�
�
�  ;  !"
� o  !���� 0 calinfolist calInfoList��  ��  
] k  &l
�
� 
�
�
� r  &/
�
�
� l &+
�����
� n  &+
�
�
� 1  '+��
�� 
wr1s
� o  &'���� 0 e  ��  ��  
� o      ���� 0 	startdate 	startDate
� 
�
�
� r  09
�
�
� l 05
�����
� n  05
�
�
� 1  15��
�� 
wr5s
� o  01���� 0 e  ��  ��  
� o      ���� 0 enddate endDate
� 
���
� r  :l
�
�
� b  :g
�
�
� b  :c
�
�
� b  :]
�
�
� b  :Y
�
�
� b  :Q
�
�
� b  :M
�
�
� b  :E
�
�
� l :A
�����
� [  :A
�
�
� o  :;���� 0 soonday soonDay
� l ;@
�����
� n  ;@
�
�
� 1  >@��
�� 
time
� o  ;>���� 0 	startdate 	startDate��  ��  ��  ��  
� m  AD
�
� �
�
�  ;
� l EL
�����
� n  EL
�
�
� 1  HL��
�� 
tstr
� l EH
���~
� o  EH�}�} 0 	startdate 	startDate�  �~  ��  ��  
� m  MP
�
� �
�
�  ;
� l QX
��|�{
� n  QX
�
�
� 1  TX�z
�z 
tstr
� l QT
��y�x
� o  QT�w�w 0 enddate endDate�y  �x  �|  �{  
� m  Y\
�
� �
�
�  ;
� l ]b
��v�u
� n  ]b
�
�
� 1  ^b�t
�t 
wr11
� o  ]^�s�s 0 e  �v  �u  
� o  cf�r
�r 
ret 
� n      
�
�
�  ;  jk
� o  gj�q�q 0 calinfolist calInfoList��  ��  �  �  �  �  �& 0 soonday soonDay	� o  ���p�p 0 soondays soonDays	� 
��o
� l zz�n�m�l�n  �m  �l  �o  	� 
�
�
� l ~�
��k�j
� =  ~�
�
�
� o  ~��i�i  0 recurrencefreq recurrenceFREQ
� m  ��
�
� �
�
�  M O N T H L Y�k  �j  
� 
�
�
� k  �&
�
� 
�
�
� l ���h
�
��h  
� 0 *2.2.3.M Check recurrence of monthly events   
� �
�
� T 2 . 2 . 3 . M   C h e c k   r e c u r r e n c e   o f   m o n t h l y   e v e n t s
� 
�
�
� I ���g
��f
�g .ascrcmnt****      � ****
� m  ��
�
� �
�
�  M O N T H L Y�f  
� 
�
�
� Z  ��
�
��e�d
� l ��
��c�b
� =  ��
�
�
� o  ���a�a 0 isinter isInter
� m  ���`
�` boovfals�c  �b  
� r  ��
�
�
� m  ���_�_ 
� o      �^�^ "0 recurrenceinter recurrenceINTER�e  �d  
� 
��]
� Z  �&
�
�
�
�
� l ��
��\�[
� =  ��
�
�
� o  ���Z�Z 0 isbymonthday isBYMONTHDAY
� m  ���Y
�Y boovtrue�\  �[  
� k  �	u
�
� 
�
�
� l ���X
�
��X  
� = 72.2.3.M.1 Check events recurring several days per month   
� �
�
� n 2 . 2 . 3 . M . 1   C h e c k   e v e n t s   r e c u r r i n g   s e v e r a l   d a y s   p e r   m o n t h
� 
�
�
� I ���W
��V
�W .ascrcmnt****      � ****
� m  ��
�
� �
�
�  M 1�V  
� 
��U
� X  �	u
��T
�
� k  �	p
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
� I  ���S
��R�S 0 getmonthdif getMonthDif
� 
�
�
� o  ���Q�Q 0 	startdate 	startDate
� 
��P
� o  ���O�O 0 soonday soonDay�P  �R  
�  f  ��
� o      �N�N 0 monthdif monthDif
� 
�
�
� l ���M
�
��M  
� N Hneed to use "my" when calling function (aka subroutine) from inside tell   
� �
�
� � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l l
�  �L  Z  �	p�K�J l ���I�H =  �� l ���G�F `  �� o  ���E�E 0 monthdif monthDif o  ���D�D "0 recurrenceinter recurrenceINTER�G  �F   m  ���C�C  �I  �H   Z  �	l	
�B�A	 l ���@�? E �� o  ���>�> (0 recurrencemonthday recurrenceMonthDay n  �� 1  ���=
�= 
day  o  ���<�< 0 soonday soonDay�@  �?  
 Z  �	h�; l ���:�9 n  �� 1  ���8
�8 
wrad o  ���7�7 0 e  �:  �9   k  �	  r  �	  l ���6�5 n  �� 1  ���4
�4 
wr1s o  ���3�3 0 e  �6  �5   o      �2�2 0 	startdate 	startDate �1 r  		  b  		!"! b  		#$# b  		%&% b  		'(' l 		)�0�/) [  		*+* o  		�.�. 0 soonday soonDay+ l 		,�-�,, n  		-.- 1  		�+
�+ 
time. o  		�*�* 0 	startdate 	startDate�-  �,  �0  �/  ( m  		// �00  ;& m  		11 �22  A l l   D a y :  $ l 		3�)�(3 n  		454 1  		�'
�' 
wr115 o  		�&�& 0 e  �)  �(  " o  		�%
�% 
ret   n      676  ;  		7 o  		�$�$ 0 calinfolist calInfoList�1  �;   k  	"	h88 9:9 r  	"	+;<; l 	"	'=�#�"= n  	"	'>?> 1  	#	'�!
�! 
wr1s? o  	"	#� �  0 e  �#  �"  < o      �� 0 	startdate 	startDate: @A@ r  	,	5BCB l 	,	1D��D n  	,	1EFE 1  	-	1�
� 
wr5sF o  	,	-�� 0 e  �  �  C o      �� 0 enddate endDateA G�G r  	6	hHIH b  	6	cJKJ b  	6	_LML b  	6	YNON b  	6	UPQP b  	6	MRSR b  	6	ITUT b  	6	AVWV l 	6	=X��X [  	6	=YZY o  	6	7�� 0 soonday soonDayZ l 	7	<[��[ n  	7	<\]\ 1  	:	<�
� 
time] o  	7	:�� 0 	startdate 	startDate�  �  �  �  W m  	=	@^^ �__  ;U l 	A	H`��` n  	A	Haba 1  	D	H�
� 
tstrb l 	A	Dc��c o  	A	D�� 0 	startdate 	startDate�  �  �  �  S m  	I	Ldd �ee  ;Q l 	M	Tf��
f n  	M	Tghg 1  	P	T�	
�	 
tstrh l 	M	Pi��i o  	M	P�� 0 enddate endDate�  �  �  �
  O m  	U	Xjj �kk  ;M l 	Y	^l��l n  	Y	^mnm 1  	Z	^�
� 
wr11n o  	Y	Z�� 0 e  �  �  K o  	_	b�
� 
ret I n      opo  ;  	f	gp o  	c	f� �  0 calinfolist calInfoList�  �B  �A  �K  �J  �L  �T 0 soonday soonDay
� o  ������ 0 soondays soonDays�U  
� qrq l 	x	}s����s =  	x	}tut o  	x	{���� 0 
isbysetpos 
isBYSETPOSu m  	{	|��
�� boovtrue��  ��  r vwv k  	�
hxx yzy l 	�	���{|��  { d ^2.2.3.M.2 Check events recurring on weekDays, weekendDays, or Days from start/end of the month   | �}} � 2 . 2 . 3 . M . 2   C h e c k   e v e n t s   r e c u r r i n g   o n   w e e k D a y s ,   w e e k e n d D a y s ,   o r   D a y s   f r o m   s t a r t / e n d   o f   t h e   m o n t hz ~~ I 	�	������
�� .ascrcmnt****      � ****� m  	�	��� ���  M 2��   ��� l 	�	����� r  	�	���� I 	�	������
�� .corecnte****       ****� o  	�	����� 0 recurrenceday recurrenceDay��  � o      ���� 0 daytype dayType�   2, 5, or 7   � ���    2 ,   5 ,   o r   7� ���� X  	�
h����� k  	�
c�� ��� r  	�	���� n 	�	���� I  	�	�������� 0 getmonthdif getMonthDif� ��� o  	�	����� 0 	startdate 	startDate� ���� o  	�	����� 0 soonday soonDay��  ��  �  f  	�	�� o      ���� 0 monthdif monthDif� ��� l 	�	�������  � N Hneed to use "my" when calling function (aka subroutine) from inside tell   � ��� � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l l� ���� Z  	�
c������� l 	�	������� =  	�	���� l 	�	������� `  	�	���� o  	�	����� 0 monthdif monthDif� o  	�	����� "0 recurrenceinter recurrenceINTER��  ��  � m  	�	�����  ��  ��  � k  	�
_�� ��� r  	�	���� n 	�	���� I  	�	��������  0 getmonthposday getMonthPosDay� ��� o  	�	����� 0 daytype dayType� ��� o  	�	����� (0 recurrencebysetpos recurrenceBYSETPOS� ���� o  	�	����� 0 soonday soonDay��  ��  �  f  	�	�� o      ���� 0 monthday monthDay� ���� Z  	�
_������� l 	�	������� =  	�	���� l 	�	������� n  	�	���� 1  	�	���
�� 
day � o  	�	����� 0 soonday soonDay��  ��  � o  	�	����� 0 monthday monthDay��  ��  � Z  	�
[������ l 	�	������� n  	�	���� 1  	�	���
�� 
wrad� o  	�	����� 0 e  ��  ��  � k  	�
�� ��� r  	�	���� l 	�	������� n  	�	���� 1  	�	���
�� 
wr1s� o  	�	����� 0 e  ��  ��  � o      ���� 0 	startdate 	startDate� ���� r  	�
��� b  	�
��� b  	�
	��� b  	�
��� b  	�	���� l 	�	������� [  	�	���� o  	�	����� 0 soonday soonDay� l 	�	������� n  	�	���� 1  	�	���
�� 
time� o  	�	����� 0 	startdate 	startDate��  ��  ��  ��  � m  	�	��� ���  ;� m  	�
�� ���  A l l   D a y :  � l 

������ n  

��� 1  

��
�� 
wr11� o  

���� 0 e  ��  ��  � o  
	
��
�� 
ret � n      ���  ;  

� o  

���� 0 calinfolist calInfoList��  ��  � k  

[�� ��� r  

��� l 

������ n  

��� 1  

��
�� 
wr1s� o  

���� 0 e  ��  ��  � o      ���� 0 	startdate 	startDate� ��� r  

(��� l 

$������ n  

$��� 1  
 
$��
�� 
wr5s� o  

 ���� 0 e  ��  ��  � o      ���� 0 enddate endDate� ���� r  
)
[��� b  
)
V��� b  
)
R��� b  
)
L��� b  
)
H��� b  
)
@   b  
)
< b  
)
4 l 
)
0���� [  
)
0 o  
)
*���� 0 soonday soonDay l 
*
/	����	 n  
*
/

 1  
-
/��
�� 
time o  
*
-���� 0 	startdate 	startDate��  ��  ��  ��   m  
0
3 �  ; l 
4
;���� n  
4
; 1  
7
;��
�� 
tstr l 
4
7���� o  
4
7���� 0 	startdate 	startDate��  ��  ��  ��   m  
<
? �  ;� l 
@
G���� n  
@
G 1  
C
G��
�� 
tstr l 
@
C���� o  
@
C���� 0 enddate endDate��  ��  ��  ��  � m  
H
K �  ;� l 
L
Q���� n  
L
Q 1  
M
Q��
�� 
wr11 o  
L
M���� 0 e  ��  ��  � o  
R
U��
�� 
ret � n        ;  
Y
Z o  
V
Y���� 0 calinfolist calInfoList��  ��  ��  ��  ��  ��  ��  �� 0 soonday soonDay� o  	�	����� 0 soondays soonDays��  w   l 
k
p!����! =  
k
p"#" o  
k
n���� 0 isbyday isBYDAY# m  
n
o��
�� boovtrue��  ��    $��$ k  
sL%% &'& l 
s
s��()��  ( W Q2.2.3.M.3 Check events recurring on specific weekdays from start/end of the month   ) �** � 2 . 2 . 3 . M . 3   C h e c k   e v e n t s   r e c u r r i n g   o n   s p e c i f i c   w e e k d a y s   f r o m   s t a r t / e n d   o f   t h e   m o n t h' +,+ I 
s
z��-��
�� .ascrcmnt****      � ****- m  
s
v.. �//  M 3��  , 0��0 X  
{L1��21 k  
�G33 454 r  
�
�676 n 
�
�898 I  
�
���:���� 0 getmonthdif getMonthDif: ;<; o  
�
����� 0 	startdate 	startDate< =��= o  
�
����� 0 soonday soonDay��  ��  9  f  
�
�7 o      ���� 0 monthdif monthDif5 >?> l 
�
���@A��  @ N Hneed to use "my" when calling function (aka subroutine) from inside tell   A �BB � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l l? C��C Z  
�GDE���D l 
�
�F�~�}F =  
�
�GHG l 
�
�I�|�{I `  
�
�JKJ o  
�
��z�z 0 monthdif monthDifK o  
�
��y�y "0 recurrenceinter recurrenceINTER�|  �{  H m  
�
��x�x  �~  �}  E k  
�CLL MNM r  
�
�OPO n 
�
�QRQ I  
�
��wS�v�w "0 getmonthweekday getMonthWeekdayS TUT o  
�
��u�u 0 recurrenceday recurrenceDayU V�tV o  
�
��s�s 0 soonday soonDay�t  �v  R  f  
�
�P o      �r�r 0 monthday monthDayN W�qW Z  
�CXY�p�oX l 
�
�Z�n�mZ =  
�
�[\[ l 
�
�]�l�k] n  
�
�^_^ 1  
�
��j
�j 
day _ o  
�
��i�i 0 soonday soonDay�l  �k  \ o  
�
��h�h 0 monthday monthDay�n  �m  Y Z  
�?`a�gb` l 
�
�c�f�ec n  
�
�ded 1  
�
��d
�d 
wrade o  
�
��c�c 0 e  �f  �e  a k  
�
�ff ghg r  
�
�iji l 
�
�k�b�ak n  
�
�lml 1  
�
��`
�` 
wr1sm o  
�
��_�_ 0 e  �b  �a  j o      �^�^ 0 	startdate 	startDateh n�]n r  
�
�opo b  
�
�qrq b  
�
�sts b  
�
�uvu b  
�
�wxw l 
�
�y�\�[y [  
�
�z{z o  
�
��Z�Z 0 soonday soonDay{ l 
�
�|�Y�X| n  
�
�}~} 1  
�
��W
�W 
time~ o  
�
��V�V 0 	startdate 	startDate�Y  �X  �\  �[  x m  
�
� ���  ;v m  
�
��� ���  A l l   D a y :  t l 
�
���U�T� n  
�
���� 1  
�
��S
�S 
wr11� o  
�
��R�R 0 e  �U  �T  r o  
�
��Q
�Q 
ret p n      ���  ;  
�
�� o  
�
��P�P 0 calinfolist calInfoList�]  �g  b k  
�?�� ��� r  
���� l 
�
���O�N� n  
�
���� 1  
�
��M
�M 
wr1s� o  
�
��L�L 0 e  �O  �N  � o      �K�K 0 	startdate 	startDate� ��� r  ��� l ��J�I� n  ��� 1  �H
�H 
wr5s� o  �G�G 0 e  �J  �I  � o      �F�F 0 enddate endDate� ��E� r  ?��� b  :��� b  6��� b  0��� b  ,��� b  $��� b   ��� b  ��� l ��D�C� [  ��� o  �B�B 0 soonday soonDay� l ��A�@� n  ��� 1  �?
�? 
time� o  �>�> 0 	startdate 	startDate�A  �@  �D  �C  � m  �� ���  ;� l ��=�<� n  ��� 1  �;
�; 
tstr� l ��:�9� o  �8�8 0 	startdate 	startDate�:  �9  �=  �<  � m   #�� ���  ;� l $+��7�6� n  $+��� 1  '+�5
�5 
tstr� l $'��4�3� o  $'�2�2 0 enddate endDate�4  �3  �7  �6  � m  ,/�� ���  ;� l 05��1�0� n  05��� 1  15�/
�/ 
wr11� o  01�.�. 0 e  �1  �0  � o  69�-
�- 
ret � n      ���  ;  =>� o  :=�,�, 0 calinfolist calInfoList�E  �p  �o  �q  ��  �  ��  �� 0 soonday soonDay2 o  
~
��+�+ 0 soondays soonDays��  ��  
� k  O&�� ��� l OO�*���*  � 8 22.2.3.M.4 Check events recurring one day per month   � ��� d 2 . 2 . 3 . M . 4   C h e c k   e v e n t s   r e c u r r i n g   o n e   d a y   p e r   m o n t h� ��� I OV�)��(
�) .ascrcmnt****      � ****� m  OR�� ���  M 4�(  � ��� r  Wb��� n  W^��� 1  Z^�'
�' 
day � o  WZ�&�& 0 	startdate 	startDate� o      �%�% 0 
dayofmonth 
dayOfMonth� ��$� X  c&��#�� k  y!�� ��� r  y���� n y���� I  z��"��!�" 0 getmonthdif getMonthDif� ��� o  z}� �  0 	startdate 	startDate� ��� o  }~�� 0 soonday soonDay�  �!  �  f  yz� o      �� 0 monthdif monthDif� ��� l ������  � N Hneed to use "my" when calling function (aka subroutine) from inside tell   � ��� � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l l� ��� Z  �!����� l ������ =  ����� l ������ `  ����� o  ���� 0 monthdif monthDif� o  ���� "0 recurrenceinter recurrenceINTER�  �  � m  ����  �  �  � Z  ������ l ������ =  ����� n  ����� 1  ���
� 
day � o  ���� 0 soonday soonDay� o  ���� 0 
dayofmonth 
dayOfMonth�  �  � Z  ����
�� l ����	�� n  ����� 1  ���
� 
wrad� o  ���� 0 e  �	  �  � k  ���� ��� r  ����� l �� ��  n  �� 1  ���
� 
wr1s o  ���� 0 e  �  �  � o      �� 0 	startdate 	startDate� �  r  �� b  �� b  ��	 b  ��

 b  �� l ������ [  �� o  ������ 0 soonday soonDay l ������ n  �� 1  ����
�� 
time o  ������ 0 	startdate 	startDate��  ��  ��  ��   m  �� �  ; m  �� �  A l l   D a y :  	 l ������ n  �� 1  ����
�� 
wr11 o  ������ 0 e  ��  ��   o  ����
�� 
ret  n        ;  �� o  ������ 0 calinfolist calInfoList�   �
  � k  �  r  �� !  l ��"����" n  ��#$# 1  ����
�� 
wr1s$ o  ������ 0 e  ��  ��  ! o      ���� 0 	startdate 	startDate %&% r  ��'(' l ��)����) n  ��*+* 1  ����
�� 
wr5s+ o  ������ 0 e  ��  ��  ( o      ���� 0 enddate endDate& ,��, r  �-.- b  �/0/ b  �121 b  �
343 b  �565 b  ��787 b  ��9:9 b  ��;<; l ��=����= [  ��>?> o  ������ 0 soonday soonDay? l ��@����@ n  ��ABA 1  ����
�� 
timeB o  ������ 0 	startdate 	startDate��  ��  ��  ��  < m  ��CC �DD  ;: l ��E����E n  ��FGF 1  ����
�� 
tstrG l ��H����H o  ������ 0 	startdate 	startDate��  ��  ��  ��  8 m  ��II �JJ  ;6 l �K����K n  �LML 1  ��
�� 
tstrM l �N����N o  ����� 0 enddate endDate��  ��  ��  ��  4 m  	OO �PP  ;2 l 
Q����Q n  
RSR 1  ��
�� 
wr11S o  
���� 0 e  ��  ��  0 o  ��
�� 
ret . n      TUT  ;  U o  ���� 0 calinfolist calInfoList��  �  �  �  �  �  �# 0 soonday soonDay� o  fi���� 0 soondays soonDays�$  �]  
� VWV l )0X����X =  )0YZY o  ),����  0 recurrencefreq recurrenceFREQZ m  ,/[[ �\\  Y E A R L Y��  ��  W ]��] k  3^^ _`_ l 33��ab��  a / )2.2.3.Y Check recurrence of yearly events   b �cc R 2 . 2 . 3 . Y   C h e c k   r e c u r r e n c e   o f   y e a r l y   e v e n t s` ded I 3:��f��
�� .ascrcmnt****      � ****f m  36gg �hh  Y E A R L Y��  e i��i Z  ;jklmj l ;@n����n =  ;@opo o  ;>���� 0 
isbysetpos 
isBYSETPOSp m  >?��
�� boovtrue��  ��  k k  CCqq rsr l CC��tu��  t a [2.2.3.Y.1 The x weekDay, weekendDay, Day from start/end of months listed in recurrenceMonth   u �vv � 2 . 2 . 3 . Y . 1   T h e   x   w e e k D a y ,   w e e k e n d D a y ,   D a y   f r o m   s t a r t / e n d   o f   m o n t h s   l i s t e d   i n   r e c u r r e n c e M o n t hs wxw l CC��yz��  y N H NOTE: When yearly interval is every 1 year, interval changes to monthly   z �{{ �   N O T E :   W h e n   y e a r l y   i n t e r v a l   i s   e v e r y   1   y e a r ,   i n t e r v a l   c h a n g e s   t o   m o n t h l yx |}| I CJ��~��
�� .ascrcmnt****      � ****~ m  CF ���  Y 1��  } ��� l KV���� r  KV��� I KR�����
�� .corecnte****       ****� o  KN���� 0 recurrenceday recurrenceDay��  � o      ���� 0 daytype dayType�   2, 5, or 7   � ���    2 ,   5 ,   o r   7� ���� X  WC����� k  m>�� ��� r  mz��� n mv��� I  nv������� 0 
getyeardif 
getYearDif� ��� o  nq���� 0 	startdate 	startDate� ���� o  qr���� 0 soonday soonDay��  ��  �  f  mn� o      ���� 0 yeardif yearDif� ��� l {{������  � N Hneed to use "my" when calling function (aka subroutine) from inside tell   � ��� � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l l� ���� Z  {>������� l {������� =  {���� l {������� `  {���� o  {~���� 0 yeardif yearDif� o  ~����� "0 recurrenceinter recurrenceINTER��  ��  � m  ������  ��  ��  � Z  �:������� l �������� E ����� o  ������ "0 recurrencemonth recurrenceMonth� l �������� c  ����� c  ����� n  ����� m  ����
�� 
mnth� o  ������ 0 soonday soonDay� m  ����
�� 
long� m  ����
�� 
ctxt��  ��  ��  ��  � k  �6�� ��� l ��������  � S Myes, I am setting the month to its integer value and then it into a character   � ��� � y e s ,   I   a m   s e t t i n g   t h e   m o n t h   t o   i t s   i n t e g e r   v a l u e   a n d   t h e n   i t   i n t o   a   c h a r a c t e r� ��� r  ����� n ����� I  ���������  0 getmonthposday getMonthPosDay� ��� o  ������ 0 daytype dayType� ��� o  ������ (0 recurrencebysetpos recurrenceBYSETPOS� ���� o  ������ 0 soonday soonDay��  ��  �  f  ��� o      ���� 0 yearday yearDay� ���� Z  �6������� l �������� =  ����� l �������� n  ����� 1  ����
�� 
day � o  ������ 0 soonday soonDay��  ��  � o  ������ 0 yearday yearDay��  ��  � Z  �2������ l �������� n  ����� 1  ����
�� 
wrad� o  ������ 0 e  ��  ��  � k  ���� ��� r  ����� l �������� n  ����� 1  ����
�� 
wr1s� o  ������ 0 e  ��  ��  � o      ���� 0 	startdate 	startDate� ��� r  ����� b  ����� b  ����� b  ����� b  ����� l ����~�}� [  ����� o  ���|�| 0 soonday soonDay� l ����{�z� n  ����� 1  ���y
�y 
time� o  ���x�x 0 	startdate 	startDate�{  �z  �~  �}  � m  ���� ���  ;� m  ���� ���  A l l   D a y :  � l ����w�v� n  ����� 1  ���u
�u 
wr11� o  ���t�t 0 e  �w  �v  � o  ���s
�s 
ret � n      ���  ;  ��� o  ���r�r 0 calinfolist calInfoList�  ��  � k  �2�� ��� r  ����� l ����q�p� n  ����� 1  ���o
�o 
wr1s� o  ���n�n 0 e  �q  �p  � o      �m�m 0 	startdate 	startDate� ��� r  ��� � l ���l�k n  �� 1  ���j
�j 
wr5s o  ���i�i 0 e  �l  �k    o      �h�h 0 enddate endDate� �g r   2 b   - b   )	
	 b   # b    b    b    b    l  �f�e [    o   �d�d 0 soonday soonDay l �c�b n   1  �a
�a 
time o  �`�` 0 	startdate 	startDate�c  �b  �f  �e   m  
 �  ; l �_�^ n   1  �]
�] 
tstr l  �\�[  o  �Z�Z 0 	startdate 	startDate�\  �[  �_  �^   m  !! �""  ; l #�Y�X# n  $%$ 1  �W
�W 
tstr% l &�V�U& o  �T�T 0 enddate endDate�V  �U  �Y  �X   m  "'' �((  ;
 l #()�S�R) n  #(*+* 1  $(�Q
�Q 
wr11+ o  #$�P�P 0 e  �S  �R   o  ),�O
�O 
ret  n      ,-,  ;  01- o  -0�N�N 0 calinfolist calInfoList�g  ��  ��  ��  ��  ��  ��  ��  ��  �� 0 soonday soonDay� o  Z]�M�M 0 soondays soonDays��  l ./. l FK0�L�K0 =  FK121 o  FI�J�J 0 isbyday isBYDAY2 m  IJ�I
�I boovtrue�L  �K  / 343 k  N?55 676 l NN�H89�H  8 W Q2.2.3.Y.2 Check events recurring on specific weekdays from start/end of the month   9 �:: � 2 . 2 . 3 . Y . 2   C h e c k   e v e n t s   r e c u r r i n g   o n   s p e c i f i c   w e e k d a y s   f r o m   s t a r t / e n d   o f   t h e   m o n t h7 ;<; I NU�G=�F
�G .ascrcmnt****      � ****= m  NQ>> �??  Y 2�F  < @�E@ X  V?A�DBA k  l:CC DED r  lyFGF n luHIH I  mu�CJ�B�C 0 
getyeardif 
getYearDifJ KLK o  mp�A�A 0 	startdate 	startDateL M�@M o  pq�?�? 0 soonday soonDay�@  �B  I  f  lmG o      �>�> 0 yeardif yearDifE NON l zz�=PQ�=  P N Hneed to use "my" when calling function (aka subroutine) from inside tell   Q �RR � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l lO S�<S Z  z:TU�;�:T l z�V�9�8V =  z�WXW l z�Y�7�6Y `  z�Z[Z o  z}�5�5 0 yeardif yearDif[ o  }��4�4 "0 recurrenceinter recurrenceINTER�7  �6  X m  ���3�3  �9  �8  U Z  �6\]�2�1\ l ��^�0�/^ E ��_`_ o  ���.�. "0 recurrencemonth recurrenceMonth` l ��a�-�,a c  ��bcb c  ��ded n  ��fgf m  ���+
�+ 
mnthg o  ���*�* 0 soonday soonDaye m  ���)
�) 
longc m  ���(
�( 
ctxt�-  �,  �0  �/  ] k  �2hh iji r  ��klk n ��mnm I  ���'o�&�' "0 getmonthweekday getMonthWeekdayo pqp o  ���%�% 0 recurrenceday recurrenceDayq r�$r o  ���#�# 0 soonday soonDay�$  �&  n  f  ��l o      �"�" 0 yearday yearDayj s�!s Z  �2tu� �t l ��v��v =  ��wxw l ��y��y n  ��z{z 1  ���
� 
day { o  ���� 0 soonday soonDay�  �  x o  ���� 0 yearday yearDay�  �  u Z  �.|}�~| l ���� n  ����� 1  ���
� 
wrad� o  ���� 0 e  �  �  } k  ���� ��� r  ����� l ������ n  ����� 1  ���
� 
wr1s� o  ���� 0 e  �  �  � o      �� 0 	startdate 	startDate� ��� r  ����� b  ����� b  ����� b  ����� b  ����� l ������ [  ����� o  ���
�
 0 soonday soonDay� l ����	�� n  ����� 1  ���
� 
time� o  ���� 0 	startdate 	startDate�	  �  �  �  � m  ���� ���  ;� m  ���� ���  A l l   D a y :  � l ������ n  ����� 1  ���
� 
wr11� o  ���� 0 e  �  �  � o  ���
� 
ret � n      ���  ;  ��� o  ��� �  0 calinfolist calInfoList�  �  ~ k  �.�� ��� r  ����� l �������� n  ����� 1  ����
�� 
wr1s� o  ������ 0 e  ��  ��  � o      ���� 0 	startdate 	startDate� ��� r  ����� l �������� n  ����� 1  ����
�� 
wr5s� o  ������ 0 e  ��  ��  � o      ���� 0 enddate endDate� ���� r  �.��� b  �)��� b  �%��� b  ���� b  ���� b  ���� b  ���� b  ���� l ������� [  ���� o  ������ 0 soonday soonDay� l ������� n  ���� 1   ��
�� 
time� o  � ���� 0 	startdate 	startDate��  ��  ��  ��  � m  �� ���  ;� l ������ n  ��� 1  
��
�� 
tstr� l 
������ o  
���� 0 	startdate 	startDate��  ��  ��  ��  � m  �� ���  ;� l ������ n  ��� 1  ��
�� 
tstr� l ������ o  ���� 0 enddate endDate��  ��  ��  ��  � m  �� ���  ;� l $������ n  $��� 1   $��
�� 
wr11� o   ���� 0 e  ��  ��  � o  %(��
�� 
ret � n      ���  ;  ,-� o  ),���� 0 calinfolist calInfoList��  �   �  �!  �2  �1  �;  �:  �<  �D 0 soonday soonDayB o  Y\���� 0 soondays soonDays�E  4 ��� l BG������ =  BG��� o  BE���� 0 	isbymonth 	isBYMONTH� m  EF��
�� boovtrue��  ��  � ���� k  J3�� ��� l JJ������  � F @2.2.3.Y.3 The specific day from months listed in recurrenceMonth   � ��� � 2 . 2 . 3 . Y . 3   T h e   s p e c i f i c   d a y   f r o m   m o n t h s   l i s t e d   i n   r e c u r r e n c e M o n t h� ��� I JQ�����
�� .ascrcmnt****      � ****� m  JM�� ���  Y 3��  � ���� X  R3����� k  h.�� ��� r  hu��� n hq��� I  iq������� 0 
getyeardif 
getYearDif� ��� o  il���� 0 	startdate 	startDate� ���� o  lm���� 0 soonday soonDay��  ��  �  f  hi� o      ���� 0 yeardif yearDif� ���� Z  v.������� l v������ =  v   l v}���� `  v} o  vy���� 0 yeardif yearDif o  y|���� "0 recurrenceinter recurrenceINTER��  ��   m  }~����  ��  ��  � Z  �*���� l ������ E ��	 o  ������ "0 recurrencemonth recurrenceMonth	 l ��
����
 c  �� c  �� n  �� m  ����
�� 
mnth o  ������ 0 soonday soonDay m  ����
�� 
long m  ����
�� 
ctxt��  ��  ��  ��   Z  �&���� l ������ =  �� n  �� 1  ����
�� 
day  o  ������ 0 soondate soonDate n  �� 1  ����
�� 
day  o  ������ 0 	startdate 	startDate��  ��   Z  �"�� l ������ n  �� 1  ����
�� 
wrad o  ������ 0 e  ��  ��   k  ��   !"! r  ��#$# l ��%����% n  ��&'& 1  ����
�� 
wr1s' o  ������ 0 e  ��  ��  $ o      ���� 0 	startdate 	startDate" (��( r  ��)*) b  ��+,+ b  ��-.- b  ��/0/ b  ��121 l ��3����3 [  ��454 o  ������ 0 soonday soonDay5 l ��6����6 n  ��787 1  ����
�� 
time8 o  ������ 0 	startdate 	startDate��  ��  ��  ��  2 m  ��99 �::  ;0 m  ��;; �<<  A l l   D a y :  . l ��=����= n  ��>?> 1  ����
�� 
wr11? o  ������ 0 e  ��  ��  , o  ����
�� 
ret * n      @A@  ;  ��A o  ������ 0 calinfolist calInfoList��  ��   k  �"BB CDC r  ��EFE l ��G����G n  ��HIH 1  ����
�� 
wr1sI o  ������ 0 e  ��  ��  F o      ���� 0 	startdate 	startDateD JKJ r  ��LML l ��N����N n  ��OPO 1  ����
�� 
wr5sP o  ������ 0 e  ��  ��  M o      ���� 0 enddate endDateK Q��Q r  �"RSR b  �TUT b  �VWV b  �XYX b  �Z[Z b  �\]\ b  �^_^ b  ��`a` l ��b����b [  ��cdc o  ������ 0 soonday soonDayd l ��e����e n  ��fgf 1  ����
�� 
timeg o  ������ 0 	startdate 	startDate��  ��  ��  ��  a m  ��hh �ii  ;_ l �j����j n  �klk 1  ���
�� 
tstrl l ��m���m o  ���~�~ 0 	startdate 	startDate��  �  ��  ��  ] m  nn �oo  ;[ l p�}�|p n  qrq 1  
�{
�{ 
tstrr l 
s�z�ys o  
�x�x 0 enddate endDate�z  �y  �}  �|  Y m  tt �uu  ;W l v�w�vv n  wxw 1  �u
�u 
wr11x o  �t�t 0 e  �w  �v  U o  �s
�s 
ret S n      yzy  ;   !z o   �r�r 0 calinfolist calInfoList��  ��  ��  ��  ��  ��  ��  ��  �� 0 soonday soonDay� o  UX�q�q 0 soondays soonDays��  ��  m k  6{{ |}| l 66�p~�p  ~ + %2.2.3.Y.4 One day per year recurrence    ��� J 2 . 2 . 3 . Y . 4   O n e   d a y   p e r   y e a r   r e c u r r e n c e} ��� I 6=�o��n
�o .ascrcmnt****      � ****� m  69�� ���  Y 4�n  � ��m� X  >��l�� k  T�� ��� r  Ta��� n T]��� I  U]�k��j�k 0 
getyeardif 
getYearDif� ��� o  UX�i�i 0 	startdate 	startDate� ��h� o  XY�g�g 0 soonday soonDay�h  �j  �  f  TU� o      �f�f 0 yeardif yearDif� ��e� Z  b���d�c� l bk��b�a� =  bk��� l bi��`�_� `  bi��� o  be�^�^ 0 yeardif yearDif� o  eh�]�] "0 recurrenceinter recurrenceINTER�`  �_  � m  ij�\�\  �b  �a  � Z  n���[�Z� l n���Y�X� F  n���� l n{��W�V� =  n{��� n  ns��� m  os�U
�U 
mnth� o  no�T�T 0 soonday soonDay� n  sz��� m  vz�S
�S 
mnth� o  sv�R�R 0 	startdate 	startDate�W  �V  � l ~���Q�P� =  ~���� n  ~���� 1  ��O
�O 
day � o  ~�N�N 0 soonday soonDay� n  ����� 1  ���M
�M 
day � o  ���L�L 0 	startdate 	startDate�Q  �P  �Y  �X  � Z  ����K�� l ����J�I� n  ����� 1  ���H
�H 
wrad� o  ���G�G 0 e  �J  �I  � k  ���� ��� r  ����� l ����F�E� n  ����� 1  ���D
�D 
wr1s� o  ���C�C 0 e  �F  �E  � o      �B�B 0 	startdate 	startDate� ��A� r  ����� b  ����� b  ����� b  ����� b  ����� l ����@�?� [  ����� o  ���>�> 0 soonday soonDay� l ����=�<� n  ����� 1  ���;
�; 
time� o  ���:�: 0 	startdate 	startDate�=  �<  �@  �?  � m  ���� ���  ;� m  ���� ���  A l l   D a y :  � l ����9�8� n  ����� 1  ���7
�7 
wr11� o  ���6�6 0 e  �9  �8  � o  ���5
�5 
ret � n      ���  ;  ��� o  ���4�4 0 calinfolist calInfoList�A  �K  � k  ��� ��� r  ����� l ����3�2� n  ����� 1  ���1
�1 
wr1s� o  ���0�0 0 e  �3  �2  � o      �/�/ 0 	startdate 	startDate� ��� r  ����� l ����.�-� n  ����� 1  ���,
�, 
wr5s� o  ���+�+ 0 e  �.  �-  � o      �*�* 0 enddate endDate� ��)� r  ���� b  ���� b  ���� b  ����� b  ����� b  ����� b  ����� b  ����� l ����(�'� [  ����� o  ���&�& 0 soonday soonDay� l ����%�$� n  ����� 1  ���#
�# 
time� o  ���"�" 0 	startdate 	startDate�%  �$  �(  �'  � m  ���� ���  ;� l �� �!�   n  �� 1  ���
� 
tstr l ���� o  ���� 0 	startdate 	startDate�  �  �!  �   � m  �� �  ;� l ���� n  �� 1  ���
� 
tstr l ��	��	 o  ���� 0 enddate endDate�  �  �  �  � m  ��

 �  ;� l ��� n  � 1  ��
� 
wr11 o  ���� 0 e  �  �  � o  �
� 
ret � n        ;  
 o  
�� 0 calinfolist calInfoList�)  �[  �Z  �d  �c  �e  �l 0 soonday soonDay� o  AD�� 0 soondays soonDays�m  ��  ��  ��  � � l ����  �  �  �  ��  ��  ��  � 0 e  o o  ���
�
 $0 recurrenceevents recurrenceEvents�  �x 0 c  � l  � ��	� 6  � � 2   � ��
� 
wres >  � � l  � ��� 1   � ��
� 
pnam�  �   m   � � �  A r c h i v e d�	  �  � m   � ��                                                                                  wrbt  alis    V  Macintosh HD               �R�\H+   �97Calendar.app                                                    �A��GЯ        ����  	                Applications    �S!�      �HA/     �97  'Macintosh HD:Applications: Calendar.app     C a l e n d a r . a p p    M a c i n t o s h   H D  Applications/Calendar.app   / ��  �z  �y  �  l     ����  �  �    l /:� �� r  /: !  m  /2"" �##  ! n     $%$ 1  59��
�� 
txdl% 1  25��
�� 
ascr�   ��   &'& l ;D(����( r  ;D)*) c  ;@+,+ o  ;>���� 0 calinfolist calInfoList, m  >?��
�� 
TEXT* o      ���� 0 calinfolist calInfoList��  ��  ' -.- l     ��������  ��  ��  . /0/ l EV1����1 r  EV232 c  ER454 l EP6����6 b  EP787 l EL9����9 I EL��:��
�� .earsffdralis        afdr: m  EH��
�� afdrdocs��  ��  ��  8 m  LO;; �<< ( G e e k T o o l : C a l I n f o . t x t��  ��  5 m  PQ��
�� 
TEXT3 o      ���� 0 calinfofile calInfoFile��  ��  0 =>= l W^?@A? I W^��B��
�� .sysoexecTEXT���     TEXTB m  WZCC �DD X e c h o     >   $ H O M E / D o c u m e n t s / G e e k T o o l / C a l I n f o . t x t��  @ 7 1Creates an empty file or overwrites previous file   A �EE b C r e a t e s   a n   e m p t y   f i l e   o r   o v e r w r i t e s   p r e v i o u s   f i l e> FGF l _wHIJH I _w��KL
�� .rdwrwritnull���     ****K o  _b���� 0 calinfolist calInfoListL ��MN
�� 
refnM 4  em��O
�� 
fileO o  il���� 0 calinfofile calInfoFileN ��P��
�� 
wratP m  pq����  ��  I 1 +Saves the calendar info starting at space 0   J �QQ V S a v e s   t h e   c a l e n d a r   i n f o   s t a r t i n g   a t   s p a c e   0G RSR l     ��������  ��  ��  S T��T l     ��������  ��  ��  ��       ��UVWXYZ[��  U �������������� &0 getprevioussunday getPreviousSunday�� 0 getmonthdif getMonthDif��  0 getmonthposday getMonthPosDay�� "0 getmonthweekday getMonthWeekday�� 0 
getyeardif 
getYearDif
�� .aevtoappnull  �   � ****V �� �����\]���� &0 getprevioussunday getPreviousSunday�� ��^�� ^  ���� 0 thedate theDate��  \ �������� 0 thedate theDate�� 0 theweekdate theWeekDate�� 0 	thesunday 	theSunday] ���� ����� ���,��A��
�� 
wkdy
�� 
TEXT
�� 
time
�� 
days�� �� �� �� ���,�&E�O��  ���,k� E�Y m��  ���,l� E�Y Y��  ���,m� E�Y E��  ���,�� E�Y 1��  ���,�� E�Y ��  ���,�� E�Y 	���,E�O�W ��g����_`���� 0 getmonthdif getMonthDif�� ��a�� a  ������ 0 	startdate 	startDate�� 0 currentdate currentDate��  _ ���������������� 0 	startdate 	startDate�� 0 currentdate currentDate�� 0 startmonthint startMonthInt�� 0 startyearint startYearInt�� 0 currmonthint currMonthInt�� 0 curryearint currYearInt�� 0 thedif theDif` ��������
�� 
mnth
�� 
long
�� 
year�� �� /��,�&E�O��,�&E�O��,�&E�O��,�&E�O����� E�O�X �������bc����  0 getmonthposday getMonthPosDay�� ��d�� d  �������� 0 postype posType�� 0 	posnumber 	posNumber�� 0 currdate currDate��  b ���������������������������� 0 postype posType�� 0 	posnumber 	posNumber�� 0 currdate currDate�� 0 themonth theMonth�� 0 	totaldays 	totalDays�� 0 lastday lastDay�� 0 
lastdayint 
lastDayInt�� 0 firstofmonth firstOfMonth�� 0 firstday firstDay�� 0 thedoi theDOI�� &0 weekenddaycounter weekendDayCounter��  0 weekdaycounter weekDayCounter��  0 theweekcounter theWeekCounterc ����������������������������������I��������
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
bool��;��&E�O��,�&E�O�l  ��,�#j  �E�Y �E�Y �km������v  �E�Y �E�O����,� ��,E�O�a ,�&E�O���,k� ��,E�O�a ,�&E�O�l  �a j O�i  ��  �E�Y ��kE�OPY yjE�OjE�O��  �k  kE�Y lE�Y �k  kE�Y �E�O��  �E�Y ; 2hZ�kE�O��  Y hO�kE�O��  Y hO��E�[OY��O��E�OPY��  �a j O�i  ,lm��a �v� �E�Y ��  
�kE�Y �lE�Y �jE�OjE�O��  lE�Y E�k  kE�Y 9 &hZ�kE�O�� 
 ��� a & Y h[OY��O��  �E�Y lE�O�� V PhZjE�O *hZ�kE�O�kE�O�� 
 	�� a & Y h[OY��O��  ��E�OY hO�lE�[OY��Y hOPY %��  a j O�i  �E�Y �E�Y jE�O�Y ������ef���� "0 getmonthweekday getMonthWeekday�� ��g�� g  ������ 0 	recurrday 	recurrDay�� 0 currdate currDate��  e ��~�}�|�{�z�y�x�w�v�u�t� 0 	recurrday 	recurrDay�~ 0 currdate currDate�} 0 themonth theMonth�| 0 	totaldays 	totalDays�{ 0 lastday lastDay�z 0 
lastdayint 
lastDayInt�y 0 firstofmonth firstOfMonth�x 0 firstday firstDay�w 0 
weeknumber 
weekNumber�v 0 isneg isNeg�u 0 	dayofweek 	dayOfWeek�t 0 thedoi theDOIf �s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�������`
�s 
mnth
�r 
long
�q 
year�p �o �n �m �l �k �j 
�i �h �g 
�f 
day 
�e 
days
�d 
time
�c 
wkdy
�b 
ctxt
�a 
cha �` ��{��,�&E�O�l  ��,�#j  �E�Y �E�Y km������v� �E�Y �E�O����,� ��,E�O�a ,�&E�O���,k� ��,E�O�a ,�&E�O�a &E�O�a k/E�OfE�O�a   %a �a l/%E�O�a m/�a �/%E�OeE�Y �a l/�a m/%E�O�a   kE�Y M�a   lE�Y ?�a   mE�Y 1�a   �E�Y #�a   �E�Y �a   
a E�Y �E�O�e  4�� �����a l/k E�Y ����a l/k E�Y '�� ����k� kE�Y ���k� kE�O�Z �_��^�]hi�\�_ 0 
getyeardif 
getYearDif�^ �[j�[ j  �Z�Y�Z 0 	startdate 	startDate�Y 0 currentdate currentDate�]  h �X�W�V�U�T�X 0 	startdate 	startDate�W 0 currentdate currentDate�V 0 startyearint startYearInt�U 0 curryearint currYearInt�T 0 thedif theDifi �S�R
�S 
year
�R 
long�\ ��,�&E�O��,�&E�O��E�O�[ �Qk�P�Olm�N
�Q .aevtoappnull  �   � ****k k    wnn  oo  !pp  -qq  9rr  Jss  Ttt  ^uu  hvv  tww  �xx  �yy  �zz �{{ �|| �}} ~~ & /�� =�� F�M�M  �P  �O  l �L�K�J�I�L 0 c  �K 0 e  �J 0 r  �I 0 soonday soonDaym ��H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1��0�/�.�-�,�+�*�)�(�'�&�%�$B�#HN�"k�!� ~������������������������
�	�����h�y����� �������������!��4��U��g������������������������	>	@	m	s	y	�	�����������


0
6
<
z
|
�
�
�
�
�
�����/1^dj���������.���������CIO[g��������!'>��������9;hnt����
"����;��C����������
�H .misccurdldt    ��� null�G 0 	todaydate 	todayDate�F �E <�D 0 	tomordate 	tomorDate�C 0�B 0 
seconddate 
secondDate�A H�@ 0 	thirddate 	thirdDate
�? 
time�> 0 todayday todayDay�= 0 tomorday tomorDay�< 0 	secondday 	secondDay�; 0 thirdday thirdDay
�: 
wkdy
�9 
TEXT
�8 
ctxt�7 0 todaywd todayWd�6 0 tomorwd tomorWd�5 0 secondwd secondWd�4 0 thirdwd thirdWd�3 0 calinfolist calInfoList�2 0 eventpresent eventPresent
�1 
wres�  
�0 
pnam
�/ 
kocl
�. 
cobj
�- .corecnte****       ****
�, 
wrev
�+ 
wr1s
�* 
wrad�) 0 onetimeevents oneTimeEvents�( 0 	startdate 	startDate
�' 
wr11
�& 
ret 
�% 
wr5s�$ 0 enddate endDate
�# 
tstr
�" 
wr15�! $0 recurrenceevents recurrenceEvents�   0 recurrenceinfo recurrenceInfo
� 
ascr
� 
txdl
� 
citm
� 
list� "0 recurrenceparts recurrenceParts� 0 isuntil isUNTIL� (0 recurrencepreuntil recurrencePreUNTIL� "0 recurrenceuntil recurrenceUntil
� 
cha � � 0 lastyear lastYear� � 
� 
long� 0 	lastmonth 	lastMonth� � � 0 lastday lastDay� 0 lastdate lastDate
� 
day 
� 
mnth
�
 
year
�	 
hour� 0 isinter isInter� 0 isbyday isBYDAY� 0 isbymonthday isBYMONTHDAY� 0 
isbysetpos 
isBYSETPOS� 0 	isbymonth 	isBYMONTH� &0 recurrenceprefreq recurrencePreFREQ� (0 recurrencepreinter recurrencePreINTER� (0 recurrenceprebyday recurrencePreBYDAY�  20 recurrenceprebymonthday recurrencePreBYMONTHDAY�� .0 recurrenceprebysetpos recurrencePreBYSETPOS�� ,0 recurrenceprebymonth recurrencePreBYMONTH��  0 recurrencefreq recurrenceFREQ�� "0 recurrenceinter recurrenceINTER�� "0 recurrencebyday recurrenceBYDAY�� 0 recurrenceday recurrenceDay�� ,0 recurrencebymonthday recurrenceBYMONTHDAY�� (0 recurrencemonthday recurrenceMonthDay�� (0 recurrencebysetpos recurrenceBYSETPOS�� &0 recurrencebymonth recurrenceBYMONTH�� "0 recurrencemonth recurrenceMonth�� 0 startday startDay�� 0 soondays soonDays
�� .ascrcmnt****      � ****
�� 
days�� 0 datedif DateDif
�� 
ldt 
�� 
bool�� &0 getprevioussunday getPreviousSunday�� 0 firstsunday firstSunday�� 0 	nowsunday 	nowSunday
�� 
week�� 0 weekdif weekDif�� 0 getmonthdif getMonthDif�� 0 monthdif monthDif�� 0 daytype dayType��  0 getmonthposday getMonthPosDay�� 0 monthday monthDay�� "0 getmonthweekday getMonthWeekday�� 0 
dayofmonth 
dayOfMonth�� 0 
getyeardif 
getYearDif�� 0 yeardif yearDif�� 0 yearday yearDay�� 0 soondate soonDate
�� afdrdocs
�� .earsffdralis        afdr�� 0 calinfofile calInfoFile
�� .sysoexecTEXT���     TEXT
�� 
refn
�� 
file
�� 
wrat
�� .rdwrwritnull���     ****�Nx*j  E�O��� � E�O��� � E�O��� � E�O���,E�O���,E�O���,E�O���,E�O��,�&[a \[Zk\Zl2E` O��,�&[a \[Zk\Zl2E` O��,�&[a \[Zk\Zl2E` O��,�&[a \[Zk\Zl2E` OjvE` OfE` Oa ~{*a -a [a ,\Za 91[a a l kh  fE` O�a -a [[[a  ,\Z�;\[a  ,\Z�<A\[[[a  ,\Z�;\[a  ,\Z�<A\[a !,\Ze8AB1E` "O �_ "[a a l kh �a !,E )�a  ,E` #O_ #a $%a %%�a &,%_ '%_ 6FY D�a  ,E` #O�a (,E` )O_ #a *%_ #a +,%a ,%_ )a +,%a -%�a &,%_ '%_ 6F[OY��O�a -a [[a  ,\Z�=\[a .,\Za />A1E` 0OO_ 0[a a l kh �a .,E` 1Oa 2kv_ 3a 4,FO_ 1a 5-a 6&E` 7OfE` 8O 9k_ 7j kh _ 7a �/a 9 _ 7a �/E` :OeE` 8Y h[OY��O_ 8e  �a ;kv_ 3a 4,FO_ :a 5-a l/a &E` <O_ <a =k/_ <a =l/%_ <a =m/%_ <a =a >/%E` ?O_ <a =a @/_ <a =a A/%a B&E` CO_ <a =a D/_ <a =a E/%a B&E` FO�EQ` GO_ F_ Ga H,FO_ C_ Ga I,FO_ ?_ Ga J,FY ��_ K E` GO�_ G�fffffa @vE[a k/E` LZ[a l/E` MZ[a m/E` NZ[a a >/E` OZ[a a @/E` PZO �k_ 7j kh _ 7a �/a Q _ 7a �/E` RY hO_ 7a �/a S _ 7a �/E` TOeE` LY hO_ 7a �/a U _ 7a �/E` VOeE` MY hO_ 7a �/a W _ 7a �/E` XOeE` NY hO_ 7a �/a Y _ 7a �/E` ZOeE` OY hO_ 7a �/a [ _ 7a �/E` \OeE` PY h[OY�Oa ]kv_ 3a 4,FO_ Ra 5-a l/E` ^O_ Le  _ Ta 5-a l/E` _Y hO_ Me  ?_ Va 5-a l/E` `Oa akv_ 3a 4,FO_ `a 5-E` bOa ckv_ 3a 4,FOPY hO_ Ne  =_ Xa 5-a l/E` dOa ekv_ 3a 4,FO_ da 5-E` fOa gkv_ 3a 4,FY hO_ Oe  _ Za 5-a l/E` hY hO_ Pe  =_ \a 5-a l/E` iOa jkv_ 3a 4,FO_ ia 5-E` kOa lkv_ 3a 4,FY hO�a  ,E` #O_ #_ #�,E` mO����a >vE` nO_ ^a o  �a pj qO_ Lf  
kE` _Y hO �_ n[a a l kh �_ m_ r!E` sO_ s_ _#j  ��a t&�a t&
 _ #a +,�a +,a u& �a !,E -�a  ,E` #O�_ #�,a v%a w%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a x%_ #a +,%a y%_ )a +,%a z%�a &,%_ '%_ 6FY hY h[OY�<OPY	l_ ^a { �a |j qO_ Lf  
kE` _Y hO)_ #k+ }E` ~O�_ n[a a l kh )�k+ }E` O_ _ ~_ �!E` �O_ �j qO_ �_ _#j L_ Me  �_ b��,�&[a \[Zk\Zl2 �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY �_ #�,�&[a \[Zk\Zl2��,�&[a \[Zk\Zl2  �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY h[OY��OPY�_ ^a � �a �j qO_ Lf  
kE` _Y hO_ Ne  �a �j qO �_ n[a a l kh )_ #�l+ �E` �O_ �_ _#j  �_ f�a H, �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY h[OY�RY�_ Oe  �a �j qO_ bj E` �O �_ n[a a l kh )_ #�l+ �E` �O_ �_ _#j  �)_ �_ h�m+ �E` �O�a H,_ �  �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY h[OY�AY�_ Me  �a �j qO �_ n[a a l kh )_ #�l+ �E` �O_ �_ _#j  �)_ b�l+ �E` �O�a H,_ �  �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY h[OY�DY �a �j qO_ #a H,E` �O �_ n[a a l kh )_ #�l+ �E` �O_ �_ _#j  ��a H,_ �  �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY h[OY�RY�_ ^a � �a �j qO_ Oe a �j qO_ bj E` �O �_ n[a a l kh )_ #�l+ �E` �O_ �_ _#j  �_ k�a I,a B&a & �)_ �_ h�m+ �E` �O�a H,_ �  �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY hY h[OY�)Y�_ Me  �a �j qO �_ n[a a l kh )_ #�l+ �E` �O_ �_ _#j  �_ k�a I,a B&a & �)_ b�l+ �E` �O�a H,_ �  �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY hY h[OY�,Y�_ Pe  �a �j qO �_ n[a a l kh )_ #�l+ �E` �O_ �_ _#j  �_ k�a I,a B&a & �_ �a H,_ #a H,  �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY hY h[OY�4Y �a �j qO �_ n[a a l kh )_ #�l+ �E` �O_ �_ _#j  ��a I,_ #a I, 	 �a H,_ #a H, a u& �a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY H�a  ,E` #O�a (,E` )O�_ #�,a �%_ #a +,%a �%_ )a +,%a �%�a &,%_ '%_ 6FY hY h[OY�:Y hOPY h[OY��[OY�UOa �_ 3a 4,FO_ �&E` Oa �j �a �%�&E` �Oa �j �O_ a �*a �_ �/a �ja > �ascr  ��ޭ