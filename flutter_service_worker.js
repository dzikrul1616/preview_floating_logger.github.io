'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "835fe1cd91d3c293ccdf0bfd9885705b",
".git/config": "d36c55e1f3808324b3d86e5758614c28",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "971e89730c14169d8fbb06b82a944932",
".git/HEAD": "00b890eb024a6a82c048ddc608b2049f",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "f08b6e8e5a07b3950a4fbfc6eb18af26",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "b5189a023b46388c4843fa011b7d3c91",
".git/logs/refs/heads/dev": "fce940fede29450bac8441a247ac975e",
".git/logs/refs/heads/dev-web": "d292ed1b6284c02b31472e6d02263fee",
".git/logs/refs/heads/main": "e92d54eb3c150b23aa9f8d6d7030d06d",
".git/logs/refs/remotes/origin/dev": "9725e78e2487d3c5152e72c5d58d1041",
".git/logs/refs/remotes/origin/dev-web": "ea409f467747da77f93d94c27092fc5d",
".git/logs/refs/remotes/origin/main": "7efd13b1ec097ec16fd6aacb621cf87f",
".git/logs/refs/remotes/origin/master": "720c9cc798e7944e30131244ae69e6cf",
".git/objects/02/ca8e3f0d6397085db3da9d79e882a65dff02da": "18276a56671febf38f713908399e4ec8",
".git/objects/03/8b082cc78862b4a4418b5ed6cede8d75bee288": "df8339b6fbecb7c5c4992c62fdd38951",
".git/objects/03/c4057afeb3fb870b310ade7a808fa08bfbb77b": "c66f07eee33220c24d62a4173580d1aa",
".git/objects/03/f9e5fac291fb92a119d4be7fd22102f0fc879a": "ab931124b28a762b33bfaf5daa657d3d",
".git/objects/06/5a156ad876ae75d08bca0aabc8c1e01f285abb": "1338ac20d12542d14345378e2fe2be26",
".git/objects/08/32d0db2def1613c1c45aa4fe9156a1c6b7d589": "e05df183e5eeaddf39672a2516f9c41d",
".git/objects/0f/b2024f2139a177e5662231f9d1cb2bf5cbf7b8": "524c8ae5442bf60e348ce22002793c6f",
".git/objects/10/352fccd413890a093f2f28577207caf97e1cb8": "b9698ecd8ebde9ba63ef67984dcb9fa4",
".git/objects/11/40f5eb7314f698369099d11b56fbc255e2ad60": "60551ec73846f485f3e616106a55c198",
".git/objects/14/cc1fb9f0bdaf5dadc8e7e703f195ccefbbb441": "7bf5599f96066bcf90638427958b1341",
".git/objects/19/2712d7864a651de60ecb5d0494ea3cd5f4be10": "579cd37c3bff63a522fe7f8ae9a00ebd",
".git/objects/1b/65580f7513cf0a7f90f78c4cd543f7f97c2c89": "0e1bbf20af5130a60f50fd1bdcda7633",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/22/4257d48ae8a2159aeb590b7d16d7b5156b442e": "cf8fa110a47f6f476072326cfd937fc0",
".git/objects/25/c2d5267fbfe7408167395ef061b7e532385f3e": "b9eb6dc391bbd7709c670c14853583b5",
".git/objects/26/29715c8bbf2242dd3362f735d2cb864d218f8f": "2448bb4cd4f36911291e0bcf6a2990b0",
".git/objects/2d/0471ef9f12c9641643e7de6ebf25c440812b41": "d92fd35a211d5e9c566342a07818e99e",
".git/objects/2d/9bbfae29ba5d9e2be5e03977b95404299291df": "2bd7de20dbfaee6ce4a03ed37c168826",
".git/objects/32/aa3cae58a7432051fc105cc91fca4d95d1d011": "4f8558ca16d04c4f28116d3292ae263d",
".git/objects/32/b7306c6c6df65b79e969361d729f0d3c74fa89": "6459861ea9e66318745278f8383e0174",
".git/objects/3a/7525f2996a1138fe67d2a0904bf5d214bfd22c": "ab6f2f6356cba61e57d5c10c2e18739d",
".git/objects/3b/b0860a0981211a1ab11fced3e6dad7e9bc1834": "3f00fdcdb1bb283f5ce8fd548f00af7b",
".git/objects/3e/8362879151a2e304c89f4d0d33d0db4ee3a78b": "076031aec5eff3346ae75f9a72c2cc67",
".git/objects/40/0d5b186c9951e294699e64671b9dde52c6f6a0": "f6bd3c7f9b239e8898bace6f9a7446b9",
".git/objects/44/a8b8e41b111fcf913a963e318b98e7f6976886": "5014fdb68f6b941b7c134a717a3a2bc6",
".git/objects/45/6fb878793b967c7571f2a634926c510be52cd8": "2d052cba1ba823ced3838137d46e02e9",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/4b/07682e5358010b0f2dbd015e5deddf1002e2c0": "78f99d82532b77be7b62faf7307b9faa",
".git/objects/4b/fe94c13b57f0b9fa5cc5b529fb913626c5e4b0": "248dcb0aba8603b5a99ea90609f4ba3b",
".git/objects/53/95b5d5b88f225c20c45a208df832a809089832": "01299557fb57b46f5d21d6b435edbc86",
".git/objects/56/be8d6e7ca24b370176e34d8971f7e57aac4ba6": "ffcb43162b2f5024dacaa48d6971fa8b",
".git/objects/57/855a164311bfb4411c110d583abb3222aa98a1": "d2f294bc68a646e44d23c892ecf473aa",
".git/objects/58/31ded9ff0382ad41f67657c7d019d16d9dcd1e": "62c07f4c3e6ea2fd43a9660f3dc3ca79",
".git/objects/58/7bfc0eb301b7c7ef5aa3f6b2cb9f6d4cd9ccb2": "dd9fa8962414e0ea3a3ce59c5976f361",
".git/objects/5f/437adb99885bff2d0856ba319614f7403cb39b": "e52a45d461f6b8022eddb68b789cc02a",
".git/objects/60/edfe473b298c7351dbc7740fe31fbf6ec8a7c1": "be058f7ec67c3fc9cc0aa3d7695ddba8",
".git/objects/62/0a251dd1d784db2c7c2591bc513cea5b595366": "96c127686904d6959335f8feaf12f4c0",
".git/objects/62/faa585a9b4b691c7a11c14bb9c53fbdab8b98c": "d2562458caf186c84c75e7676f2d85b0",
".git/objects/6a/fb2bf310682d4700ca268a55372d4969ae6830": "f3c7c70403dda8395edcae5ffdcdefa3",
".git/objects/6b/e909fbf40b23748412f0ea89bf0fae827ed976": "5f118419157d9534688915220cc803f7",
".git/objects/6d/52e32c62d0eaaa3bcf020a00774cc16c16391b": "a78ebc0475debf4a66a231786f184929",
".git/objects/6e/339247571730254d96d28633db7797b5a3443c": "bc2ecac84ee476a0c2626d8cbb7dda2f",
".git/objects/75/87fad27fae08a41c78d265e993c6dfdb198bdd": "da7eb8335f75123b6a0391ead2470880",
".git/objects/79/dfe0c7134f2546b2fd57a47e85b3690f2b2587": "7ea6ddcf87b904c025e616c350d83271",
".git/objects/84/0516208d35dcb4298847ab835e2ef84ada92fa": "36a4a870d8d9c1c623d8e1be329049da",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/90/bcfcf0a77ab618a826db0fd8b0942963b653af": "fc109675cdf1233dd6599a4c3c0a7a69",
".git/objects/93/d8272c3fa8ba2f40f252d79ddbe170e3323397": "3c1f24239625598dc6fe5b0aa5e6372f",
".git/objects/98/57c9b3b0448c92818efc5fda0f206b21914168": "ecbde07c564dabbec0f249821051b8af",
".git/objects/9a/b5f568e8bc03fa0b52564f64cdf5cfd230780d": "d7655dbc01c29d06cc416050746674d0",
".git/objects/a2/c7e1eb20671eccf163c2f393f903a7e7c13b53": "5da0205df51b1d94ca724d58cd5f75e7",
".git/objects/a2/fe719bd01d4232bb80a8c4c470ecab7bcf55a9": "e0f06bbfd56e24e447c43b95b4ce47ea",
".git/objects/a8/6ec0103bc160282da227fb5eb58608efd682cb": "7b9fe5e9be0b4ee60a578ea64f8924f8",
".git/objects/aa/fc37b363bd33ae25c47e49850aae32c77c43a7": "ef34b48e879e62402c0c15c5e1ecabb1",
".git/objects/ae/9a3e0302e58858b280d675e24f021eff93e89d": "23db79fefcf8dab8f4ba850ac43114f4",
".git/objects/af/daea05c44105eddc459893e5b138cb22bf2a18": "50f9138c056059882acef300a9b9c903",
".git/objects/b1/5ad935a6a00c2433c7fadad53602c1d0324365": "8f96f41fe1f2721c9e97d75caa004410",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/c7/7663172ca915a99a594ca17d06f527db05657d": "6335b074b18eb4ebe51f3a2c609a6ecc",
".git/objects/c7/deb87cfaf379aca1a9e2de7c6c6d53d1dee4b8": "752efe2d78e2e4b00a0cd6e30a1df23e",
".git/objects/cb/75e958b3b4436c828af6f2cd212270612f287b": "930d7b21567a23acfed9a6b9c54330b5",
".git/objects/cd/045b2aec40e94d28dcae68b8e6299d6c24a892": "dbe040febff7b51bb0fa0dbaaec96c35",
".git/objects/ce/aa6381478b4158f1c917c4df6ffe374355ab74": "ce2479f67df51bc62dd58676d658780b",
".git/objects/d0/23371979cf1e985205df19078051c10de0a82d": "700b71074bad7afee32068791dec7442",
".git/objects/d3/631df51c31fc5c47f7878d5f420f4c44fea310": "baa0c353e176f7cf22b48caaa1e4767f",
".git/objects/d3/cbbc2803ecf30ea266e83ed84fcc1c78669c9c": "5fd2cb81360bd098608b999680246266",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d5/bb50b3c3bc534b51ba035a5e8495ba7af5025b": "81d30e6f235d2cd1960b1a0d917b3043",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d8/622474f9467a2361bd635d3715736b03905bc7": "1780d82c383ef506d78eeb6a874d2dfa",
".git/objects/da/49bd615a61f08b68cf0ddf45a963066588cab4": "5fd584712b233213a7d7cc1b32b12ca3",
".git/objects/da/fd65422747502c19b5c74b4230282644d2169c": "d8a62caf99a372ff6c7692e143787ce3",
".git/objects/df/5fde4860e8f089b44db475036441ae456ea4c3": "79299ea89a175932cfddb1a19fe459e5",
".git/objects/e3/9684034fa62208f8ea55d76fc476f00c6aeeb2": "0b484f824b356f7e0cfe874aa02cfa2d",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f0/ad8b26cc0415e5707dbdb9655a62270462b8d2": "00173419a68e8b747f636e5392fa9544",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f4/3395b269eea1fa59b41e9541ffbe53643b3f06": "3dd5946f5a3e5f6eae4ac9f0555b2654",
".git/objects/f5/22b3e2d3bb99c96546beaf0a21f385ec77e2fb": "9886de206f2e0755e15a6107da735ca2",
".git/objects/f7/88a8a5df71f696d68e2fb0c099a52112df4ee9": "9eaa7de50c0238bef3a3a04409d98edc",
".git/objects/f9/f9cad3a57ebb6b2de7278356bf1f1d0ec8a48f": "c87f97b72b645223a5118268773e3a52",
".git/objects/fe/1e414b80457587ceea35c5f3ec2c1b050a56ae": "cf52aa9b374adb0260f815b1f1b5badc",
".git/objects/pack/pack-35ae7f9197584906e3f17e613539fa76e460133c.idx": "221c0b4a5fccf9205bd11e8d677d6f13",
".git/objects/pack/pack-35ae7f9197584906e3f17e613539fa76e460133c.pack": "18e62edc5dca78a5574a8194a90494e9",
".git/ORIG_HEAD": "75a283a32ebc32aa1e49ae56f45f8604",
".git/refs/heads/dev": "75a283a32ebc32aa1e49ae56f45f8604",
".git/refs/heads/dev-web": "32ef933662649bed472cbd24b3b17ce0",
".git/refs/heads/main": "b3d45248800f5672dee1edf6e7720031",
".git/refs/remotes/origin/dev": "75a283a32ebc32aa1e49ae56f45f8604",
".git/refs/remotes/origin/dev-web": "32ef933662649bed472cbd24b3b17ce0",
".git/refs/remotes/origin/main": "2e0884aa52c8f81b4d6162f1b0742c57",
".git/refs/remotes/origin/master": "f1f00e3704a79fe6c1eaca63c75a5b06",
"assets/AssetManifest.bin": "6e9f863d0492f0f28bab13c40e44f427",
"assets/AssetManifest.bin.json": "c4f8840eb0b8bc4a7439a8f7fff5c17f",
"assets/AssetManifest.json": "222bc785bdb07236eb8746bafcb02592",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "067bf1ae9cd9cbe73bca969cf3c0d549",
"assets/NOTICES": "22ee1dcc9bea4619b1a05cd95302672b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "e488d59837d145eaa2db5709c1f7d644",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "166e9257fcb32463dcd73b9e17a77c37",
"/": "166e9257fcb32463dcd73b9e17a77c37",
"main.dart.js": "866f0e88fec8f36d63b7099134abeace",
"manifest.json": "af61c4d882e544aafd0be30d4c09c7fe",
"version.json": "d1d41990d1c62c05f834ba2ccd019daf"};
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
