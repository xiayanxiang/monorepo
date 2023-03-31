import typescript from 'rollup-plugin-typescript2';


export default {
    input: "./src/index.ts",
    output: [
        {
            file: './lib/esm/index.js'
        },
        {
            file: './lib/index.js',
            format: 'cjs'
        }
    ],
    plugins: [
        typescript(),//处理ts 默认使用tsconfig.json文件
    ]
}