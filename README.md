# Environment

node v22.22.0

# my-vendure-shop-mariadb

A full-stack e-commerce application built with [Vendure](https://www.vendure.io/) and [Next.js](https://nextjs.org/).

## Project Structure

This is a monorepo using npm workspaces:

```
my-vendure-shop-mariadb/
├── apps/
│   ├── server/       # Vendure backend (GraphQL API, Admin Dashboard)
│   └── storefront/   # Next.js frontend
└── package.json      # Root workspace configuration
```

## Getting Started

### Development

cd apps/server/
docker-compose up

Start both the server and storefront in development mode:

```bash
npm run dev
```

Or run them individually:

```bash
# Start only the server
npm run dev:server

# Start only the storefront
npm run dev:storefront
```

### Access Points

- **Vendure Dashboard(GUI)**: http://localhost:3000/dashboard
- **Storefront(GUI)**: http://localhost:3001
- **GrapthQL (GUI)**: http://localhost:3000/graphiql/shop
- **Shop GraphQL API End Point** : http://localhost:3000/shop-api
- **Admin GraphQL Endpont API**: http://localhost:3000/admin-api

### Admin Credentials

Use these credentials to log in to the Vendure Dashboard:

- **Username**: superadmin
- **Password**: superadmin

## Production Build

Build all packages:

```bash
npm run build
```

Start the production server:

```bash
npm run start
```

## Learn More

- [Vendure Documentation](https://docs.vendure.io)
- [Next.js Documentation](https://nextjs.org/docs)
- [Vendure Discord Community](https://vendure.io/community)
