   M S B A M L   `   `   `  ����   	Portfolio    Portfolio.NewCvWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     -     � Title$  NewCv��$	��700��$	��830��$
��26.5��$	��186�����	#9Affffff � AllowsTransparency . $��1q����	#FF0078D7 � WindowStyle$
 None=� � 
ResizeMode$ CanResizeWithGrip=� � WindowStartupLocation$ CenterScreen=� � 	Resources    ControlCloseNormalColor  ControlCloseMouseOverColor  ControlClosePressedColor  ControlNormalColor  ControlMouseOverColor  ControlPressedColor  DisabledControlColor  DisabledForegroundColor  NavPaneButtonNormal 	 NavPaneButtonMouseOver 
 NavPaneButtonPressed  AcrylicButtonStyle �� 
TargetType �� Property �� Value	 �� 
TargetType
 ��Name �� Color �� A �� R �� G �� B'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   Transitions%  System.Windows.VisualTransition   GeneratedDuration	   To   States   System.Windows.VisualState   
Storyboard �� TargetProperty �� 
TargetName8  2System.Windows.Media.Animation.EasingColorKeyFrame �� KeyTime �� Value � RowDefinitions J� Effect3  -System.Windows.Media.Effects.DropShadowEffect   
BlurRadius   Color   ShadowDepth��%u  &	        &	      &	 &     &	 9     &	 L     &	 _     &	 r     &	 �     &	 �     &		 �     &	
 �     &	 �     7 	 7 
 7  7  '�� �    ��	#FFFFFFFF����	#FFE31123����	#AAE81123����	#FFFFFFFF����	#11000000����	#33000000����	#FF0078D7����	#FFFFFFFF����	#00FFFFFF����	#33000000����	#66000000���� " ��.���  � �� �� "	 ��.R��� $
 Border��#��z������  �� $ 0��$ 0��$ 0��$ 0��   CommonStates��   $ 0:0:0.5D�  $ 0D�$ Pressed��.   
Normal��  	MouseOver��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $ 0��8     Pressed��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $ 0��8    Disabled��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $ 0��8  �� $4 .(TextBlock.Foreground).(SolidColorBrush.Color)�$ Border��.g�  $ 0��8  ._��� $��2q�$��Center=�$��Center=���. �� " ��.���  � �� �� "	 ��.R��  �� $
��Auto ��� $��* �.+��� $��0��$��1q����#0078d7���#0078d7   $ 5Q�$ #c0c0c0��$ 4Q�._��� 
�������.���� $��0q�$��Header����. �� $��1��$��1,0,1,1q�
����������#0078d7._��� $��4q�   $ 5Q�$ #c0c0c0��$ 4Q�.���  �� $��95 ��� .+�]� -    ]�Name$ AppBarDockPanel��$��0�����	#00FFFFFF.+�]� $	��Top=�$��25��.+��� -     ��Name$  CloseButton��$��Right=�
������ 
������ $��35��.���� .+��� 
���   �	! �� X1$! -5��	" �� X2$" 5��	# �� Y1$# -5��	$ �� Y2$$ 5��$��1���� 
���   �$! -5��$" 5��$# 5��$$ -5��$��1������ " ��.���  � �� �� "	 ��.R��� $
 Border��#��z������  �� $ 0��$ 0��$ 0��$ 0��   CommonStates��   $ 0:0:0D�  $ 0D�$ Pressed��.   
Normal��  	MouseOver��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $ 0��# [   Pressed��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $ 0��# [   Disabled��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $ 0��# [ �� $4 .(TextBlock.Foreground).(SolidColorBrush.Color)�$ Border��.g�  $ 0��# [ ._��� $��2q�$��Center=�$��Center=���. �� -   $  MaximizeButton��$��Right=�
������ 
������ $��35��$y�	Collapsed=�.���� .+��� 
���   �$! -5��$" -5��$# -5��$$ 5��$��1���� 
���   �$! 5��$" 5��$# 5��$$ -5��$��1���� 
���   �$
! -5.5��$	" 5.5��$# -5��$$ -5��$��1���� 
���   �$
! -5.5��$	" 5.5��$# 5��$$ 5��$��1������ " ��.���  � �� �� "	 ��.R��� $
 Border��#��z������  �� $ 0��$ 0��$ 0��$ 0��   CommonStates��   $ 0:0:0D�  $ 0D�$ Pressed��.   
Normal��  	MouseOver��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $ 0��# [   Pressed��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $ 0��# [   Disabled��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $ 0��# [ �� $4 .(TextBlock.Foreground).(SolidColorBrush.Color)�$ Border��.g�  $ 0��# [ ._��� $��2q�$��Center=�$��Center=���. �� -   $  MinimizeButton��$��Right=�
������ 
������ $��35��.���� .+��� 
���   �$! -7��$" 7��$��1������ " ��.���  � �� �� "	 ��.R��� $
 Border��#��z������  �� $ 0��$ 0��$ 0��$ 0��   CommonStates��   $ 0:0:0D�  $ 0D�$ Pressed��.   
Normal��  	MouseOver��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $ 0��# [   Pressed��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $ 0��# [   Disabled��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $ 0��# [ �� $4 .(TextBlock.Foreground).(SolidColorBrush.Color)�$ Border��.g�  $ 0��# [ ._��� $��2q�$��Center=�$��Center=���. �� $
��Left=�$��Center=�
���   �$��14(�$��10,0,0,0q�
Nouveau CV]� $��Bottom=�.+��� $
��Left=�$��Bottom=�$
��Left=�$��Center=�#��[ $��50��$	��150��$��10q�.���� $��18(�$��Nouveau���� $��Right=�$��Bottom=�$��Right=�$��Center=�#��[ $��50��$	��150��$��10q�.���� $��18(�$��Sauvegarder���� $��0��$��2�����	#FFFFFFFF$��Visible=�.��]� .+��� -   % ��Name$% PersonnalInfoGroupBox��$	��Top=�$��Segoe UI)�$��18(�$��Informations Personnelles��$��10q�.���� $
��Test��