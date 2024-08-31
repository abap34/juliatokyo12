---
marp: true
paginate: true
math: mathjax
theme: honwaka
---

<!-- _header: 全体のまとめ -->

- 擬似乱数生成器 (PRNG) を使うことで高速に再現性を持った「乱数」を生成でき、さまざまな計算に活用できる。
- さまざまな擬似乱数生成器が存在して、乱数検定などでその質を考察できる。
- 並列計算をするときは再現性に注意が必要。 Julia を使うことでそこまで意識せずとも再現性を持った乱数生成ができる!

<br>

<span style="font-size: 0.8em;">
(おまけ...この置き換えまわりの Issue, PR の議論はとても参考になるし面白いのでおすすめです: https://github.com/JuliaLang/julia/pull/34852 からだいたい辿れるはず)
</span>


---



<!-- _header: Appendix -->

<div style="font-size: 0.6em;">

### 参考文献


[1] 伏見正則. 乱数. 筑摩書房, 2023.

[2] L’Ecuyer, Pierre, et al. "Random numbers for parallel computers: Requirements and methods, with emphasis on GPUs." Mathematics and Computers in Simulation 135 (2017): 3-17. 

[3] 松本 眞. あなたの使っている乱数、大丈夫？ -危ない標準乱数と、メルセンヌ・ツイスター開発秘話-. http://www.math.sci.hiroshima-u.ac.jp/m-mat/TEACH/ichimura-sho-koen.pdf.

[4] Vigna, Sebastiano. "It is high time we let go of the Mersenne Twister." arXiv preprint arXiv:1910.06437 (2019).

[5] Chris Wellons. "Finding the Best 64-bit Simulation PRNG". https://nullprogram.com/blog/2017/09/21/

[6] L’Ecuyer, Pierre, et al. "Random numbers for parallel computers: Requirements and methods, with emphasis on GPUs." Mathematics and Computers in Simulation 135 (2017): 3-17.

### ソースコード

https://github.com/abap34/juliatokyo12


</div>