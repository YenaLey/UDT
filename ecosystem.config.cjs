module.exports = {
    apps: [
        {
            name: "udt-core",
            cwd: "./Backend/core",
            script: "node_modules/.bin/tsx",
            args: "watch src/index.ts",
            env: {
                PORT: 3000,
            },
        },
        {
            name: "modbus-adapter",
            cwd: "./Backend/adapters/modbus",
            script: "node_modules/.bin/tsx",
            args: "watch src/index.ts",
            env: {
                PORT: 5001,
            },
        },
        {
            name: "bacnet-adapter",
            cwd: "./Backend/adapters/bacnet",
            script: "app.py",
            interpreter: "python3",
            env: {
                PORT: 5002,
            },
        },
        {
            name: "udt-frontend",
            cwd: "./Frontend",
            script: "node_modules/.bin/vite",
            args: "dev",
            env: {
                PORT: 5173,
            },
        },
    ],
};
