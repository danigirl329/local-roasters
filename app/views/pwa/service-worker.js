// app/javascript/service_worker.js

self.addEventListener('install', (event) => {
    console.log('Service Worker installed');
  });
  
  self.addEventListener('activate', (event) => {
    console.log('Service Worker activated');
  });
  
  self.addEventListener('fetch', (event) => {
    // Add custom fetch handling here if needed
  });
  