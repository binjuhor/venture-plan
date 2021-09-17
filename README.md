# Venture Plan website

Website use NodeJs and NextJs to build website

## Stack
1. NodeJs with Strapi v3.6.3 - for backend
2. ReactJs with NextJs - for frontend
3. MariaDB - for database

## System requirement

1. NodeJs 14.x
2. npm 6.x

## Folder Structure
```
-- backend (Strapi)
-- frontend (Nextjs)
README.md
package.json
```

## Development

Command 
```bash
yarn develop:backend
yarn develop:frontend
yarn develop
```
Dev URL

Frontend: ` http://localhost:3000`\
Backend: `http://localhost:1337`

### Update source code

- To update frontend style please change `.scss` files in `frontend/assets/sass/`
- To update frontend source code please change `.js` files in `frontend/` 
- Setup backend please update in admin see `Default user` to check the admin url
- Create `.env.local` to put your Captcha V3 for your project
```
NEXT_PUBLIC_STRAPI_API_URL=http://localhost:1337
NEXT_PUBLIC_RECAPTCHA_SITE_KE=YourCaptChaV3_key
```

***Note***: 
- *Please do not change any code dirrectly `frontend/assets/css/style.css` file*  
- Make sure you understand what you are doing.

## Default user

Default backed URL: `http://localhost:1337/admin`
```
User: admin@venture-plan.com
Password: 123456Aa@
```

## Developer

Email: info@xdevlabs.com\
Web: https://xdevlabs.com
