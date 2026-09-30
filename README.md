# AI Resume Workspace

面向求职者的事实约束型 AI 岗位定制简历工作台。

## 技术栈

- React 19 + TypeScript + Vite
- Tailwind CSS v4
- shadcn/ui 组件库
- lucide-react 图标
- react-router-dom 路由
- @lark-apaas/client-toolkit-lite（平台 SDK + AI 插件调用）

## 项目结构

```
src/
├── index.tsx              # 入口
├── app.tsx                # 路由配置
├── index.css              # 全局样式
├── components/
│   ├── Layout.tsx         # 全局布局
│   ├── AppSidebar.tsx     # 侧边导航
│   ├── AppleIcon.tsx      # 苹果图标
│   ├── ResumeCanvas.tsx   # 简历画布
│   ├── ExportMenu.tsx     # 导出菜单
│   ├── SaveVersionDialog.tsx
│   └── ui/                # shadcn 组件（需通过 CLI 安装）
├── pages/
│   ├── MaterialPreparePage/     # 材料准备页
│   ├── GenerationConfirmPage/   # 生成确认页
│   ├── ResumeEditorPage/        # 简历编辑页
│   ├── VersionListPage/         # 历史版本列表
│   ├── VersionViewerPage/       # 历史版本查看
│   └── NotFoundPage/
├── services/
│   └── ai-plugins.ts     # AI 插件调用（简历解析/OCR/匹配分析/简历生成）
├── store/
│   └── workspace.tsx     # 全局工作态 Context
├── data/
│   └── resume.ts         # 类型定义 + 示例数据
├── hooks/
└── lib/
```

## 安装与运行

```bash
npm install
npx shadcn@latest init
npx shadcn@latest add accordion alert alert-dialog avatar badge button card checkbox collapsible context-menu dialog dropdown-menu form hover-card input input-group label menubar navigation-menu pagination popover progress radio-group scroll-area select separator sheet slider sonner switch table tabs textarea toggle toggle-group tooltip sidebar breadcrumb calendar carousel command skeleton
npm run dev
```

## 注意事项

1. AI 能力依赖平台插件（resume_doc_parser_1 / jd_image_ocr_extractor_1 / job_match_analyzer_1 / position_custom_resume_generator_1），在非平台环境运行时 AI 功能会降级为 mock 数据。
2. shadcn/ui 组件需通过 CLI 安装到 src/components/ui/ 目录。
3. @shared/plugin-types 类型定义需根据平台插件实际输出补充。
