# 📘 Frontend Skill Guide for Blockchain Developers (HTML/CSS/JavaScript)

This guide outlines **how far you should learn HTML, CSS, and JavaScript** if you're aiming to become a capable blockchain/DApp developer—not a full-time frontend engineer.

---

## 📌 Goal

Be able to:

- ✅ Build clean and functional DApp frontends
- ✅ Interact with smart contracts via buttons/inputs
- ✅ Display blockchain data (wallets, tokens, NFT metadata)

---

## 🧱 HTML – What to Know

- Structure pages using semantic tags (`<div>`, `<main>`, `<section>`, etc.)
- Work with forms: `<input>`, `<button>`, `<form>`, etc.
- Understand nesting and layout structure
- Load external JS/CSS properly (`<script>`, `<link>`)
- Use browser DevTools to inspect DOM

You should be able to **read and write page skeletons** comfortably.

---

## 🎨 CSS – What to Know

- Selectors: `.class`, `#id`, `tag`, and pseudo-selectors (`:hover`, `:nth-child`)
- Key properties: `display`, `position`, `margin`, `padding`, `flexbox`, `grid`
- Layout: Master **Flexbox**
- Basic styling for buttons, forms, and containers
- Transitions and simple animations
- Use utility libraries like **Tailwind CSS** for fast styling

Goal: **Build clean forms and layouts for your DApp**

---

## ⚙️ JavaScript – What to Know

- Basics: variables, functions, loops, arrays, objects
- DOM manipulation: `document.querySelector()`, `.addEventListener()`, `.innerText`
- Asynchronous JS: `fetch`, `Promise`, `async/await`
- ES Modules (`import`, `export`)
- Handle wallet connections (e.g. MetaMask)
- Display contract state data on the UI

You should be able to:

- Connect wallet and display address
- Pass input to a smart contract function
- Fetch on-chain data and render on screen

---

## 📦 TypeScript – What to Know

> TypeScript is JavaScript with types. It helps you write safer and cleaner code, especially when interacting with smart contracts and complex DApp data.

### 📌 Why Learn It?

- Improves developer experience in larger projects
- Helps you catch errors during development
- Most modern Web3 libraries use TypeScript (`wagmi`, `viem`, `ethers.js`)

### 🧠 Concepts to Learn

- Type annotations (`string`, `number`, `boolean`, `any`, etc.)
- Interfaces and types (`interface`, `type`, `readonly`)
- Enums and literal types
- Union and optional types (`type | null`, `?`)
- Generics (`<T>`) — at a basic level
- `as` keyword for type casting
- Working with `Promise<T>` types

### 🧪 TypeScript Practice Checklist

- [ ] Convert a JavaScript file to TypeScript
- [ ] Create an interface for a user object
- [ ] Type a function that returns an object
- [ ] Handle async functions with proper return types
- [ ] Use TypeScript with `ethers.js` or `wagmi`

You don’t need to master complex typing (like advanced generics), but you should **read and write cleanly typed Web3 frontend code**.

---

## 🧪 Practice Checklist

### HTML Practice

- [ ] Create a basic HTML page with header, main, footer
- [ ] Build a form with input, label, submit button
- [ ] Use `<script>` and `<link>` properly

### CSS Practice

- [ ] Style the form layout using Flexbox
- [ ] Create a hover effect on a button
- [ ] Use Tailwind CSS to create a card layout
- [ ] Build a responsive layout

### JavaScript Practice

- [ ] Toggle text on button click
- [ ] Use `fetch` to call a public API and display data
- [ ] Write a simple counter app (increment/decrement)
- [ ] Connect to MetaMask and display account address

### DApp Simulation

- [ ] Build a fake "mint NFT" page (no real contract)
- [ ] Add wallet connection logic using `ethers.js` or `wagmi`
- [ ] Simulate writing to smart contract (console only)

---

## 🧰 Tools You’ll Need

| Tool        | Purpose                       |
|-------------|-------------------------------|
| VS Code     | Code Editor                   |
| Live Server | Preview static HTML/CSS/JS    |
| Git + GitHub| Version Control               |
| Tailwind CSS| Styling (optional but great)  |
| Ethers.js   | Smart contract interaction    |
| MetaMask    | Wallet interaction testing     |

---

## ✅ End Result

After this, you should be able to:

- Build a basic DApp front-end
- Trigger smart contract methods
- Read/write on-chain data using a UI
- Debug and enhance based on user actions
