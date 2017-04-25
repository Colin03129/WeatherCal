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
 l     ��������  ��  ��        l     ��  ��    , &--------Declarations------------------     �   L - - - - - - - - D e c l a r a t i o n s - - - - - - - - - - - - - - - - - -      l     ��  ��    . (----------------------------------------     �   P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��������  ��  ��        l     ����  r         J         ��  m        �      ��    n      ! " ! 1    ��
�� 
txdl " 1    ��
�� 
ascr��  ��     # $ # l    %���� % r     & ' & c     ( ) ( l    *���� * b     + , + l    -���� - I   �� .��
�� .earsffdralis        afdr . m    	��
�� afdrdocs��  ��  ��   , m     / / � 0 0 8 G e e k T o o l : C a l W e a t h e r I n f o . h t m l��  ��   ) m    ��
�� 
TEXT ' o      ���� 0 thehtmlpath theHTMLpath��  ��   $  1 2 1 l    3���� 3 r     4 5 4 m     6 6 � 7 7   5 o      ���� 0 thehtmlstring theHTMLstring��  ��   2  8 9 8 l     ��������  ��  ��   9  : ; : l     �� < =��   < + %--------Script Runs------------------    = � > > J - - - - - - - - S c r i p t   R u n s - - - - - - - - - - - - - - - - - - ;  ? @ ? l     �� A B��   A - '---------------------------------------    B � C C N - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - @  D E D l     ��������  ��  ��   E  F G F l    H���� H r     I J I J     K K  L�� L m     M M � N N  ��   J n      O P O 1    ��
�� 
txdl P 1    ��
�� 
ascr��  ��   G  Q R Q l    + S���� S r     + T U T c     ) V W V l    ' X���� X b     ' Y Z Y l    % [���� [ I    %�� \��
�� .earsffdralis        afdr \ m     !��
�� afdrdocs��  ��  ��   Z m   % & ] ] � ^ ^ @ G e e k T o o l : C a l e n d a r E v e n t s P u l l . s c p t��  ��   W m   ' (��
�� 
TEXT U o      ���� 0 ascript aScript��  ��   R  _ ` _ l  , 4 a���� a I  , 4�� b��
�� .sysodsct****        scpt b 4   , 0�� c
�� 
file c o   . /���� 0 ascript aScript��  ��  ��   `  d e d l  5 @ f���� f r   5 @ g h g c   5 > i j i l  5 < k���� k b   5 < l m l l  5 : n���� n I  5 :�� o��
�� .earsffdralis        afdr o m   5 6��
�� afdrdocs��  ��  ��   m m   : ; p p � q q 6 G e e k T o o l : W e a t h e r C h a n g e . s c p t��  ��   j m   < =��
�� 
TEXT h o      ���� 0 ascript aScript��  ��   e  r s r l  A M t���� t r   A M u v u I  A I�� w��
�� .sysodsct****        scpt w 4   A E�� x
�� 
file x o   C D���� 0 ascript aScript��   v o      ���� $0 weathercondition weatherCondition��  ��   s  y z y l  N U {���� { I  N U�� |��
�� .ascrcmnt****      � **** | o   N Q���� $0 weathercondition weatherCondition��  ��  ��   z  } ~ } l     ��������  ��  ��   ~   �  l     �� � ���   � - '--------Functions/Subroutines----------    � � � � N - - - - - - - - F u n c t i o n s / S u b r o u t i n e s - - - - - - - - - - �  � � � l     �� � ���   � 1 +-------------------------------------------    � � � � V - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l     ��������  ��  ��   �  � � � i      � � � I      �� ����� 0 
bubblesort 
bubbleSort �  ��� � o      ���� 0 datelist dateList��  ��   � Z     � � ��� � � l     ����� � =      � � � l     ����� � I    �� ���
�� .corecnte****       **** � o     ���� 0 datelist dateList��  ��  ��   � m    ���� ��  ��   � L   
  � � o   
 ���� 0 datelist dateList��   � k    � � �  � � � T    } � � k    x � �  � � � r     � � � m    ����   � o      ���� 0 swapcounter swapCounter �  � � � Y    l ��� � ��� � Z   & g � ����� � l  & ? ����� � ?   & ? � � � 4   & 1�� �
�� 
ldt  � l  ( 0 ����� � n   ( 0 � � � 4   , /�� �
�� 
cobj � m   - .����  � n   ( , � � � 4   ) ,�� �
�� 
cobj � o   * +���� 0 i   � o   ( )���� 0 datelist dateList��  ��   � 4   1 >�� �
�� 
ldt  � l  3 = ����� � n   3 = � � � 4   9 <�� �
�� 
cobj � m   : ;����  � n   3 9 � � � 4   4 9�� �
�� 
cobj � l  5 8 ����� � [   5 8 � � � o   5 6�� 0 i   � m   6 7�~�~ ��  ��   � o   3 4�}�} 0 datelist dateList��  ��  ��  ��   � k   B c � �  � � � r   B H � � � n   B F � � � 4   C F�| �
�| 
cobj � o   D E�{�{ 0 i   � o   B C�z�z 0 datelist dateList � o      �y�y 0 temp   �  � � � r   I T � � � n   I O � � � 4   J O�x �
�x 
cobj � l  K N ��w�v � [   K N � � � o   K L�u�u 0 i   � m   L M�t�t �w  �v   � o   I J�s�s 0 datelist dateList � n       � � � 4   P S�r �
�r 
cobj � o   Q R�q�q 0 i   � o   O P�p�p 0 datelist dateList �  � � � r   U ] � � � o   U V�o�o 0 temp   � n       � � � 4   W \�n �
�n 
cobj � l  X [ ��m�l � [   X [ � � � o   X Y�k�k 0 i   � m   Y Z�j�j �m  �l   � o   V W�i�i 0 datelist dateList �  ��h � r   ^ c � � � [   ^ a � � � o   ^ _�g�g 0 swapcounter swapCounter � m   _ `�f�f  � o      �e�e 0 swapcounter swapCounter�h  ��  ��  �� 0 i   � m    �d�d  � l   ! ��c�b � \    ! � � � l    ��a�` � n     � � � 1    �_
�_ 
leng � o    �^�^ 0 datelist dateList�a  �`   � m     �]�] �c  �b  ��   �  ��\ � Z   m x � ��[�Z � l  m p ��Y�X � =   m p � � � o   m n�W�W 0 swapcounter swapCounter � m   n o�V�V  �Y  �X   �  S   s t�[  �Z  �\   �  ��U � L   ~ � � � o   ~ �T�T 0 datelist dateList�U   �  � � � l     �S�R�Q�S  �R  �Q   �  � � � i     � � � I      �P ��O�P 0 gettemphtml getTempHTML �  ��N � o      �M�M 0 thetemp theTemp�N  �O   � k     � � �  � � � r      � � � c      �  � o     �L�L 0 thetemp theTemp  m    �K
�K 
long � o      �J�J 0 thetemp theTemp �  l   �I�I   Q Kreturns the HTML code to be placed in the HTML file in the temperature cell    � � r e t u r n s   t h e   H T M L   c o d e   t o   b e   p l a c e d   i n   t h e   H T M L   f i l e   i n   t h e   t e m p e r a t u r e   c e l l  Z    �	
 l   	�H�G A    	 o    �F�F 0 thetemp theTemp m    �E�E �H  �G  	 r     b     b     m     � . < t d   c l a s s = " F r e e z e T e m p " > o    �D�D 0 thetemp theTemp m     �  < / t d >   o      �C�C 0 
returntemp 
returnTemp
  l   �B�A A     o    �@�@ 0 thetemp theTemp m    �?�? )�B  �A    r    # !  b    !"#" b    $%$ m    && �'' . < t d   c l a s s = " L o w e s t T e m p " >% o    �>�> 0 thetemp theTemp# m     (( �))  < / t d >  ! o      �=�= 0 
returntemp 
returnTemp *+* l  & ),�<�;, A   & )-.- o   & '�:�: 0 thetemp theTemp. m   ' (�9�9 3�<  �;  + /0/ r   , 3121 b   , 1343 b   , /565 m   , -77 �88 , < t d   c l a s s = " L o w e r T e m p " >6 o   - .�8�8 0 thetemp theTemp4 m   / 099 �::  < / t d >  2 o      �7�7 0 
returntemp 
returnTemp0 ;<; l  6 9=�6�5= A   6 9>?> o   6 7�4�4 0 thetemp theTemp? m   7 8�3�3 =�6  �5  < @A@ r   < CBCB b   < ADED b   < ?FGF m   < =HH �II ( < t d   c l a s s = " L o w T e m p " >G o   = >�2�2 0 thetemp theTempE m   ? @JJ �KK  < / t d >  C o      �1�1 0 
returntemp 
returnTempA LML l  F IN�0�/N A   F IOPO o   F G�.�. 0 thetemp theTempP m   G H�-�- G�0  �/  M QRQ r   L SSTS b   L QUVU b   L OWXW m   L MYY �ZZ ( < t d   c l a s s = " M e d T e m p " >X o   M N�,�, 0 thetemp theTempV m   O P[[ �\\  < / t d >  T o      �+�+ 0 
returntemp 
returnTempR ]^] l  V [_�*�)_ A   V [`a` o   V W�(�( 0 thetemp theTempa m   W Z�'�' Q�*  �)  ^ bcb r   ^ ided b   ^ gfgf b   ^ chih m   ^ ajj �kk * < t d   c l a s s = " H i g h T e m p " >i o   a b�&�& 0 thetemp theTempg m   c fll �mm  < / t d >  e o      �%�% 0 
returntemp 
returnTempc non l  l qp�$�#p A   l qqrq o   l m�"�" 0 thetemp theTempr m   m p�!�! [�$  �#  o sts r   t uvu b   t }wxw b   t yyzy m   t w{{ �|| . < t d   c l a s s = " H i g h e r T e m p " >z o   w x� �  0 thetemp theTempx m   y |}} �~~  < / t d >  v o      �� 0 
returntemp 
returnTempt � l  � ����� A   � ���� o   � ��� 0 thetemp theTemp� m   � ��� e�  �  � ��� r   � ���� b   � ���� b   � ���� m   � ��� ��� 0 < t d   c l a s s = " H i g h e s t T e m p " >� o   � ��� 0 thetemp theTemp� m   � ��� ���  < / t d >  � o      �� 0 
returntemp 
returnTemp�   r   � ���� b   � ���� b   � ���� m   � ��� ��� * < t d   c l a s s = " B u r n T e m p " >� o   � ��� 0 thetemp theTemp� m   � ��� ���  < / t d >  � o      �� 0 
returntemp 
returnTemp ��� L   � ��� o   � ��� 0 
returntemp 
returnTemp�   � ��� l     ����  �  �  � ��� i    ��� I      ���� 0 
getpophtml 
getPopHTML� ��� o      �� 0 thepop thePop�  �  � k     0�� ��� r     ��� c     ��� o     �� 0 thepop thePop� m    �
� 
long� o      �
�
 0 thepop thePop� ��� l   �	���	  � e _returns the HTML code to be placed in the HTML file in the percent chance of precipitation cell   � ��� � r e t u r n s   t h e   H T M L   c o d e   t o   b e   p l a c e d   i n   t h e   H T M L   f i l e   i n   t h e   p e r c e n t   c h a n c e   o f   p r e c i p i t a t i o n   c e l l� ��� Z    -����� l   	���� A    	��� o    �� 0 thepop thePop� m    �� !�  �  � r    ��� b    ��� b    ��� m    �� ��� ( < t d   c l a s s = " L o w R a i n " >� o    �� 0 thepop thePop� m    �� ���  < / t d >  � o      �� 0 	returnpop 	returnPop� ��� l   ���� A    ��� o    � �  0 thepop thePop� m    ���� B�  �  � ���� r    #��� b    !��� b    ��� m    �� ��� ( < t d   c l a s s = " M e d R a i n " >� o    ���� 0 thepop thePop� m     �� ���  < / t d >  � o      ���� 0 	returnpop 	returnPop��  � r   & -��� b   & +��� b   & )��� m   & '�� ��� * < t d   c l a s s = " H i g h R a i n " >� o   ' (���� 0 thepop thePop� m   ) *�� ���  < / t d >  � o      ���� 0 	returnpop 	returnPop� ���� L   . 0�� o   . /���� 0 	returnpop 	returnPop��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 
shrinklist 
shrinkList� ���� o      ���� 0 alist aList��  ��  � k     �� ��� Q     ���� r    ��� n    ��� 7   ����
�� 
cobj� m    
���� � m    ������� o    ���� 0 alist aList� o      ���� 0 alist aList� R      ������
�� .ascrerr ****      � ****��  ��  � r    ��� J    ����  � o      ���� 0 alist aList� ���� L    �� o    ���� 0 alist aList��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 
adddayline 
addDayLine� ���� o      ���� 0 thelist theList��  ��  � k     �� � � Z     �� l    ���� =      c     	 n     	
	 4    ��
�� 
cobj m    ���� 
 n      4    ��
�� 
cobj m    ����  o     ���� 0 thelist theList m    ��
�� 
long m   	 
���� ��  ��   r     c     m     � , < t r   c l a s s = " L a s t H o u r " >   m    ��
�� 
TEXT o      ���� 0 rowtag rowTag��   r     c     m     � 
 < t r >   m    ��
�� 
TEXT o      ���� 0 rowtag rowTag  �� L     o    ���� 0 rowtag rowTag��  �  l     �� ��   � �NOTE: When DayLine is called from inside the script, it will have to be put into paranthesis so that the script waits to run the subroutine before outputting the entire string     �!!^ N O T E :   W h e n   D a y L i n e   i s   c a l l e d   f r o m   i n s i d e   t h e   s c r i p t ,   i t   w i l l   h a v e   t o   b e   p u t   i n t o   p a r a n t h e s i s   s o   t h a t   t h e   s c r i p t   w a i t s   t o   r u n   t h e   s u b r o u t i n e   b e f o r e   o u t p u t t i n g   t h e   e n t i r e   s t r i n g "#" l     ��������  ��  ��  # $%$ i    &'& I      ��(���� 0 
checkempty 
checkEmpty( )��) o      ���� 0 thelist theList��  ��  ' k     '** +,+ l     ��-.��  - 4 .Checks if a list is empty or effectively empty   . �// \ C h e c k s   i f   a   l i s t   i s   e m p t y   o r   e f f e c t i v e l y   e m p t y, 0��0 Z     '12��31 l    4����4 G     565 G     787 l    9����9 =     :;: o     ���� 0 thelist theList; J    ����  ��  ��  8 l   <����< =    =>= n    ?@? 4    ��A
�� 
cobjA m   	 
���� @ o    ���� 0 thelist theList> J    ����  ��  ��  6 l   B����B A    CDC n    EFE 1    ��
�� 
lengF l   G����G n    HIH 4    ��J
�� 
cobjJ m    ���� I o    ���� 0 thelist theList��  ��  D m    ���� ��  ��  ��  ��  2 L     "KK m     !��
�� boovtrue��  3 L   % 'LL m   % &��
�� boovfals��  % MNM l     ��������  ��  ��  N OPO l     ��QR��  Q 0 *--------Script----------------------------   R �SS T - - - - - - - - S c r i p t - - - - - - - - - - - - - - - - - - - - - - - - - - - -P TUT l     ��VW��  V 1 +-------------------------------------------   W �XX V - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -U YZY l     ��������  ��  ��  Z [\[ l     ��]^��  ] 3 -Get weather items formatted to repeat through   ^ �__ Z G e t   w e a t h e r   i t e m s   f o r m a t t e d   t o   r e p e a t   t h r o u g h\ `a` l  V _b����b r   V _cdc J   V [ee f��f m   V Ygg �hh  ��  d n     iji 1   \ ^��
�� 
txdlj 1   [ \��
�� 
ascr��  ��  a klk l  ` om����m r   ` onon c   ` kpqp l  ` ir����r b   ` ists l  ` eu����u I  ` e��v��
�� .earsffdralis        afdrv m   ` a��
�� afdrdocs��  ��  ��  t m   e hww �xx 0 G e e k T o o l : W e a t h e r I n f o . t x t��  ��  q m   i j��
�� 
TEXTo o      ���� 0 textfile textFile��  ��  l yzy l  p �{����{ r   p �|}| n   p ~~~ 2  z ~��
�� 
cpar l  p z������ I  p z�����
�� .rdwrread****        ****� 4   p v���
�� 
file� o   r u���� 0 textfile textFile��  ��  ��  } o      ���� "0 weatherinfolist weatherInfoList��  ��  z ��� l  � ������� r   � ���� o   � ���
�� 
ret � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr��  ��  � ��� l  � ������� r   � ���� c   � ���� n  � ���� 2   � ���
�� 
citm� o   � ����� "0 weatherinfolist weatherInfoList� m   � ��
� 
list� o      �~�~ 0 templist tempList��  ��  � ��� l  � ���}�|� r   � ���� J   � ��� ��{� m   � ��� ���  ,�{  � n     ��� 1   � ��z
�z 
txdl� 1   � ��y
�y 
ascr�}  �|  � ��� l  � ���x�w� r   � ���� J   � ��v�v  � o      �u�u "0 weatherinfolist weatherInfoList�x  �w  � ��� l  � ���t�s� X   � ���r�� r   � ���� n  � ���� 2   � ��q
�q 
citm� o   � ��p�p 0 w  � n      ���  ;   � �� o   � ��o�o "0 weatherinfolist weatherInfoList�r 0 w  � n  � ���� 2   � ��n
�n 
citm� o   � ��m�m 0 templist tempList�t  �s  � ��� l     �l�k�j�l  �k  �j  � ��� l     �i���i  � E ?Get calendar events formatted to repeat through and then sorted   � ��� ~ G e t   c a l e n d a r   e v e n t s   f o r m a t t e d   t o   r e p e a t   t h r o u g h   a n d   t h e n   s o r t e d� ��� l  � ���h�g� r   � ���� J   � ��� ��f� m   � ��� ���  �f  � n     ��� 1   � ��e
�e 
txdl� 1   � ��d
�d 
ascr�h  �g  � ��� l  � ���c�b� r   � ���� c   � ���� l  � ���a�`� b   � ���� l  � ���_�^� I  � ��]��\
�] .earsffdralis        afdr� m   � ��[
�[ afdrdocs�\  �_  �^  � m   � ��� ��� ( G e e k T o o l : C a l I n f o . t x t�a  �`  � m   � ��Z
�Z 
TEXT� o      �Y�Y 0 textfile textFile�c  �b  � ��� l  ���X�W� r   ���� n   � ���� 2  � ��V
�V 
cpar� l  � ���U�T� I  � ��S��R
�S .rdwrread****        ****� 4   � ��Q�
�Q 
file� o   � ��P�P 0 textfile textFile�R  �U  �T  � o      �O�O 0 calinfolist calInfoList�X  �W  � ��� l 
��N�M� r  
��� o  �L
�L 
ret � n     ��� 1  	�K
�K 
txdl� 1  �J
�J 
ascr�N  �M  � ��� l $��I�H� r  $��� c   ��� n ��� 7 �G��
�G 
citm� m  �F�F � m  �E�E��� o  �D�D 0 calinfolist calInfoList� m  �C
�C 
list� o      �B�B 0 calinfolist calInfoList�I  �H  � ��� l %.��A�@� r  %.��� J  %*�� ��?� m  %(�� ���  ;�?  � n     ��� 1  +-�>
�> 
txdl� 1  *+�=
�= 
ascr�A  �@  � ��� l /5��<�;� r  /5��� J  /1�:�:  � o      �9�9 0 templist tempList�<  �;  � ��� l 6_��8�7� X  6_��6 � r  PZ n PU 2  QU�5
�5 
citm o  PQ�4�4 0 cal   n        ;  XY o  UX�3�3 0 templist tempList�6 0 cal    n 9@ 2  <@�2
�2 
citm o  9<�1�1 0 calinfolist calInfoList�8  �7  � 	
	 l `l�0�/ r  `l I  `h�.�-�. 0 
bubblesort 
bubbleSort �, o  ad�+�+ 0 templist tempList�,  �-   o      �*�* 0 calinfolist calInfoList�0  �/  
  l     �)�(�'�)  �(  �'    l     �&�&   $ Start the HTML document header    � < S t a r t   t h e   H T M L   d o c u m e n t   h e a d e r  l mz�%�$ r  mz b  mx l mt�#�" c  mt  b  mr!"! o  mn�!�! 0 thehtmlstring theHTMLstring" m  nq## �$$> < ! D O C T Y P E   h t m l >   < h t m l     x m l n s = " h t t p : / / w w w . w 3 . o r g / 1 9 9 9 / x h t m l " > 
 < ! - - 
         b y :   C o l i n   D u r k i n 
         f i r s t   m o d i f i e d :   1 2   F e b   2 0 1 7 
         l a s t   m o d i f i e d :   2 3   M a r   2 0 1 7 
 - - > 
 < h e a d >   < t i t l e >   C a l e n d a r   a n d   W e a t h e r   < / t i t l e >   < m e t a   c h a r s e t = " u t f - 8 "   / >   < l i n k   h r e f = " n o r m a l i z e . c s s "   t y p e = " t e x t / c s s "   r e l = " s t y l e s h e e t "   / >    m  rs� 
�  
TEXT�#  �"   o  tw�
� 
ret  o      �� 0 thehtmlstring theHTMLstring�%  �$   %&% l     ����  �  �  & '(' l     �)*�  ) + %Option to add backgrounds to calendar   * �++ J O p t i o n   t o   a d d   b a c k g r o u n d s   t o   c a l e n d a r( ,-, l     �./�  . s mNOTE: All images must be located in the Weather or Background folder. Aliases will not be found by the script   / �00 � N O T E :   A l l   i m a g e s   m u s t   b e   l o c a t e d   i n   t h e   W e a t h e r   o r   B a c k g r o u n d   f o l d e r .   A l i a s e s   w i l l   n o t   b e   f o u n d   b y   t h e   s c r i p t- 121 l     �34�  3 Y SNOTE: If you do not want a background to be added, leave addBackground to true and    4 �55 � N O T E :   I f   y o u   d o   n o t   w a n t   a   b a c k g r o u n d   t o   b e   a d d e d ,   l e a v e   a d d B a c k g r o u n d   t o   t r u e   a n d  2 676 l     ����  �  �  7 898 l {�:��: r  {�;<; m  {|�
� boovtrue< o      �� 0 addbackground addBackground�  �  9 =>= l     �?@�  ? Q KNOTE: set this to false if you just want the calendar without a background.   @ �AA � N O T E :   s e t   t h i s   t o   f a l s e   i f   y o u   j u s t   w a n t   t h e   c a l e n d a r   w i t h o u t   a   b a c k g r o u n d .> BCB l     ����  �  �  C DED l ��F��F r  ��GHG m  ���

�
 boovtrueH o      �	�	 00 addweathertobackground addWeatherToBackground�  �  E IJI l     �KL�  K K ENOTE: set this to false if you want your own images as the background   L �MM � N O T E :   s e t   t h i s   t o   f a l s e   i f   y o u   w a n t   y o u r   o w n   i m a g e s   a s   t h e   b a c k g r o u n dJ NON l     ����  �  �  O PQP l �BR��R Z  �BST�US l ��V�� V =  ��WXW o  ������ 0 addbackground addBackgroundX m  ����
�� boovtrue�  �   T l �2YZ[Y k  �2\\ ]^] r  ��_`_ b  ��aba l ��c����c c  ��ded b  ��fgf o  ������ 0 thehtmlstring theHTMLstringg m  ��hh �ii � < l i n k   h r e f = " W e a t h e r C a l . c s s "   t y p e = " t e x t / c s s "   r e l = " s t y l e s h e e t "   / >   < / h e a d >   < b o d y >  e m  ����
�� 
TEXT��  ��  b o  ����
�� 
ret ` o      ���� 0 thehtmlstring theHTMLstring^ j��j Z  �2kl��mk l ��n����n =  ��opo o  ������ 00 addweathertobackground addWeatherToBackgroundp m  ����
�� boovtrue��  ��  l l ��qrsq r  ��tut b  ��vwv l ��x����x c  ��yzy b  ��{|{ b  ��}~} b  ��� b  ����� b  ����� o  ������ 0 thehtmlstring theHTMLstring� m  ���� ��� $ < i m g   s r c = " W e a t h e r /� o  ������ $0 weathercondition weatherCondition� m  ���� ���  . j p g "   a l t = "~ o  ������ $0 weathercondition weatherCondition| m  ���� ��� : . j p g   n o t   f o u n d "   w i d t h = " 1 0 0 % " >z m  ����
�� 
TEXT��  ��  w o  ����
�� 
ret u o      ���� 0 thehtmlstring theHTMLstringr  weather-based background   s ��� 0 w e a t h e r - b a s e d   b a c k g r o u n d��  m l �2���� k  �2�� ��� l ��������  �& NOTE: A background image should be placed within Documents<GeekTool<Background. If the file extension is not jpg, change it in the above line. The script will choose a random image from within the Background folder and if there is only one picture, it will choose that picture every time.   � ���@ N O T E :   A   b a c k g r o u n d   i m a g e   s h o u l d   b e   p l a c e d   w i t h i n   D o c u m e n t s < G e e k T o o l < B a c k g r o u n d .   I f   t h e   f i l e   e x t e n s i o n   i s   n o t   j p g ,   c h a n g e   i t   i n   t h e   a b o v e   l i n e .   T h e   s c r i p t   w i l l   c h o o s e   a   r a n d o m   i m a g e   f r o m   w i t h i n   t h e   B a c k g r o u n d   f o l d e r   a n d   i f   t h e r e   i s   o n l y   o n e   p i c t u r e ,   i t   w i l l   c h o o s e   t h a t   p i c t u r e   e v e r y   t i m e .� ��� r  ����� J  ���� ���� m  ���� ���  ��  � n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� c  ����� l �������� b  ����� l �������� I �������
�� .earsffdralis        afdr� m  ����
�� afdrdocs��  ��  ��  � m  ���� ��� & G e e k T o o l : B a c k g r o u n d��  ��  � m  ����
�� 
TEXT� o      ���� 0 
folderpath 
folderPath� ��� O  ���� r  ���� n  ���� 1  ��
�� 
pnam� n  ���� 4  ����
�� 
file� l �
������ I �
�����
�� .sysorandnmbr    ��� nmbr��  � ����
�� 
from� m  ������ � �����
�� 
to  � l ������� I ������
�� .corecnte****       ****� n  � ��� 2 � ��
�� 
file� 4  �����
�� 
cfol� o  ������ 0 
folderpath 
folderPath��  ��  ��  ��  ��  ��  � 4  �����
�� 
cfol� o  ������ 0 
folderpath 
folderPath� o      ����  0 backgroundname backgroundName� m  �����                                                                                  MACS  alis    t  Macintosh HD               �R�\H+   �9
Finder.app                                                      ����GЎ        ����  	                CoreServices    �S!�      �HA     �9 �9 �9  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ���� r  2��� b  0��� l ,������ c  ,��� b  *��� b  &��� b  "��� b  ��� b  ��� o  ���� 0 thehtmlstring theHTMLstring� m  �� ��� * < i m g   s r c = " B a c k g r o u n d /� o  ����  0 backgroundname backgroundName� m  !�� ���  "   a l t = "� o  "%����  0 backgroundname backgroundName� m  &)�� ��� 2   n o t   f o u n d "   w i d t h = " 1 0 0 % " >� m  *+��
�� 
TEXT��  ��  � o  ,/��
�� 
ret � o      ���� 0 thehtmlstring theHTMLstring��  �  non-weather background   � ��� , n o n - w e a t h e r   b a c k g r o u n d��  Z ! add background to HTML page   [ ��� 6 a d d   b a c k g r o u n d   t o   H T M L   p a g e�  U l 5B���� r  5B��� b  5@��� l 5<������ c  5<��� b  5:��� o  56���� 0 thehtmlstring theHTMLstring� m  69�� ��� � < l i n k   h r e f = " W e a t h e r C a l 2 . c s s "   t y p e = " t e x t / c s s "   r e l = " s t y l e s h e e t "   / >   < / h e a d >   < b o d y >  � m  :;��
�� 
TEXT��  ��  � o  <?��
�� 
ret � o      ���� 0 thehtmlstring theHTMLstring�   no background in HTML page   � ��� 4 n o   b a c k g r o u n d   i n   H T M L   p a g e�  �  Q ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l CP������ r  CP��� b  CN��� l CJ������ c  CJ��� b  CH��� o  CD���� 0 thehtmlstring theHTMLstring� m  DG�� ��� � < t a b l e >   < t r   c l a s s = " H e a d T a b l e " >   < t h > H o u r < / t h >   < t h > C a l e n d a r < / t h >   < t h > T e m p < / t h >   < t h   i d = " R a i n " > R a i n < / t h >   < / t r >� m  HI��
�� 
TEXT��  ��  � o  JM��
�� 
ret � o      ���� 0 thehtmlstring theHTMLstring��  ��  � ��� l     ��������  ��  ��  �    l Q<���� Z  Q<���� l Q[���� =  Q[ I  QY������ 0 
checkempty 
checkEmpty 	��	 o  RU���� 0 calinfolist calInfoList��  ��   m  YZ��
�� boovfals��  ��   l ^8

 k  ^8  l ^^����   T NSets up table row if there is an All Day event today before first weather hour    � � S e t s   u p   t a b l e   r o w   i f   t h e r e   i s   a n   A l l   D a y   e v e n t   t o d a y   b e f o r e   f i r s t   w e a t h e r   h o u r  T  ^� Z  c��� l ct���� C  ct n  cp 4  kp��
�� 
cobj m  no����  n  ck  4  fk��!
�� 
cobj! m  ij����   o  cf���� 0 calinfolist calInfoList m  ps"" �##  A l l D a y :��  ��   k  w�$$ %&% l ww��'(��  ' * $Writing all day event on its own row   ( �)) H W r i t i n g   a l l   d a y   e v e n t   o n   i t s   o w n   r o w& *+* r  w�,-, b  w�./. l w�0����0 c  w�121 b  w�343 b  w�565 b  w|787 o  wx���� 0 thehtmlstring theHTMLstring8 m  x{99 �:: & < t r >   < t d > < / t d >   < t d >6 l |�;����; n  |�<=< 7 ����>?
�� 
ctxt> m  ������ 
? m  ��������= n  |�@A@ 4  ����B
�� 
cobjB m  ������ A n  |�CDC 4  ���E
�� 
cobjE m  ������ D o  |���� 0 calinfolist calInfoList��  ��  4 m  ��FF �GG > < / t d >   < t d > < / t d >   < t d > < / t d >   < / t r >2 m  ����
�� 
TEXT��  ��  / o  ����
�� 
ret - o      ���� 0 thehtmlstring theHTMLstring+ HIH l ����JK��  J ' !Text starts at 10 for the summary   K �LL B T e x t   s t a r t s   a t   1 0   f o r   t h e   s u m m a r yI M��M r  ��NON I  ����P���� 0 
shrinklist 
shrinkListP Q�Q o  ���~�~ 0 calinfolist calInfoList�  ��  O o      �}�} 0 calinfolist calInfoList��  ��    S  �� RSR l ���|�{�z�|  �{  �z  S TUT l ���yVW�y  V 1 +Remove any events before first weather hour   W �XX V R e m o v e   a n y   e v e n t s   b e f o r e   f i r s t   w e a t h e r   h o u rU Y�xY T  �8ZZ Z  �3[\�w][ l �^�v�u^ F  �_`_ l ��a�t�sa B  ��bcb n  ��ded 1  ���r
�r 
day e 4  ���qf
�q 
ldt f l ��g�p�og n  ��hih 4  ���nj
�n 
cobjj m  ���m�m i n  ��klk 4  ���lm
�l 
cobjm m  ���k�k l o  ���j�j 0 calinfolist calInfoList�p  �o  c c  ��non n  ��pqp 4  ���ir
�i 
cobjr m  ���h�h q n  ��sts 4  ���gu
�g 
cobju m  ���f�f t o  ���e�e "0 weatherinfolist weatherInfoListo m  ���d
�d 
long�t  �s  ` l �v�c�bv A  �wxw n  �yzy 1  ��a
�a 
hourz 4  ���`{
�` 
ldt { l ��|�_�^| n  ��}~} 4  ���]
�] 
cobj m  ���\�\ ~ n  ����� 4  ���[�
�[ 
cobj� m  ���Z�Z � o  ���Y�Y 0 calinfolist calInfoList�_  �^  x c  ��� n  ��� 4  �X�
�X 
cobj� m  �W�W � n  ��� 4  �V�
�V 
cobj� m  	
�U�U � o  �T�T "0 weatherinfolist weatherInfoList� m  �S
�S 
long�c  �b  �v  �u  \ k  /�� ��� l �R���R  � b \if this is the first event is today or earlier and the hour is before the first weather item   � ��� � i f   t h i s   i s   t h e   f i r s t   e v e n t   i s   t o d a y   o r   e a r l i e r   a n d   t h e   h o u r   i s   b e f o r e   t h e   f i r s t   w e a t h e r   i t e m� ��Q� l /���� r  /��� n  +��� 7 +�P��
�P 
cobj� m  %'�O�O � m  (*�N�N��� o  �M�M 0 calinfolist calInfoList� o      �L�L 0 calinfolist calInfoList�  remove first item   � ��� " r e m o v e   f i r s t   i t e m�Q  �w  ]  S  23�x   8 2If the calendar is empty, we can skip this section    ��� d I f   t h e   c a l e n d a r   i s   e m p t y ,   w e   c a n   s k i p   t h i s   s e c t i o n��  ��  ��  ��   ��� l     �K�J�I�K  �J  �I  � ��� l =C��H�G� r  =C��� J  =?�F�F  � o      �E�E 0 ongoinglist ongoingList�H  �G  � ��� l D��D�C� T  D�� k  I�� ��� Z  I�����B� l Id��A�@� F  Id��� l IS��?�>� =  IS��� I  IQ�=��<�= 0 
checkempty 
checkEmpty� ��;� o  JM�:�: "0 weatherinfolist weatherInfoList�;  �<  � m  QR�9
�9 boovtrue�?  �>  � l V`��8�7� =  V`��� I  V^�6��5�6 0 
checkempty 
checkEmpty� ��4� o  WZ�3�3 0 calinfolist calInfoList�4  �5  � m  ^_�2
�2 boovtrue�8  �7  �A  �@  � k  gh�� ��� l gg�1���1  � K EOnce the lists are empty, the HTML document has all of its table rows   � ��� � O n c e   t h e   l i s t s   a r e   e m p t y ,   t h e   H T M L   d o c u m e n t   h a s   a l l   o f   i t s   t a b l e   r o w s� ��0�  S  gh�0  � ��� l k���/�.� F  k���� l ku��-�,� =  ku��� I  ks�+��*�+ 0 
checkempty 
checkEmpty� ��)� o  lo�(�( "0 weatherinfolist weatherInfoList�)  �*  � m  st�'
�' boovtrue�-  �,  � l x���&�%� =  x���� I  x��$��#�$ 0 
checkempty 
checkEmpty� ��"� o  y|�!�! 0 calinfolist calInfoList�"  �#  � m  ��� 
�  boovfals�&  �%  �/  �.  � ��� k  ���� ��� I �����
� .ascrcmnt****      � ****� m  ���� ��� n E R R O R ,   a   c a l e n d a r   e v e n t   w a s   n o t   l i s t e d   i n   t h e   H T M L   f i l e�  � ���  S  ���  �  �B  � ��� r  ����� m  ���
� boovfals� o      �� 0 
eventadded 
eventAdded� ��� Z  ������ l ������ =  ����� I  ������ 0 
checkempty 
checkEmpty� ��� o  ���� 0 ongoinglist ongoingList�  �  � m  ���
� boovfals�  �  � l ����� Y  ������� k  ��� ��� I �����
� .ascrcmnt****      � ****� m  ���� ���   a n   o n g o i n g   e v e n t�  � ��� Z  �e����� l �����
� =  ����� o  ���	�	 0 
eventadded 
eventAdded� m  ���
� boovfals�  �
  � l �8���� k  �8�� ��� r  �2   b  �0 l �,�� c  �, b  �* b  �&	
	 b  � b  �� b  �� b  �� b  �� b  �� b  �� o  ���� 0 thehtmlstring theHTMLstring l ���� I  ����� 0 
adddayline 
addDayLine �  o  ������ "0 weatherinfolist weatherInfoList�   �  �  �   m  �� �  < t d > n  �� 4  ���� 
�� 
cobj  m  ������  n  ��!"! 4  ����#
�� 
cobj# m  ������ " o  ������ "0 weatherinfolist weatherInfoList m  ��$$ �%%  < / t d >   < t d > n  ��&'& 4  ����(
�� 
cobj( m  ������ ' n  ��)*) 4  ����+
�� 
cobj+ o  ������ 0 i  * o  ������ 0 ongoinglist ongoingList m  ��,, �--  < / t d >   I  ���.���� 0 gettemphtml getTempHTML. /��/ n  �010 4  ��2
�� 
cobj2 m  
���� 1 n  �343 4  ��5
�� 
cobj5 m  ���� 4 o  ����� "0 weatherinfolist weatherInfoList��  ��  
 I  %��6���� 0 
getpophtml 
getPopHTML6 7��7 n  !898 4  !��:
�� 
cobj: m   ���� 9 n  ;<; 4  ��=
�� 
cobj= m  ���� < o  ���� "0 weatherinfolist weatherInfoList��  ��   m  &)>> �?? 
 < / t r > m  *+��
�� 
TEXT�  �   o  ,/��
�� 
ret  o      ���� 0 thehtmlstring theHTMLstring� @��@ r  38ABA m  34��
�� boovtrueB o      ���� 0 
eventadded 
eventAdded��  � % first event on the weather line   � �CC > f i r s t   e v e n t   o n   t h e   w e a t h e r   l i n e�  � l ;eDEFD r  ;eGHG b  ;cIJI l ;_K����K c  ;_LML b  ;]NON b  ;YPQP b  ;IRSR b  ;ETUT o  ;<���� 0 thehtmlstring theHTMLstringU l <DV����V I  <D��W���� 0 
adddayline 
addDayLineW X��X o  =@���� "0 weatherinfolist weatherInfoList��  ��  ��  ��  S m  EHYY �ZZ  < t d > < / t d >   < t d >Q n  IX[\[ 4  QX��]
�� 
cobj] m  TW���� \ n  IQ^_^ 4  LQ��`
�� 
cobj` o  OP���� 0 i  _ o  IL���� 0 ongoinglist ongoingListO m  Y\aa �bb > < / t d >   < t d > < / t d >   < t d > < / t d >   < / t r >M m  ]^��
�� 
TEXT��  ��  J o  _b��
�� 
ret H o      ���� 0 thehtmlstring theHTMLstringE * $subsequent event on the weather line   F �cc H s u b s e q u e n t   e v e n t   o n   t h e   w e a t h e r   l i n e� d��d Z  fef����e l f�g����g B  f�hih c  f�jkj n  flml 7 s��no
�� 
ctxtn m  y{���� o m  |~���� m n  fspqp 4  ns��r
�� 
cobjr m  qr���� q n  fnsts 4  in��u
�� 
cobju o  lm���� 0 i  t o  fi���� 0 ongoinglist ongoingListk m  ���
�� 
longi [  ��vwv l ��x����x c  ��yzy n  ��{|{ 4  ����}
�� 
cobj} m  ������ | n  ��~~ 4  �����
�� 
cobj� m  ������  o  ������ "0 weatherinfolist weatherInfoListz m  ����
�� 
long��  ��  w m  ������ ��  ��  f k  ��� ��� l ��������  � = 7check if ongoing event will be ongoing to the next hour   � ��� n c h e c k   i f   o n g o i n g   e v e n t   w i l l   b e   o n g o i n g   t o   t h e   n e x t   h o u r� ���� Z  ������� l �������� =  ����� l �������� I �������
�� .corecnte****       ****� o  ������ 0 ongoinglist ongoingList��  ��  ��  � m  ������ ��  ��  � l ������ r  ����� J  ������  � o      ���� 0 ongoinglist ongoingList� &  only one event in list to remove   � ��� @ o n l y   o n e   e v e n t   i n   l i s t   t o   r e m o v e��  � Z  ������ l �������� =  ����� o  ������ 0 i  � m  ������ ��  ��  � l ������ r  ����� I  ��������� 0 
shrinklist 
shrinkList� ���� o  ������ 0 ongoinglist ongoingList��  ��  � o      ���� 0 ongoinglist ongoingList� > 8if the event to be removed is the first item in the list   � ��� p i f   t h e   e v e n t   t o   b e   r e m o v e d   i s   t h e   f i r s t   i t e m   i n   t h e   l i s t� ��� l �������� =  ����� o  ������ 0 i  � l �������� I �������
�� .corecnte****       ****� o  ������ 0 ongoinglist ongoingList��  ��  ��  ��  ��  � ���� l ������ r  ����� n  ����� 7 ������
�� 
cobj� m  ������ � m  ��������� o  ������ 0 ongoinglist ongoingList� o      ���� 0 ongoinglist ongoingList� = 7if the event to be removed is the last item in the list   � ��� n i f   t h e   e v e n t   t o   b e   r e m o v e d   i s   t h e   l a s t   i t e m   i n   t h e   l i s t��  � l ����� r  ���� b  ���� n  ����� 7 ������
�� 
cobj� m  ������ � l �������� \  ����� o  ������ 0 i  � m  ������ ��  ��  � o  ������ 0 ongoinglist ongoingList� n  �
��� 7 �
����
�� 
cobj� l ������ [  ��� o  ���� 0 i  � m  ���� ��  ��  � m  	������� o  ������ 0 ongoinglist ongoingList� o      ���� 0 ongoinglist ongoingList� = 7if the event to be removed is in the middle of the list   � ��� n i f   t h e   e v e n t   t o   b e   r e m o v e d   i s   i n   t h e   m i d d l e   o f   t h e   l i s t��  ��  ��  ��  � 0 i  � m  ������ � I �������
�� .corecnte****       ****� o  ������ 0 ongoinglist ongoingList��  �  �  ongoing events to add   � ��� * o n g o i n g   e v e n t s   t o   a d d�  �  � ��� Z  �����~� l '��}�|� =  '��� I  %�{��z�{ 0 
checkempty 
checkEmpty� ��y� o  !�x�x 0 calinfolist calInfoList�y  �z  � m  %&�w
�w boovfals�}  �|  � l *����� k  *��� ��� T  *��� Z  /������ l /9��v�u� =  /9��� I  /7�t��s�t 0 
checkempty 
checkEmpty� ��r� o  03�q�q 0 calinfolist calInfoList�r  �s  � m  78�p
�p boovtrue�v  �u  �  S  <=� ��� l @���o�n� F  @���� l @Q��m�l� C  @Q��� n  @M��� 4  HM�k�
�k 
cobj� m  KL�j�j � n  @H��� 4  CH�i�
�i 
cobj� m  FG�h�h � o  @C�g�g 0 calinfolist calInfoList� m  MP�� ���  A l l   D a y :�m  �l  � l T���f�e� =  T���� c  To��� n  Tk��� 1  gk�d
�d 
day � 4  Tg�c�
�c 
ldt � l Xf �b�a  n  Xf 4  `e�`
�` 
cobj m  cd�_�_  n  X` 4  [`�^
�^ 
cobj m  ^_�]�]  o  X[�\�\ 0 calinfolist calInfoList�b  �a  � m  kn�[
�[ 
long� c  o� n  o|	
	 4  w|�Z
�Z 
cobj m  z{�Y�Y 
 n  ow 4  rw�X
�X 
cobj m  uv�W�W  o  or�V�V "0 weatherinfolist weatherInfoList m  |�U
�U 
long�f  �e  �o  �n  � �T k  ��  I ���S�R
�S .ascrcmnt****      � **** m  �� �  I t ' s   A l l   D a y�R    l ���Q�Q   * $Writing all day event on its own row    � H W r i t i n g   a l l   d a y   e v e n t   o n   i t s   o w n   r o w  r  �� b  ��  l ��!�P�O! c  ��"#" b  ��$%$ b  ��&'& b  ��()( b  ��*+* o  ���N�N 0 thehtmlstring theHTMLstring+ l ��,�M�L, I  ���K-�J�K 0 
adddayline 
addDayLine- .�I. o  ���H�H "0 weatherinfolist weatherInfoList�I  �J  �M  �L  ) m  ��// �00  < t d > < / t d >   < t d >' l ��1�G�F1 n  ��232 7 ���E45
�E 
ctxt4 m  ���D�D 
5 m  ���C�C��3 n  ��676 4  ���B8
�B 
cobj8 m  ���A�A 7 n  ��9:9 4  ���@;
�@ 
cobj; m  ���?�? : o  ���>�> 0 calinfolist calInfoList�G  �F  % m  ��<< �== > < / t d >   < t d > < / t d >   < t d > < / t d >   < / t r ># m  ���=
�= 
TEXT�P  �O    o  ���<
�< 
ret  o      �;�; 0 thehtmlstring theHTMLstring >?> l ���:@A�:  @ ' !Text starts at 10 for the summary   A �BB B T e x t   s t a r t s   a t   1 0   f o r   t h e   s u m m a r y? C�9C r  ��DED I  ���8F�7�8 0 
shrinklist 
shrinkListF G�6G o  ���5�5 0 calinfolist calInfoList�6  �7  E o      �4�4 0 calinfolist calInfoList�9  �T  �  S  ��� H�3H T  ��II Z  ��JKLMJ l ��N�2�1N =  ��OPO I  ���0Q�/�0 0 
checkempty 
checkEmptyQ R�.R o  ���-�- 0 calinfolist calInfoList�.  �/  P m  ���,
�, boovtrue�2  �1  K  S  ��L STS l �~U�+�*U F  �~VWV l �X�)�(X =  �YZY n  �
[\[ 1  
�'
�' 
day \ 4  ��&]
�& 
ldt ] l �^�%�$^ n  �_`_ 4  ��#a
�# 
cobja m  �"�" ` n  ��bcb 4  ���!d
�! 
cobjd m  ��� �  c o  ���� 0 calinfolist calInfoList�%  �$  Z c  
efe n  
ghg 4  �i
� 
cobji m  �� h n  
jkj 4  �l
� 
cobjl m  �� k o  
�� "0 weatherinfolist weatherInfoListf m  �
� 
long�)  �(  W l zm��m F  znon l Hp��p @  Hqrq n  6sts 1  26�
� 
hourt 4  2�u
� 
ldt u l #1v��v n  #1wxw 4  +0�y
� 
cobjy m  ./�� x n  #+z{z 4  &+�|
� 
cobj| m  )*�� { o  #&�� 0 calinfolist calInfoList�  �  r c  6G}~} n  6C� 4  >C��
� 
cobj� m  AB�
�
 � n  6>��� 4  9>�	�
�	 
cobj� m  <=�� � o  69�� "0 weatherinfolist weatherInfoList~ m  CF�
� 
long�  �  o A  Kv��� l Kb���� n  Kb��� 1  ^b�
� 
hour� 4  K^��
� 
ldt � l O]��� � n  O]��� 4  W\���
�� 
cobj� m  Z[���� � n  OW��� 4  RW���
�� 
cobj� m  UV���� � o  OR���� 0 calinfolist calInfoList�  �   �  �  � [  bu��� l bs������ c  bs��� n  bo��� 4  jo���
�� 
cobj� m  mn���� � n  bj��� 4  ej���
�� 
cobj� m  hi���� � o  be���� "0 weatherinfolist weatherInfoList� m  or��
�� 
long��  ��  � m  st���� �  �  �+  �*  T ���� k  ��� ��� I �������
�� .ascrcmnt****      � ****� m  ���� ���  a   n e w   e v e n t��  � ��� Z  �,������ l �������� =  ����� o  ������ 0 
eventadded 
eventAdded� m  ����
�� boovfals��  ��  � l ������ k  ���� ��� r  ����� b  ����� l �������� c  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� o  ������ 0 thehtmlstring theHTMLstring� l �������� I  ��������� 0 
adddayline 
addDayLine� ���� o  ������ "0 weatherinfolist weatherInfoList��  ��  ��  ��  � m  ���� ���  < t d >� n  ����� 4  �����
�� 
cobj� m  ������ � n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ "0 weatherinfolist weatherInfoList� m  ���� ���  < / t d >   < t d >� n  ����� 4  �����
�� 
cobj� m  ������ � n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 calinfolist calInfoList� m  ���� ���  < / t d >  � I  ��������� 0 gettemphtml getTempHTML� ���� n  ����� 4  �����
�� 
cobj� m  ������ � n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ "0 weatherinfolist weatherInfoList��  ��  � I  ��������� 0 
getpophtml 
getPopHTML� ���� n  ����� 4  �����
�� 
cobj� m  ������ � n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ "0 weatherinfolist weatherInfoList��  ��  � m  ���� ��� 
 < / t r >� m  ����
�� 
TEXT��  ��  � o  ����
�� 
ret � o      ���� 0 thehtmlstring theHTMLstring� ���� r  ����� m  ����
�� boovtrue� o      ���� 0 
eventadded 
eventAdded��  � % first event on the weather line   � ��� > f i r s t   e v e n t   o n   t h e   w e a t h e r   l i n e��  � l ,���� r  ,��� b  *��� l &������ c  &��� b  $   b    b   b   o  ���� 0 thehtmlstring theHTMLstring l ���� I  ��	���� 0 
adddayline 
addDayLine	 
��
 o  ���� "0 weatherinfolist weatherInfoList��  ��  ��  ��   m   �  < t d > < / t d >   < t d > n   4  ��
�� 
cobj m  ����  n   4  ��
�� 
cobj m  ����  o  ���� 0 calinfolist calInfoList m   # � > < / t d >   < t d > < / t d >   < t d > < / t d >   < / t r >� m  $%��
�� 
TEXT��  ��  � o  &)��
�� 
ret � o      ���� 0 thehtmlstring theHTMLstring� * $subsequent event on the weather line   � � H s u b s e q u e n t   e v e n t   o n   t h e   w e a t h e r   l i n e�  Z  -r���� l -^���� ?  -^ c  -J n  -F  7 :F��!"
�� 
ctxt! m  @B���� " m  CE����   n  -:#$# 4  5:��%
�� 
cobj% m  89���� $ n  -5&'& 4  05��(
�� 
cobj( m  34���� ' o  -0���� 0 calinfolist calInfoList m  FI��
�� 
long [  J])*) l J[+����+ c  J[,-, n  JW./. 4  RW��0
�� 
cobj0 m  UV���� / n  JR121 4  MR��3
�� 
cobj3 m  PQ���� 2 o  JM���� "0 weatherinfolist weatherInfoList- m  WZ��
�� 
long��  ��  * m  [\���� ��  ��   k  an44 565 l aa��78��  7 B <Checking to see if event is ongoing to the next weather time   8 �99 x C h e c k i n g   t o   s e e   i f   e v e n t   i s   o n g o i n g   t o   t h e   n e x t   w e a t h e r   t i m e6 :��: r  an;<; n  ai=>= 4  di��?
�� 
cobj? m  gh���� > o  ad���� 0 calinfolist calInfoList< n      @A@  ;  lmA o  il���� 0 ongoinglist ongoingList��  ��  ��   B��B r  sCDC I  s{��E���� 0 
shrinklist 
shrinkListE F��F o  tw���� 0 calinfolist calInfoList��  ��  D o      ���� 0 calinfolist calInfoList��  ��  M  S  ���3  �  still events to add   � �GG & s t i l l   e v e n t s   t o   a d d�  �~  � HIH Z  ��JK����J l ��L����L =  ��MNM o  ������ 0 
eventadded 
eventAddedN m  ����
�� boovfals��  ��  K k  ��OO PQP I ����R��
�� .ascrcmnt****      � ****R m  ��SS �TT  n o   e v e n t��  Q U��U r  ��VWV b  ��XYX l ��Z����Z c  ��[\[ b  ��]^] b  ��_`_ b  ��aba b  ��cdc b  ��efe b  ��ghg b  ��iji o  ������ 0 thehtmlstring theHTMLstringj l ��k����k I  ���l�~� 0 
adddayline 
addDayLinel m�}m o  ���|�| "0 weatherinfolist weatherInfoList�}  �~  ��  ��  h m  ��nn �oo  < t d >f n  ��pqp 4  ���{r
�{ 
cobjr m  ���z�z q n  ��sts 4  ���yu
�y 
cobju m  ���x�x t o  ���w�w "0 weatherinfolist weatherInfoListd m  ��vv �ww   < / t d >   < t d > < / t d >  b I  ���vx�u�v 0 gettemphtml getTempHTMLx y�ty n  ��z{z 4  ���s|
�s 
cobj| m  ���r�r { n  ��}~} 4  ���q
�q 
cobj m  ���p�p ~ o  ���o�o "0 weatherinfolist weatherInfoList�t  �u  ` I  ���n��m�n 0 
getpophtml 
getPopHTML� ��l� n  ����� 4  ���k�
�k 
cobj� m  ���j�j � n  ����� 4  ���i�
�i 
cobj� m  ���h�h � o  ���g�g "0 weatherinfolist weatherInfoList�l  �m  ^ m  ���� ��� 
 < / t r >\ m  ���f
�f 
TEXT��  ��  Y o  ���e
�e 
ret W o      �d�d 0 thehtmlstring theHTMLstring��  ��  ��  I ��c� r  ���� I  ���b��a�b 0 
shrinklist 
shrinkList� ��`� o  ���_�_ "0 weatherinfolist weatherInfoList�`  �a  � o      �^�^ "0 weatherinfolist weatherInfoList�c  �D  �C  � ��� l     �]�\�[�]  �\  �[  � ��� l ��Z�Y� r  ��� b  ��� l ��X�W� c  ��� b  ��� o  	�V�V 0 thehtmlstring theHTMLstring� m  	�� ��� 2   < / t a b l e >   < / b o d y >   < / h t m l >� m  �U
�U 
TEXT�X  �W  � o  �T
�T 
ret � o      �S�S 0 thehtmlstring theHTMLstring�Z  �Y  � ��� l     �R�Q�P�R  �Q  �P  � ��� l      �O���O  � � �--Setup HTML file with proper formatting and attach css filetry --delete HTML file if already exists	tell application "System Events"		move theHTMLpath to (path to trash)	end tellend try
   � ����  - - S e t u p   H T M L   f i l e   w i t h   p r o p e r   f o r m a t t i n g   a n d   a t t a c h   c s s   f i l e  t r y   - - d e l e t e   H T M L   f i l e   i f   a l r e a d y   e x i s t s  	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 	 m o v e   t h e H T M L p a t h   t o   ( p a t h   t o   t r a s h )  	 e n d   t e l l  e n d   t r y 
� ��� l ��N�M� I �L��K
�L .sysoexecTEXT���     TEXT� m  �� ��� h e c h o     >   $ H O M E / D o c u m e n t s / G e e k T o o l / c a l W e a t h e r I n f o . h t m l�K  �N  �M  � ��� l     �J���J  � 9 3--creates an empty file or overwrites previous file   � ��� f - - c r e a t e s   a n   e m p t y   f i l e   o r   o v e r w r i t e s   p r e v i o u s   f i l e� ��� l     �I�H�G�I  �H  �G  � ��� l +��F�E� r  +��� I '�D��
�D .rdwropenshor       file� o  �C�C 0 thehtmlpath theHTMLpath� �B��A
�B 
perm� m  "#�@
�@ boovtrue�A  � o      �?�? 0 pathnum pathNum�F  �E  � ��� l ,>��>�=� I ,>�<��
�< .rdwrwritnull���     ****� l ,-��;�:� o  ,-�9�9 0 thehtmlstring theHTMLstring�;  �:  � �8��
�8 
refn� 4  04�7�
�7 
file� o  23�6�6 0 thehtmlpath theHTMLpath� �5��4
�5 
as  � m  78�3
�3 
TEXT�4  �>  �=  � ��2� l ?F��1�0� I ?F�/��.
�/ .rdwrclosnull���     ****� o  ?B�-�- 0 pathnum pathNum�.  �1  �0  �2       �,�����������������+�*��)�(�'�&�%�$�#�"�!� �,  � ����������������������
�	������ 0 
bubblesort 
bubbleSort� 0 gettemphtml getTempHTML� 0 
getpophtml 
getPopHTML� 0 
shrinklist 
shrinkList� 0 
adddayline 
addDayLine� 0 
checkempty 
checkEmpty
� .aevtoappnull  �   � ****� 0 thehtmlpath theHTMLpath� 0 thehtmlstring theHTMLstring� 0 ascript aScript� $0 weathercondition weatherCondition� 0 textfile textFile� "0 weatherinfolist weatherInfoList� 0 templist tempList� 0 calinfolist calInfoList� 0 addbackground addBackground� 00 addweathertobackground addWeatherToBackground� 0 ongoinglist ongoingList� 0 
eventadded 
eventAdded� 0 pathnum pathNum�  �
  �	  �  �  �  �  �  � � ������ � 0 
bubblesort 
bubbleSort� ����� �  ���� 0 datelist dateList�  � ���������� 0 datelist dateList�� 0 swapcounter swapCounter�� 0 i  �� 0 temp  � ��������
�� .corecnte****       ****
�� 
leng
�� 
ldt 
�� 
cobj�  ��j  k  �Y s mhZjE�O Sk��,kkh *��/�k/E/*��k/�k/E/ &��/E�O��k/��/FO���k/FO�kE�Y h[OY��O�j  Y h[OY��O�� �� ����������� 0 gettemphtml getTempHTML�� ����� �  ���� 0 thetemp theTemp��  � ������ 0 thetemp theTemp�� 0 
returntemp 
returnTemp� ������&(��79��HJ��Y[��jl��{}������
�� 
long�� �� )�� 3�� =�� G�� Q�� [�� e�� ���&E�O�� �%�%E�Y ��� �%�%E�Y �� �%�%E�Y o�� �%�%E�Y _�� �%�%E�Y O�a  a �%a %E�Y 9�a  a �%a %E�Y #�a  a �%a %E�Y a �%a %E�O�� ������������� 0 
getpophtml 
getPopHTML�� ����� �  ���� 0 thepop thePop��  � ������ 0 thepop thePop�� 0 	returnpop 	returnPop� 	������������
�� 
long�� !�� B�� 1��&E�O�� �%�%E�Y �� �%�%E�Y 	�%�%E�O�� ������������� 0 
shrinklist 
shrinkList�� ����� �  ���� 0 alist aList��  � ���� 0 alist aList� ������
�� 
cobj��  ��  ��   �[�\[Zl\Zi2E�W X  jvE�O�� ������������� 0 
adddayline 
addDayLine�� ����� �  ���� 0 thelist theList��  � ������ 0 thelist theList�� 0 rowtag rowTag� ��������
�� 
cobj
�� 
long�� 
�� 
TEXT�� ��k/�l/�&�  
��&E�Y ��&E�O�� ��'���������� 0 
checkempty 
checkEmpty�� ����� �  ���� 0 thelist theList��  � ���� 0 thelist theList� ������
�� 
cobj
�� 
bool
�� 
leng�� (�jv 
 ��k/jv �&
 ��k/�,l�& eY f� �����������
�� .aevtoappnull  �   � ****� k    F��  ��  #��  1��  F��  Q��  _��  d��  r��  y�� `�� k�� y�� ��� ��� ��� ��� ��� �   � � � � � � � 	 		 8

 D P �   � � � � � � �����  ��  ��  � �������� 0 w  �� 0 cal  �� 0 i  � o �������� /���� 6�� M ]������ p����gw��������������������������������#����h�����������������������������"9����F��������������������$,����>Ya�/<�����Snv�����~�}�|�{�z�y�x
�� 
ascr
�� 
txdl
�� afdrdocs
�� .earsffdralis        afdr
�� 
TEXT�� 0 thehtmlpath theHTMLpath�� 0 thehtmlstring theHTMLstring�� 0 ascript aScript
�� 
file
�� .sysodsct****        scpt�� $0 weathercondition weatherCondition
�� .ascrcmnt****      � ****�� 0 textfile textFile
�� .rdwrread****        ****
�� 
cpar�� "0 weatherinfolist weatherInfoList
�� 
ret 
�� 
citm
�� 
list�� 0 templist tempList
�� 
kocl
�� 
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
pnam��  0 backgroundname backgroundName�� 0 
checkempty 
checkEmpty
�� 
ctxt�� 
�� 0 
shrinklist 
shrinkList
�� 
ldt 
�� 
day 
�� 
long
�� 
hour
�� 
bool�� 0 ongoinglist ongoingList�� 0 
eventadded 
eventAdded�� 0 
adddayline 
addDayLine�� 0 gettemphtml getTempHTML�� 0 
getpophtml 
getPopHTML
� .sysoexecTEXT���     TEXT
�~ 
perm
�} .rdwropenshor       file�| 0 pathnum pathNum
�{ 
refn
�z 
as  
�y .rdwrwritnull���     ****
�x .rdwrclosnull���     ****��G�kv��,FO�j �%�&E�O�E�O�kv��,FO�j �%�&E�O*��/j O�j �%�&E�O*��/j E` O_ j Oa kv��,FO�j a %�&E` O*�_ /j a -E` O_ ��,FO_ a -a &E` Oa kv��,FOjvE` O (_ a -[a a l kh  �a -_ 6F[OY��Oa  kv��,FO�j a !%�&E` O*�_ /j a -E` "O_ ��,FO_ "[a \[Zk\Za #2a &E` "Oa $kv��,FOjvE` O (_ "a -[a a l kh �a -_ 6F[OY��O*_ k+ %E` "O�a &%�&_ %E�OeE` 'OeE` (O_ 'e  ��a )%�&_ %E�O_ (e  "�a *%_ %a +%_ %a ,%�&_ %E�Y oa -kv��,FO�j a .%�&E` /Oa 0 0*a 1_ //�*a 2ka 3*a 1_ //�-j a 4 5/a 6,E` 7UO�a 8%_ 7%a 9%_ 7%a :%�&_ %E�Y �a ;%�&_ %E�O�a <%�&_ %E�O*_ "k+ =f  � [hZ_ "a k/a l/a > ?�a ?%_ "a k/a l/[a @\[Za A\Zi2%a B%�&_ %E�O*_ "k+ CE` "Y [OY��O |hZ*a D_ "a k/a k/E/a E,_ a k/a k/a F&	 /*a D_ "a k/a k/E/a G,_ a k/a l/a F&a H& _ "[a \[Zl\Zi2E` "Y [OY��Y hOjvE` IO�hZ*_ k+ =e 	 *_ "k+ =e a H& Y -*_ k+ =e 	 *_ "k+ =f a H& a Jj OY hOfE` KO*_ Ik+ =f smk_ Ij kh a Lj O_ Kf  s�*_ k+ M%a N%_ a k/a l/%a O%_ Ia �/a a 4/%a P%*_ a k/a m/k+ Q%*_ a k/a a 4/k+ R%a S%�&_ %E�OeE` KY ,�*_ k+ M%a T%_ Ia �/a a 4/%a U%�&_ %E�O_ Ia �/a m/[a @\[Zk\Zl2a F&_ a k/a l/a F&k z_ Ij k  jvE` IY b�k  *_ Ik+ CE` IY M�_ Ij   _ I[a \[Zk\Za #2E` IY )_ I[a \[Zk\Z�k2_ I[a \[Z�k\Zi2%E` IY h[OY��Y hO*_ "k+ =f c �hZ*_ "k+ =e  Y �_ "a k/a l/a V	 3*a D_ "a k/a k/E/a E,a F&_ a k/a k/a F& a H& Pa Wj O�*_ k+ M%a X%_ "a k/a l/[a @\[Za A\Zi2%a Y%�&_ %E�O*_ "k+ CE` "Y [OY�TO�hZ*_ "k+ =e  Y�*a D_ "a k/a k/E/a E,_ a k/a k/a F& 	 a*a D_ "a k/a k/E/a G,_ a k/a l/a F&	 1*a D_ "a k/a k/E/a G,_ a k/a l/a F&ka H&a H&a Zj O_ Kf  s�*_ k+ M%a [%_ a k/a l/%a \%_ "a k/a a 4/%a ]%*_ a k/a m/k+ Q%*_ a k/a a 4/k+ R%a ^%�&_ %E�OeE` KY ,�*_ k+ M%a _%_ "a k/a a 4/%a `%�&_ %E�O_ "a k/a m/[a @\[Zk\Zl2a F&_ a k/a l/a F&k _ "a k/_ I6FY hO*_ "k+ CE` "Y [OY�[Y hO_ Kf  aa aj O�*_ k+ M%a b%_ a k/a l/%a c%*_ a k/a m/k+ Q%*_ a k/a a 4/k+ R%a d%�&_ %E�Y hO*_ k+ CE` [OY�CO�a e%�&_ %E�Oa fj gO�a hel iE` jO�a k*��/a l�a 4 mO_ jj n� � � M a c i n t o s h   H D : U s e r s : c o l i n d u r k i n : D o c u m e n t s : G e e k T o o l : C a l W e a t h e r I n f o . h t m l� �9� < ! D O C T Y P E   h t m l >   < h t m l     x m l n s = " h t t p : / / w w w . w 3 . o r g / 1 9 9 9 / x h t m l " > 
 < ! - - 
         b y :   C o l i n   D u r k i n 
         f i r s t   m o d i f i e d :   1 2   F e b   2 0 1 7 
         l a s t   m o d i f i e d :   2 3   M a r   2 0 1 7 
 - - > 
 < h e a d >   < t i t l e >   C a l e n d a r   a n d   W e a t h e r   < / t i t l e >   < m e t a   c h a r s e t = " u t f - 8 "   / >   < l i n k   h r e f = " n o r m a l i z e . c s s "   t y p e = " t e x t / c s s "   r e l = " s t y l e s h e e t "   / >    < l i n k   h r e f = " W e a t h e r C a l . c s s "   t y p e = " t e x t / c s s "   r e l = " s t y l e s h e e t "   / >   < / h e a d >   < b o d y >    < i m g   s r c = " W e a t h e r / C h a n c e   o f   R a i n   A f t e r n o o n . j p g "   a l t = " C h a n c e   o f   R a i n   A f t e r n o o n . j p g   n o t   f o u n d "   w i d t h = " 1 0 0 % " >  < t a b l e >   < t r   c l a s s = " H e a d T a b l e " >   < t h > H o u r < / t h >   < t h > C a l e n d a r < / t h >   < t h > T e m p < / t h >   < t h   i d = " R a i n " > R a i n < / t h >   < / t r >  < t r >   < t d > 1 6 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 6 < / t d >   < t d   c l a s s = " M e d R a i n " > 6 2 < / t d >   < / t r >  < t r >   < t d > 1 7 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 6 < / t d >   < t d   c l a s s = " M e d R a i n " > 4 2 < / t d >   < / t r >  < t r >   < t d > 1 8 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 6 < / t d >   < t d   c l a s s = " M e d R a i n " > 3 7 < / t d >   < / t r >  < t r >   < t d > 1 9 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 5 < / t d >   < t d   c l a s s = " M e d R a i n " > 4 9 < / t d >   < / t r >  < t r >   < t d > 2 0 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 5 < / t d >   < t d   c l a s s = " H i g h R a i n " > 6 9 < / t d >   < / t r >  < t r >   < t d > 2 1 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 4 < / t d >   < t d   c l a s s = " H i g h R a i n " > 6 9 < / t d >   < / t r >  < t r >   < t d > 2 2 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 4 < / t d >   < t d   c l a s s = " M e d R a i n " > 5 9 < / t d >   < / t r >  < t r   c l a s s = " L a s t H o u r " >   < t d > 2 3 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 3 < / t d >   < t d   c l a s s = " M e d R a i n " > 5 4 < / t d >   < / t r >  < t r >   < t d > 0 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 3 < / t d >   < t d   c l a s s = " M e d R a i n " > 5 7 < / t d >   < / t r >  < t r >   < t d > 1 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 3 < / t d >   < t d   c l a s s = " M e d R a i n " > 6 0 < / t d >   < / t r >  < t r >   < t d > 2 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 4 < / t d >   < t d   c l a s s = " H i g h R a i n " > 8 1 < / t d >   < / t r >  < t r >   < t d > 3 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 4 < / t d >   < t d   c l a s s = " H i g h R a i n " > 8 9 < / t d >   < / t r >  < t r >   < t d > 4 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 4 < / t d >   < t d   c l a s s = " H i g h R a i n " > 9 1 < / t d >   < / t r >  < t r >   < t d > 5 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 3 < / t d >   < t d   c l a s s = " H i g h R a i n " > 9 0 < / t d >   < / t r >  < t r >   < t d > 6 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 3 < / t d >   < t d   c l a s s = " H i g h R a i n " > 9 2 < / t d >   < / t r >  < t r >   < t d > 7 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 3 < / t d >   < t d   c l a s s = " H i g h R a i n " > 9 5 < / t d >   < / t r >  < t r >   < t d > 8 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 3 < / t d >   < t d   c l a s s = " H i g h R a i n " > 9 4 < / t d >   < / t r >  < t r >   < t d > 9 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 3 < / t d >   < t d   c l a s s = " H i g h R a i n " > 9 8 < / t d >   < / t r >  < t r >   < t d > 1 0 < / t d >   < t d > S i m p l y   M a c < / t d >   < t d   c l a s s = " L o w T e m p " > 5 3 < / t d >   < t d   c l a s s = " H i g h R a i n " > 9 8 < / t d >   < / t r >  < t r >   < t d > 1 1 < / t d >   < t d > S i m p l y   M a c < / t d >   < t d   c l a s s = " L o w T e m p " > 5 3 < / t d >   < t d   c l a s s = " H i g h R a i n " > 9 6 < / t d >   < / t r >  < t r >   < t d > < / t d >   < t d > S o c c e r   P E < / t d >   < t d > < / t d >   < t d > < / t d >   < / t r >  < t r >   < t d > 1 2 < / t d >   < t d > S i m p l y   M a c < / t d >   < t d   c l a s s = " L o w T e m p " > 5 3 < / t d >   < t d   c l a s s = " H i g h R a i n " > 9 3 < / t d >   < / t r >  < t r >   < t d > 1 3 < / t d >   < t d > S i m p l y   M a c < / t d >   < t d   c l a s s = " L o w T e m p " > 5 4 < / t d >   < t d   c l a s s = " H i g h R a i n " > 9 1 < / t d >   < / t r >  < t r >   < t d > 1 4 < / t d >   < t d > S i m p l y   M a c < / t d >   < t d   c l a s s = " L o w T e m p " > 5 4 < / t d >   < t d   c l a s s = " H i g h R a i n " > 6 9 < / t d >   < / t r >  < t r >   < t d > 1 5 < / t d >   < t d > S i m p l y   M a c < / t d >   < t d   c l a s s = " L o w T e m p " > 5 4 < / t d >   < t d   c l a s s = " M e d R a i n " > 5 4 < / t d >   < / t r >  < t r >   < t d > 1 6 < / t d >   < t d > S i m p l y   M a c < / t d >   < t d   c l a s s = " L o w T e m p " > 5 4 < / t d >   < t d   c l a s s = " M e d R a i n " > 4 5 < / t d >   < / t r >  < t r >   < t d > 1 7 < / t d >   < t d > S i m p l y   M a c < / t d >   < t d   c l a s s = " L o w T e m p " > 5 3 < / t d >   < t d   c l a s s = " M e d R a i n " > 3 7 < / t d >   < / t r >  < t r >   < t d > 1 8 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 3 < / t d >   < t d   c l a s s = " L o w R a i n " > 1 0 < / t d >   < / t r >  < t r >   < t d > 1 9 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 2 < / t d >   < t d   c l a s s = " L o w R a i n " > 1 1 < / t d >   < / t r >  < t r >   < t d > 2 0 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 1 < / t d >   < t d   c l a s s = " L o w R a i n " > 8 < / t d >   < / t r >  < t r >   < t d > 2 1 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 5 0 < / t d >   < t d   c l a s s = " L o w R a i n " > 2 1 < / t d >   < / t r >  < t r >   < t d > 2 2 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 9 < / t d >   < t d   c l a s s = " L o w R a i n " > 1 9 < / t d >   < / t r >  < t r   c l a s s = " L a s t H o u r " >   < t d > 2 3 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 9 < / t d >   < t d   c l a s s = " L o w R a i n " > 2 0 < / t d >   < / t r >  < t r >   < t d > < / t d >   < t d > P a r e n t s   i n   P o r t l a n d < / t d >   < t d > < / t d >   < t d > < / t d >   < / t r >  < t r >   < t d > 0 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 8 < / t d >   < t d   c l a s s = " L o w R a i n " > 1 3 < / t d >   < / t r >  < t r >   < t d > 1 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 7 < / t d >   < t d   c l a s s = " L o w R a i n " > 1 4 < / t d >   < / t r >  < t r >   < t d > 2 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 6 < / t d >   < t d   c l a s s = " L o w R a i n " > 1 5 < / t d >   < / t r >  < t r >   < t d > 3 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 6 < / t d >   < t d   c l a s s = " L o w R a i n " > 1 0 < / t d >   < / t r >  < t r >   < t d > 4 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 5 < / t d >   < t d   c l a s s = " L o w R a i n " > 1 2 < / t d >   < / t r >  < t r >   < t d > 5 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 5 < / t d >   < t d   c l a s s = " L o w R a i n " > 8 < / t d >   < / t r >  < t r >   < t d > 6 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 5 < / t d >   < t d   c l a s s = " L o w R a i n " > 8 < / t d >   < / t r >  < t r >   < t d > 7 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 5 < / t d >   < t d   c l a s s = " L o w R a i n " > 8 < / t d >   < / t r >  < t r >   < t d > 8 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 7 < / t d >   < t d   c l a s s = " L o w R a i n " > 7 < / t d >   < / t r >  < t r >   < t d > 9 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 5 0 < / t d >   < t d   c l a s s = " L o w R a i n " > 5 < / t d >   < / t r >  < t r >   < t d > 1 0 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 2 < / t d >   < t d   c l a s s = " L o w R a i n " > 2 < / t d >   < / t r >  < t r >   < t d > 1 1 < / t d >   < t d > B O T   3 3 0 L < / t d >   < t d   c l a s s = " L o w T e m p " > 5 4 < / t d >   < t d   c l a s s = " L o w R a i n " > 1 < / t d >   < / t r >  < t r >   < t d > 1 2 < / t d >   < t d > B O T   3 3 0 L < / t d >   < t d   c l a s s = " L o w T e m p " > 5 5 < / t d >   < t d   c l a s s = " L o w R a i n " > 1 < / t d >   < / t r >  < t r >   < t d > 1 3 < / t d >   < t d > B O T   3 3 0 L < / t d >   < t d   c l a s s = " L o w T e m p " > 5 6 < / t d >   < t d   c l a s s = " L o w R a i n " > 1 < / t d >   < / t r >  < t r >   < t d > 1 4 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 7 < / t d >   < t d   c l a s s = " L o w R a i n " > 1 < / t d >   < / t r >  < t r >   < t d > 1 5 < / t d >   < t d > B O T   3 3 0 < / t d >   < t d   c l a s s = " L o w T e m p " > 5 6 < / t d >   < t d   c l a s s = " L o w R a i n " > 1 < / t d >   < / t r >  < t r >   < t d > 1 6 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 6 < / t d >   < t d   c l a s s = " L o w R a i n " > 1 < / t d >   < / t r >  < t r >   < t d > 1 7 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 5 < / t d >   < t d   c l a s s = " L o w R a i n " > 1 < / t d >   < / t r >  < t r >   < t d > 1 8 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 3 < / t d >   < t d   c l a s s = " L o w R a i n " > 2 < / t d >   < / t r >  < t r >   < t d > 1 9 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 2 < / t d >   < t d   c l a s s = " L o w R a i n " > 4 < / t d >   < / t r >  < t r >   < t d > 2 0 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 5 0 < / t d >   < t d   c l a s s = " L o w R a i n " > 6 < / t d >   < / t r >  < t r >   < t d > 2 1 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 8 < / t d >   < t d   c l a s s = " L o w R a i n " > 7 < / t d >   < / t r >  < t r >   < t d > 2 2 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 7 < / t d >   < t d   c l a s s = " L o w R a i n " > 8 < / t d >   < / t r >  < t r   c l a s s = " L a s t H o u r " >   < t d > 2 3 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 5 < / t d >   < t d   c l a s s = " L o w R a i n " > 8 < / t d >   < / t r >  < t r >   < t d > 0 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 5 < / t d >   < t d   c l a s s = " L o w R a i n " > 8 < / t d >   < / t r >  < t r >   < t d > 1 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 4 < / t d >   < t d   c l a s s = " L o w R a i n " > 8 < / t d >   < / t r >  < t r >   < t d > 2 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 4 < / t d >   < t d   c l a s s = " L o w R a i n " > 8 < / t d >   < / t r >  < t r >   < t d > 3 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 3 < / t d >   < t d   c l a s s = " L o w R a i n " > 8 < / t d >   < / t r >  < t r >   < t d > 4 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 2 < / t d >   < t d   c l a s s = " L o w R a i n " > 8 < / t d >   < / t r >  < t r >   < t d > 5 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 2 < / t d >   < t d   c l a s s = " L o w R a i n " > 8 < / t d >   < / t r >  < t r >   < t d > 6 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 3 < / t d >   < t d   c l a s s = " L o w R a i n " > 7 < / t d >   < / t r >  < t r >   < t d > 7 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 5 < / t d >   < t d   c l a s s = " L o w R a i n " > 5 < / t d >   < / t r >  < t r >   < t d > 8 < / t d >   < t d > R e s t a r t   P h o n e < / t d >   < t d   c l a s s = " L o w e r T e m p " > 4 7 < / t d >   < t d   c l a s s = " L o w R a i n " > 4 < / t d >   < / t r >  < t r >   < t d > 9 < / t d >   < t d > < / t d >   < t d   c l a s s = " L o w T e m p " > 5 1 < / t d >   < t d   c l a s s = " L o w R a i n " > 2 < / t d >   < / t r >  < t r >   < t d > 1 0 < / t d >   < t d > S i m p l y   M a c < / t d >   < t d   c l a s s = " L o w T e m p " > 5 3 < / t d >   < t d   c l a s s = " L o w R a i n " > 1 < / t d >   < / t r >  < t r >   < t d > 1 1 < / t d >   < t d > S i m p l y   M a c < / t d >   < t d   c l a s s = " L o w T e m p " > 5 5 < / t d >   < t d   c l a s s = " L o w R a i n " > 0 < / t d >   < / t r >  < t r >   < t d > 1 2 < / t d >   < t d > S i m p l y   M a c < / t d >   < t d   c l a s s = " L o w T e m p " > 5 7 < / t d >   < t d   c l a s s = " L o w R a i n " > 0 < / t d >   < / t r >  < t r >   < t d > 1 3 < / t d >   < t d > S i m p l y   M a c < / t d >   < t d   c l a s s = " L o w T e m p " > 5 8 < / t d >   < t d   c l a s s = " L o w R a i n " > 0 < / t d >   < / t r >  < t r >   < t d > 1 4 < / t d >   < t d > S i m p l y   M a c < / t d >   < t d   c l a s s = " L o w T e m p " > 5 9 < / t d >   < t d   c l a s s = " L o w R a i n " > 0 < / t d >   < / t r >  < t r >   < t d > 1 5 < / t d >   < t d > S i m p l y   M a c < / t d >   < t d   c l a s s = " L o w T e m p " > 5 9 < / t d >   < t d   c l a s s = " L o w R a i n " > 0 < / t d >   < / t r >    < / t a b l e >   < / b o d y >   < / h t m l > � � � M a c i n t o s h   H D : U s e r s : c o l i n d u r k i n : D o c u m e n t s : G e e k T o o l : W e a t h e r C h a n g e . s c p t� � 0 C h a n c e   o f   R a i n   A f t e r n o o n� � z M a c i n t o s h   H D : U s e r s : c o l i n d u r k i n : D o c u m e n t s : G e e k T o o l : C a l I n f o . t x t� �w�w    �v�u�v  �u  � �t�t 	   !"#$%�s�r�q�p�o�n�m �l&�l &  '()*�k�j�i�h�g�f�e�d�c�b�a�`' �++ F T u e s d a y ,   A p r i l   2 5 ,   2 0 1 7   a t   1 5 : 0 0 : 0 0( �,,  1 5 : 0 0 : 0 0) �--  1 6 : 0 0 : 0 0* �..  B O T   3 3 0�k  �j  �i  �h  �g  �f  �e  �d  �c  �b  �a  �`   �_/�_ /  0123�^�]�\�[�Z�Y�X�W�V�U�T�S0 �44 J W e d n e s d a y ,   A p r i l   2 6 ,   2 0 1 7   a t   1 0 : 0 0 : 0 01 �55  1 0 : 0 0 : 0 02 �66  1 8 : 0 0 : 0 03 �77  S i m p l y   M a c�^  �]  �\  �[  �Z  �Y  �X  �W  �V  �U  �T  �S   �R8�R 8  9:;<�Q�P�O�N�M�L�K�J�I�H�G�F9 �== J W e d n e s d a y ,   A p r i l   2 6 ,   2 0 1 7   a t   1 1 : 0 0 : 0 0: �>>  1 1 : 0 0 : 0 0; �??  1 2 : 0 0 : 0 0< �@@  S o c c e r   P E�Q  �P  �O  �N  �M  �L  �K  �J  �I  �H  �G  �F    �EA�E A  BC�D�C�B�A�@�?�>�=�<�;�:�9�8�7B �DD H T h u r s d a y ,   A p r i l   2 7 ,   2 0 1 7   a t   0 0 : 0 0 : 0 0C �EE 8 A l l   D a y :   P a r e n t s   i n   P o r t l a n d�D  �C  �B  �A  �@  �?  �>  �=  �<  �;  �:  �9  �8  �7  ! �6F�6 F  GHIJ�5�4�3�2�1�0�/�.�-�,�+�*G �KK H T h u r s d a y ,   A p r i l   2 7 ,   2 0 1 7   a t   1 1 : 0 0 : 0 0H �LL  1 1 : 0 0 : 0 0I �MM  1 4 : 0 0 : 0 0J �NN  B O T   3 3 0 L�5  �4  �3  �2  �1  �0  �/  �.  �-  �,  �+  �*  " �)O�) O  PQRS�(�'�&�%�$�#�"�!� ���P �TT H T h u r s d a y ,   A p r i l   2 7 ,   2 0 1 7   a t   1 5 : 0 0 : 0 0Q �UU  1 5 : 0 0 : 0 0R �VV  1 6 : 0 0 : 0 0S �WW  B O T   3 3 0�(  �'  �&  �%  �$  �#  �"  �!  �   �  �  �  # �X� X  YZ[\������������Y �]] D F r i d a y ,   A p r i l   2 8 ,   2 0 1 7   a t   0 8 : 0 0 : 0 0Z �^^  0 8 : 0 0 : 0 0[ �__  0 9 : 0 0 : 0 0\ �``  R e s t a r t   P h o n e�  �  �  �  �  �  �  �  �  �  �  �  $ �a� a  bcde�����
�	������b �ff D F r i d a y ,   A p r i l   2 8 ,   2 0 1 7   a t   1 0 : 0 0 : 0 0c �gg  1 0 : 0 0 : 0 0d �hh  1 8 : 0 0 : 0 0e �ii  S i m p l y   M a c�  �  �  �  �
  �	  �  �  �  �  �  �  % �j� j  klmn�� ��������������������k �oo D F r i d a y ,   A p r i l   2 8 ,   2 0 1 7   a t   1 8 : 0 0 : 0 0l �pp  1 8 : 0 0 : 0 0m �qq  1 9 : 0 0 : 0 0n �rr  V a c u u m�  �   ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  �s  �r  �q  �p  �o  �n  �m  � ��s�� s  %
�+ boovtrue
�* boovtrue� ��t�� t  $��������������������������������  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  
�) boovtrue�( ��'  �&  �%  �$  �#  �"  �!  �   ascr  ��ޭ