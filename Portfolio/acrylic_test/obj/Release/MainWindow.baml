   M S B A M L   `   `   `  ���� D  @Portfolio, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Portfolio.PagesPortfolio.Pages      Portfolio.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     2controlsclr-namespace:Portfolio.Pages     -     � Title$  	Portfolio��$	��630��$	��830��$
��26.5��$	��186�����	#9Affffff � AllowsTransparency . $��1q����	#FF0078D7 � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=� � 	Resources    ControlCloseNormalColor  ControlCloseMouseOverColor  ControlClosePressedColor  ControlNormalColor  ControlMouseOverColor  ControlPressedColor  DisabledControlColor  DisabledForegroundColor  ButtonNormalColor 	 ButtonBorderMouseOverColor 
 ButtonPressedColor  ButtonTextDisableColor  NavPaneButtonNormal  NavPaneButtonMouseOver  NavPaneButtonPressed �� 
TargetType �� Property �� Value �� 
TargetType	 ��Name
 �� Triggers P� Property P� Value �� 
TargetName  ProgressBar.Progress �� Color  ProgressBar.Background  ProgressBar.Border  ProgressBarStyle1 �Name'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� RepeatBehavior �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value8  2System.Windows.Media.Animation.EasingPointKeyFrame $� KeyTime $� Value ��Name �� RadiusX �� RadiusY J� RenderTransformOrigin �� Angle��%�  &	        &	      &	 &     &	 9     &	 L     &	 _     &	 r     &	 �     &	 �     &		 �     &	
 �     &	 �     &	 �     &	 �     &	 
    '��     &	 �    &	 �    &	 �    &	 �    7  7  7  ��	#FFFFFFFF����	#FFE31123����	#AAE81123����	#FFFFFFFF����	#11000000����	#33000000����	#FF0078D7����	#FFFFFFFF����	#00FFFFFF����	#a9ca5010����	#a9f7630c����	#FF7A7A7A����	#00FFFFFF����	#33000000����	#66000000���� " ��.���  � �� �� " ��.R�� .+��� $��Border��$��-2,0,0,0q�
������ 
������ $��1,1,1,1q�._��� $	 ContentSite��$��Center=�$��Center=�$��Header��$��12,10,12,10q���. 
 P�  �@��
IsSelected . . ���  �@K�ZIndex$	 100���� $ Border�� � ��
 ���� �� $ Border�� � ��$ 4,0,0,0q��� $ Border�� � �� �	#FF0078D7P�  � {� .  . ��� $ Border�� � ��
 ���� �� $ Border�� � ��
 ���� ��  � ��
 ���� P�  �@J�IsMouseOver . . ��� $ Border�� � �� �	#11000000P�  �@J�IsMouseOver .  �� $ 	#FF06B025���� $ 	#FFE6E6E6���� $ 	#FFBCBCBC���� " �.���  � ��8   ��  � ��8  ��  � ��8  ��  � ��$ 1q���  � �� �� " �.R�� $ TemplateRoot��   CommonStates��.   Determinate��  Indeterminate��. �� $ Forever��.��U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ 	Animation��.\�  $ 0��$
 0.25Q�  $ 0:0:1��$
 0.25Q�  $ 0:0:2��$
 0.25Q�*� $' !(UIElement.RenderTransformOrigin)�$ 	Animation��.'�  $ 0��$ -0.5,0.5&�  $ 0:0:1��$ 0.5,0.5&�  $ 0:0:2��$ 1.5,0.5&�.+��� #��z��#��z��#��z���� $ 
PART_Track��� $ PART_Indicator��}�. $
��Left=�.+��� $ 	Indicator��#��z��$ 20��$ 20���� $ 	Animation��#��z��$ 0.5,0.5&�$ 20��$ 20��z�V� .~��� �� �� T� 
 P�  �@�Orientation$ Vertical=�. ��� $ TemplateRoot�� �@�LayoutTransform �� $	 -90Q�P�  �@�IsIndeterminate . . ��� $ 	Indicator�� � y�$ 	Collapsed=�.��� -   $ RootGrid�� � RowDefinitions �� $��25 ��� $	��22* �  � ColumnDefinitions  �� $	��184 ��� -   ! ��Name$! RootGridSecondaryPaneCol��$��0 ��� -   $! MainPaneColumn��$
��459* �.+��� -   $ AppBarSecondaryNavPane��$��1��$��0�����	#4DFFFFFF$��0��$
��Left=�$��Stretch=�]� -   $��2��$��0�����	#FFFFFFFF$��2��.+��� -   " ��Name$" CloseButton��$��Right=�
������ 
������ $��35��.���� .+��� 
���   �	# �� X1$# -5��	$ �� X2$$ 5��	% �� Y1$% -5��	& �� Y2$& 5��$��1���� 
���   �$# -5��$$ 5��$% 5��$& -5��$��1������ " ��.���  � �� �� " ��.R��� ' ��Name$' Border��#��z������  �� ( �� A$( 0��) �� R$) 0��* �� G$* 0��+ �� B$+ 0��   CommonStates��,   Transitions, %  System.Windows.VisualTransition  -   GeneratedDuration$- 0:0:0D�  $- 0D�	.   To$. Pressed��.   
Normal��  	MouseOver��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�8  2System.Windows.Media.Animation.EasingColorKeyFrame  / �� KeyTime$/ 0��0 �� Value#0 [   Pressed��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $/ 0��#0 [   Disabled��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $/ 0��#0 [ �� $4 .(TextBlock.Foreground).(SolidColorBrush.Color)�$ Border��.g�  $/ 0��#0 [ ._��� $��2q�$��Center=�$��Center=���. �� -   $" MaximizeButton��$��Right=�
������ 
������ $��35��$y�	Collapsed=�.���� .+��� 
���   �$# -5��$$ -5��$% -5��$& 5��$��1���� 
���   �$# 5��$$ 5��$% 5��$& -5��$��1���� 
���   �$
# -5.5��$	$ 5.5��$% -5��$& -5��$��1���� 
���   �$
# -5.5��$	$ 5.5��$% 5��$& 5��$��1������ " ��.���  � �� �� " ��.R��� $' Border��#��z������  �� $( 0��$) 0��$* 0��$+ 0��   CommonStates��,   $- 0:0:0D�  $- 0D�$. Pressed��.   
Normal��  	MouseOver��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $/ 0��#0 [   Pressed��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $/ 0��#0 [   Disabled��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $/ 0��#0 [ �� $4 .(TextBlock.Foreground).(SolidColorBrush.Color)�$ Border��.g�  $/ 0��#0 [ ._��� $��2q�$��Center=�$��Center=���. �� -	   $" MinimizeButton��$��Right=�
������ 
������ $��35��.���� .+��� 
���   �$# -7��$$ 7��$��1������ " ��.���  � �� �� " ��.R��� $' Border��#��z������  �� $( 0��$) 0��$* 0��$+ 0��   CommonStates��,   $- 0:0:0D�  $- 0D�$. Pressed��.   
Normal��  	MouseOver��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $/ 0��#0 [   Pressed��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $/ 0��#0 [   Disabled��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $/ 0��#0 [ �� $4 .(TextBlock.Foreground).(SolidColorBrush.Color)�$ Border��.g�  $/ 0��#0 [ ._��� $��2q�$��Center=�$��Center=���. �� $
��Left=�$��Center=�
���   �$��14(�$��10,0,0,0q�	Portfolio�� $��2��$��1�����	#FFFFFFFF�� -
   $��0��$��1��$��3��$��Stretch=�$��Stretch=�1 �� TabStripPlacement$
1 Left=�
������ }�. 
������ .@��� -   2 ��Name$2 	TabItemCV�����	#00000000
������ $	��181����]� $
��Left=�.+��� $
��Left=�$��icon/icons8-Resume.png��$��24��$��24��$
��left=��� $
��Left=�$��Curriculum Vitae��$��14(�$
��left=�$��Center=�$��6,0,6,0q��� -   $��Right=�
������ 
������ .���� -   3 ��Name$#3 OpenCvSecondaryPaneButtonIcon��$��icon/icons8-Forward.png��$��16��$��16������ " ��.���  � �� �� " ��.R��� $' Border��#��z������  �� $( 0��$) 0��$* 0��$+ 0��   CommonStates��,   $- 0:0:0.5D�  $- 0D�$. Pressed��.   
Normal��  	MouseOver��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $/ 0��#0 [   Pressed��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $/ 0��#0 [   Disabled��. �� .���� $0 *(Panel.Background).(SolidColorBrush.Color)�$ Border��.g�  $/ 0��#0 [ �� $4 .(TextBlock.Foreground).(SolidColorBrush.Color)�$ Border��.g�  $/ 0��#0 [ ._��� $��2q�$��Center=�$��Center=���. .��   Portfolio.Pages.CVPageUC  -   4  Name$4 PageCV��$��	-2,-3,0,0q��� -   $2 TabItemProjects�����	#00000000
������ $
��Left=�$	��181������ $��Projets��$��14(�$
��left=��� -   $ SplashScreen��$��0��$��0��$��3��$��2�����	#FF0078D7$y�Visible=��� -   5 ��Name$5 WelcomeText��$y�Visible=�$��1��$��1��$��2��$��Segoe UI Light)�$��72(�
�������$��Bonjour��$��112,91,296,412q�$��Center=�$��Center=�$	��100��$	��236���� -   $5 ExplanationText��$y�Visible=�$��0��$��1��$��3��$��Segoe UI Light)�$��35(�
�������$,��&Bienvenue dans l'application Portfolio��$��141,191,140,350q�$��Center=�$��Center=�$��62��$	��547���� -   $5 ExplorationText��$y�Visible=�$��0��$��1��$��3��$��Segoe UI Light)�$��28(�
�������$2��,Nous mettons en place quelques éléments...��$��156,495,155,61q�$��Center=�$��Center=�$��47��$	��517��� -   6 �Name$6 InderminatePB��$��80,361,264,226q�$y�Visible=�$��1��$��1��$��2��$��Center=�$��Center=�$��2��$	��300��
�������7 � IsIndeterminate7 . ���	#00000000���	#00000000#���  