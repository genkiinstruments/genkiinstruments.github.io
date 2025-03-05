// @ts-check
import { defineConfig } from "astro/config";
import starlight from "@astrojs/starlight";
import starlightLinksValidator from "starlight-links-validator";

// https://astro.build/config
export default defineConfig({
  site: "https://genkiinstruments.github.io",
  integrations: [
    starlight({
      title: "Genki Instruments",
      plugins: [starlightLinksValidator()],
      favicon: "/favicon.svg",
      head: [
        // Add ICO favicon fallback for Safari.
        {
          tag: "link",
          attrs: {
            rel: "icon",
            href: "/favicon.ico",
            sizes: "32x32",
          },
        },
      ],

      social: {
        github: "https://github.com/genkiinstruments/genki-docs",
      },
      sidebar: [
        {
          label: "General",
          autogenerate: { directory: "/general" },
        },
        {
          label: "Wave for Music",
          collapsed: true,
          items: [
            {
              label: "Quickstart",
              autogenerate: { directory: "/wave-for-music/quickstart" },
            },
            {
              label: "Softwave Basics",
              autogenerate: { directory: "/wave-for-music/softwave-basics" },
            },
            {
              label: "Functions",
              autogenerate: { directory: "/wave-for-music/functions" },
            },
            {
              label: "Presets",
              autogenerate: { directory: "/wave-for-music/presets" },
            },
            {
              label: "Preset Bank",
              autogenerate: { directory: "/wave-for-music/preset-bank" },
            },
            {
              label: "DAW Integration",
              autogenerate: { directory: "/wave-for-music/daw" },
            },
            {
              label: "Settings",
              autogenerate: { directory: "/wave-for-music/settings" },
            },
            {
              label: "Standalone Mode",
              autogenerate: { directory: "/wave-for-music/standalone-mode" },
            },
          ],
        },
        {
          label: "Wavefront",
          autogenerate: { directory: "/wavefront" },
          collapsed: true,
        },
        {
          label: "WIDI Master",
          autogenerate: { directory: "/widi-master" },
          collapsed: true,
        },
        {
          label: "Cosmos",
          autogenerate: { directory: "/cosmos" },
          collapsed: true,
        },
        {
          label: "Wave for Work",
          autogenerate: { directory: "/wave-for-work" },
          collapsed: true,
        },
      ],
    }),
  ],
});
