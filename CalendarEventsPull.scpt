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
long� o      �� 0 curryearint currYearInt� ��� l     ��� �  �  �   � ��� r     +��� [     )��� l    #������ \     #��� o     !���� 0 currmonthint currMonthInt� o   ! "���� 0 startmonthint startMonthInt��  ��  � l  # (������ ]   # (��� l  # &������ \   # &��� o   # $���� 0 curryearint currYearInt� o   $ %���� 0 startyearint startYearInt��  ��  � m   & '���� ��  ��  � o      ���� 0 thedif theDif� ���� L   , .�� o   , -���� 0 thedif theDif��  e ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 
fixenddate 
fixEndDate� ��� o      ���� 0 instancedate InstanceDate� ��� o      ���� 0 	startdate 	startDate� ���� o      ���� 0 enddate endDate��  ��  � k     ,�� ��� r     ��� m     ����  � o      ���� 0 eventlength eventLength� ��� r    	��� \    ��� o    ���� 0 enddate endDate� o    ���� 0 	startdate 	startDate� o      ���� 0 eventlength eventLength� ��� I  
 �����
�� .ascrcmnt****      � ****� o   
 ���� 0 	startdate 	startDate��  � ��� I   �����
�� .ascrcmnt****      � ****� o    ���� 0 enddate endDate��  � ��� I   �����
�� .ascrcmnt****      � ****� o    ���� 0 eventlength eventLength��  � ��� I   #�����
�� .ascrcmnt****      � ****� l   ������ n    ��� 1    ��
�� 
time� o    ���� 0 	startdate 	startDate��  ��  ��  � ��� r   $ )��� [   $ '��� o   $ %���� 0 instancedate InstanceDate� o   % &���� 0 eventlength eventLength� o      ���� 0 	finaldate 	finalDate� ���� L   * ,�� o   * +���� 0 	finaldate 	finalDate��  � ��� l     ��������  ��  ��  � ��� l     ������  � q kFunction gives day of month that is set by a position into the days, weekdays, or weekend days of the month   � ��� � F u n c t i o n   g i v e s   d a y   o f   m o n t h   t h a t   i s   s e t   b y   a   p o s i t i o n   i n t o   t h e   d a y s ,   w e e k d a y s ,   o r   w e e k e n d   d a y s   o f   t h e   m o n t h� ��� i    ��� I      �������  0 getmonthposday getMonthPosDay� ��� o      ���� 0 postype posType� ��� o      ���� 0 	posnumber 	posNumber� ���� o      ���� 0 currdate currDate��  ��  � k    :�� ��� l    ���� r     ��� c     ��� o     ���� 0 	posnumber 	posNumber� m    ��
�� 
long� o      ���� 0 	posnumber 	posNumber� % converting from text to integer   � ��� > c o n v e r t i n g   f r o m   t e x t   t o   i n t e g e r� ��� r    ��� c    ��� n    	��� m    	��
�� 
mnth� o    ���� 0 currdate currDate� m   	 
��
�� 
long� o      ���� 0 themonth theMonth� ��� Z    A����� l   ������ =    ��� o    ���� 0 themonth theMonth� m    ���� ��  ��  � Z    '������ l    ����  =     `     l   ���� n     1    ��
�� 
year o    ���� 0 currdate currDate��  ��   m    ����  m    ����  ��  ��  � r    !	 m    ���� 	 o      ���� 0 	totaldays 	totalDays��  � r   $ '

 m   $ %����  o      ���� 0 	totaldays 	totalDays�  l  * 5���� =   * 5 o   * +���� 0 themonth theMonth J   + 4  m   + ,����   m   , -����   m   - .����   m   . /����   m   / 0����   m   0 1���� 
 �� m   1 2���� ��  ��  ��   �� r   8 ; !  m   8 9���� ! o      ���� 0 	totaldays 	totalDays��  � r   > A"#" m   > ?���� # o      ���� 0 	totaldays 	totalDays� $%$ r   B Q&'& \   B O()( [   B K*+* o   B C���� 0 currdate currDate+ l  C J,����, ]   C J-.- l  C H/����/ \   C H010 o   C D���� 0 	totaldays 	totalDays1 l  D G2����2 n   D G343 1   E G��
�� 
day 4 o   D E���� 0 currdate currDate��  ��  ��  ��  . 1   H I��
�� 
days��  ��  ) l  K N5����5 n   K N676 1   L N��
�� 
time7 o   K L���� 0 currdate currDate��  ��  ' o      ���� 0 lastday lastDay% 898 l  R R��:;��  : u olast day of month in date format, calculated from inputed curr date (there is probably a better way to do this)   ; �<< � l a s t   d a y   o f   m o n t h   i n   d a t e   f o r m a t ,   c a l c u l a t e d   f r o m   i n p u t e d   c u r r   d a t e   ( t h e r e   i s   p r o b a b l y   a   b e t t e r   w a y   t o   d o   t h i s )9 =>= r   R [?@? c   R YABA n   R WCDC m   S W��
�� 
wkdyD o   R S���� 0 lastday lastDayB m   W X��
�� 
long@ o      ���� 0 
lastdayint 
lastDayInt> EFE r   \ kGHG \   \ iIJI \   \ eKLK o   \ ]���� 0 currdate currDateL l  ] dM����M ]   ] dNON l  ] bP����P \   ] bQRQ l  ] `S����S n   ] `TUT 1   ^ `��
�� 
day U o   ] ^���� 0 currdate currDate��  ��  R m   ` a�� ��  ��  O 1   b c�~
�~ 
days��  ��  J l  e hV�}�|V n   e hWXW 1   f h�{
�{ 
timeX o   e f�z�z 0 currdate currDate�}  �|  H o      �y�y 0 firstofmonth firstOfMonthF YZY l  l u[\][ r   l u^_^ c   l s`a` n   l qbcb m   m q�x
�x 
wkdyc o   l m�w�w 0 firstofmonth firstOfMontha m   q r�v
�v 
long_ o      �u�u 0 firstday firstDay\  We = 4, Th = 5 ...   ] �dd $ W e   =   4 ,   T h   =   5   . . .Z efe l  v v�t�s�r�t  �s  �r  f ghg Z   v7ijkli l  v ym�q�pm =   v ynon o   v w�o�o 0 postype posTypeo m   w x�n�n �q  �p  j l  |pqrp k   |ss tut I  | ��mv�l
�m .ascrcmnt****      � ****v m   | ww �xx  P O S 2�l  u yzy l  � ��k{|�k  { # check if positive or negative   | �}} : c h e c k   i f   p o s i t i v e   o r   n e g a t i v ez ~~ Z   ����j�� l  � ���i�h� =   � ���� o   � ��g�g 0 	posnumber 	posNumber� m   � ��f�f���i  �h  � l  � ����� Z   � ����e�� l  � ���d�c� =   � ���� o   � ��b�b 0 
lastdayint 
lastDayInt� m   � ��a�a �d  �c  � l  � ����� r   � ���� o   � ��`�` 0 	totaldays 	totalDays� o      �_�_ 0 thedoi theDOI� 8 2if the last day is Saturday, return number of days   � ��� d i f   t h e   l a s t   d a y   i s   S a t u r d a y ,   r e t u r n   n u m b e r   o f   d a y s�e  � k   � ��� ��� r   � ���� l  � ���^�]� \   � ���� o   � ��\�\ 0 	totaldays 	totalDays� l  � ���[�Z� \   � ���� o   � ��Y�Y 0 
lastdayint 
lastDayInt� m   � ��X�X �[  �Z  �^  �]  � o      �W�W 0 thedoi theDOI� ��V� l  � ��U���U  � = 7subtracting days from the month till we get to a Sunday   � ��� n s u b t r a c t i n g   d a y s   f r o m   t h e   m o n t h   t i l l   w e   g e t   t o   a   S u n d a y�V  � &  start counting from end of month   � ��� @ s t a r t   c o u n t i n g   f r o m   e n d   o f   m o n t h�j  � l  ����� k   ��� ��� r   � ���� m   � ��T�T  � o      �S�S &0 weekenddaycounter weekendDayCounter� ��� r   � ���� m   � ��R�R  � o      �Q�Q  0 weekdaycounter weekDayCounter� ��� Z   � ������ l  � ���P�O� =   � ���� o   � ��N�N 0 firstday firstDay� m   � ��M�M �P  �O  � l  � ����� Z   � ����L�� l  � ���K�J� =   � ���� o   � ��I�I 0 	posnumber 	posNumber� m   � ��H�H �K  �J  � r   � ���� m   � ��G�G � o      �F�F &0 weekenddaycounter weekendDayCounter�L  � r   � ���� m   � ��E�E � o      �D�D &0 weekenddaycounter weekendDayCounter� $ first day of month is Saturday   � ��� < f i r s t   d a y   o f   m o n t h   i s   S a t u r d a y� ��� l  � ���C�B� =   � ���� o   � ��A�A 0 firstday firstDay� m   � ��@�@ �C  �B  � ��?� l  � ����� r   � ���� m   � ��>�> � o      �=�= &0 weekenddaycounter weekendDayCounter� " first day of month is Sunday   � ��� 8 f i r s t   d a y   o f   m o n t h   i s   S u n d a y�?  � l  � ����� l  � ����� r   � ���� l  � ���<�;� \   � ���� m   � ��:�: � o   � ��9�9 0 firstday firstDay�<  �;  � o      �8�8  0 weekdaycounter weekDayCounter� # # of weekdays before Saturday   � ��� : #   o f   w e e k d a y s   b e f o r e   S a t u r d a y� # first day of month is weekday   � ��� : f i r s t   d a y   o f   m o n t h   i s   w e e k d a y� ��7� Z   ����6�� l  � ���5�4� =   � ���� o   � ��3�3 &0 weekenddaycounter weekendDayCounter� o   � ��2�2 0 	posnumber 	posNumber�5  �4  � r   � ���� o   � ��1�1 &0 weekenddaycounter weekendDayCounter� o      �0�0 0 thedoi theDOI�6  � l  ����� k   ��� ��� T   ��� k   ��� ��� r   � ���� [   � ���� o   � ��/�/ &0 weekenddaycounter weekendDayCounter� m   � ��.�. � o      �-�- &0 weekenddaycounter weekendDayCounter� ��� Z   � ����,�+� l  � ���*�)� =   � ���� o   � ��(�( &0 weekenddaycounter weekendDayCounter� o   � ��'�' 0 	posnumber 	posNumber�*  �)  �  S   � ��,  �+  � � � r   � � [   � � o   � ��&�& &0 weekenddaycounter weekendDayCounter m   � ��%�%  o      �$�$ &0 weekenddaycounter weekendDayCounter   Z   ��#�" l  � 	�!� 	 =   � 

 o   � ��� &0 weekenddaycounter weekendDayCounter o   � ��� 0 	posnumber 	posNumber�!  �     S  �#  �"   � r  	 [  	 o  	
��  0 weekdaycounter weekDayCounter m  
��  o      ��  0 weekdaycounter weekDayCounter�  � � r   [   o  �� &0 weekenddaycounter weekendDayCounter o  ��  0 weekdaycounter weekDayCounter o      �� 0 thedoi theDOI�  � / )Need to continue cycling through the week   � � R N e e d   t o   c o n t i n u e   c y c l i n g   t h r o u g h   t h e   w e e k�7  � ( "start counting from start of month   � � D s t a r t   c o u n t i n g   f r o m   s t a r t   o f   m o n t h � l ����  �  �  �  q # counting through weekend days   r � : c o u n t i n g   t h r o u g h   w e e k e n d   d a y sk  l !�� =  ! o  �� 0 postype posType m   �� �  �     l $!"#! k  $$$ %&% I $+�'�
� .ascrcmnt****      � ****' m  $'(( �))  P O S 5�  & *+* l ,,�,-�  , # check if positive or negative   - �.. : c h e c k   i f   p o s i t i v e   o r   n e g a t i v e+ /0/ Z  ,12�
31 l ,/4�	�4 =  ,/565 o  ,-�� 0 	posnumber 	posNumber6 m  -.�����	  �  2 l 2Y7897 Z  2Y:;<=: l 2=>��> E 2=?@? J  2;AA BCB m  23�� C DED m  34�� E FGF m  45�� G HIH m  56� �  I J��J m  69���� ��  @ o  ;<���� 0 
lastdayint 
lastDayInt�  �  ; l @CKLMK r  @CNON o  @A���� 0 	totaldays 	totalDaysO o      ���� 0 thedoi theDOIL 6 0if last DoM is weekday, return last day of month   M �PP ` i f   l a s t   D o M   i s   w e e k d a y ,   r e t u r n   l a s t   d a y   o f   m o n t h< QRQ l FIS����S =  FITUT o  FG���� 0 
lastdayint 
lastDayIntU m  GH���� ��  ��  R V��V l LQWXYW r  LQZ[Z l LO\����\ \  LO]^] o  LM���� 0 	totaldays 	totalDays^ m  MN���� ��  ��  [ o      ���� 0 thedoi theDOIX 5 /if last DoM is saturday, return previous Friday   Y �__ ^ i f   l a s t   D o M   i s   s a t u r d a y ,   r e t u r n   p r e v i o u s   F r i d a y��  = l TY`ab` r  TYcdc l TWe����e \  TWfgf o  TU���� 0 	totaldays 	totalDaysg m  UV���� ��  ��  d o      ���� 0 thedoi theDOIa 3 -if last DoM is sunday, return previous Friday   b �hh Z i f   l a s t   D o M   i s   s u n d a y ,   r e t u r n   p r e v i o u s   F r i d a y8 &  start counting from end of month   9 �ii @ s t a r t   c o u n t i n g   f r o m   e n d   o f   m o n t h�
  3 l \jklj k  \mm non r  \_pqp m  \]����  q o      ���� &0 weekenddaycounter weekendDayCountero rsr r  `ctut m  `a����  u o      ����  0 weekdaycounter weekDayCounters vwv Z  d�xyz{x l dg|����| =  dg}~} o  de���� 0 firstday firstDay~ m  ef���� ��  ��  y l jm�� r  jm��� m  jk���� � o      ���� &0 weekenddaycounter weekendDayCounter�  It's Saturday   � ���  I t ' s   S a t u r d a yz ��� l ps������ =  ps��� o  pq���� 0 firstday firstDay� m  qr���� ��  ��  � ���� l vy���� r  vy��� m  vw���� � o      ���� &0 weekenddaycounter weekendDayCounter�  It's Sunday   � ���  I t ' s   S u n d a y��  { l |����� k  |��� ��� l |����� T  |��� l ������ k  ���� ��� r  ����� [  ����� o  ������  0 weekdaycounter weekDayCounter� m  ������ � o      ����  0 weekdaycounter weekDayCounter� ���� Z  ��������� l �������� G  ����� l �������� =  ����� o  ������ 0 	posnumber 	posNumber� o  ������  0 weekdaycounter weekDayCounter��  ��  � l �������� =  ����� [  ����� o  ������ 0 firstday firstDay� o  ������  0 weekdaycounter weekDayCounter� m  ������ ��  ��  ��  ��  �  S  ����  ��  ��  � > 8keep repeating until we reach posNumber or reach weekend   � ��� p k e e p   r e p e a t i n g   u n t i l   w e   r e a c h   p o s N u m b e r   o r   r e a c h   w e e k e n d�   at first weekend or done   � ��� 2   a t   f i r s t   w e e k e n d   o r   d o n e� ���� Z  �������� l �������� =  ����� o  ������ 0 	posnumber 	posNumber� o  ������  0 weekdaycounter weekDayCounter��  ��  � r  ����� o  ������  0 weekdaycounter weekDayCounter� o      ���� 0 thedoi theDOI��  � l ������ r  ����� m  ������ � o      ���� &0 weekenddaycounter weekendDayCounter�  still counting   � ���  s t i l l   c o u n t i n g��  � - 'First DoM is weekday (2, 3, 4, 5, or 6)   � ��� N F i r s t   D o M   i s   w e e k d a y   ( 2 ,   3 ,   4 ,   5 ,   o r   6 )w ��� l ��������  � 0 *if we need to keep counting, keep counting   � ��� T i f   w e   n e e d   t o   k e e p   c o u n t i n g ,   k e e p   c o u n t i n g� ���� Z  �������� l �������� >  ����� o  ������ 0 	posnumber 	posNumber� o  ������  0 weekdaycounter weekDayCounter��  ��  � T  ��� l ����� k  ��� ��� r  ����� m  ������  � o      ����  0 theweekcounter theWeekCounter� ��� T  ���� l ������ k  ���� ��� r  ����� [  ����� o  ������  0 weekdaycounter weekDayCounter� m  ������ � o      ����  0 weekdaycounter weekDayCounter� ��� r  ����� [  ����� o  ������  0 theweekcounter theWeekCounter� m  ������ � o      ����  0 theweekcounter theWeekCounter� ���� Z  ��������� l �������� G  ����� l �������� =  ����� o  ������ 0 	posnumber 	posNumber� o  ������  0 weekdaycounter weekDayCounter��  ��  � l �������� =  ����� o  ������  0 theweekcounter theWeekCounter� m  ������ ��  ��  ��  ��  �  S  ����  ��  ��  � C =repeat through the week adding days until we get to posNumber   � ��� z r e p e a t   t h r o u g h   t h e   w e e k   a d d i n g   d a y s   u n t i l   w e   g e t   t o   p o s N u m b e r� ��� Z  � ������� l �������� =  ����� o  ������ 0 	posnumber 	posNumber� o  ������  0 weekdaycounter weekDayCounter��  ��  � k  ��    r  �� [  �� o  ������  0 weekdaycounter weekDayCounter o  ������ &0 weekenddaycounter weekendDayCounter o      ���� 0 thedoi theDOI ��  S  ����  ��  ��  � �� r  	
	 [   o  ���� &0 weekenddaycounter weekendDayCounter m  ���� 
 o      ���� &0 weekenddaycounter weekendDayCounter��  � % keep repeating the weekly cycle   � � > k e e p   r e p e a t i n g   t h e   w e e k l y   c y c l e��  ��  ��  k ( "start counting from start of month   l � D s t a r t   c o u n t i n g   f r o m   s t a r t   o f   m o n t h0 �� l ��������  ��  ��  ��  "  counting through weekdays   # � 2 c o u n t i n g   t h r o u g h   w e e k d a y s   l ���� =   o  ���� 0 postype posType m  ���� ��  ��   �� l 1 k  1  I !����
�� .ascrcmnt****      � **** m   �  P O S 7��    ��  Z  "1!"��#! l "%$����$ =  "%%&% o  "#���� 0 	posnumber 	posNumber& m  #$��������  ��  " r  (+'(' o  ()���� 0 	totaldays 	totalDays( o      ���� 0 thedoi theDOI��  # r  .1)*) o  ./���� 0 	posnumber 	posNumber* o      ���� 0 thedoi theDOI��    counting through days    �++ * c o u n t i n g   t h r o u g h   d a y s��  l r  47,-, m  45��  - o      �~�~ 0 thedoi theDOIh .�}. l 8:/01/ L  8:22 o  89�|�| 0 thedoi theDOI0  date of interest   1 �33   d a t e   o f   i n t e r e s t�}  � 454 l     �{�z�y�{  �z  �y  5 676 l     �x89�x  8 Y SFunction gives the first, second, third ... or last MO, TU, WE, TH ... of the month   9 �:: � F u n c t i o n   g i v e s   t h e   f i r s t ,   s e c o n d ,   t h i r d   . . .   o r   l a s t   M O ,   T U ,   W E ,   T H   . . .   o f   t h e   m o n t h7 ;<; i    =>= I      �w?�v�w "0 getmonthweekday getMonthWeekday? @A@ o      �u�u 0 	recurrday 	recurrDayA B�tB o      �s�s 0 currdate currDate�t  �v  > k    zCC DED r     FGF c     HIH n     JKJ m    �r
�r 
mnthK o     �q�q 0 currdate currDateI m    �p
�p 
longG o      �o�o 0 themonth theMonthE LML Z    ;NOPQN l   R�n�mR =    STS o    	�l�l 0 themonth theMonthT m   	 
�k�k �n  �m  O Z    !UV�jWU l   X�i�hX =    YZY `    [\[ l   ]�g�f] n    ^_^ 1    �e
�e 
year_ o    �d�d 0 currdate currDate�g  �f  \ m    �c�c Z m    �b�b  �i  �h  V r    `a` m    �a�a a o      �`�` 0 	totaldays 	totalDays�j  W r    !bcb m    �_�_ c o      �^�^ 0 	totaldays 	totalDaysP ded l  $ /f�]�\f E  $ /ghg J   $ -ii jkj m   $ %�[�[ k lml m   % &�Z�Z m non m   & '�Y�Y o pqp m   ' (�X�X q rsr m   ( )�W�W s tut m   ) *�V�V 
u v�Uv m   * +�T�T �U  h o   - .�S�S 0 themonth theMonth�]  �\  e w�Rw r   2 5xyx m   2 3�Q�Q y o      �P�P 0 	totaldays 	totalDays�R  Q r   8 ;z{z m   8 9�O�O { o      �N�N 0 	totaldays 	totalDaysM |}| r   < K~~ \   < I��� [   < E��� o   < =�M�M 0 currdate currDate� l  = D��L�K� ]   = D��� l  = B��J�I� \   = B��� o   = >�H�H 0 	totaldays 	totalDays� l  > A��G�F� n   > A��� 1   ? A�E
�E 
day � o   > ?�D�D 0 currdate currDate�G  �F  �J  �I  � 1   B C�C
�C 
days�L  �K  � l  E H��B�A� n   E H��� 1   F H�@
�@ 
time� o   E F�?�? 0 currdate currDate�B  �A   o      �>�> 0 lastday lastDay} ��� l  L L�=���=  � u olast day of month in date format, calculated from inputed curr date (there is probably a better way to do this)   � ��� � l a s t   d a y   o f   m o n t h   i n   d a t e   f o r m a t ,   c a l c u l a t e d   f r o m   i n p u t e d   c u r r   d a t e   ( t h e r e   i s   p r o b a b l y   a   b e t t e r   w a y   t o   d o   t h i s )� ��� r   L U��� c   L S��� n   L Q��� m   M Q�<
�< 
wkdy� o   L M�;�; 0 lastday lastDay� m   Q R�:
�: 
long� o      �9�9 0 
lastdayint 
lastDayInt� ��� r   V e��� \   V c��� \   V _��� o   V W�8�8 0 currdate currDate� l  W ^��7�6� ]   W ^��� l  W \��5�4� \   W \��� l  W Z��3�2� n   W Z��� 1   X Z�1
�1 
day � o   W X�0�0 0 currdate currDate�3  �2  � m   Z [�/�/ �5  �4  � 1   \ ]�.
�. 
days�7  �6  � l  _ b��-�,� n   _ b��� 1   ` b�+
�+ 
time� o   _ `�*�* 0 currdate currDate�-  �,  � o      �)�) 0 firstofmonth firstOfMonth� ��� l  f o���� r   f o��� c   f m��� n   f k��� m   g k�(
�( 
wkdy� o   f g�'�' 0 firstofmonth firstOfMonth� m   k l�&
�& 
long� o      �%�% 0 firstday firstDay�  We = 4, Th = 5 ...   � ��� $ W e   =   4 ,   T h   =   5   . . .� ��� l  p p�$�#�"�$  �#  �"  � ��� l  p p�!� ��!  �   �  � ��� r   p w��� c   p u��� o   p q�� 0 	recurrday 	recurrDay� m   q t�
� 
ctxt� o      �� 0 	recurrday 	recurrDay� ��� r   x ���� n   x ~��� 4   y ~��
� 
cha � m   | }�� � o   x y�� 0 	recurrday 	recurrDay� o      �� 0 
weeknumber 
weekNumber� ��� r   � ���� m   � ��
� boovfals� o      �� 0 isneg isNeg� ��� Z   � ������ l  � ����� =   � ���� o   � ��� 0 
weeknumber 
weekNumber� m   � ��� ���  -�  �  � k   � ��� ��� r   � ���� b   � ���� m   � ��� ���  -� n   � ���� 4   � ���
� 
cha � m   � ��� � o   � ��� 0 	recurrday 	recurrDay� o      �� 0 
weeknumber 
weekNumber� ��� r   � ���� b   � ���� n   � ���� 4   � ���
� 
cha � m   � ��� � o   � ��� 0 	recurrday 	recurrDay� n   � ���� 4   � ��
�
�
 
cha � m   � ��	�	 � o   � ��� 0 	recurrday 	recurrDay� o      �� 0 	dayofweek 	dayOfWeek� ��� r   � ���� m   � ��
� boovtrue� o      �� 0 isneg isNeg�  �  � r   � ���� b   � ���� n   � ���� 4   � ���
� 
cha � m   � ��� � o   � ��� 0 	recurrday 	recurrDay� n   � ���� 4   � ��  
�  
cha   m   � ����� � o   � ����� 0 	recurrday 	recurrDay� o      ���� 0 	dayofweek 	dayOfWeek�  Z   � l  � ����� =   � �	 o   � ����� 0 	dayofweek 	dayOfWeek	 m   � �

 �  S U��  ��   r   � � m   � �����  o      ���� 0 	dayofweek 	dayOfWeek  l  � ����� =   � � o   � ����� 0 	dayofweek 	dayOfWeek m   � � �  M O��  ��    r   � � m   � �����  o      ���� 0 	dayofweek 	dayOfWeek  l  � ����� =   � � o   � ����� 0 	dayofweek 	dayOfWeek m   � � �  T U��  ��    !  r   � �"#" m   � ����� # o      ���� 0 	dayofweek 	dayOfWeek! $%$ l  � �&����& =   � �'(' o   � ����� 0 	dayofweek 	dayOfWeek( m   � �)) �**  W E��  ��  % +,+ r   � �-.- m   � ����� . o      ���� 0 	dayofweek 	dayOfWeek, /0/ l  � �1����1 =   � �232 o   � ����� 0 	dayofweek 	dayOfWeek3 m   � �44 �55  T H��  ��  0 676 r   898 m   ���� 9 o      ���� 0 	dayofweek 	dayOfWeek7 :;: l <����< =  =>= o  ���� 0 	dayofweek 	dayOfWeek> m  
?? �@@  F R��  ��  ; A��A r  BCB m  ���� C o      ���� 0 	dayofweek 	dayOfWeek��   r  DED m  ���� E o      ���� 0 	dayofweek 	dayOfWeek FGF l ��������  ��  ��  G HIH Z  wJK��LJ l M����M =  NON o  ���� 0 isneg isNegO m  ��
�� boovtrue��  ��  K Z   OPQ��RP l  #S����S A   #TUT o   !���� 0 
lastdayint 
lastDayIntU o  !"���� 0 	dayofweek 	dayOfWeek��  ��  Q r  &:VWV l &8X����X \  &8YZY \  &-[\[ o  &'���� 0 	totaldays 	totalDays\ l ',]����] \  ',^_^ l '*`����` [  '*aba o  '(���� 0 
lastdayint 
lastDayIntb m  ()���� ��  ��  _ o  *+���� 0 	dayofweek 	dayOfWeek��  ��  Z l -7c����c ]  -7ded m  -.���� e l .6f����f \  .6ghg l .4i����i n  .4jkj 4  /4��l
�� 
cha l m  23���� k o  ./���� 0 
weeknumber 
weekNumber��  ��  h m  45���� ��  ��  ��  ��  ��  ��  W o      ���� 0 thedoi theDOI��  R r  =Omnm l =Mo����o \  =Mpqp \  =Brsr o  =>���� 0 	totaldays 	totalDayss l >At����t \  >Auvu o  >?���� 0 
lastdayint 
lastDayIntv o  ?@���� 0 	dayofweek 	dayOfWeek��  ��  q l BLw����w ]  BLxyx m  BC���� y l CKz����z \  CK{|{ l CI}����} n  CI~~ 4  DI���
�� 
cha � m  GH����  o  CD���� 0 
weeknumber 
weekNumber��  ��  | m  IJ���� ��  ��  ��  ��  ��  ��  n o      ���� 0 thedoi theDOI��  L Z  Rw������ l RU������ ?  RU��� o  RS���� 0 firstday firstDay� o  ST���� 0 	dayofweek 	dayOfWeek��  ��  � r  Xg��� [  Xe��� [  Xc��� l X]������ \  X]��� l X[������ [  X[��� o  XY���� 0 	dayofweek 	dayOfWeek� m  YZ���� ��  ��  � o  [\���� 0 firstday firstDay��  ��  � l ]b������ ]  ]b��� l ]`������ \  ]`��� o  ]^���� 0 
weeknumber 
weekNumber� m  ^_���� ��  ��  � m  `a���� ��  ��  � m  cd���� � o      ���� 0 thedoi theDOI��  � r  jw��� [  ju��� [  js��� l jm������ \  jm��� o  jk���� 0 	dayofweek 	dayOfWeek� o  kl���� 0 firstday firstDay��  ��  � l mr������ ]  mr��� l mp������ \  mp��� o  mn���� 0 
weeknumber 
weekNumber� m  no���� ��  ��  � m  pq���� ��  ��  � m  st���� � o      ���� 0 thedoi theDOII ���� L  xz�� o  xy���� 0 thedoi theDOI��  < ��� l     �������  ��  �  � ��� l     �~���~  � L FFunction returns the number of years between startDate and currentDate   � ��� � F u n c t i o n   r e t u r n s   t h e   n u m b e r   o f   y e a r s   b e t w e e n   s t a r t D a t e   a n d   c u r r e n t D a t e� ��� i    ��� I      �}��|�} 0 
getyeardif 
getYearDif� ��� o      �{�{ 0 	startdate 	startDate� ��z� o      �y�y 0 currentdate currentDate�z  �|  � k     �� ��� r     ��� c     ��� n     ��� 1    �x
�x 
year� o     �w�w 0 	startdate 	startDate� m    �v
�v 
long� o      �u�u 0 startyearint startYearInt� ��� r    ��� c    ��� n    ��� 1   	 �t
�t 
year� o    	�s�s 0 currentdate currentDate� m    �r
�r 
long� o      �q�q 0 curryearint currYearInt� ��� r    ��� l   ��p�o� \    ��� o    �n�n 0 curryearint currYearInt� o    �m�m 0 startyearint startYearInt�p  �o  � o      �l�l 0 thedif theDif� ��k� L    �� o    �j�j 0 thedif theDif�k  � ��� l     �i�h�g�i  �h  �g  � ��� l     �f���f  � 0 *--------Script----------------------------   � ��� T - - - - - - - - S c r i p t - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �e���e  � 1 +-------------------------------------------   � ��� V - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �d�c�b�d  �c  �b  � ��� l     �a���a  � @ :pulling all events from this calendar into a text document   � ��� t p u l l i n g   a l l   e v e n t s   f r o m   t h i s   c a l e n d a r   i n t o   a   t e x t   d o c u m e n t� ��� l  � ���`�_� r   � ���� J   � ��^�^  � o      �]�] 0 calinfolist calInfoList�`  �_  � ��� l  � ���\�[� r   � ���� m   � ��Z
�Z boovfals� o      �Y�Y 0 eventpresent eventPresent�\  �[  � ��� l  ���X�W� O   ���� X   ���V�� k   ��� ��� r   � ���� m   � ��U
�U boovfals� o      �T�T 0 eventpresent eventPresent� ��� l  � ��S���S  � + %1. Get info from non-recurring events   � �   J 1 .   G e t   i n f o   f r o m   n o n - r e c u r r i n g   e v e n t s�  l  �$ r   �$ l  � �R�Q 6  � 	
	 l  � ��P�O n  � � 2  � ��N
�N 
wrev o   � ��M�M 0 c  �P  �O  
 G   � l  � ��L�K F   � � @  � � l  � ��J�I 1   � ��H
�H 
wr1s�J  �I   o   � ��G�G 0 	todaydate 	todayDate A  � � l  � ��F�E 1   � ��D
�D 
wr1s�F  �E   o   � ��C�C 0 	thirddate 	thirdDate�L  �K   l  ��B�A F   � F   � @  � l   �@�?  1   �>
�> 
wr1s�@  �?   o  �=�= 0 	tomordate 	tomorDate A 	!"! l 
#�<�;# 1  
�:
�: 
wr1s�<  �;  " o  �9�9 0 	todaydate 	todayDate =  $%$ l &�8�7& 1  �6
�6 
wrad�8  �7  % m  �5
�5 boovtrue�B  �A  �R  �Q   o      �4�4 0 onetimeevents oneTimeEvents H Bfinds events 72 hours after current time and today's allday events    �'' � f i n d s   e v e n t s   7 2   h o u r s   a f t e r   c u r r e n t   t i m e   a n d   t o d a y ' s   a l l d a y   e v e n t s ()( X  %�*�3+* Z  ;�,-�2., l ;A/�1�0/ n  ;A010 1  <@�/
�/ 
wrad1 o  ;<�.�. 0 e  �1  �0  - k  Dh22 343 r  DM565 l DI7�-�,7 n  DI898 1  EI�+
�+ 
wr1s9 o  DE�*�* 0 e  �-  �,  6 o      �)�) 0 	startdate 	startDate4 :�(: r  Nh;<; b  Nc=>= b  N_?@? b  NYABA b  NUCDC l NQE�'�&E o  NQ�%�% 0 	startdate 	startDate�'  �&  D m  QTFF �GG  ;B m  UXHH �II  A l l   D a y :  @ l Y^J�$�#J n  Y^KLK 1  Z^�"
�" 
wr11L o  YZ�!�! 0 e  �$  �#  > o  _b� 
�  
ret < n      MNM  ;  fgN o  cf�� 0 calinfolist calInfoList�(  �2  . k  k�OO PQP r  ktRSR l kpT��T n  kpUVU 1  lp�
� 
wr1sV o  kl�� 0 e  �  �  S o      �� 0 	startdate 	startDateQ WXW r  u~YZY l uz[��[ n  uz\]\ 1  vz�
� 
wr5s] o  uv�� 0 e  �  �  Z o      �� 0 enddate endDateX ^�^ r  �_`_ b  �aba b  �cdc b  �efe b  �ghg b  �iji b  �klk b  �mnm l �o��o o  ��� 0 	startdate 	startDate�  �  n m  ��pp �qq  ;l o  ���� 0 	startdate 	startDatej m  ��rr �ss  ;h o  ���� 0 enddate endDatef m  ��tt �uu  ;d l ��v��v n  ��wxw 1  ���
� 
wr11x o  ���� 0 e  �  �  b o  ���

�
 
ret ` n      yzy  ;  ��z o  ���	�	 0 calinfolist calInfoList�  �3 0 e  + o  (+�� 0 onetimeevents oneTimeEvents) {|{ l ���}~�  } ' !2. Get info from recurring events   ~ � B 2 .   G e t   i n f o   f r o m   r e c u r r i n g   e v e n t s| ��� r  ����� l ������ 6 ����� l ������ n ����� 2  ���
� 
wrev� o  ���� 0 c  �  �  � F  ����� B ����� l ���� ��� 1  ����
�� 
wr1s�   ��  � o  ������ 0 	thirddate 	thirdDate� C  ����� 1  ����
�� 
wr15� m  ���� ���  F R E Q�  �  � o      ���� $0 recurrenceevents recurrenceEvents� ���� X  ������ k  ��� ��� r  ����� l �������� n  ����� 1  ����
�� 
wr15� o  ������ 0 e  ��  ��  � o      ����  0 recurrenceinfo recurrenceInfo� ��� r  ����� J  ���� ���� m  ���� ���  ;��  � n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ���� c  �	��� l ������� n ���� 2  ��
�� 
citm� o  �����  0 recurrenceinfo recurrenceInfo��  ��  � m  ��
�� 
list� o      ���� "0 recurrenceparts recurrenceParts� ��� l ��������  ��  ��  � ��� l ������  � H B2.1 If there is an UNTIL/end date, make sure that it hasn't passed   � ��� � 2 . 1   I f   t h e r e   i s   a n   U N T I L / e n d   d a t e ,   m a k e   s u r e   t h a t   i t   h a s n ' t   p a s s e d� ��� r  ��� m  ��
�� boovfals� o      ���� 0 isuntil isUNTIL� ��� Y  N�������� Z  $I������� l $0������ C $0��� n  $,��� 4  ',���
�� 
cobj� o  *+���� 0 r  � o  $'���� "0 recurrenceparts recurrenceParts� m  ,/�� ��� 
 U N T I L��  ��  � k  3E�� ��� r  3?��� n  3;��� 4  6;���
�� 
cobj� o  9:���� 0 r  � o  36���� "0 recurrenceparts recurrenceParts� o      ���� (0 recurrencepreuntil recurrencePreUNTIL� ���� r  @E��� m  @A��
�� boovtrue� o      ���� 0 isuntil isUNTIL��  ��  ��  �� 0 r  � m  ���� � I �����
�� .corecnte****       ****� o  ���� "0 recurrenceparts recurrenceParts��  ��  � ��� Z  O������ l OT������ = OT��� o  OR���� 0 isuntil isUNTIL� m  RS��
�� boovtrue��  ��  � k  W
�� ��� r  Wd��� J  W\�� ���� m  WZ�� ���  =��  � n     ��� 1  _c��
�� 
txdl� 1  \_��
�� 
ascr� ��� r  ey��� c  eu��� n  eq��� 4  lq���
�� 
cobj� m  op���� � l el������ n el��� 2  hl��
�� 
citm� o  eh���� (0 recurrencepreuntil recurrencePreUNTIL��  ��  � m  qt��
�� 
ctxt� o      ���� "0 recurrenceuntil recurrenceUntil� ��� r  z���� b  z���� b  z���� b  z���� n  z�   4  }���
�� 
cha  m  ������  o  z}���� "0 recurrenceuntil recurrenceUntil� n  �� 4  ����
�� 
cha  m  ������  o  ������ "0 recurrenceuntil recurrenceUntil� n  �� 4  ����
�� 
cha  m  ������  o  ������ "0 recurrenceuntil recurrenceUntil� n  ��	
	 4  ����
�� 
cha  m  ������ 
 o  ������ "0 recurrenceuntil recurrenceUntil� o      ���� 0 lastyear lastYear�  r  �� c  �� b  �� n  �� 4  ����
�� 
cha  m  ������  o  ������ "0 recurrenceuntil recurrenceUntil n  �� 4  ����
�� 
cha  m  ������  o  ������ "0 recurrenceuntil recurrenceUntil m  ����
�� 
long o      ���� 0 	lastmonth 	lastMonth  r  �� c  �� b  �� !  n  ��"#" 4  ����$
�� 
cha $ m  ������ # o  ������ "0 recurrenceuntil recurrenceUntil! n  ��%&% 4  ����'
�� 
cha ' m  ������ & o  ������ "0 recurrenceuntil recurrenceUntil m  ����
�� 
long o      ���� 0 lastday lastDay ()( l ����������  ��  ��  ) *+* l ����,-��  , Y Scheck if todays date is before the above day data. Turn above data into date format   - �.. � c h e c k   i f   t o d a y s   d a t e   i s   b e f o r e   t h e   a b o v e   d a y   d a t a .   T u r n   a b o v e   d a t a   i n t o   d a t e   f o r m a t+ /0/ s  ��121 o  ������ 0 	todaydate 	todayDate2 o      ���� 0 lastdate lastDate0 343 r  ��565 o  ������ 0 lastday lastDay6 l     7����7 n      898 1  ����
�� 
day 9 o  ������ 0 lastdate lastDate��  ��  4 :;: r  ��<=< o  ������ 0 	lastmonth 	lastMonth= l     >����> n      ?@? m  ����
�� 
mnth@ o  ������ 0 lastdate lastDate��  ��  ; A��A r  �
BCB o  ����� 0 lastyear lastYearC l     D����D n      EFE 1  	��
�� 
yearF o  ���� 0 lastdate lastDate��  ��  ��  ��  � l GHIG r  JKJ [  LML o  ���� 0 	todaydate 	todayDateM ]  NON m  ���� O 1  ��
�� 
hourK o      ���� 0 lastdate lastDateH * $There is no UNTIL date in recurrence   I �PP H T h e r e   i s   n o   U N T I L   d a t e   i n   r e c u r r e n c e� QRQ l ��������  ��  ��  R STS l ��UV��  U - '2.2 Checks if event is still reoccuring   V �WW N 2 . 2   C h e c k s   i f   e v e n t   i s   s t i l l   r e o c c u r i n gT X��X Z  YZ����Y l [����[ A  \]\ o  ���� 0 	todaydate 	todayDate] o  �� 0 lastdate lastDate��  ��  Z k  !^^ _`_ l !!�~�}�|�~  �}  �|  ` aba l !!�{cd�{  c B <2.2.1 Get frequency of recurrence, as well as other measures   d �ee x 2 . 2 . 1   G e t   f r e q u e n c y   o f   r e c u r r e n c e ,   a s   w e l l   a s   o t h e r   m e a s u r e sb fgf r  !fhih J  !*jj klk m  !"�z
�z boovfalsl mnm m  "#�y
�y boovfalsn opo m  #$�x
�x boovfalsp qrq m  $%�w
�w boovfalsr s�vs m  %&�u
�u boovfals�v  i J      tt uvu o      �t�t 0 isinter isInterv wxw o      �s�s 0 isbyday isBYDAYx yzy o      �r�r 0 isbymonthday isBYMONTHDAYz {|{ o      �q�q 0 
isbysetpos 
isBYSETPOS| }�p} o      �o�o 0 	isbymonth 	isBYMONTH�p  g ~~ Y  gY��n���m� k  wT�� ��� Z  w����l�k� l w���j�i� C w���� n  w��� 4  z�h�
�h 
cobj� o  }~�g�g 0 r  � o  wz�f�f "0 recurrenceparts recurrenceParts� m  ��� ���  F R E Q�j  �i  � r  ����� n  ����� 4  ���e�
�e 
cobj� o  ���d�d 0 r  � o  ���c�c "0 recurrenceparts recurrenceParts� o      �b�b &0 recurrenceprefreq recurrencePreFREQ�l  �k  � ��� Z  �����a�`� l ����_�^� C ����� n  ����� 4  ���]�
�] 
cobj� o  ���\�\ 0 r  � o  ���[�[ "0 recurrenceparts recurrenceParts� m  ���� ���  I N T E R V A L�_  �^  � k  ���� ��� r  ����� n  ����� 4  ���Z�
�Z 
cobj� o  ���Y�Y 0 r  � o  ���X�X "0 recurrenceparts recurrenceParts� o      �W�W (0 recurrencepreinter recurrencePreINTER� ��V� r  ����� m  ���U
�U boovtrue� o      �T�T 0 isinter isInter�V  �a  �`  � ��� Z  �����S�R� l ����Q�P� C ����� n  ����� 4  ���O�
�O 
cobj� o  ���N�N 0 r  � o  ���M�M "0 recurrenceparts recurrenceParts� m  ���� ��� 
 B Y D A Y�Q  �P  � k  ���� ��� r  ����� n  ����� 4  ���L�
�L 
cobj� o  ���K�K 0 r  � o  ���J�J "0 recurrenceparts recurrenceParts� o      �I�I (0 recurrenceprebyday recurrencePreBYDAY� ��H� r  ����� m  ���G
�G boovtrue� o      �F�F 0 isbyday isBYDAY�H  �S  �R  � ��� Z  ����E�D� l ����C�B� C ����� n  ����� 4  ���A�
�A 
cobj� o  ���@�@ 0 r  � o  ���?�? "0 recurrenceparts recurrenceParts� m  ���� ���  B Y M O N T H D A Y�C  �B  � k  ��� ��� r  ����� n  ����� 4  ���>�
�> 
cobj� o  ���=�= 0 r  � o  ���<�< "0 recurrenceparts recurrenceParts� o      �;�; 20 recurrenceprebymonthday recurrencePreBYMONTHDAY� ��:� r  ���� m  � �9
�9 boovtrue� o      �8�8 0 isbymonthday isBYMONTHDAY�:  �E  �D  � ��� Z  	.���7�6� l 	��5�4� C 	��� n  	��� 4  �3�
�3 
cobj� o  �2�2 0 r  � o  	�1�1 "0 recurrenceparts recurrenceParts� m  �� ���  B Y S E T P O S�5  �4  � k  *�� ��� r  $��� n   ��� 4   �0�
�0 
cobj� o  �/�/ 0 r  � o  �.�. "0 recurrenceparts recurrenceParts� o      �-�- .0 recurrenceprebysetpos recurrencePreBYSETPOS� ��,� r  %*��� m  %&�+
�+ boovtrue� o      �*�* 0 
isbysetpos 
isBYSETPOS�,  �7  �6  � ��)� Z  /T���(�'� l /;��&�%� C /;��� n  /7��� 4  27�$�
�$ 
cobj� o  56�#�# 0 r  � o  /2�"�" "0 recurrenceparts recurrenceParts� m  7:�� ���  B Y M O N T H�&  �%  � k  >P�� ��� r  >J� � n  >F 4  AF�!
�! 
cobj o  DE� �  0 r   o  >A�� "0 recurrenceparts recurrenceParts  o      �� ,0 recurrenceprebymonth recurrencePreBYMONTH� � r  KP m  KL�
� boovtrue o      �� 0 	isbymonth 	isBYMONTH�  �(  �'  �)  �n 0 r  � m  jk�� � I kr��
� .corecnte****       **** o  kn�� "0 recurrenceparts recurrenceParts�  �m   	 r  Zg

 J  Z_ � m  Z] �  =�   n      1  bf�
� 
txdl 1  _b�
� 
ascr	  r  hx n  ht 4  ot�
� 
cobj m  rs��  l ho�� n ho 2  ko�
� 
citm o  hk�� &0 recurrenceprefreq recurrencePreFREQ�  �   o      ��  0 recurrencefreq recurrenceFREQ  Z  y��  l y~!��
! =  y~"#" o  y|�	�	 0 isinter isInter# m  |}�
� boovtrue�  �
   l ��$%&$ r  ��'(' n  ��)*) 4  ���+
� 
cobj+ m  ���� * l ��,��, n ��-.- 2  ���
� 
citm. o  ���� (0 recurrencepreinter recurrencePreINTER�  �  ( o      �� "0 recurrenceinter recurrenceINTER% - ' everything after equals sign in string   & �// N   e v e r y t h i n g   a f t e r   e q u a l s   s i g n   i n   s t r i n g�    r  ��010 m  ��� �  1 o      ���� "0 recurrenceinter recurrenceINTER 232 Z  ��45����4 l ��6����6 =  ��787 o  ������ 0 isbyday isBYDAY8 m  ����
�� boovtrue��  ��  5 k  ��99 :;: r  ��<=< n  ��>?> 4  ����@
�� 
cobj@ m  ������ ? l ��A����A n ��BCB 2  ����
�� 
citmC o  ������ (0 recurrenceprebyday recurrencePreBYDAY��  ��  = o      ���� "0 recurrencebyday recurrenceBYDAY; DED r  ��FGF J  ��HH I��I m  ��JJ �KK  ,��  G n     LML 1  ����
�� 
txdlM 1  ����
�� 
ascrE NON r  ��PQP n  ��RSR 2  ����
�� 
citmS o  ������ "0 recurrencebyday recurrenceBYDAYQ o      ���� 0 recurrenceday recurrenceDayO TUT l ��VWXV r  ��YZY J  ��[[ \��\ m  ��]] �^^  =��  Z n     _`_ 1  ����
�� 
txdl` 1  ����
�� 
ascrW $  return delimiters to original   X �aa <   r e t u r n   d e l i m i t e r s   t o   o r i g i n a lU b��b l ����cd��  c C = returns 2 letter abreviations for days of the week as a list   d �ee z   r e t u r n s   2   l e t t e r   a b r e v i a t i o n s   f o r   d a y s   o f   t h e   w e e k   a s   a   l i s t��  ��  ��  3 fgf Z  �%hi����h l ��j����j =  ��klk o  ������ 0 isbymonthday isBYMONTHDAYl m  ����
�� boovtrue��  ��  i k  �!mm non r  ��pqp n  ��rsr 4  ����t
�� 
cobjt m  ������ s l ��u����u n ��vwv 2  ����
�� 
citmw o  ������ 20 recurrenceprebymonthday recurrencePreBYMONTHDAY��  ��  q o      ���� ,0 recurrencebymonthday recurrenceBYMONTHDAYo xyx r  �z{z J  ��|| }��} m  ��~~ �  ,��  { n     ��� 1  ��
�� 
txdl� 1  ���
�� 
ascry ��� r  ��� n ��� 2  ��
�� 
citm� o  ���� ,0 recurrencebymonthday recurrenceBYMONTHDAY� o      ���� (0 recurrencemonthday recurrenceMonthDay� ���� l !���� r  !��� J  �� ���� m  �� ���  =��  � n     ��� 1   ��
�� 
txdl� 1  ��
�� 
ascr� $  return delimiters to original   � ��� <   r e t u r n   d e l i m i t e r s   t o   o r i g i n a l��  ��  ��  g ��� Z  &B������� l &+������ =  &+��� o  &)���� 0 
isbysetpos 
isBYSETPOS� m  )*��
�� boovtrue��  ��  � r  .>��� n  .:��� 4  5:���
�� 
cobj� m  89���� � l .5������ n .5��� 2  15��
�� 
citm� o  .1���� .0 recurrenceprebysetpos recurrencePreBYSETPOS��  ��  � o      ���� (0 recurrencebysetpos recurrenceBYSETPOS��  ��  � ��� Z  C�������� l CH������ =  CH��� o  CF���� 0 	isbymonth 	isBYMONTH� m  FG��
�� boovtrue��  ��  � k  K��� ��� r  K[��� n  KW��� 4  RW���
�� 
cobj� m  UV���� � l KR������ n KR��� 2  NR��
�� 
citm� o  KN���� ,0 recurrenceprebymonth recurrencePreBYMONTH��  ��  � o      ���� &0 recurrencebymonth recurrenceBYMONTH� ��� r  \i��� J  \a�� ���� m  \_�� ���  ,��  � n     ��� 1  dh��
�� 
txdl� 1  ad��
�� 
ascr� ��� r  ju��� n jq��� 2  mq��
�� 
citm� o  jm���� &0 recurrencebymonth recurrenceBYMONTH� o      ���� "0 recurrencemonth recurrenceMonth� ���� l v����� r  v���� J  v{�� ���� m  vy�� ���  =��  � n     ��� 1  ~���
�� 
txdl� 1  {~��
�� 
ascr� $  return delimiters to original   � ��� <   r e t u r n   d e l i m i t e r s   t o   o r i g i n a l��  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � 2 ,2.2.2 Set original event to start of the day   � ��� X 2 . 2 . 2   S e t   o r i g i n a l   e v e n t   t o   s t a r t   o f   t h e   d a y� ��� r  ����� n  ����� l �������� 1  ����
�� 
wr1s��  ��  � o  ������ 0 e  � o      ���� 0 	startdate 	startDate� ��� r  ����� \  ����� o  ������ 0 	startdate 	startDate� l �������� n  ����� 1  ����
�� 
time� o  ������ 0 	startdate 	startDate��  ��  � o      ���� 0 startday startDay� ��� r  ����� J  ���� ��� o  ������ 0 todayday todayDay� ��� o  ������ 0 tomorday tomorDay� ��� o  ������ 0 	secondday 	secondDay� ���� o  ������ 0 thirdday thirdDay��  � o      ���� 0 soondays soonDays� ��� l ����������  ��  ��  � ��� l ��������  � d ^2.2.3 Get the original start date of reoccurence and see if it is occuring within the next 72h   � ��� � 2 . 2 . 3   G e t   t h e   o r i g i n a l   s t a r t   d a t e   o f   r e o c c u r e n c e   a n d   s e e   i f   i t   i s   o c c u r i n g   w i t h i n   t h e   n e x t   7 2 h� ��� Z  ��	 	��� l ��	����	 =  ��			 o  ������  0 recurrencefreq recurrenceFREQ	 m  ��		 �		 
 D A I L Y��  ��  	  k  ��		 				 l ����	
	��  	
 . (2.2.3.D Check recurrence of daily events   	 �		 P 2 . 2 . 3 . D   C h e c k   r e c u r r e n c e   o f   d a i l y   e v e n t s		 			 I ����	��
�� .ascrcmnt****      � ****	 m  ��		 �		 
 D A I L Y��  	 			 X  ��	��		 k  ��		 			 r  ��			 ^  ��			 l ��	����	 \  ��			 o  ������ 0 soonday soonDay	 o  ������ 0 startday startDay��  ��  	 1  ����
�� 
days	 o      ���� 0 datedif DateDif	 	 ��	  Z  ��	!	"����	! l ��	#����	# =  ��	$	%	$ l ��	&��~	& `  ��	'	(	' o  ���}�} 0 datedif DateDif	( o  ���|�| "0 recurrenceinter recurrenceINTER�  �~  	% m  ���{�{  ��  ��  	" l ��	)	*	+	) Z  ��	,	-�z�y	, l �	.�x�w	. G  �	/	0	/ l ��	1�v�u	1 >  ��	2	3	2 c  ��	4	5	4 o  ���t�t 0 soonday soonDay	5 m  ���s
�s 
ldt 	3 c  ��	6	7	6 o  ���r�r 0 todayday todayDay	7 m  ���q
�q 
ldt �v  �u  	0 l �
	8�p�o	8 ?  �
	9	:	9 n  �	;	<	; 1   �n
�n 
tstr	< o  � �m�m 0 	startdate 	startDate	: n  		=	>	= 1  	�l
�l 
tstr	> o  �k�k 0 	todaydate 	todayDate�p  �o  �x  �w  	- Z  �	?	@�j	A	? l 	B�i�h	B n  	C	D	C 1  �g
�g 
wrad	D o  �f�f 0 e  �i  �h  	@ k  B	E	E 	F	G	F r  #	H	I	H l 	J�e�d	J n  	K	L	K 1  �c
�c 
wr1s	L o  �b�b 0 e  �e  �d  	I o      �a�a 0 	startdate 	startDate	G 	M�`	M r  $B	N	O	N b  $=	P	Q	P b  $9	R	S	R b  $3	T	U	T b  $/	V	W	V l $+	X�_�^	X [  $+	Y	Z	Y o  $%�]�] 0 soonday soonDay	Z l %*	[�\�[	[ n  %*	\	]	\ 1  (*�Z
�Z 
time	] o  %(�Y�Y 0 	startdate 	startDate�\  �[  �_  �^  	W m  +.	^	^ �	_	_  ;	U m  /2	`	` �	a	a  A l l   D a y :  	S l 38	b�X�W	b n  38	c	d	c 1  48�V
�V 
wr11	d o  34�U�U 0 e  �X  �W  	Q o  9<�T
�T 
ret 	O n      	e	f	e  ;  @A	f o  =@�S�S 0 calinfolist calInfoList�`  �j  	A k  E�	g	g 	h	i	h r  EP	j	k	j l EL	l�R�Q	l [  EL	m	n	m o  EF�P�P 0 soonday soonDay	n l FK	o�O�N	o n  FK	p	q	p 1  IK�M
�M 
time	q o  FI�L�L 0 	startdate 	startDate�O  �N  �R  �Q  	k o      �K�K 0 instancedate InstanceDate	i 	r	s	r r  QZ	t	u	t l QV	v�J�I	v n  QV	w	x	w 1  RV�H
�H 
wr1s	x o  QR�G�G 0 e  �J  �I  	u o      �F�F 0 	startdate 	startDate	s 	y	z	y r  [d	{	|	{ l [`	}�E�D	} n  [`	~		~ 1  \`�C
�C 
wr5s	 o  [\�B�B 0 e  �E  �D  	| o      �A�A 0 enddate endDate	z 	�	�	� r  ew	�	�	� n es	�	�	� I  fs�@	��?�@ 0 
fixenddate 
fixEndDate	� 	�	�	� o  fi�>�> 0 instancedate InstanceDate	� 	�	�	� o  il�=�= 0 	startdate 	startDate	� 	��<	� o  lo�;�; 0 enddate endDate�<  �?  	�  f  ef	� o      �:�: 0 enddate endDate	� 	��9	� r  x�	�	�	� b  x�	�	�	� b  x�	�	�	� b  x�	�	�	� b  x�	�	�	� b  x�	�	�	� b  x�	�	�	� b  x�	�	�	� l x	��8�7	� [  x	�	�	� o  xy�6�6 0 soonday soonDay	� l y~	��5�4	� n  y~	�	�	� 1  |~�3
�3 
time	� o  y|�2�2 0 	startdate 	startDate�5  �4  �8  �7  	� m  �	�	� �	�	�  ;	� l ��	��1�0	� [  ��	�	�	� o  ���/�/ 0 soonday soonDay	� l ��	��.�-	� n  ��	�	�	� 1  ���,
�, 
time	� o  ���+�+ 0 	startdate 	startDate�.  �-  �1  �0  	� m  ��	�	� �	�	�  ;	� l ��	��*�)	� o  ���(�( 0 enddate endDate�*  �)  	� m  ��	�	� �	�	�  ;	� l ��	��'�&	� n  ��	�	�	� 1  ���%
�% 
wr11	� o  ���$�$ 0 e  �'  �&  	� o  ���#
�# 
ret 	� n      	�	�	�  ;  ��	� o  ���"�" 0 calinfolist calInfoList�9  �z  �y  	* ' !mod returns remainder of division   	+ �	�	� B m o d   r e t u r n s   r e m a i n d e r   o f   d i v i s i o n��  ��  ��  �� 0 soonday soonDay	 o  ���!�! 0 soondays soonDays	 	�� 	� l ������  �  �  �   	 	�	�	� l ��	���	� =  ��	�	�	� o  ����  0 recurrencefreq recurrenceFREQ	� m  ��	�	� �	�	�  W E E K L Y�  �  	� 	�	�	� k  ��	�	� 	�	�	� l ���	�	��  	� / )2.2.3.W Check recurrence of weekly events   	� �	�	� R 2 . 2 . 3 . W   C h e c k   r e c u r r e n c e   o f   w e e k l y   e v e n t s	� 	�	�	� I ���	��
� .ascrcmnt****      � ****	� m  ��	�	� �	�	�  W E E K L Y�  	� 	�	�	� r  ��	�	�	� n ��	�	�	� I  ���	��� &0 getprevioussunday getPreviousSunday	� 	��	� o  ���� 0 	startdate 	startDate�  �  	�  f  ��	� o      �� 0 firstsunday firstSunday	� 	�	�	� l ���	�	��  	� N Hneed to use "my" when calling function (aka subroutine) from inside tell   	� �	�	� � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l l	� 	�	�	� X  ��	��	�	� k  ��	�	� 	�	�	� r  ��	�	�	� n ��	�	�	� I  ���	��� &0 getprevioussunday getPreviousSunday	� 	��	� o  ���� 0 soonday soonDay�  �  	�  f  ��	� o      �� 0 	nowsunday 	nowSunday	� 	�	�	� r  �	�	�	� ^  �	�	�	� l ��	��
�		� \  ��	�	�	� o  ���� 0 	nowsunday 	nowSunday	� o  ���� 0 firstsunday firstSunday�
  �	  	� 1  ��
� 
week	� o      �� 0 weekdif weekDif	� 	�	�	� I �	��
� .ascrcmnt****      � ****	� o  �� 0 weekdif weekDif�  	� 	��	� Z  �	�	�� ��	� l 	�����	� =  	�	�	� l 	�����	� `  	�	�	� o  ���� 0 weekdif weekDif	� o  ���� "0 recurrenceinter recurrenceINTER��  ��  	� m  ����  ��  ��  	� Z  �	�	�	���	� l !	�����	� =  !	�	�	� o  ���� 0 isbyday isBYDAY	� m   ��
�� boovtrue��  ��  	� Z  $�
 
����
  l $9
����
 E $9


 o  $'���� 0 recurrenceday recurrenceDay
 n  '8


 7 ,8��


�� 
ctxt
 m  24���� 
 m  57���� 
 l ',
	����
	 c  ',




 n  '*


 m  (*��
�� 
wkdy
 o  '(���� 0 soonday soonDay
 m  *+��
�� 
TEXT��  ��  ��  ��  
 Z  <�

��

 l <B
����
 n  <B


 1  =A��
�� 
wrad
 o  <=���� 0 e  ��  ��  
 k  Em

 


 r  EN


 l EJ
����
 n  EJ


 1  FJ��
�� 
wr1s
 o  EF���� 0 e  ��  ��  
 o      ���� 0 	startdate 	startDate
 
��
 r  Om


 b  Oh

 
 b  Od
!
"
! b  O^
#
$
# b  OZ
%
&
% l OV
'����
' [  OV
(
)
( o  OP���� 0 soonday soonDay
) l PU
*����
* n  PU
+
,
+ 1  SU��
�� 
time
, o  PS���� 0 	startdate 	startDate��  ��  ��  ��  
& m  VY
-
- �
.
.  ;
$ m  Z]
/
/ �
0
0  A l l   D a y :  
" l ^c
1����
1 n  ^c
2
3
2 1  _c��
�� 
wr11
3 o  ^_���� 0 e  ��  ��  
  o  dg��
�� 
ret 
 n      
4
5
4  ;  kl
5 o  hk���� 0 calinfolist calInfoList��  ��  
 k  p�
6
6 
7
8
7 r  p{
9
:
9 l pw
;����
; [  pw
<
=
< o  pq���� 0 soonday soonDay
= l qv
>����
> n  qv
?
@
? 1  tv��
�� 
time
@ o  qt���� 0 	startdate 	startDate��  ��  ��  ��  
: o      ���� 0 instancedate InstanceDate
8 
A
B
A r  |�
C
D
C l |�
E����
E n  |�
F
G
F 1  }���
�� 
wr1s
G o  |}���� 0 e  ��  ��  
D o      ���� 0 	startdate 	startDate
B 
H
I
H r  ��
J
K
J l ��
L����
L n  ��
M
N
M 1  ����
�� 
wr5s
N o  ������ 0 e  ��  ��  
K o      ���� 0 enddate endDate
I 
O
P
O r  ��
Q
R
Q n ��
S
T
S I  ����
U���� 0 
fixenddate 
fixEndDate
U 
V
W
V o  ������ 0 instancedate InstanceDate
W 
X
Y
X o  ������ 0 	startdate 	startDate
Y 
Z��
Z o  ������ 0 enddate endDate��  ��  
T  f  ��
R o      ���� 0 enddate endDate
P 
[��
[ r  ��
\
]
\ b  ��
^
_
^ b  ��
`
a
` b  ��
b
c
b b  ��
d
e
d b  ��
f
g
f b  ��
h
i
h b  ��
j
k
j l ��
l����
l [  ��
m
n
m o  ������ 0 soonday soonDay
n l ��
o����
o n  ��
p
q
p 1  ����
�� 
time
q o  ������ 0 	startdate 	startDate��  ��  ��  ��  
k m  ��
r
r �
s
s  ;
i l ��
t����
t [  ��
u
v
u o  ������ 0 soonday soonDay
v l ��
w����
w n  ��
x
y
x 1  ����
�� 
time
y o  ������ 0 	startdate 	startDate��  ��  ��  ��  
g m  ��
z
z �
{
{  ;
e l ��
|����
| o  ������ 0 enddate endDate��  ��  
c m  ��
}
} �
~
~  ;
a l ��
����
 n  ��
�
�
� 1  ����
�� 
wr11
� o  ������ 0 e  ��  ��  
_ o  ����
�� 
ret 
] n      
�
�
�  ;  ��
� o  ������ 0 calinfolist calInfoList��  ��  ��  	� 
�
�
� l ��
�����
� =  ��
�
�
� n  ��
�
�
� 7 ����
�
�
�� 
ctxt
� m  ������ 
� m  ������ 
� l ��
�����
� c  ��
�
�
� n  ��
�
�
� m  ����
�� 
wkdy
� o  ������ 0 	startdate 	startDate
� m  ����
�� 
TEXT��  ��  
� n  ��
�
�
� 7 ����
�
�
�� 
ctxt
� m  ������ 
� m  ������ 
� l ��
�����
� c  ��
�
�
� n  ��
�
�
� m  ����
�� 
wkdy
� o  ������ 0 soonday soonDay
� m  ����
�� 
TEXT��  ��  ��  ��  
� 
���
� Z   �
�
���
�
� l  
�����
� n   
�
�
� 1  ��
�� 
wrad
� o   ���� 0 e  ��  ��  
� k  	1
�
� 
�
�
� r  	
�
�
� l 	
�����
� n  	
�
�
� 1  
��
�� 
wr1s
� o  	
���� 0 e  ��  ��  
� o      ���� 0 	startdate 	startDate
� 
��
� r  1
�
�
� b  ,
�
�
� b  (
�
�
� b  "
�
�
� b  
�
�
� l 
��~�}
� [  
�
�
� o  �|�| 0 soonday soonDay
� l 
��{�z
� n  
�
�
� 1  �y
�y 
time
� o  �x�x 0 	startdate 	startDate�{  �z  �~  �}  
� m  
�
� �
�
�  ;
� m  !
�
� �
�
�  A l l   D a y :  
� l "'
��w�v
� n  "'
�
�
� 1  #'�u
�u 
wr11
� o  "#�t�t 0 e  �w  �v  
� o  (+�s
�s 
ret 
� n      
�
�
�  ;  /0
� o  ,/�r�r 0 calinfolist calInfoList�  ��  
� k  4�
�
� 
�
�
� r  4?
�
�
� l 4;
��q�p
� [  4;
�
�
� o  45�o�o 0 soonday soonDay
� l 5:
��n�m
� n  5:
�
�
� 1  8:�l
�l 
time
� o  58�k�k 0 	startdate 	startDate�n  �m  �q  �p  
� o      �j�j 0 instancedate InstanceDate
� 
�
�
� r  @I
�
�
� l @E
��i�h
� n  @E
�
�
� 1  AE�g
�g 
wr1s
� o  @A�f�f 0 e  �i  �h  
� o      �e�e 0 	startdate 	startDate
� 
�
�
� r  JS
�
�
� l JO
��d�c
� n  JO
�
�
� 1  KO�b
�b 
wr5s
� o  JK�a�a 0 e  �d  �c  
� o      �`�` 0 enddate endDate
� 
�
�
� r  Tf
�
�
� n Tb
�
�
� I  Ub�_
��^�_ 0 
fixenddate 
fixEndDate
� 
�
�
� o  UX�]�] 0 instancedate InstanceDate
� 
�
�
� o  X[�\�\ 0 	startdate 	startDate
� 
��[
� o  [^�Z�Z 0 enddate endDate�[  �^  
�  f  TU
� o      �Y�Y 0 enddate endDate
� 
��X
� r  g�
�
�
� b  g�
�
�
� b  g�
�
�
� b  g�
�
�
� b  g�
�
�
� b  g~
�
�
� b  gz
�
�
� b  gr
�
�
� l gn
��W�V
� [  gn
�
�
� o  gh�U�U 0 soonday soonDay
� l hm
��T�S
� n  hm
�
�
� 1  km�R
�R 
time
� o  hk�Q�Q 0 	startdate 	startDate�T  �S  �W  �V  
� m  nq   �  ;
� l ry�P�O [  ry o  rs�N�N 0 soonday soonDay l sx�M�L n  sx 1  vx�K
�K 
time o  sv�J�J 0 	startdate 	startDate�M  �L  �P  �O  
� m  z} �		  ;
� l ~�
�I�H
 o  ~��G�G 0 enddate endDate�I  �H  
� m  �� �  ;
� l ���F�E n  �� 1  ���D
�D 
wr11 o  ���C�C 0 e  �F  �E  
� o  ���B
�B 
ret 
� n        ;  �� o  ���A�A 0 calinfolist calInfoList�X  ��  ��  �   ��  �  � 0 soonday soonDay	� o  ���@�@ 0 soondays soonDays	� �? l ���>�=�<�>  �=  �<  �?  	�  l ���;�: =  �� o  ���9�9  0 recurrencefreq recurrenceFREQ m  �� �  M O N T H L Y�;  �:    k  ��  l ���8 �8   0 *2.2.3.M Check recurrence of monthly events     �!! T 2 . 2 . 3 . M   C h e c k   r e c u r r e n c e   o f   m o n t h l y   e v e n t s "#" I ���7$�6
�7 .ascrcmnt****      � ****$ m  ��%% �&&  M O N T H L Y�6  # '�5' Z  ��()*+( l ��,�4�3, =  ��-.- o  ���2�2 0 isbymonthday isBYMONTHDAY. m  ���1
�1 boovtrue�4  �3  ) k  �	�// 010 l ���023�0  2 = 72.2.3.M.1 Check events recurring several days per month   3 �44 n 2 . 2 . 3 . M . 1   C h e c k   e v e n t s   r e c u r r i n g   s e v e r a l   d a y s   p e r   m o n t h1 565 I ���/7�.
�/ .ascrcmnt****      � ****7 m  ��88 �99  M 1�.  6 :�-: X  �	�;�,<; k  �	�== >?> r  ��@A@ n ��BCB I  ���+D�*�+ 0 getmonthdif getMonthDifD EFE o  ���)�) 0 	startdate 	startDateF G�(G o  ���'�' 0 soonday soonDay�(  �*  C  f  ��A o      �&�& 0 monthdif monthDif? HIH l ���%JK�%  J N Hneed to use "my" when calling function (aka subroutine) from inside tell   K �LL � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l lI M�$M Z  �	�NO�#�"N l ��P�!� P =  ��QRQ l ��S��S `  ��TUT o  ���� 0 monthdif monthDifU o  ���� "0 recurrenceinter recurrenceINTER�  �  R m  ����  �!  �   O Z  �	�VW��V l �	X��X E �	YZY o  ���� (0 recurrencemonthday recurrenceMonthDayZ n  �	[\[ 1  �	�
� 
day \ o  ���� 0 soonday soonDay�  �  W Z  		�]^�_] l 		`��` n  		aba 1  		
�
� 
wradb o  		�� 0 e  �  �  ^ k  		6cc ded r  		fgf l 		h��h n  		iji 1  		�
� 
wr1sj o  		�� 0 e  �  �  g o      �
�
 0 	startdate 	startDatee k�	k r  		6lml b  		1non b  		-pqp b  		'rsr b  		#tut l 		v��v [  		wxw o  		�� 0 soonday soonDayx l 		y��y n  		z{z 1  		�
� 
time{ o  		�� 0 	startdate 	startDate�  �  �  �  u m  		"|| �}}  ;s m  	#	&~~ �  A l l   D a y :  q l 	'	,��� � n  	'	,��� 1  	(	,��
�� 
wr11� o  	'	(���� 0 e  �  �   o o  	-	0��
�� 
ret m n      ���  ;  	4	5� o  	1	4���� 0 calinfolist calInfoList�	  �  _ k  	9	��� ��� r  	9	D��� l 	9	@������ [  	9	@��� o  	9	:���� 0 soonday soonDay� l 	:	?������ n  	:	?��� 1  	=	?��
�� 
time� o  	:	=���� 0 	startdate 	startDate��  ��  ��  ��  � o      ���� 0 instancedate InstanceDate� ��� r  	E	N��� l 	E	J������ n  	E	J��� 1  	F	J��
�� 
wr1s� o  	E	F���� 0 e  ��  ��  � o      ���� 0 	startdate 	startDate� ��� r  	O	X��� l 	O	T������ n  	O	T��� 1  	P	T��
�� 
wr5s� o  	O	P���� 0 e  ��  ��  � o      ���� 0 enddate endDate� ��� r  	Y	k��� n 	Y	g��� I  	Z	g������� 0 
fixenddate 
fixEndDate� ��� o  	Z	]���� 0 instancedate InstanceDate� ��� o  	]	`���� 0 	startdate 	startDate� ���� o  	`	c���� 0 enddate endDate��  ��  �  f  	Y	Z� o      ���� 0 enddate endDate� ���� r  	l	���� b  	l	���� b  	l	���� b  	l	���� b  	l	���� b  	l	���� b  	l	��� b  	l	w��� l 	l	s������ [  	l	s��� o  	l	m���� 0 soonday soonDay� l 	m	r������ n  	m	r��� 1  	p	r��
�� 
time� o  	m	p���� 0 	startdate 	startDate��  ��  ��  ��  � m  	s	v�� ���  ;� l 	w	~������ [  	w	~��� o  	w	x���� 0 soonday soonDay� l 	x	}������ n  	x	}��� 1  	{	}��
�� 
time� o  	x	{���� 0 	startdate 	startDate��  ��  ��  ��  � m  		��� ���  ;� l 	�	������� o  	�	����� 0 enddate endDate��  ��  � m  	�	��� ���  ;� l 	�	������� n  	�	���� 1  	�	���
�� 
wr11� o  	�	����� 0 e  ��  ��  � o  	�	���
�� 
ret � n      ���  ;  	�	�� o  	�	����� 0 calinfolist calInfoList��  �  �  �#  �"  �$  �, 0 soonday soonDay< o  ������ 0 soondays soonDays�-  * ��� l 	�	������� =  	�	���� o  	�	����� 0 
isbysetpos 
isBYSETPOS� m  	�	���
�� boovtrue��  ��  � ��� k  	�
��� ��� l 	�	�������  � d ^2.2.3.M.2 Check events recurring on weekDays, weekendDays, or Days from start/end of the month   � ��� � 2 . 2 . 3 . M . 2   C h e c k   e v e n t s   r e c u r r i n g   o n   w e e k D a y s ,   w e e k e n d D a y s ,   o r   D a y s   f r o m   s t a r t / e n d   o f   t h e   m o n t h� ��� I 	�	������
�� .ascrcmnt****      � ****� m  	�	��� ���  M 2��  � ��� l 	�	����� r  	�	���� I 	�	������
�� .corecnte****       ****� o  	�	����� 0 recurrenceday recurrenceDay��  � o      ���� 0 daytype dayType�   2, 5, or 7   � ���    2 ,   5 ,   o r   7� ���� X  	�
������ k  	�
��� ��� r  	�	���� n 	�	���� I  	�	�������� 0 getmonthdif getMonthDif� ��� o  	�	����� 0 	startdate 	startDate� ���� o  	�	����� 0 soonday soonDay��  ��  �  f  	�	�� o      ���� 0 monthdif monthDif� ��� l 	�	�������  � N Hneed to use "my" when calling function (aka subroutine) from inside tell   � �   � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l l� �� Z  	�
����� l 	�	����� =  	�	� l 	�	����� `  	�	�	 o  	�	����� 0 monthdif monthDif	 o  	�	����� "0 recurrenceinter recurrenceINTER��  ��   m  	�	�����  ��  ��   k  	�
�

  r  	�
 n 	�
 I  	�
������  0 getmonthposday getMonthPosDay  o  	�	����� 0 daytype dayType  o  	�	����� (0 recurrencebysetpos recurrenceBYSETPOS �� o  	�	����� 0 soonday soonDay��  ��    f  	�	� o      ���� 0 monthday monthDay �� Z  

����� l 

���� =  

 l 

���� n  

 1  

��
�� 
day  o  

���� 0 soonday soonDay��  ��   o  

���� 0 monthday monthDay��  ��   Z  

� !��"  l 

#����# n  

$%$ 1  

��
�� 
wrad% o  

���� 0 e  ��  ��  ! k  

D&& '(' r  

%)*) l 

!+����+ n  

!,-, 1  

!��
�� 
wr1s- o  

���� 0 e  ��  ��  * o      ���� 0 	startdate 	startDate( .��. r  
&
D/0/ b  
&
?121 b  
&
;343 b  
&
5565 b  
&
1787 l 
&
-9����9 [  
&
-:;: o  
&
'���� 0 soonday soonDay; l 
'
,<����< n  
'
,=>= 1  
*
,��
�� 
time> o  
'
*���� 0 	startdate 	startDate��  ��  ��  ��  8 m  
-
0?? �@@  ;6 m  
1
4AA �BB  A l l   D a y :  4 l 
5
:C����C n  
5
:DED 1  
6
:��
�� 
wr11E o  
5
6���� 0 e  ��  ��  2 o  
;
>��
�� 
ret 0 n      FGF  ;  
B
CG o  
?
B���� 0 calinfolist calInfoList��  ��  " k  
G
�HH IJI r  
G
RKLK l 
G
NM����M [  
G
NNON o  
G
H���� 0 soonday soonDayO l 
H
MP��~P n  
H
MQRQ 1  
K
M�}
�} 
timeR o  
H
K�|�| 0 	startdate 	startDate�  �~  ��  ��  L o      �{�{ 0 instancedate InstanceDateJ STS r  
S
\UVU l 
S
XW�z�yW n  
S
XXYX 1  
T
X�x
�x 
wr1sY o  
S
T�w�w 0 e  �z  �y  V o      �v�v 0 	startdate 	startDateT Z[Z r  
]
f\]\ l 
]
b^�u�t^ n  
]
b_`_ 1  
^
b�s
�s 
wr5s` o  
]
^�r�r 0 e  �u  �t  ] o      �q�q 0 enddate endDate[ aba r  
g
ycdc n 
g
uefe I  
h
u�pg�o�p 0 
fixenddate 
fixEndDateg hih o  
h
k�n�n 0 instancedate InstanceDatei jkj o  
k
n�m�m 0 	startdate 	startDatek l�ll o  
n
q�k�k 0 enddate endDate�l  �o  f  f  
g
hd o      �j�j 0 enddate endDateb m�im r  
z
�non b  
z
�pqp b  
z
�rsr b  
z
�tut b  
z
�vwv b  
z
�xyx b  
z
�z{z b  
z
�|}| l 
z
�~�h�g~ [  
z
�� o  
z
{�f�f 0 soonday soonDay� l 
{
���e�d� n  
{
���� 1  
~
��c
�c 
time� o  
{
~�b�b 0 	startdate 	startDate�e  �d  �h  �g  } m  
�
��� ���  ;{ l 
�
���a�`� [  
�
���� o  
�
��_�_ 0 soonday soonDay� l 
�
���^�]� n  
�
���� 1  
�
��\
�\ 
time� o  
�
��[�[ 0 	startdate 	startDate�^  �]  �a  �`  y m  
�
��� ���  ;w l 
�
���Z�Y� o  
�
��X�X 0 enddate endDate�Z  �Y  u m  
�
��� ���  ;s l 
�
���W�V� n  
�
���� 1  
�
��U
�U 
wr11� o  
�
��T�T 0 e  �W  �V  q o  
�
��S
�S 
ret o n      ���  ;  
�
�� o  
�
��R�R 0 calinfolist calInfoList�i  ��  ��  ��  ��  ��  ��  �� 0 soonday soonDay� o  	�	��Q�Q 0 soondays soonDays��  � ��� l 
�
���P�O� =  
�
���� o  
�
��N�N 0 isbyday isBYDAY� m  
�
��M
�M boovtrue�P  �O  � ��L� k  
���� ��� l 
�
��K���K  � W Q2.2.3.M.3 Check events recurring on specific weekdays from start/end of the month   � ��� � 2 . 2 . 3 . M . 3   C h e c k   e v e n t s   r e c u r r i n g   o n   s p e c i f i c   w e e k d a y s   f r o m   s t a r t / e n d   o f   t h e   m o n t h� ��� I 
�
��J��I
�J .ascrcmnt****      � ****� m  
�
��� ���  M 3�I  � ��H� X  
����G�� k  
���� ��� r  
�
���� n 
�
���� I  
�
��F��E�F 0 getmonthdif getMonthDif� ��� o  
�
��D�D 0 	startdate 	startDate� ��C� o  
�
��B�B 0 soonday soonDay�C  �E  �  f  
�
�� o      �A�A 0 monthdif monthDif� ��� l 
�
��@���@  � N Hneed to use "my" when calling function (aka subroutine) from inside tell   � ��� � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l l� ��?� Z  
�����>�=� l 
�
���<�;� =  
�
���� l 
�
���:�9� `  
�
���� o  
�
��8�8 0 monthdif monthDif� o  
�
��7�7 "0 recurrenceinter recurrenceINTER�:  �9  � m  
�
��6�6  �<  �;  � k  
���� ��� r  
���� n 
���� I  
��5��4�5 "0 getmonthweekday getMonthWeekday� ��� o  
�
��3�3 0 recurrenceday recurrenceDay� ��2� o  
�
��1�1 0 soonday soonDay�2  �4  �  f  
�
�� o      �0�0 0 monthday monthDay� ��/� Z  ����.�-� l ��,�+� =  ��� l ��*�)� n  ��� 1  �(
�( 
day � o  �'�' 0 soonday soonDay�*  �)  � o  �&�& 0 monthday monthDay�,  �+  � Z  ����%�� l ��$�#� n  ��� 1  �"
�" 
wrad� o  �!�! 0 e  �$  �#  � k  C�� ��� r  $��� l  �� �� n   ��� 1   �
� 
wr1s� o  �� 0 e  �   �  � o      �� 0 	startdate 	startDate� ��� r  %C��� b  %>��� b  %:��� b  %4��� b  %0��� l %,���� [  %,��� o  %&�� 0 soonday soonDay� l &+���� n  &+��� 1  )+�
� 
time� o  &)�� 0 	startdate 	startDate�  �  �  �  � m  ,/�� ���  ;� m  03�� ���  A l l   D a y :  � l 49���� n  49��� 1  59�
� 
wr11� o  45�� 0 e  �  �  � o  :=�
� 
ret � n      ���  ;  AB� o  >A�� 0 calinfolist calInfoList�  �%  � k  F���    r  FQ l FM�� [  FM o  FG�� 0 soonday soonDay l GL�
�	 n  GL	 1  JL�
� 
time	 o  GJ�� 0 	startdate 	startDate�
  �	  �  �   o      �� 0 instancedate InstanceDate 

 r  R[ l RW�� n  RW 1  SW�
� 
wr1s o  RS�� 0 e  �  �   o      �� 0 	startdate 	startDate  r  \e l \a� �� n  \a 1  ]a��
�� 
wr5s o  \]���� 0 e  �   ��   o      ���� 0 enddate endDate  r  fx n ft I  gt������ 0 
fixenddate 
fixEndDate   o  gj���� 0 instancedate InstanceDate  !"! o  jm���� 0 	startdate 	startDate" #��# o  mp���� 0 enddate endDate��  ��    f  fg o      ���� 0 enddate endDate $��$ r  y�%&% b  y�'(' b  y�)*) b  y�+,+ b  y�-.- b  y�/0/ b  y�121 b  y�343 l y�5����5 [  y�676 o  yz���� 0 soonday soonDay7 l z8����8 n  z9:9 1  }��
�� 
time: o  z}���� 0 	startdate 	startDate��  ��  ��  ��  4 m  ��;; �<<  ;2 l ��=����= [  ��>?> o  ������ 0 soonday soonDay? l ��@����@ n  ��ABA 1  ����
�� 
timeB o  ������ 0 	startdate 	startDate��  ��  ��  ��  0 m  ��CC �DD  ;. l ��E����E o  ������ 0 enddate endDate��  ��  , m  ��FF �GG  ;* l ��H����H n  ��IJI 1  ����
�� 
wr11J o  ������ 0 e  ��  ��  ( o  ����
�� 
ret & n      KLK  ;  ��L o  ������ 0 calinfolist calInfoList��  �.  �-  �/  �>  �=  �?  �G 0 soonday soonDay� o  
�
����� 0 soondays soonDays�H  �L  + k  ��MM NON l ����PQ��  P 8 22.2.3.M.4 Check events recurring one day per month   Q �RR d 2 . 2 . 3 . M . 4   C h e c k   e v e n t s   r e c u r r i n g   o n e   d a y   p e r   m o n t hO STS I ����U��
�� .ascrcmnt****      � ****U m  ��VV �WW  M 4��  T XYX r  ��Z[Z n  ��\]\ 1  ����
�� 
day ] o  ������ 0 	startdate 	startDate[ o      ���� 0 
dayofmonth 
dayOfMonthY ^��^ X  ��_��`_ k  ��aa bcb r  ��ded n ��fgf I  ����h���� 0 getmonthdif getMonthDifh iji o  ������ 0 	startdate 	startDatej k��k o  ������ 0 soonday soonDay��  ��  g  f  ��e o      ���� 0 monthdif monthDifc lml l ����no��  n N Hneed to use "my" when calling function (aka subroutine) from inside tell   o �pp � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l lm q��q Z  ��rs����r l ��t����t =  ��uvu l ��w����w `  ��xyx o  ������ 0 monthdif monthDify o  ������ "0 recurrenceinter recurrenceINTER��  ��  v m  ������  ��  ��  s Z  ��z{����z l �|����| =  �}~} n  � � 1  � ��
�� 
day � o  ������ 0 soonday soonDay~ o   ���� 0 
dayofmonth 
dayOfMonth��  ��  { Z  ������� l ������ n  ��� 1  ��
�� 
wrad� o  ���� 0 e  ��  ��  � k  8�� ��� r  ��� l ������ n  ��� 1  ��
�� 
wr1s� o  ���� 0 e  ��  ��  � o      ���� 0 	startdate 	startDate� ���� r  8��� b  3��� b  /��� b  )��� b  %��� l !������ [  !��� o  ���� 0 soonday soonDay� l  ������ n   ��� 1   ��
�� 
time� o  ���� 0 	startdate 	startDate��  ��  ��  ��  � m  !$�� ���  ;� m  %(�� ���  A l l   D a y :  � l ).������ n  ).��� 1  *.��
�� 
wr11� o  )*���� 0 e  ��  ��  � o  /2��
�� 
ret � n      ���  ;  67� o  36���� 0 calinfolist calInfoList��  ��  � k  ;��� ��� r  ;F��� l ;B������ [  ;B��� o  ;<���� 0 soonday soonDay� l <A������ n  <A��� 1  ?A��
�� 
time� o  <?���� 0 	startdate 	startDate��  ��  ��  ��  � o      ���� 0 instancedate InstanceDate� ��� r  GP��� l GL������ n  GL��� 1  HL��
�� 
wr1s� o  GH���� 0 e  ��  ��  � o      ���� 0 	startdate 	startDate� ��� r  QZ��� l QV������ n  QV��� 1  RV��
�� 
wr5s� o  QR���� 0 e  ��  ��  � o      ���� 0 enddate endDate� ��� r  [m��� n [i��� I  \i������� 0 
fixenddate 
fixEndDate� ��� o  \_���� 0 instancedate InstanceDate� ��� o  _b���� 0 	startdate 	startDate� ���� o  be���� 0 enddate endDate��  ��  �  f  [\� o      ���� 0 enddate endDate� ���� r  n���� b  n���� b  n���� b  n���� b  n���� b  n���� b  n���� b  ny��� l nu������ [  nu��� o  no���� 0 soonday soonDay� l ot������ n  ot��� 1  rt��
�� 
time� o  or���� 0 	startdate 	startDate��  ��  ��  ��  � m  ux�� ���  ;� l y������� [  y���� o  yz���� 0 soonday soonDay� l z���~� n  z��� 1  }�}
�} 
time� o  z}�|�| 0 	startdate 	startDate�  �~  ��  ��  � m  ���� ���  ;� l ����{�z� o  ���y�y 0 enddate endDate�{  �z  � m  ���� ���  ;� l ����x�w� n  ����� 1  ���v
�v 
wr11� o  ���u�u 0 e  �x  �w  � o  ���t
�t 
ret � n      ���  ;  ��� o  ���s�s 0 calinfolist calInfoList��  ��  ��  ��  ��  ��  �� 0 soonday soonDay` o  ���r�r 0 soondays soonDays��  �5   ��� l ����q�p� =  ����� o  ���o�o  0 recurrencefreq recurrenceFREQ� m  ���� ���  Y E A R L Y�q  �p  � ��n� k  ���    l ���m�m   / )2.2.3.Y Check recurrence of yearly events    � R 2 . 2 . 3 . Y   C h e c k   r e c u r r e n c e   o f   y e a r l y   e v e n t s  I ���l�k
�l .ascrcmnt****      � **** m  �� �		  Y E A R L Y�k   
�j
 Z  � l ���i�h =  �� o  ���g�g 0 
isbysetpos 
isBYSETPOS m  ���f
�f boovtrue�i  �h   k  ��  l ���e�e   a [2.2.3.Y.1 The x weekDay, weekendDay, Day from start/end of months listed in recurrenceMonth    � � 2 . 2 . 3 . Y . 1   T h e   x   w e e k D a y ,   w e e k e n d D a y ,   D a y   f r o m   s t a r t / e n d   o f   m o n t h s   l i s t e d   i n   r e c u r r e n c e M o n t h  l ���d�d   N H NOTE: When yearly interval is every 1 year, interval changes to monthly    � �   N O T E :   W h e n   y e a r l y   i n t e r v a l   i s   e v e r y   1   y e a r ,   i n t e r v a l   c h a n g e s   t o   m o n t h l y  I ���c�b
�c .ascrcmnt****      � **** m  ��   �!!  Y 1�b   "#" l ��$%&$ r  ��'(' I ���a)�`
�a .corecnte****       ****) o  ���_�_ 0 recurrenceday recurrenceDay�`  ( o      �^�^ 0 daytype dayType%   2, 5, or 7   & �**    2 ,   5 ,   o r   7# +�]+ X  ��,�\-, k  ��.. /0/ r  ��121 n ��343 I  ���[5�Z�[ 0 
getyeardif 
getYearDif5 676 o  ���Y�Y 0 	startdate 	startDate7 8�X8 o  ���W�W 0 soonday soonDay�X  �Z  4  f  ��2 o      �V�V 0 yeardif yearDif0 9:9 l ���U;<�U  ; N Hneed to use "my" when calling function (aka subroutine) from inside tell   < �== � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l l: >�T> Z  ��?@�S�R? l �A�Q�PA =  �BCB l �D�O�ND `  �EFE o  ��M�M 0 yeardif yearDifF o  �L�L "0 recurrenceinter recurrenceINTER�O  �N  C m  �K�K  �Q  �P  @ Z  
�GH�J�IG l 
I�H�GI E 
JKJ o  
�F�F "0 recurrencemonth recurrenceMonthK l L�E�DL c  MNM c  OPO n  QRQ m  �C
�C 
mnthR o  �B�B 0 soonday soonDayP m  �A
�A 
longN m  �@
�@ 
ctxt�E  �D  �H  �G  H k  �SS TUT l �?VW�?  V S Myes, I am setting the month to its integer value and then it into a character   W �XX � y e s ,   I   a m   s e t t i n g   t h e   m o n t h   t o   i t s   i n t e g e r   v a l u e   a n d   t h e n   i t   i n t o   a   c h a r a c t e rU YZY r  .[\[ n *]^] I  *�>_�=�>  0 getmonthposday getMonthPosDay_ `a` o  "�<�< 0 daytype dayTypea bcb o  "%�;�; (0 recurrencebysetpos recurrenceBYSETPOSc d�:d o  %&�9�9 0 soonday soonDay�:  �=  ^  f  \ o      �8�8 0 yearday yearDayZ e�7e Z  /�fg�6�5f l /8h�4�3h =  /8iji l /4k�2�1k n  /4lml 1  04�0
�0 
day m o  /0�/�/ 0 soonday soonDay�2  �1  j o  47�.�. 0 yearday yearDay�4  �3  g Z  ;�no�-pn l ;Aq�,�+q n  ;Arsr 1  <@�*
�* 
wrads o  ;<�)�) 0 e  �,  �+  o k  Dltt uvu r  DMwxw l DIy�(�'y n  DIz{z 1  EI�&
�& 
wr1s{ o  DE�%�% 0 e  �(  �'  x o      �$�$ 0 	startdate 	startDatev |�#| r  Nl}~} b  Ng� b  Nc��� b  N]��� b  NY��� l NU��"�!� [  NU��� o  NO� �  0 soonday soonDay� l OT���� n  OT��� 1  RT�
� 
time� o  OR�� 0 	startdate 	startDate�  �  �"  �!  � m  UX�� ���  ;� m  Y\�� ���  A l l   D a y :  � l ]b���� n  ]b��� 1  ^b�
� 
wr11� o  ]^�� 0 e  �  �  � o  cf�
� 
ret ~ n      ���  ;  jk� o  gj�� 0 calinfolist calInfoList�#  �-  p k  o��� ��� r  oz��� l ov���� [  ov��� o  op�� 0 soonday soonDay� l pu���� n  pu��� 1  su�
� 
time� o  ps�� 0 	startdate 	startDate�  �  �  �  � o      �� 0 instancedate InstanceDate� ��� r  {���� l {����� n  {���� 1  |��
� 
wr1s� o  {|�
�
 0 e  �  �  � o      �	�	 0 	startdate 	startDate� ��� r  ����� l ������ n  ����� 1  ���
� 
wr5s� o  ���� 0 e  �  �  � o      �� 0 enddate endDate� ��� r  ����� n ����� I  ������ 0 
fixenddate 
fixEndDate� ��� o  ���� 0 instancedate InstanceDate� ��� o  ��� �  0 	startdate 	startDate� ���� o  ������ 0 enddate endDate��  �  �  f  ��� o      ���� 0 enddate endDate� ���� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� l �������� [  ����� o  ������ 0 soonday soonDay� l �������� n  ����� 1  ����
�� 
time� o  ������ 0 	startdate 	startDate��  ��  ��  ��  � m  ���� ���  ;� l �������� [  ����� o  ������ 0 soonday soonDay� l �������� n  ����� 1  ����
�� 
time� o  ������ 0 	startdate 	startDate��  ��  ��  ��  � m  ���� ���  ;� l �������� o  ������ 0 enddate endDate��  ��  � m  ���� ���  ;� l �������� n  ����� 1  ����
�� 
wr11� o  ������ 0 e  ��  ��  � o  ����
�� 
ret � n      ���  ;  ��� o  ������ 0 calinfolist calInfoList��  �6  �5  �7  �J  �I  �S  �R  �T  �\ 0 soonday soonDay- o  ������ 0 soondays soonDays�]   ��� l �������� =  ����� o  ������ 0 isbyday isBYDAY� m  ����
�� boovtrue��  ��  � ��� k  ���� ��� l ��������  � W Q2.2.3.Y.2 Check events recurring on specific weekdays from start/end of the month   � ��� � 2 . 2 . 3 . Y . 2   C h e c k   e v e n t s   r e c u r r i n g   o n   s p e c i f i c   w e e k d a y s   f r o m   s t a r t / e n d   o f   t h e   m o n t h� ��� I �������
�� .ascrcmnt****      � ****� m  ���� ���  Y 2��  � ���� X  ������� k  
��� ��� r  
��� n 
��� I  �� ���� 0 
getyeardif 
getYearDif   o  ���� 0 	startdate 	startDate �� o  ���� 0 soonday soonDay��  ��  �  f  
� o      ���� 0 yeardif yearDif�  l ����   N Hneed to use "my" when calling function (aka subroutine) from inside tell    � � n e e d   t o   u s e   " m y "   w h e n   c a l l i n g   f u n c t i o n   ( a k a   s u b r o u t i n e )   f r o m   i n s i d e   t e l l 	��	 Z  �
����
 l !���� =  ! l ���� `   o  ���� 0 yeardif yearDif o  ���� "0 recurrenceinter recurrenceINTER��  ��   m   ����  ��  ��   Z  $����� l $5���� E $5 o  $'���� "0 recurrencemonth recurrenceMonth l '4���� c  '4 c  '0 n  ', m  (,��
�� 
mnth o  '(���� 0 soonday soonDay m  ,/��
�� 
long m  03��
�� 
ctxt��  ��  ��  ��   k  8�   r  8E!"! n 8A#$# I  9A��%���� "0 getmonthweekday getMonthWeekday% &'& o  9<���� 0 recurrenceday recurrenceDay' (��( o  <=���� 0 soonday soonDay��  ��  $  f  89" o      ���� 0 yearday yearDay  )��) Z  F�*+����* l FO,����, =  FO-.- l FK/����/ n  FK010 1  GK��
�� 
day 1 o  FG���� 0 soonday soonDay��  ��  . o  KN���� 0 yearday yearDay��  ��  + Z  R�23��42 l RX5����5 n  RX676 1  SW��
�� 
wrad7 o  RS���� 0 e  ��  ��  3 k  [�88 9:9 r  [d;<; l [`=����= n  [`>?> 1  \`��
�� 
wr1s? o  [\���� 0 e  ��  ��  < o      ���� 0 	startdate 	startDate: @��@ r  e�ABA b  e~CDC b  ezEFE b  etGHG b  epIJI l elK����K [  elLML o  ef���� 0 soonday soonDayM l fkN����N n  fkOPO 1  ik��
�� 
timeP o  fi���� 0 	startdate 	startDate��  ��  ��  ��  J m  loQQ �RR  ;H m  psSS �TT  A l l   D a y :  F l tyU����U n  tyVWV 1  uy��
�� 
wr11W o  tu���� 0 e  ��  ��  D o  z}��
�� 
ret B n      XYX  ;  ��Y o  ~����� 0 calinfolist calInfoList��  ��  4 k  ��ZZ [\[ r  ��]^] l ��_����_ [  ��`a` o  ������ 0 soonday soonDaya l ��b����b n  ��cdc 1  ����
�� 
timed o  ������ 0 	startdate 	startDate��  ��  ��  ��  ^ o      ���� 0 instancedate InstanceDate\ efe r  ��ghg l ��i����i n  ��jkj 1  ����
�� 
wr1sk o  ������ 0 e  ��  ��  h o      ���� 0 	startdate 	startDatef lml r  ��non l ��p����p n  ��qrq 1  ����
�� 
wr5sr o  ������ 0 e  ��  ��  o o      ���� 0 enddate endDatem sts r  ��uvu n ��wxw I  ����y���� 0 
fixenddate 
fixEndDatey z{z o  ������ 0 instancedate InstanceDate{ |}| o  ������ 0 	startdate 	startDate} ~��~ o  ���� 0 enddate endDate��  ��  x  f  ��v o      �~�~ 0 enddate endDatet �} r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� l ����|�{� [  ����� o  ���z�z 0 soonday soonDay� l ����y�x� n  ����� 1  ���w
�w 
time� o  ���v�v 0 	startdate 	startDate�y  �x  �|  �{  � m  ���� ���  ;� l ����u�t� [  ����� o  ���s�s 0 soonday soonDay� l ����r�q� n  ����� 1  ���p
�p 
time� o  ���o�o 0 	startdate 	startDate�r  �q  �u  �t  � m  ���� ���  ;� l ����n�m� o  ���l�l 0 enddate endDate�n  �m  � m  ���� ���  ;� l ����k�j� n  ����� 1  ���i
�i 
wr11� o  ���h�h 0 e  �k  �j  � o  ���g
�g 
ret � n      ���  ;  ��� o  ���f�f 0 calinfolist calInfoList�}  ��  ��  ��  ��  ��  ��  ��  ��  �� 0 soonday soonDay� o  ���e�e 0 soondays soonDays��  � ��� l � ��d�c� =  � ��� o  ���b�b 0 	isbymonth 	isBYMONTH� m  ���a
�a boovtrue�d  �c  � ��`� k  �� ��� l �_���_  � F @2.2.3.Y.3 The specific day from months listed in recurrenceMonth   � ��� � 2 . 2 . 3 . Y . 3   T h e   s p e c i f i c   d a y   f r o m   m o n t h s   l i s t e d   i n   r e c u r r e n c e M o n t h� ��� I 
�^��]
�^ .ascrcmnt****      � ****� m  �� ���  Y 3�]  � ��\� X  ��[�� k  !�� ��� r  !.��� n !*��� I  "*�Z��Y�Z 0 
getyeardif 
getYearDif� ��� o  "%�X�X 0 	startdate 	startDate� ��W� o  %&�V�V 0 soonday soonDay�W  �Y  �  f  !"� o      �U�U 0 yeardif yearDif� ��T� Z  /���S�R� l /8��Q�P� =  /8��� l /6��O�N� `  /6��� o  /2�M�M 0 yeardif yearDif� o  25�L�L "0 recurrenceinter recurrenceINTER�O  �N  � m  67�K�K  �Q  �P  � Z  ;����J�I� l ;L��H�G� E ;L��� o  ;>�F�F "0 recurrencemonth recurrenceMonth� l >K��E�D� c  >K��� c  >G��� n  >C��� m  ?C�C
�C 
mnth� o  >?�B�B 0 soonday soonDay� m  CF�A
�A 
long� m  GJ�@
�@ 
ctxt�E  �D  �H  �G  � Z  O����?�>� l O^��=�<� =  O^��� n  OV��� 1  RV�;
�; 
day � o  OR�:�: 0 soondate soonDate� n  V]��� 1  Y]�9
�9 
day � o  VY�8�8 0 	startdate 	startDate�=  �<  � Z  a����7�� l ag��6�5� n  ag��� 1  bf�4
�4 
wrad� o  ab�3�3 0 e  �6  �5  � k  j��� ��� r  js��� l jo��2�1� n  jo��� 1  ko�0
�0 
wr1s� o  jk�/�/ 0 e  �2  �1  � o      �.�. 0 	startdate 	startDate� ��-� r  t���� b  t���� b  t���� b  t���� b  t��� l t{��,�+� [  t{� � o  tu�*�* 0 soonday soonDay  l uz�)�( n  uz 1  xz�'
�' 
time o  ux�&�& 0 	startdate 	startDate�)  �(  �,  �+  � m  {~ �  ;� m  � �  A l l   D a y :  � l ���%�$ n  ��	
	 1  ���#
�# 
wr11
 o  ���"�" 0 e  �%  �$  � o  ���!
�! 
ret � n        ;  �� o  ��� �  0 calinfolist calInfoList�-  �7  � k  ��  r  �� l ���� [  �� o  ���� 0 soonday soonDay l ���� n  �� 1  ���
� 
time o  ���� 0 	startdate 	startDate�  �  �  �   o      �� 0 instancedate InstanceDate  r  �� l ���� n  �� 1  ���
� 
wr1s o  ���� 0 e  �  �   o      �� 0 	startdate 	startDate   r  ��!"! l ��#��# n  ��$%$ 1  ���
� 
wr5s% o  ���� 0 e  �  �  " o      �� 0 enddate endDate  &'& r  ��()( n ��*+* I  ���,�� 0 
fixenddate 
fixEndDate, -.- o  ���� 0 instancedate InstanceDate. /0/ o  ���
�
 0 	startdate 	startDate0 1�	1 o  ���� 0 enddate endDate�	  �  +  f  ��) o      �� 0 enddate endDate' 2�2 r  ��343 b  ��565 b  ��787 b  ��9:9 b  ��;<; b  ��=>= b  ��?@? b  ��ABA l ��C��C [  ��DED o  ���� 0 soonday soonDayE l ��F��F n  ��GHG 1  ��� 
�  
timeH o  ������ 0 	startdate 	startDate�  �  �  �  B m  ��II �JJ  ;@ l ��K����K [  ��LML o  ������ 0 soonday soonDayM l ��N����N n  ��OPO 1  ����
�� 
timeP o  ������ 0 	startdate 	startDate��  ��  ��  ��  > m  ��QQ �RR  ;< l ��S����S o  ������ 0 enddate endDate��  ��  : m  ��TT �UU  ;8 l ��V����V n  ��WXW 1  ����
�� 
wr11X o  ������ 0 e  ��  ��  6 o  ����
�� 
ret 4 n      YZY  ;  ��Z o  ������ 0 calinfolist calInfoList�  �?  �>  �J  �I  �S  �R  �T  �[ 0 soonday soonDay� o  ���� 0 soondays soonDays�\  �`   k  
[[ \]\ l 

��^_��  ^ + %2.2.3.Y.4 One day per year recurrence   _ �`` J 2 . 2 . 3 . Y . 4   O n e   d a y   p e r   y e a r   r e c u r r e n c e] aba I 
��c��
�� .ascrcmnt****      � ****c m  
dd �ee  Y 4��  b f��f X  g��hg k  (ii jkj r  (5lml n (1non I  )1��p���� 0 
getyeardif 
getYearDifp qrq o  ),���� 0 	startdate 	startDater s��s o  ,-���� 0 soonday soonDay��  ��  o  f  ()m o      ���� 0 yeardif yearDifk t��t Z  6uv����u l 6?w����w =  6?xyx l 6=z����z `  6={|{ o  69���� 0 yeardif yearDif| o  9<���� "0 recurrenceinter recurrenceINTER��  ��  y m  =>����  ��  ��  v Z  B�}~����} l Bc���� F  Bc��� l BO������ =  BO��� n  BG��� m  CG��
�� 
mnth� o  BC���� 0 soonday soonDay� n  GN��� m  JN��
�� 
mnth� o  GJ���� 0 	startdate 	startDate��  ��  � l R_������ =  R_��� n  RW��� 1  SW��
�� 
day � o  RS���� 0 soonday soonDay� n  W^��� 1  Z^��
�� 
day � o  WZ���� 0 	startdate 	startDate��  ��  ��  ��  ~ Z  f������� l fl������ n  fl��� 1  gk��
�� 
wrad� o  fg���� 0 e  ��  ��  � k  o��� ��� r  ox��� l ot������ n  ot��� 1  pt��
�� 
wr1s� o  op���� 0 e  ��  ��  � o      ���� 0 	startdate 	startDate� ���� r  y���� b  y���� b  y���� b  y���� b  y���� l y������� [  y���� o  yz���� 0 soonday soonDay� l z������ n  z��� 1  }��
�� 
time� o  z}���� 0 	startdate 	startDate��  ��  ��  ��  � m  ���� ���  ;� m  ���� ���  A l l   D a y :  � l �������� n  ����� 1  ����
�� 
wr11� o  ������ 0 e  ��  ��  � o  ����
�� 
ret � n      ���  ;  ��� o  ������ 0 calinfolist calInfoList��  ��  � k  ���� ��� r  ����� l �������� [  ����� o  ������ 0 soonday soonDay� l �������� n  ����� 1  ����
�� 
time� o  ������ 0 	startdate 	startDate��  ��  ��  ��  � o      ���� 0 instancedate InstanceDate� ��� r  ����� l �������� n  ����� 1  ����
�� 
wr1s� o  ������ 0 e  ��  ��  � o      ���� 0 	startdate 	startDate� ��� r  ����� l �������� n  ����� 1  ����
�� 
wr5s� o  ������ 0 e  ��  ��  � o      ���� 0 enddate endDate� ��� r  ����� n ����� I  ��������� 0 
fixenddate 
fixEndDate� ��� o  ������ 0 instancedate InstanceDate� ��� o  ������ 0 	startdate 	startDate� ���� o  ������ 0 enddate endDate��  ��  �  f  ��� o      ���� 0 enddate endDate� ���� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� l �������� [  ����� o  ������ 0 soonday soonDay� l �������� n  ����� 1  ����
�� 
time� o  ������ 0 	startdate 	startDate��  ��  ��  ��  � m  ���� ���  ;� l �������� [  ����� o  ������ 0 soonday soonDay� l �������� n  ����� 1  ����
�� 
time� o  ������ 0 	startdate 	startDate��  ��  ��  ��  � m  ���� ���  ;� l �������� o  ������ 0 enddate endDate��  ��  � m  ���� �    ;� l ������ n  �� 1  ����
�� 
wr11 o  ������ 0 e  ��  ��  � o  ����
�� 
ret � n        ;  �� o  ������ 0 calinfolist calInfoList��  ��  ��  ��  ��  ��  �� 0 soonday soonDayh o  �� 0 soondays soonDays��  �j  �n  ��  � �~ l �}�|�{�}  �|  �{  �~  ��  ��  ��  �� 0 e  � o  ���z�z $0 recurrenceevents recurrenceEvents��  �V 0 c  � l  � ��y�x 6  � �	 2   � ��w
�w 
wres	 >  � �

 l  � ��v�u 1   � ��t
�t 
pnam�v  �u   m   � � �  A r c h i v e d�y  �x  � m   � ��                                                                                  wrbt  alis    V  Macintosh HD               �R�\H+   �97Calendar.app                                                    �A��GЯ        ����  	                Applications    �S!�      �HA/     �97  'Macintosh HD:Applications: Calendar.app     C a l e n d a r . a p p    M a c i n t o s h   H D  Applications/Calendar.app   / ��  �X  �W  �  l     �s�r�q�s  �r  �q    l )�p�o r  ) m  ! �   n      1  $(�n
�n 
txdl 1  !$�m
�m 
ascr�p  �o    l *3�l�k r  *3 c  */ !  o  *-�j�j 0 calinfolist calInfoList! m  -.�i
�i 
TEXT o      �h�h 0 calinfolist calInfoList�l  �k   "#" l     �g�f�e�g  �f  �e  # $%$ l 4E&�d�c& r  4E'(' c  4A)*) l 4?+�b�a+ b  4?,-, l 4;.�`�_. I 4;�^/�]
�^ .earsffdralis        afdr/ m  47�\
�\ afdrdocs�]  �`  �_  - m  ;>00 �11 ( G e e k T o o l : C a l I n f o . t x t�b  �a  * m  ?@�[
�[ 
TEXT( o      �Z�Z 0 calinfofile calInfoFile�d  �c  % 232 l FM4564 I FM�Y7�X
�Y .sysoexecTEXT���     TEXT7 m  FI88 �99 X e c h o     >   $ H O M E / D o c u m e n t s / G e e k T o o l / C a l I n f o . t x t�X  5 7 1Creates an empty file or overwrites previous file   6 �:: b C r e a t e s   a n   e m p t y   f i l e   o r   o v e r w r i t e s   p r e v i o u s   f i l e3 ;<; l Nf=>?= I Nf�W@A
�W .rdwrwritnull���     ****@ o  NQ�V�V 0 calinfolist calInfoListA �UBC
�U 
refnB 4  T\�TD
�T 
fileD o  X[�S�S 0 calinfofile calInfoFileC �RE�Q
�R 
wratE m  _`�P�P  �Q  > 1 +Saves the calendar info starting at space 0   ? �FF V S a v e s   t h e   c a l e n d a r   i n f o   s t a r t i n g   a t   s p a c e   0< GHG l     �O�N�M�O  �N  �M  H I�LI l     �K�J�I�K  �J  �I  �L       	�HJKLMNOPQ�H  J �G�F�E�D�C�B�A�G &0 getprevioussunday getPreviousSunday�F 0 getmonthdif getMonthDif�E 0 
fixenddate 
fixEndDate�D  0 getmonthposday getMonthPosDay�C "0 getmonthweekday getMonthWeekday�B 0 
getyeardif 
getYearDif
�A .aevtoappnull  �   � ****K �@ ��?�>RS�=�@ &0 getprevioussunday getPreviousSunday�? �<T�< T  �;�; 0 thedate theDate�>  R �:�9�8�: 0 thedate theDate�9 0 theweekdate theWeekDate�8 0 	thesunday 	theSundayS �7�6 ��5�4 ��3,�2A�1
�7 
wkdy
�6 
TEXT
�5 
time
�4 
days�3 �2 �1 �= ���,�&E�O��  ���,k� E�Y m��  ���,l� E�Y Y��  ���,m� E�Y E��  ���,�� E�Y 1��  ���,�� E�Y ��  ���,�� E�Y 	���,E�O�L �0g�/�.UV�-�0 0 getmonthdif getMonthDif�/ �,W�, W  �+�*�+ 0 	startdate 	startDate�* 0 currentdate currentDate�.  U �)�(�'�&�%�$�#�) 0 	startdate 	startDate�( 0 currentdate currentDate�' 0 startmonthint startMonthInt�& 0 startyearint startYearInt�% 0 currmonthint currMonthInt�$ 0 curryearint currYearInt�# 0 thedif theDifV �"�!� �
�" 
mnth
�! 
long
�  
year� �- /��,�&E�O��,�&E�O��,�&E�O��,�&E�O����� E�O�M ����XY�� 0 
fixenddate 
fixEndDate� �Z� Z  ���� 0 instancedate InstanceDate� 0 	startdate 	startDate� 0 enddate endDate�  X ������ 0 instancedate InstanceDate� 0 	startdate 	startDate� 0 enddate endDate� 0 eventlength eventLength� 0 	finaldate 	finalDateY ��
� .ascrcmnt****      � ****
� 
time� -jE�O��E�O�j  O�j  O�j  O��,j  O��E�O�N ����[\��  0 getmonthposday getMonthPosDay� �]� ]  �
�	��
 0 postype posType�	 0 	posnumber 	posNumber� 0 currdate currDate�  [ �������� ����������� 0 postype posType� 0 	posnumber 	posNumber� 0 currdate currDate� 0 themonth theMonth� 0 	totaldays 	totalDays� 0 lastday lastDay� 0 
lastdayint 
lastDayInt�  0 firstofmonth firstOfMonth�� 0 firstday firstDay�� 0 thedoi theDOI�� &0 weekenddaycounter weekendDayCounter��  0 weekdaycounter weekDayCounter��  0 theweekcounter theWeekCounter\ ����������������������������������w��(����
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
bool�;��&E�O��,�&E�O�l  ��,�#j  �E�Y �E�Y �km������v  �E�Y �E�O����,� ��,E�O�a ,�&E�O���,k� ��,E�O�a ,�&E�O�l  �a j O�i  ��  �E�Y ��kE�OPY yjE�OjE�O��  �k  kE�Y lE�Y �k  kE�Y �E�O��  �E�Y ; 2hZ�kE�O��  Y hO�kE�O��  Y hO��E�[OY��O��E�OPY��  �a j O�i  ,lm��a �v� �E�Y ��  
�kE�Y �lE�Y �jE�OjE�O��  lE�Y E�k  kE�Y 9 &hZ�kE�O�� 
 ��� a & Y h[OY��O��  �E�Y lE�O�� V PhZjE�O *hZ�kE�O�kE�O�� 
 	�� a & Y h[OY��O��  ��E�OY hO�lE�[OY��Y hOPY %��  a j O�i  �E�Y �E�Y jE�O�O ��>����^_���� "0 getmonthweekday getMonthWeekday�� ��`�� `  ������ 0 	recurrday 	recurrDay�� 0 currdate currDate��  ^ �������������������������� 0 	recurrday 	recurrDay�� 0 currdate currDate�� 0 themonth theMonth�� 0 	totaldays 	totalDays�� 0 lastday lastDay�� 0 
lastdayint 
lastDayInt�� 0 firstofmonth firstOfMonth�� 0 firstday firstDay�� 0 
weeknumber 
weekNumber�� 0 isneg isNeg�� 0 	dayofweek 	dayOfWeek�� 0 thedoi theDOI_ ����������������������������������������
)4?��
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
a E�Y �E�O�e  4�� �����a l/k E�Y ����a l/k E�Y '�� ����k� kE�Y ���k� kE�O�P �������ab���� 0 
getyeardif 
getYearDif�� ��c�� c  ������ 0 	startdate 	startDate�� 0 currentdate currentDate��  a ������������ 0 	startdate 	startDate�� 0 currentdate currentDate�� 0 startyearint startYearInt�� 0 curryearint currYearInt�� 0 thedif theDifb ����
�� 
year
�� 
long�� ��,�&E�O��,�&E�O��E�O�Q ��d����ef��
�� .aevtoappnull  �   � ****d k    fgg  hh  !ii  -jj  9kk  Jll  Tmm  ^nn  hoo  tpp  �qq  �rr  �ss �tt �uu �vv ww xx $yy 2zz ;����  ��  ��  e ���������� 0 c  �� 0 e  �� 0 r  �� 0 soonday soonDayf �������������������������������������������������{����������FH����prt��������~�}�|�{��z��y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e��d��c��b��a��`��_�^�]�\J�[]�Z~�Y��X�W��V��U�T		�S�R�Q�P�O�N	^	`�M�L	�	�	�	�	��K�J�I�H�G
-
/
r
z
}
�
� %8�F�E|~�����D�C�B?A�����A��;CFV�@������ �?�>�=������QS�����<IQTd������;�:0�98�8�7�6�5�4
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
wres{  
�� 
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
wr15� $0 recurrenceevents recurrenceEvents�  0 recurrenceinfo recurrenceInfo
� 
ascr
� 
txdl
�~ 
citm
�} 
list�| "0 recurrenceparts recurrenceParts�{ 0 isuntil isUNTIL�z (0 recurrencepreuntil recurrencePreUNTIL�y "0 recurrenceuntil recurrenceUntil
�x 
cha �w �v 0 lastyear lastYear�u �t 
�s 
long�r 0 	lastmonth 	lastMonth�q �p �o 0 lastday lastDay�n 0 lastdate lastDate
�m 
day 
�l 
mnth
�k 
year
�j 
hour�i 0 isinter isInter�h 0 isbyday isBYDAY�g 0 isbymonthday isBYMONTHDAY�f 0 
isbysetpos 
isBYSETPOS�e 0 	isbymonth 	isBYMONTH�d &0 recurrenceprefreq recurrencePreFREQ�c (0 recurrencepreinter recurrencePreINTER�b (0 recurrenceprebyday recurrencePreBYDAY�a 20 recurrenceprebymonthday recurrencePreBYMONTHDAY�` .0 recurrenceprebysetpos recurrencePreBYSETPOS�_ ,0 recurrenceprebymonth recurrencePreBYMONTH�^  0 recurrencefreq recurrenceFREQ�] "0 recurrenceinter recurrenceINTER�\ "0 recurrencebyday recurrenceBYDAY�[ 0 recurrenceday recurrenceDay�Z ,0 recurrencebymonthday recurrenceBYMONTHDAY�Y (0 recurrencemonthday recurrenceMonthDay�X (0 recurrencebysetpos recurrenceBYSETPOS�W &0 recurrencebymonth recurrenceBYMONTH�V "0 recurrencemonth recurrenceMonth�U 0 startday startDay�T 0 soondays soonDays
�S .ascrcmnt****      � ****
�R 
days�Q 0 datedif DateDif
�P 
ldt 
�O 
tstr
�N 
bool�M 0 instancedate InstanceDate�L 0 
fixenddate 
fixEndDate�K &0 getprevioussunday getPreviousSunday�J 0 firstsunday firstSunday�I 0 	nowsunday 	nowSunday
�H 
week�G 0 weekdif weekDif�F 0 getmonthdif getMonthDif�E 0 monthdif monthDif�D 0 daytype dayType�C  0 getmonthposday getMonthPosDay�B 0 monthday monthDay�A "0 getmonthweekday getMonthWeekday�@ 0 
dayofmonth 
dayOfMonth�? 0 
getyeardif 
getYearDif�> 0 yeardif yearDif�= 0 yearday yearDay�< 0 soondate soonDate
�; afdrdocs
�: .earsffdralis        afdr�9 0 calinfofile calInfoFile
�8 .sysoexecTEXT���     TEXT
�7 
refn
�6 
file
�5 
wrat
�4 .rdwrwritnull���     ****��g*j  E�O��� � E�O��� � E�O��� � E�O���,E�O���,E�O���,E�O���,E�O��,�&[a \[Zk\Zl2E` O��,�&[a \[Zk\Zl2E` O��,�&[a \[Zk\Zl2E` O��,�&[a \[Zk\Zl2E` OjvE` OfE` Oa mj*a -a [a ,\Za 91[a a l kh  fE` O�a -a [[[a  ,\Z�;\[a  ,\Z�<A\[[[a  ,\Z�;\[a  ,\Z�<A\[a !,\Ze8AB1E` "O �_ "[a a l kh �a !,E )�a  ,E` #O_ #a $%a %%�a &,%_ '%_ 6FY <�a  ,E` #O�a (,E` )O_ #a *%_ #%a +%_ )%a ,%�a &,%_ '%_ 6F[OY��O�a -a [[a  ,\Z�=\[a -,\Za .>A1E` /OF_ /[a a l kh �a -,E` 0Oa 1kv_ 2a 3,FO_ 0a 4-a 5&E` 6OfE` 7O 9k_ 6j kh _ 6a �/a 8 _ 6a �/E` 9OeE` 7Y h[OY��O_ 7e  �a :kv_ 2a 3,FO_ 9a 4-a l/a &E` ;O_ ;a <k/_ ;a <l/%_ ;a <m/%_ ;a <a =/%E` >O_ ;a <a ?/_ ;a <a @/%a A&E` BO_ ;a <a C/_ ;a <a D/%a A&E` EO�EQ` FO_ E_ Fa G,FO_ B_ Fa H,FO_ >_ Fa I,FY ��_ J E` FO�_ F�fffffa ?vE[a k/E` KZ[a l/E` LZ[a m/E` MZ[a a =/E` NZ[a a ?/E` OZO �k_ 6j kh _ 6a �/a P _ 6a �/E` QY hO_ 6a �/a R _ 6a �/E` SOeE` KY hO_ 6a �/a T _ 6a �/E` UOeE` LY hO_ 6a �/a V _ 6a �/E` WOeE` MY hO_ 6a �/a X _ 6a �/E` YOeE` NY hO_ 6a �/a Z _ 6a �/E` [OeE` OY h[OY�Oa \kv_ 2a 3,FO_ Qa 4-a l/E` ]O_ Ke  _ Sa 4-a l/E` ^Y kE` ^O_ Le  ?_ Ua 4-a l/E` _Oa `kv_ 2a 3,FO_ _a 4-E` aOa bkv_ 2a 3,FOPY hO_ Me  =_ Wa 4-a l/E` cOa dkv_ 2a 3,FO_ ca 4-E` eOa fkv_ 2a 3,FY hO_ Ne  _ Ya 4-a l/E` gY hO_ Oe  =_ [a 4-a l/E` hOa ikv_ 2a 3,FO_ ha 4-E` jOa kkv_ 2a 3,FY hO�a  ,E` #O_ #_ #�,E` lO����a =vE` mO_ ]a n a oj pO �_ m[a a l kh �_ l_ q!E` rO_ r_ ^#j  ��a s&�a s&
 _ #a t,�a t,a u& ��a !,E -�a  ,E` #O�_ #�,a v%a w%�a &,%_ '%_ 6FY c�_ #�,E` xO�a  ,E` #O�a (,E` )O)_ x_ #_ )m+ yE` )O�_ #�,a z%�_ #�,%a {%_ )%a |%�a &,%_ '%_ 6FY hY h[OY�!OPY
V_ ]a } �a ~j pO)_ #k+ E` �O�_ m[a a l kh )�k+ E` �O_ �_ �_ �!E` �O_ �j pO_ �_ ^#j �_ Le  �_ a��,�&[a \[Zk\Zl2 ��a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY c�_ #�,E` xO�a  ,E` #O�a (,E` )O)_ x_ #_ )m+ yE` )O�_ #�,a �%�_ #�,%a �%_ )%a �%�a &,%_ '%_ 6FY hY �_ #�,�&[a \[Zk\Zl2��,�&[a \[Zk\Zl2  ��a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY c�_ #�,E` xO�a  ,E` #O�a (,E` )O)_ x_ #_ )m+ yE` )O�_ #�,a �%�_ #�,%a �%_ )%a �%�a &,%_ '%_ 6FY hY h[OY�JOPYg_ ]a � �a �j pO_ Me  �a �j pO �_ m[a a l kh )_ #�l+ �E` �O_ �_ ^#j  �_ e�a G, ��a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY c�_ #�,E` xO�a  ,E` #O�a (,E` )O)_ x_ #_ )m+ yE` )O�_ #�,a �%�_ #�,%a �%_ )%a �%�a &,%_ '%_ 6FY hY h[OY�7Y_ Ne a �j pO_ aj E` �O �_ m[a a l kh )_ #�l+ �E` �O_ �_ ^#j  �)_ �_ g�m+ �E` �O�a G,_ �  ��a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY c�_ #�,E` xO�a  ,E` #O�a (,E` )O)_ x_ #_ )m+ yE` )O�_ #�,a �%�_ #�,%a �%_ )%a �%�a &,%_ '%_ 6FY hY h[OY�&Y�_ Le  �a �j pO �_ m[a a l kh )_ #�l+ �E` �O_ �_ ^#j  �)_ a�l+ �E` �O�a G,_ �  ��a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY c�_ #�,E` xO�a  ,E` #O�a (,E` )O)_ x_ #_ )m+ yE` )O�_ #�,a �%�_ #�,%a �%_ )%a �%�a &,%_ '%_ 6FY hY h[OY�)Y �a �j pO_ #a G,E` �O �_ m[a a l kh )_ #�l+ �E` �O_ �_ ^#j  ��a G,_ �  ��a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY c�_ #�,E` xO�a  ,E` #O�a (,E` )O)_ x_ #_ )m+ yE` )O�_ #�,a �%�_ #�,%a �%_ )%a �%�a &,%_ '%_ 6FY hY h[OY�7Yb_ ]a � Wa �j pO_ Ne  a �j pO_ aj E` �O_ m[a a l kh )_ #�l+ �E` �O_ �_ ^#j  �_ j�a H,a A&a & �)_ �_ g�m+ �E` �O�a G,_ �  ��a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY c�_ #�,E` xO�a  ,E` #O�a (,E` )O)_ x_ #_ )m+ yE` )O�_ #�,a �%�_ #�,%a �%_ )%a �%�a &,%_ '%_ 6FY hY hY h[OY�Y&_ Le a �j pO_ m[a a l kh )_ #�l+ �E` �O_ �_ ^#j  �_ j�a H,a A&a & �)_ a�l+ �E` �O�a G,_ �  ��a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY c�_ #�,E` xO�a  ,E` #O�a (,E` )O)_ x_ #_ )m+ yE` )O�_ #�,a �%�_ #�,%a �%_ )%a �%�a &,%_ '%_ 6FY hY hY h[OY�Y_ Oe 	a �j pO �_ m[a a l kh )_ #�l+ �E` �O_ �_ ^#j  �_ j�a H,a A&a & �_ �a G,_ #a G,  ��a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY c�_ #�,E` xO�a  ,E` #O�a (,E` )O)_ x_ #_ )m+ yE` )O�_ #�,a �%�_ #�,%a �%_ )%a �%�a &,%_ '%_ 6FY hY hY h[OY�Y a �j pO �_ m[a a l kh )_ #�l+ �E` �O_ �_ ^#j  £a H,_ #a H, 	 �a G,_ #a G, a u& ��a !,E -�a  ,E` #O�_ #�,a �%a �%�a &,%_ '%_ 6FY c�_ #�,E` xO�a  ,E` #O�a (,E` )O)_ x_ #_ )m+ yE` )O�_ #�,a �%�_ #�,%a �%_ )%a �%�a &,%_ '%_ 6FY hY h[OY�Y hOPY h[OY��[OY�UOa �_ 2a 3,FO_ �&E` Oa �j �a �%�&E` �Oa �j �O_ a �*a �_ �/a �ja = �ascr  ��ޭ