﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Runtime.InteropServices;
using System.Windows.Interop;
using System.Windows.Media.Animation;
using System.Threading;
using Portfolio.Pages;
using System.Diagnostics;

namespace Portfolio
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    internal enum AccentState
    {
        ACCENT_DISABLED = 0,
        ACCENT_ENABLE_GRADIENT = 1,
        ACCENT_ENABLE_TRANSPARENTGRADIENT = 2,
        ACCENT_ENABLE_BLURBEHIND = 3,
        ACCENT_INVALID_STATE = 4
    }



    [StructLayout(LayoutKind.Sequential)]
    internal struct AccentPolicy
    {
        public AccentState AccentState;
        public int AccentFlags;
        public int GradientColor;
        public int AnimationId;
    }



    [StructLayout(LayoutKind.Sequential)]

    internal struct WindowCompositionAttributeData
    {
        public WindowCompositionAttribute Attribute;
        public IntPtr Data;
        public int SizeOfData;
    }



    internal enum WindowCompositionAttribute
    {
        // ...
        WCA_ACCENT_POLICY = 19
        // ...
    }

    public partial class MainWindow : Window
    {        
        [DllImport("user32.dll")]
        internal static extern int SetWindowCompositionAttribute(IntPtr hwnd, ref WindowCompositionAttributeData data);

        private bool _secondaryCvPaneOpened = false;

        public MainWindow()
        {
            InitializeComponent();
            SplashScreenVisual();
            
        }

        protected override void OnActivated(EventArgs e)
        {
            AppBarSecondaryNavPane.Fill = new SolidColorBrush(Color.FromArgb(77, 255, 255, 255));
            PageCV.CVSecondaryNavPane.Fill = new SolidColorBrush(Color.FromArgb(77, 255, 255, 255));
            TabItemCV.Background = new SolidColorBrush(Color.FromArgb(0, 0, 0, 0));
            TabItemProjects.Background = new SolidColorBrush(Color.FromArgb(0, 0, 0, 0));
            this.Background = new SolidColorBrush(Color.FromArgb(154, 255, 255, 255));
        }

        protected override void OnDeactivated(EventArgs e)
        {
            AppBarSecondaryNavPane.Fill = new SolidColorBrush(Color.FromArgb(255, 230, 230, 230));
            PageCV.CVSecondaryNavPane.Fill = new SolidColorBrush(Color.FromArgb(255, 230, 230, 230));
            TabItemCV.Background = new SolidColorBrush(Color.FromArgb(0, 0, 0, 0));
            TabItemProjects.Background = new SolidColorBrush(Color.FromArgb(0, 0, 0, 0));
            this.Background = new SolidColorBrush(Color.FromArgb(255, 255, 255, 255));
        }

        private void SplashScreenVisual()
        {
            var animation = new DoubleAnimation
            {
                To = 0,
                BeginTime = TimeSpan.FromSeconds(4),
                Duration = TimeSpan.FromMilliseconds(500),
                FillBehavior = FillBehavior.Stop
            };

            animation.Completed += (s, a) => 
                {
                    SplashScreen.Visibility = System.Windows.Visibility.Hidden;
                    WelcomeText.Visibility = System.Windows.Visibility.Hidden;
                    ExplanationText.Visibility = System.Windows.Visibility.Hidden;
                    ExplorationText.Visibility = System.Windows.Visibility.Hidden;
                    InderminatePB.IsIndeterminate = false;
                    InderminatePB.Visibility = System.Windows.Visibility.Hidden;
                    this.ResizeMode = System.Windows.ResizeMode.CanResizeWithGrip;
                };

            SplashScreen.BeginAnimation(UIElement.OpacityProperty, animation);
        }

        private void Window_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            PageCV.InitializeLineLengthInCV();
            PageCV.InitializeLineLengthInEducation();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            EnableBlur();
            PageCV.InitializeLineLengthInCV();
            PageCV.InitializeLineLengthInEducation();
        }

        internal void EnableBlur()
        {
            var windowHelper = new WindowInteropHelper(this);
            var accent = new AccentPolicy();
            accent.AccentState = AccentState.ACCENT_ENABLE_BLURBEHIND;

            var accentStructSize = Marshal.SizeOf(accent);
            var accentPtr = Marshal.AllocHGlobal(accentStructSize);

            Marshal.StructureToPtr(accent, accentPtr, false);

            var data = new WindowCompositionAttributeData();
            data.Attribute = WindowCompositionAttribute.WCA_ACCENT_POLICY;
            data.SizeOfData = accentStructSize;
            data.Data = accentPtr;

            SetWindowCompositionAttribute(windowHelper.Handle, ref data);
            Marshal.FreeHGlobal(accentPtr);
        }

        /// <summary>
        /// TitleBar_MouseDown - Drag if single-click, resize if double-click
        /// </summary>
        private void TitleBar_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                Application.Current.MainWindow.DragMove();
        }

        /// <summary>
        /// CloseButton_Clicked
        /// </summary>
        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        /// <summary>
        /// Minimized Button_Clicked
        /// </summary>
        private void MinimizeButton_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        /// <summary>
        /// Minimized Button_Clicked
        /// </summary>
        private void MaximizeButton_Click(object sender, RoutedEventArgs e)
        {
            if (this.WindowState == System.Windows.WindowState.Normal)
                this.WindowState = WindowState.Maximized;
            else if (this.WindowState == System.Windows.WindowState.Maximized)
                this.WindowState = System.Windows.WindowState.Normal;
        }

        private void TabControl_SelectionChanged(object sender, RoutedEventArgs e)
        {
            if (TabItemCV != null && TabItemCV.IsSelected)
            {
                PageCV.CvScrollViewer.ScrollToTop();
                ChangeProgressBarValueOnLoad(PageCV.CppProgressbar, 75);
                ChangeProgressBarValueOnLoad(PageCV.CProgressbar, 75);
                ChangeProgressBarValueOnLoad(PageCV.CsProgressbar, 50);
                ChangeProgressBarValueOnLoad(PageCV.MatlabProgressbar, 50);
                ChangeProgressBarValueOnLoad(PageCV.PerlProgressbar, 40);
                ChangeProgressBarValueOnLoad(PageCV.JavaProgressbar, 30);
                ChangeProgressBarValueOnLoad(PageCV.VbaProgressbar, 25);
            }
            if (TabItemProjects != null && TabItemProjects.IsSelected)
            {
                ChangeProgressBarValueOnUnload(PageCV.CppProgressbar, 0);
                ChangeProgressBarValueOnUnload(PageCV.CProgressbar, 0);
                ChangeProgressBarValueOnUnload(PageCV.CsProgressbar, 0);
                ChangeProgressBarValueOnUnload(PageCV.MatlabProgressbar, 0);
                ChangeProgressBarValueOnUnload(PageCV.PerlProgressbar, 0);
                ChangeProgressBarValueOnUnload(PageCV.JavaProgressbar, 0);
                ChangeProgressBarValueOnUnload(PageCV.VbaProgressbar, 0);
                _secondaryCvPaneOpened = CloseOpenedPanes(_secondaryCvPaneOpened, PageCV.CVSecondaryNavPane, OpenCvSecondaryPaneButtonIcon, PageCV.SecondaryNavPaneStackPanel);
            }
        }

        private void ChangeProgressBarValueOnLoad(ProgressBar bar, int value)
        {
            Duration duration = new Duration(TimeSpan.FromSeconds(1));
            DoubleAnimation doubleanimation = new DoubleAnimation(value, duration);
            bar.BeginAnimation(ProgressBar.ValueProperty, doubleanimation);
        }

        private void ChangeProgressBarValueOnUnload(ProgressBar bar, int value)
        {
            Duration duration = new Duration(TimeSpan.FromMilliseconds(1));
            DoubleAnimation doubleanimation = new DoubleAnimation(value, duration);
            bar.BeginAnimation(ProgressBar.ValueProperty, doubleanimation);
        }

        private bool CloseOpenedPanes(bool paneOpened, Rectangle SecondaryNavPaneRectangle, Image ButtonIcon, StackPanel panel)
        {
            if (paneOpened)
            {
                PageCV.SecondaryNavPaneColumn.Width = new GridLength(0);
                RootGridSecondaryPaneCol.Width = new GridLength(0);

                Duration duration = new Duration(TimeSpan.FromMilliseconds(100));
                DoubleAnimation doubleanimation = new DoubleAnimation(0, duration);
                DoubleAnimation windowAnimation = new DoubleAnimation(this.Width - 185, duration);

                SecondaryNavPaneRectangle.BeginAnimation(Rectangle.WidthProperty, doubleanimation);
                this.BeginAnimation(MainWindow.WidthProperty, windowAnimation);
                AppBarSecondaryNavPane.BeginAnimation(Rectangle.WidthProperty, doubleanimation);
                panel.BeginAnimation(StackPanel.WidthProperty, doubleanimation);

                ButtonIcon.Source = new BitmapImage(new Uri(@"icon/icons8-Forward.png", UriKind.Relative));

                paneOpened = false;
            }
            return paneOpened;
        }

        private void OpenSecondaryCVNavPaneButton_Click(object sender, RoutedEventArgs e)
        {
            if (TabItemCV.IsSelected)
            {
                if (!_secondaryCvPaneOpened)
                {
                    PageCV.SecondaryNavPaneColumn.Width = new GridLength(185);
                    RootGridSecondaryPaneCol.Width = new GridLength(185);

                    Duration duration = new Duration(TimeSpan.FromMilliseconds(100));
                    DoubleAnimation doubleanimation = new DoubleAnimation(185, duration);
                    DoubleAnimation windowAnimation = new DoubleAnimation(this.Width+185,duration);

                    PageCV.CVSecondaryNavPane.BeginAnimation(Rectangle.WidthProperty, doubleanimation);
                    this.BeginAnimation(MainWindow.WidthProperty, windowAnimation);
                    AppBarSecondaryNavPane.BeginAnimation(Rectangle.WidthProperty, doubleanimation);
                    PageCV.SecondaryNavPaneStackPanel.BeginAnimation(StackPanel.WidthProperty, doubleanimation);

                    OpenCvSecondaryPaneButtonIcon.Source = new BitmapImage(new Uri(@"icon/icons8-Back.png", UriKind.Relative));

                    PageCV.CvScrollViewer.ScrollToTop();

                    _secondaryCvPaneOpened = true;

                }
                else
                {
                    PageCV.SecondaryNavPaneColumn.Width = new GridLength(0);
                    RootGridSecondaryPaneCol.Width = new GridLength(0);

                    Duration duration = new Duration(TimeSpan.FromMilliseconds(100));
                    DoubleAnimation doubleanimation = new DoubleAnimation(0, duration);
                    DoubleAnimation windowAnimation = new DoubleAnimation(this.Width - 185, duration);

                    PageCV.CVSecondaryNavPane.BeginAnimation(Rectangle.WidthProperty, doubleanimation);
                    this.BeginAnimation(MainWindow.WidthProperty, windowAnimation);
                    AppBarSecondaryNavPane.BeginAnimation(Rectangle.WidthProperty, doubleanimation);
                    PageCV.SecondaryNavPaneStackPanel.BeginAnimation(StackPanel.WidthProperty, doubleanimation);

                    OpenCvSecondaryPaneButtonIcon.Source = new BitmapImage(new Uri(@"icon/icons8-Forward.png", UriKind.Relative));

                    _secondaryCvPaneOpened = false;
                }
            }
        }

    }
}
