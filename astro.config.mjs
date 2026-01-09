// @ts-check
import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
  site: 'https://safecleaning.cl',
  integrations: [],
  server: {
    port: 4323,
    host: true
  },
  output: 'static',
  trailingSlash: 'ignore'
});
