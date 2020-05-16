'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "1806df9d5c269e8f63795ae2fc7c3345",
"/": "1806df9d5c269e8f63795ae2fc7c3345",
"main.dart.js": "ee9f7f0bceb7fbe24099207d79d3ff4b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "3b3525b2928ec76b20512de48355a1be",
"assets/LICENSE": "decb1282e6f18f06f05b124e6333300c",
"assets/AssetManifest.json": "9b7a8d897414811b3e5a52d6a2f6a5fb",
"assets/FontManifest.json": "18eda8e36dfa64f14878d07846d6e17f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/assets/images/profile_0.jpeg": "bc9ce790d7d76de0eb609434156d1978",
"assets/assets/localizations/tr.json": "66269e01df5f1f31f18ab1414a571c49",
"assets/assets/localizations/en.json": "816403d0abcd2a9371efbe857cf4451e"
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
