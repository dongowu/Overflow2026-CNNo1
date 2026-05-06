# 开发者提交指南

想参与 Sui Overflow 中文区抽奖 / 领周边？按下面步骤提交你的项目信息即可。

---

## 前提条件

- 有一个 GitHub 账号
- 有一个正在开发或已完成的项目（基于 Sui）

## 提交步骤

### 1. Fork 本仓库

打开本仓库页面，点击右上角 **Fork** 按钮，将仓库 fork 到自己账号下。

### 2. 复制提交模板

在你的 fork 里，把 `submissions/_template/` 整个目录复制一份，**重命名为你的 GitHub 用户名**：

```bash
git clone https://github.com/<你的用户名>/Overflow2026-CNNo1.git
cd Overflow2026-CNNo1
cp -r submissions/_template submissions/<你的GitHub用户名>
```

### 3. 填写项目信息

打开 `submissions/<你的GitHub用户名>/README.md`，按模板填写：

- **项目名称** — 替换掉 `<Project Name>`
- **赛道** — 在对应赛道前把 `[ ]` 改成 `[x]`，只选一个
- **项目简介** — 一段话描述你做了什么
- **链接** — 填上你的 GitHub 仓库地址，有 Demo 就填 Demo
- **团队成员** — 写上所有成员的 `@github-id`
- **合约地址** — 如果已经部署到 Sui，填上 package ID；没部署可以先留空

填完大概长这样：

```markdown
# SuiPay

## Track / 赛道

- [x] DeFi & Payments

## Description / 项目简介

基于 Sui 的去中心化支付协议，支持多币种结算和链上自动对账。

## Links / 链接

- GitHub: https://github.com/myname/sui-pay
- Demo: https://suipay.xyz

## Team / 团队成员

- @myname
- @partner-dev

## Contract Address / 合约地址

\````
0x1234...abcd
\````
```

### 4. 提交 PR

```bash
git add submissions/<你的GitHub用户名>/
git commit -m "Add project: <项目名>"
git push origin main
```

然后回到 GitHub 页面，点击 **Create Pull Request**，提交到本仓库的 `main` 分支。

### 5. 等待合并

PR 合并后你就自动进入抽奖名单了。

---

## 目录命名规范

```
submissions/
├── _template/              # 模板，别动
├── zhangsan/               # 正确
├── li-dev/                 # 正确
├── 我的超酷项目/             # 错误！用 GitHub 用户名
├── My Cool Project/        # 错误！用 GitHub 用户名
```

**规则：**
- 目录名 = 你的 **GitHub 用户名**
- 只用小写字母、数字、连字符
- 一个 GitHub ID 一个目录

---

## 常见问题

### 我的项目还没写完可以提交吗？

可以。只要填上项目名称、赛道和简介就行，链接可以先放 GitHub 仓库地址，后续通过新的 PR 更新。

### 一个人可以提交多个项目吗？

一个目录对应一个项目。如果想提交多个项目，可以在同一个 README 里追加，或者联系管理员。

### 团队项目怎么算？

由一名成员提交，在 README 的 Team 里列出所有成员的 GitHub ID，团队成员都有抽奖资格。

### 不在中文区可以提交吗？

本仓库面向中文社区，但你如果在中文社区活跃（微信群、Discord 中文频道等），欢迎提交。

### 抽奖怎么抽？

PR 合并后，你的 GitHub 用户名会自动进入参与者列表。抽奖时从列表中随机抽取。

---

## 一句话总结

**Fork → 复制模板 → 填信息 → 提 PR → 等合并 → 自动进抽奖池**
