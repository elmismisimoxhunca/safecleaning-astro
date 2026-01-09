# Safe Cleaning - Astro Website

A complete replication of the safecleaning.cl website built with **Astro**, **Tailwind CSS**, and modern web technologies. This project includes all sections, pages, and assets from the original website.

## 🌟 Features

- ✅ Complete website replication with 10 pages
- ✅ Responsive design with Tailwind CSS
- ✅ 8 service pages with detailed information
- ✅ Contact form and job application page
- ✅ Docker support for easy deployment
- ✅ Production-ready build
- ✅ Fast static site generation with Astro

## 📁 Project Structure

```
safecleaning-astro/
├── src/
│   ├── components/          # Reusable Astro components
│   │   ├── Header.astro
│   │   ├── Footer.astro
│   │   ├── ServiceCard.astro
│   │   ├── FeatureCard.astro
│   │   └── CTAButton.astro
│   ├── layouts/
│   │   └── Layout.astro     # Main layout wrapper
│   ├── pages/               # Website pages (auto-routed)
│   │   ├── index.astro      # Home page
│   │   ├── contacto.astro   # Contact page
│   │   └── aseo-en-*.astro  # Service pages (8 total)
│   └── styles/
│       └── global.css       # Global styles with Tailwind
├── public/                  # Static assets
│   └── assets/              # Downloaded images and fonts
├── Dockerfile               # Docker configuration
├── docker-compose.yml       # Docker Compose setup
├── astro.config.mjs         # Astro configuration
├── tailwind.config.mjs       # Tailwind CSS configuration
└── package.json             # Dependencies
```

## 📄 Pages Included

1. **Home Page** (`/`) - Main landing page with services overview
2. **Contact Page** (`/contacto`) - Contact form and job application
3. **Service Pages** (8 total):
   - `/aseo-en-condominios` - Condominium cleaning
   - `/aseo-en-colegios` - School cleaning
   - `/aseo-en-oficinas` - Office cleaning
   - `/aseo-en-strip-center` - Strip center cleaning
   - `/aseo-en-city-point` - City Point cleaning
   - `/aseo-en-centros-comerciales` - Shopping center cleaning
   - `/aseo-en-bodegas` - Warehouse cleaning
   - `/aseo-en-empresas` - Corporate cleaning

## 🚀 Quick Start

### Option 1: Docker (Recommended)

**Prerequisites**: Docker and Docker Compose installed

```bash
cd /home/sebastian/CascadeProjects/safecleaning-astro
docker-compose up --build
```

Visit: `http://localhost:3000`

To stop:
```bash
docker-compose down
```

### Option 2: Local Development

**Prerequisites**: Node.js 16+ installed

1. Install dependencies:
```bash
npm install
```

2. Start development server:
```bash
npm run dev
```

Visit: `http://localhost:4321`

3. Build for production:
```bash
npm run build
```

4. Preview production build:
```bash
npm run preview
```

## 🐳 Docker Commands

### Build and run with Docker Compose:
```bash
docker-compose up --build
```

### Run in background:
```bash
docker-compose up -d
```

### View logs:
```bash
docker-compose logs -f safecleaning
```

### Stop container:
```bash
docker-compose down
```

### Using Docker CLI directly:
```bash
# Build image
docker build -t safecleaning-astro .

# Run container
docker run -p 3000:3000 safecleaning-astro
```

## 📋 Available Commands

| Command | Action |
|---------|--------|
| `npm install` | Install dependencies |
| `npm run dev` | Start dev server at `localhost:4321` |
| `npm run build` | Build production site to `./dist/` |
| `npm run preview` | Preview build locally |
| `docker-compose up --build` | Build and run with Docker |
| `docker-compose down` | Stop Docker container |

## 🎨 Technology Stack

- **Astro** - Static site generator
- **Tailwind CSS** - Utility-first CSS framework
- **Node.js** - JavaScript runtime
- **Docker** - Containerization

## 📦 Dependencies

- astro
- tailwindcss
- postcss
- autoprefixer
- @tailwindcss/postcss

## 🔧 Configuration Files

- `astro.config.mjs` - Astro settings
- `tailwind.config.mjs` - Tailwind CSS customization
- `postcss.config.mjs` - PostCSS configuration
- `Dockerfile` - Docker image definition
- `docker-compose.yml` - Docker Compose configuration
- `netlify.toml` - Netlify deployment config (optional)

## 📝 Notes

- The website is fully responsive and mobile-friendly
- All pages are statically generated for optimal performance
- Docker image uses multi-stage build for minimal size
- Production build serves static files via http-server

## 🚀 Deployment

### Local Docker:
```bash
docker-compose up --build
```

### Manual hosting:
1. Run `npm run build`
2. Deploy the `dist/` folder to any static hosting service
3. Or serve locally with `npm run preview`

## 📞 Contact Information

- **Phone**: +56 9 8365 4053
- **Email**: contacto@safecleaning.cl
- **Address**: San Antonio 510, of 408, Santiago Centro

---

Built with ❤️ using Astro and Tailwind CSS
