# 我的算法竞赛板子（LaTeX）

用 LaTeX 写的算法竞赛速查模板，两栏排版、窄边距，主打**省纸**：打印出来能直接带进考场翻。

内容分四块：

| 章节 | 内容 |
| --- | --- |
| 1 杂项 | 区间排序扫描、树状数组小 trick、板子汇总 |
| 2 数据结构 | 并查集、树状数组、线段树、ST 表等 |
| 3 图论 | 最短路（Dijkstra/Johnson/SPFA/Bellman）、生成树（Kruskal/Prim/严格次小）、LCA、SCC、割点割桥、点双、2-SAT、欧拉回路 |
| 4 语法注意事项 | 写题时踩过的 C++ 坑，比如默认参数、char 拼字符串 |

## 怎么编译

需要 TeX Live（或 MacTeX / MiKTeX），用 **XeLaTeX** 编译，因为用了 ctex 和系统字体。

```bash
xelatex main.tex
xelatex main.tex   # 第二遍生成目录和交叉引用
```

VS Code + LaTeX Workshop 的话，直接按 `Ctrl+Alt+B`。

## 怎么改成自己的

- 正文都在 `main.tex`，按 `\section` / `\subsection` / `\subsubsection` 分层
- 代码块用 `lstlisting` 环境，里面放什么就是什么，不用转义
- 想引用外部 `.cpp` 文件，用 `\lstinputlisting[language=C++]{code/xxx.cpp}`
- 标题里出现 `&` `%` `$` `#` `_` 要加反斜杠转义，比如 `bridge\&cut`

## 目录结构

```
main.tex      正文
main.pdf      编译产物（已提交，方便直接看）
.gitignore    忽略 aux/log/toc 等中间文件
```

## License

随便用，能帮上忙就行。
