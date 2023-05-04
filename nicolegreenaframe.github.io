<!DOCTYPE html>
<html>
  <head>
    <script src="https://aframe.io/releases/1.2.0/aframe.min.js"></script>
  </head>
  <body>
    <a-scene>
      <!-- Skybox -->
      <a-sky color="#ECECEC"></a-sky>
      
      <!-- Ground -->
      <a-plane
        id="ground"
        position="0 0 0"
        rotation="-90 0 0"
        width="50"
        height="50"
        color="#34c44b">
      </a-plane>
      
      <!-- Stick figure guy -->
      <a-entity
        id="stick-figure-guy"
        gltf-model="#stick-figure-guy-model"
        scale="0.5 0.5 0.5"
        position="-2 0 -2"
        animation="property: position; dur: 2000; to: 1 0 -2; loop: false">
        <a-animation
          attribute="rotation"
          dur="2000"
          to="0 360 0"
          easing="linear"
          repeat="indefinite"></a-animation>
      </a-entity>
      
      <!-- Stick figure girl -->
      <a-entity
        id="stick-figure-girl"
        gltf-model="#stick-figure-girl-model"
        scale="0.5 0.5 0.5"
        position="1 0 -2">
      </a-entity>
      
      <!-- Flowers -->
      <a-entity
        id="flowers"
        gltf-model="#flowers-model"
        scale="0.5 0.5 0.5"
        position="-1 0 -2"
        visible="false">
        <a-animation
          attribute="position"
          dur="2000"
          to="1 0 -2"
          easing="linear"
          repeat="0"
          begin="flowers-appear"></a-animation>
        <a-animation
          attribute="visible"
          dur="1"
          to="true"
          repeat="0"
          begin="flowers-appear"></a-animation>
        <a-animation
          attribute="visible"
          dur="1"
          to="false"
          repeat="0"
          begin="flowers-disappear"></a-animation>
      </a-entity>
      
      <!-- Camera -->
      <a-entity camera position="0 1.6 0" look-controls wasd-controls>
        <a-cursor></a-cursor>
      </a-entity>
      
      <!-- Models -->
      <a-assets>
        <!-- Stick figure guy model -->
        <a-asset-item
          id="stick-figure-guy-model"
          src="https://cdn.glitch.com/58e8d930-3295-4e0f-b42a-6d8e0e03c082%2Fstick-figure-man.glb?v=1629912043414">
        </a-asset-item>
        
        <!-- Stick figure girl model -->
        <a-asset-item
          id="stick-figure-girl-model"
          src="https://cdn.glitch.com/58e8d930-3295-4e0f-b42a-6d8e0e03c082%2Fstick-figure-woman.glb?v=1629912079013">
        </a-asset-item>
        
        <!-- Flowers model -->
        <a-asset-item
          id="flowers-model"
          src="https://cdn.glitch.com/58e8d
