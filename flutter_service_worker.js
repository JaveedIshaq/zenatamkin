'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"main.dart.js": "8638c4009f9e193c23d0d786d2f6aa32",
"version.json": "f2362d82a2e159b53dff6a6c28ae652a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "eaed33dc9678381a55cb5c13edaf241d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "ffed6899ceb84c60a1efa51c809a57e4",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "3241d1d9c15448a4da96df05f3292ffe",
"assets/packages/fluttertoast/assets/toastify.js": "e7006a0a033d834ef9414d48db3be6fc",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.html": "16911fcc170c8af1c5457940bd0bf055",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.css": "5a8d0222407e388155d7d1395a75d5b9",
"assets/packages/youtube_player_flutter/assets/speedometer.webp": "50448630e948b5b3998ae5a5d112622b",
"assets/FontManifest.json": "273e6e940115409ea06d1e63780c731b",
"assets/AssetManifest.json": "ff2598bd1f3e1163b1c098d602f3831e",
"assets/assets/icons/filled%2520outline.png": "2dfa2418b971ac5bddac770205a32017",
"assets/assets/icons/collaboration.png": "2e1628dc12d32c029dc87640d83992c4",
"assets/assets/json/dmplaylist.json": "4248f6facd1a928bad62034f0017c0ef",
"assets/assets/json/flplaylist.json": "c47623ba8ae805d3368c22e25da46aec",
"assets/assets/json/31574-awesome.json": "f58d2e8f8b46cae400b6d1f6fdcb2a0e",
"assets/assets/json/cwplaylist.json": "68eff41b531ddd8e633fbaae5175db90",
"assets/assets/json/wpplaylist.json": "c84440fa65eaa8d7a96fadd8cc22ee37",
"assets/assets/json/gdplaylist.json": "ff5dfb3235052d80cb2de95267de7a0f",
"assets/assets/json/women-in-tech-talks.json": "55e8ed974822b2cfbdadd87e651e352e",
"assets/assets/json/ecomplaylist.json": "6ca5e972c33cee90a90d5e3f06566a19",
"assets/assets/json/seoplaylist.json": "97e8105a2e9cf2866c80a1e66df6e6e2",
"assets/assets/json/food_recipe.json": "b6411eb4894213ea48ad943419f647b3",
"assets/assets/images/app-icon.png": "32ec3b9f5bcd15b61bf39f2be70ddd6e",
"assets/assets/images/zena-splash-image.png": "d3ef6c1a1da0ea76a0e0578693554cd8",
"assets/assets/fonts/Asap/Asap-VariableFont_wght.ttf": "b9f995835ca85dd67a117be9419cba76",
"assets/assets/fonts/Poppins/Poppins-Black.ttf": "0573b9231a8316427ad6e751b52e87a4",
"assets/assets/fonts/Poppins/Poppins-Bold.ttf": "a3e0b5f427803a187c1b62c5919196aa",
"assets/assets/fonts/Poppins/Poppins-Light.ttf": "f6ea751e936ade6edcd03a26b8153b4a",
"assets/assets/fonts/Poppins/Poppins-SemiBold.ttf": "4cdacb8f89d588d69e8570edcbe49507",
"assets/assets/fonts/Poppins/Poppins-ExtraBold.ttf": "544fa4f2678a8285eb88b8dfe503c90c",
"assets/assets/fonts/Poppins/Poppins-Medium.ttf": "f61a4eb27371b7453bf5b12ab3648b9e",
"assets/assets/fonts/Poppins/Poppins-Regular.ttf": "8b6af8e5e8324edfd77af8b3b35d7f9c",
"assets/assets/svg/weather.svg": "15273356fb6cbe4965e0494821ca802a",
"assets/assets/svg/undraw_opinion_dxp8.svg": "800ad8d168148ec95c6cec11518a2d74",
"assets/assets/svg/undraw_respond_8wjt.svg": "421a2cd974435ff237488d4eaf34d433",
"assets/assets/svg/affirmation.svg": "eb6b261d8610c2cff14fc8078434fbe8",
"assets/assets/svg/undraw_Choose_re_7d5a.svg": "74827e0c8db5a459d9783d4f9c2f3090",
"assets/assets/svg/web-development..svg": "d61e2c00dc760a6d89b1a4fd93c50e20",
"assets/assets/svg/seo.svg": "5453a22455c3a9bc9294251359bb9e70",
"assets/assets/svg/fun-zone.svg": "ea07f74d248850a5b0c3ad79dce4d0a3",
"assets/assets/svg/positive_attitude.svg": "eb6b261d8610c2cff14fc8078434fbe8",
"assets/assets/svg/useful-resources.svg": "73387778e76272b72f0b3d6923ce6a82",
"assets/assets/svg/zena-mentors.svg": "6e6cc1dd7dab96fd365fc41eb799195f",
"assets/assets/svg/home-banner-illustration.svg": "c7ab2a8ef317e0476b07dbc124450147",
"assets/assets/svg/mentor.svg": "4bec01aface2ef974a847b290c5392a4",
"assets/assets/svg/scholarships.svg": "2eef01b9dc529d787ef7220a311767e2",
"assets/assets/svg/role-model.svg": "2ae37ffb481c546821ac0cbf8d2658be",
"assets/assets/svg/cooking.svg": "4aac04cff840e8fa61f0d9d3d3b2dd5a",
"assets/assets/svg/wordpress.svg": "7b9be18946e92042acec24237d06f2e9",
"assets/assets/svg/shake.svg": "cf16cfccc62bf520fac969ef6015892c",
"assets/assets/svg/create-account.svg": "eadcef8f19cae5d5bbdda53c9e505a6d",
"assets/assets/svg/events.svg": "2e7b9d69837ba26abd27cef47dcc3fb6",
"assets/assets/svg/mylocation.svg": "8f9f62001808bb61e13912cf1a4a04c7",
"assets/assets/svg/graphic-design.svg": "a31bbb80193b84aa6b4de51490f29a12",
"assets/assets/svg/digital-marketing.svg": "290c41c0e5c5bc4e1942440dbe0d98bc",
"assets/assets/svg/undraw_certification_aif8.svg": "f898612157cdf2128083c0dfc2f22170",
"assets/assets/svg/undraw_connection_b38q.svg": "6a90eaa7296953c73db98ac7ed665e77",
"assets/assets/svg/undraw_coolness_dtmq.svg": "9c35744c3da872599655f367b50c474f",
"assets/assets/svg/care-connection.svg": "52d3e36d4e19f04605662ec29e0b22c4",
"assets/assets/svg/set-number.svg": "dcfcbb485644e0085bcb5576c56c1706",
"assets/assets/svg/women-in-tech.svg": "5e4a9d7ab40f024f5806ff42d8e39210",
"assets/assets/svg/web-development.svg": "d61e2c00dc760a6d89b1a4fd93c50e20",
"assets/assets/svg/mentee.svg": "537e77edb9e4fbadccaf6ed19c6c7e48",
"assets/assets/svg/ecom-management.svg": "6398e4f603018cea8f4805eb86af8d0e",
"assets/assets/svg/skills.svg": "0e6da3f57be043098ea64af8a49f3395",
"assets/assets/svg/freelancer.svg": "dfad005cdc590590811ca2ab378ec96f",
"assets/assets/svg/learning.svg": "c69e7aeaac2aa04220dcc12b6eeb7361",
"assets/assets/svg/creative-writing.svg": "b13f801560bc5e685d1cf0597b1b3f51",
"assets/assets/svg/organizations-to-promote-women.svg": "40943b22c0fbee58061428087f37613d",
"assets/assets/svg/quotes.svg": "71d3cfb5a5c6ce16d05ec7ff3b4646bb",
"assets/assets/svg/menu-icon.svg": "fb024cdde35ef3c473aea3dc500937e5",
"assets/assets/svg/write-to-us.svg": "421a2cd974435ff237488d4eaf34d433",
"assets/NOTICES": "bb9d4694fac37153473fc8bb7b9622c7",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"splash/style.css": "95bb3722abdf1912cd536a8a0d9134fb",
"splash/img/dark-3x.png": "e8472fb604a6ab43457a251f626fbaf0",
"splash/img/light-4x.png": "6d0563a4b0f30d774b28a672bf1f023e",
"splash/img/dark-2x.png": "967201e675ca09817fccb04d009a8e4a",
"splash/img/light-3x.png": "e8472fb604a6ab43457a251f626fbaf0",
"splash/img/dark-1x.png": "d9d9263dcb687b6da5bc37460bafa720",
"splash/img/dark-4x.png": "6d0563a4b0f30d774b28a672bf1f023e",
"splash/img/light-1x.png": "d9d9263dcb687b6da5bc37460bafa720",
"splash/img/light-2x.png": "967201e675ca09817fccb04d009a8e4a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.html": "f86ab9ccb4d2fd6fdc0c1eee4e8acd03",
"/": "f86ab9ccb4d2fd6fdc0c1eee4e8acd03",
"manifest.json": "b017f5b40fbbf85a7818b5d7cb4ba146"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
