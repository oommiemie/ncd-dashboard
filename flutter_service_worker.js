'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "c118569eadcbe9b61b2f24cf9ec53b87",
"version.json": "1ce05e09df3526e8e2351e597f9a9d9b",
"index.html": "2454bf993f3ad4a34cdeea14af62320f",
"/": "2454bf993f3ad4a34cdeea14af62320f",
"main.dart.js": "8bbba116b66138d1c8374e797aaea5d9",
"404.html": "2454bf993f3ad4a34cdeea14af62320f",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"favicon.png": "2704101cb06ce66e2000356a312be25c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"assets/AssetManifest.json": "dc6110ae2caa687152c65bb15557aa8b",
"assets/NOTICES": "c085fb339bf5b3eab4b1df81b0c42686",
"assets/FontManifest.json": "67a28da3784fc091c2f816d615fbf08a",
"assets/AssetManifest.bin.json": "1b06379d6b8264b917dce2190d6ab227",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "d9b75f75ca8077c4044b49a2f284b9f6",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "17ee8e30dde24e349e70ffcdc0073fb0",
"assets/packages/u_i_library_3c2hbt/assets/audios/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/packages/u_i_library_3c2hbt/assets/jsons/logout.json": "a9495c30e04c221f47139f630f969bb4",
"assets/packages/u_i_library_3c2hbt/assets/jsons/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/packages/u_i_library_3c2hbt/assets/rive_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/packages/u_i_library_3c2hbt/assets/images/hospital.png": "85cbf4a63919823cebb4767cb520fda5",
"assets/packages/u_i_library_3c2hbt/assets/images/leaf-svgrepo-com_1.png": "1fd2b92ba9995e00564d46d298a60916",
"assets/packages/u_i_library_3c2hbt/assets/images/avatar-model.png": "305350be5f45c74dfc355bba8b1d7b11",
"assets/packages/u_i_library_3c2hbt/assets/images/139921.jpg": "f408af82f9128aaa03a785ab4f309525",
"assets/packages/u_i_library_3c2hbt/assets/images/designkit_cover.png": "1ec905112a6613f8c0a3e8235e1121a9",
"assets/packages/u_i_library_3c2hbt/assets/images/125880.jpg": "9f0c7a1dde1f9ad5add2ce532bcbe535",
"assets/packages/u_i_library_3c2hbt/assets/images/49661308_9290536.jpg": "4c52ade1499847676b309e07a4f7bfc8",
"assets/packages/u_i_library_3c2hbt/assets/images/data-widgets.png": "9a4c8ab98a7155454ca124c3067f8d97",
"assets/packages/u_i_library_3c2hbt/assets/images/provider-id-logo.png": "4188f79b4ace2b65bdb1515a02d296c0",
"assets/packages/u_i_library_3c2hbt/assets/images/Public.png": "c065df55f083b2426d575aa25ed42d42",
"assets/packages/u_i_library_3c2hbt/assets/images/app_launcher_icon.png": "1ec905112a6613f8c0a3e8235e1121a9",
"assets/packages/u_i_library_3c2hbt/assets/images/medicine-shopping.png": "009da6a59a996ccd0299b940c6079cf4",
"assets/packages/u_i_library_3c2hbt/assets/images/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/packages/u_i_library_3c2hbt/assets/images/Private.png": "a2a8391a5a6c4c93b0f80fd17b0d2b97",
"assets/packages/u_i_library_3c2hbt/assets/images/star-svgrepo-com_2.png": "60e613d5fe398f02909aaf6ac4f15e8d",
"assets/packages/u_i_library_3c2hbt/assets/images/image-placeholder.png": "2153587a853ba48f86c530ba1b7de227",
"assets/packages/u_i_library_3c2hbt/assets/videos/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/packages/u_i_library_3c2hbt/assets/pdfs/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/packages/u_i_library_3c2hbt/assets/fonts/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "42c6051784e455edc27544addf2f8d58",
"assets/fonts/MaterialIcons-Regular.otf": "0b51659095f795ace6ba6ea26d8c324e",
"assets/assets/audios/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/jsons/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/jsons/Processing_loading.json": "9d12450e9063f2ef473669fd20afa8b4",
"assets/assets/rive_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/sidebar/brain.svg": "ff7340c76d28163c29f53ae1aa1cab56",
"assets/assets/images/sidebar/kidney.svg": "b7d173fc29a8c42ece76d2fef5d34c85",
"assets/assets/images/sidebar/bp_cuff.svg": "5cdbfe81ee03d3b445401d9a0d1f0818",
"assets/assets/images/sidebar/chart_pie.svg": "bc12b30bd51f74ce9126b13252959082",
"assets/assets/images/sidebar/drop.svg": "c35aeb7b0cdff781663b97bb6152a108",
"assets/assets/images/sidebar/heart.svg": "769fcca2a4472aa07832ddb672231246",
"assets/assets/images/Frame_62.png": "b55d894dd7ec7e423e832c74426fd754",
"assets/assets/images/Frame_61.png": "00a6924ca622a316c330fb6835e8acc8",
"assets/assets/images/Group_14.png": "db7026fed3dc615e3e4d54a9937fcae1",
"assets/assets/images/iOS_16_01.png": "d52433d7b2c587604a98eb0d0231b097",
"assets/assets/images/logo_MOPH.png": "1bfd961f208926a039b9e0de0351717f",
"assets/assets/images/ChatGPT_Image_16_.._2568_13_55_27.png": "4a93a217f369819e01119054d0837106",
"assets/assets/images/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/ChatGPT_Image_16_.._2568_16_39_46.png": "04141337495092b84542dd6a1492e16b",
"assets/assets/images/Microsoft_Office_Excel_(2025present).svg.png": "312e53ce0f93e559b655c002e0ac8ff8",
"assets/assets/images/ChatGPT_Image_16_.._2568_16_44_34.png": "9bcff3976c59539048dbd6d079644487",
"assets/assets/videos/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/pdfs/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
