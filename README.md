# SwiftUI- Animation Examples

This repository contains a collection of SwiftUI animation examples implemented by Gul Eda Aydemir.
> https://www.linkedin.com/in/gul-eda-aydemir/

<p align="left">
  <img src="https://github.com/guledaaydemir/SwiftUI-Animations/blob/main/Animations/Assets.xcassets/logo_app.imageset/logo_app%20(1).png" alt="App Logo" width="120" height="120">
</p>

## Table of Contents

- [Introduction](#introduction)
- [Animations](#animations)
  - [🔺 Splash Screen Animation](#-splash-screen-animation)
  - [🔺 Button Press Effects](#-button-press-effects)
  - [🔺 Card Flip Animation](#-card-flip-animation)
  - [🔺 Parallax Scrolling](#-parallax-scrolling)
  - [🔺 Loading Indicator](#-loading-indicator)
  - [🔺 Modal Presentation](#-modal-presentation)
  - [🔺 Chart Animations](#-chart-animations)
  - [🔺 Walkthrough Animations](#-walkthrough-animations)
  - [🔺 Image Gallery Carousel](#-image-gallery-carousel)
  - [🔺 Pulsating Circle Animations](#-pulsating-circle-animations)
  - [🔺 Liquid Animation](#-liquid-animation)
  - [🔺 Bouncing Ball Animation](#-bouncing-ball-animation)
  - [🔺 Fading Transition Animation](#-fading-transition-animation)
  - [🔺 Waving Animation](#-waving-animation)
  - [🔺 Wave Interaction Card Animation](#-wave-interaction-card-animation)
- [Getting Started](#getting-started)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This project showcases various animation techniques implemented using SwiftUI. Each animation example is contained in its own SwiftUI view, providing a practical demonstration of how animations can be used to create engaging and visually appealing user interfaces.

## Animations

### 🔺 Splash Screen Animation

<img src="gifs/SplashScreenAnimation.gif" alt="Splash Screen Animation" width="150">


This animation demonstrates a dynamic splash screen that transitions smoothly into the main content of the app.

### 🔺 Button Press Effects

<img src="gifs/ButtonPressEffects.gif" alt="Button Press Effects" width="150">

Button press effects add visual feedback to user interactions, enhancing the overall user experience.

* **Scale & Shadow Effect:** The "Scale & Shadow" button scales down and applies a shadow effect when pressed. The button smoothly scales down and simultaneously adds a subtle shadow to mimic a pushed effect. When released, the button returns to its original size and shadow disappears.

* **Rotation Effect:** The "Rotation" button demonstrates a rotation animation effect. Upon pressing, the button smoothly rotates by 45 degrees using the .rotationEffect() modifier, adding a playful element to the interaction.

* **Press & Release Effect:** The "Press & Release" button showcases a scaling effect with shadow. When pressed, the button slightly scales down and adds a shadow to simulate depth. Upon release, the button returns to its original size and the shadow disappears.

* **Continuous Animation Effect:** The "Continuous Animation" button features a continuous scaling animation. It continuously alternates between full size and slightly smaller size, creating an engaging and dynamic effect.

* **Bounce Animation Effect:** The "Bounce Animation" button employs an interpolating spring animation. Upon pressing, the button scales down and then bounces back with a spring-like motion, providing a lively and interactive experience.

### 🔺 Card Flip Animation

<img src="gifs/CardFlipAnimation.gif" alt="Card Flip Animation" width="150">

The card flip animation showcases a classic flip effect, revealing the back of the card when tapped.

### 🔺 Parallax Scrolling

<img src="gifs/ParallaxScrolling.gif" alt="Parallax Scrolling" width="150">

Parallax scrolling creates a captivating visual effect where background elements move at different speeds, providing depth to the user interface.

### 🔺 Loading Indicator

<img src="gifs/LoadingIndicator.gif" alt="Loading Indicator" width="150">

Loading indicators provide users with feedback during data loading or processing tasks.

### 🔺 Modal Presentation

<img src="gifs/ModalPresentation.gif" alt="Modal Presentation" width="150">

Modal presentations overlay a new view on top of the current one, offering a focused context for specific actions or information.

### 🔺 Chart Animations

<img src="gifs/ChartAnimations.gif" alt="Chart Animations" width="150">

Animated charts bring data to life, making it easier for users to understand and interpret information.

### 🔺 Walkthrough Animations

<img src="gifs/WalkthroughAnimations.gif" alt="Walkthrough Animations" width="150">

Walkthrough animations guide users through a series of screens or steps, introducing app features or functionality.

### 🔺 Image Gallery Carousel

<img src="gifs/ImageGalleryCarousel.gif" alt="Image Gallery Carousel" width="150">

Image gallery carousels provide an interactive way to view and navigate through a collection of images.

### 🔺 Pulsating Circle Animations

<img src="gifs/PulsatingCircleAnimations.gif" alt="Pulsating Circle Animations" width="150">

Pulsating circle animations create dynamic and visually appealing effects using animated circles that change in size over time.

### 🔺 Liquid Animation

<img src="gifs/LiquidAnimation.gif" alt="Liquid Animation" width="150">

The `LiquidAnimationView` demonstrates an intriguing liquid-like animation effect using the [`Liquid`](https://github.com/maustinstar/liquid) package in SwiftUI. The animation creates a fluid motion with dynamic visual elements that respond to user interactions.

### 🔺 Bouncing Ball Animation

<img src="gifs/BouncingBallAnimation.gif" alt="Bouncing Ball Animation" width="150">

The "Bouncing Ball Animation" example showcases a dynamic animation of a ball bouncing vertically within a container. The animation uses SwiftUI's built-in physics-based animation to simulate the natural motion of a bouncing ball. As the ball reaches the bottom of the container, it smoothly reverses its direction and continues bouncing, creating a visually engaging and playful effect.

### 🔺 Fading Transition Animation

<img src="gifs/FadingTransitionAnimation.gif" alt="Fading Transition Animation" width="150">

The "Fading Transition Animation" example demonstrates a smooth transition between two views using opacity. When the "More Information" button is pressed, the view transitions from a compact state to an expanded state with fading animation. The transition adds a sense of depth and interactivity, enhancing the user experience. This animation effect can be particularly useful for revealing additional information or details within a limited space.

### 🔺 Waving Animation

<img src="gifs/WavingAnimation.gif" alt="Waving Animation" width="150">

The "WavingAnimationView" is a SwiftUI view that demonstrates an animated waveform-like effect using sinusoidal curves. The code utilizes the SwiftUI framework to create a smooth and dynamic animation that showcases a wave pattern.

### 🔺 Wave Interaction Card Animation

<img src="gifs/WaveInteractionCardView.gif" alt="Wave Interaction Card Animation" width="150">

This SwiftUI example demonstrates a captivating micro-interaction where a waveform-inspired animation creates an engaging visual effect on a card. The animation consists of multiple overlapping waveforms that change color as they move, producing a dynamic and eye-catching user experience.

## Getting Started

To run the animation examples on your local machine, follow these steps:

1. Clone this repository to your local machine using `git clone https://github.com/guledaaydemir/SwiftUI-Animations`.
2. Open the Xcode project (`Animation.xcodeproj`) using Xcode.
3. Select a specific animation example from the project navigator on the left.
4. Build and run the example in the Xcode simulator.

## Contributing

<ol>
<li>Fork it!</li>
<li>Create your feature branch: git checkout -b my-new-feature</li>
<li>Commit your changes: git commit -am 'Add some feature'</li>
<li>Push to the branch: git push origin my-new-feature</li>
<li>Submit a pull request :D</li>
</ol>

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

📮 For more information contact me: guledaaydemir@gmail.com
