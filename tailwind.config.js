/** @type {import("tailwindcss").Config} */
module.exports = {
    content: ["./assets/**/*.{js,jsx,ts,tsx}", "./templates/**/*.html.twig"], theme: {
        extend: {
            fontFamily: {
                "public": ["'Public sans'", "sans-serif"],
            },
        },
    }, plugins: [require("@tailwindcss/forms")],
};