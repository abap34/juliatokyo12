---
marp: true
paginate: true
math: mathjax
theme: honwaka
---

<div class="toc-sec">

<div class="secname">

[3] 並列実行と再現性

</div>

<div class="content">

- 並列計算入門
- 再現性が失われる例

</div>

</div>

---

<!-- _header: 並列計算 -->

## ✅ 重要な事実:
## 現代の科学技術計算は <span style="font-size: 1.5em;">**並列化**</span> 抜きには考えられない

---

<!-- _header: 並列計算入門 -->

<div class="def">

### [並列処理 (Parallel Processing)] 

- <span style="font-size: 1.2em; color:red;"> **同時点**</span> で複数の計算を行うこと　$^{*1}$
- <span style="color: black;">とてもとても単純に考えれば、</span> 2つのことを同時にやれば2倍速くなるので、処理を早く終わらせることができる！


</div>

![bg right:33% 70%](img/multiprocess.png)

<div class="cite">

$^{*1}$ 逆に(?)、特定の期間で複数の計算を (実際の実行形態はともかく) 行うことを並行処理 (Concurrent Processing) と呼びます。

</div>

---

<!-- _header: プロセスとスレッド -->

<div style="font-size: 0.9em;">


## <span class="bluelined">プロセス (Process)</span>

- 実行中のプログラムのインスタンス
- OS は各プロセスにメモリ空間を割り当てたりして、各プロセスが独立して動作するようにしている

</div>


![bg right:50% h:500](img/process.png)

---

<!-- _header: プロセスとスレッド -->

## <span class="bluelined">スレッド (Thread)</span>

- 「軽量プロセス」とも 
- **同じプロセスから作られた他のスレッドとメモリ空間などを共有している**


![bg right h:500](img/thread.png)

---

<!-- _header: 並列計算入門 -->

<br>

<br>

<div style="font-size: 0.9em;">

## 1. <span class="bluelined">マルチプロセス (Multiprocessing) </span>


- プロセスを複数立ち上げて、それぞれのプロセスで計算を行う
  - ので、メモリ空間は独立で、競合しづらい
  - 逆に、データのやりとりのオーバーヘッドが大きい
  - プロセスの作成自体も割と高コスト

## 2. <span class="bluelined">マルチスレッド (Multithreading) </span>

- プロセス内で複数のスレッドを立ち上げて、それぞれのスレッドで計算を行う
  - メモリ空間は共有なので、データをメモリに置くだけで「通信」できる
  - 逆に、競合が起きて大変なことになる可能性がある
  - プロセスよりは作成が軽い

</div>

---
