# Animate your iOS app with Particle Systems

<p align="center">
<img src="/README/Demo.gif"/>
</p>

## Introduction

Apple introduced with iOS 5 an entire family of specialized layers, subclasses of the CALayer class: CAGradientLayer, CAShapeLayer, CAEmitterLayer. 

Each of those classes has been designed for a very specific task. Particles can be used to create real-time animations for effects like fire, rain, snow, etc. 


Wait… Particle what? 

Well, It’s not that unknown. You’ve probably seen it already in many iOS apps. 

__The Keynote mac__ application has also a fire animation.

<img src="/README/Fire.png" width="300"/>

Facebook use it for its __Facebook Live__ feature

<img src="/README/FacebookLive.png" width="300"/>


Particle animations are made up of two components: CAEmitterLayer, and CAEmitterCell. 

I like to think that it’s like a bread. You have the bread, which the the CAEmitterLayer and the breadcrumb, the CAEmitterCells.

CAEmitterLayer acts as a container for a collection of CAEmitterCell. CAEmitterCell determines how it looks and moves, how fast to create, how long the particles should live.


I think this is a really cool Core Animation tool you can use in your projects.


## Copyright & License

Released under the MIT License.

Copyright © [Aymen Rebouh](https://twitter.com/aymenworks) 🤡.
