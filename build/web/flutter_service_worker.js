'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "1806df9d5c269e8f63795ae2fc7c3345",
"/": "1806df9d5c269e8f63795ae2fc7c3345",
"main.dart.js": "5700f84f5d9ad1c35d35e8313fd4f4e4",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "3b3525b2928ec76b20512de48355a1be",
"assets/LICENSE": "decb1282e6f18f06f05b124e6333300c",
"assets/AssetManifest.json": "c6e4dbcac44474e024bc5e2012ef0c59",
"assets/FontManifest.json": "18eda8e36dfa64f14878d07846d6e17f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/assets/images/blueoperation.webp": "f765522733e9fcc8f57da8e1afdbfd4b",
"assets/assets/images/profile_0.jpeg": "bc9ce790d7d76de0eb609434156d1978",
"assets/assets/images/polyingo.png": "779aaf4f5e9101d10a38d146a379e16a",
"assets/assets/localizations/tr.json": "31b3648d455755f779c9b60f573609a0",
"assets/assets/localizations/en.json": "38dcd90029a5de9c8070ff279f409e6b"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
