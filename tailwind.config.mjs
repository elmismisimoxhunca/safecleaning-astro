/** @type {import('tailwindcss').Config} */
export default {
	content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
	theme: {
		extend: {
			colors: {
				primary: '#1a5f3f',
				secondary: '#2d8659',
				accent: '#4CAF50',
			},
		},
	},
	plugins: [],
}
