# yuma
聿码是一种汉字形码输入方案，发明人子聿。吸收了郑易理先生发明的郑码输入法（以及至至加以精简改进的三码郑码）、徐码输入法、宇浩码输入法的优良特性，并结合二笔输入法的思想，简化字根和罗马字母的映射关系。如此，既保留了字根码输入法对汉字的拆分自然直观，又解除了字根记忆的繁重负担。力求真正做到三”易“：易学、易懂、易用。

使用方法：
1，目前聿码输入法只支持RIME输入平台。以后可能会考虑支持其它输入法，例如，可能会添加IBUS，FCITX输入法的直接支持（在Linux上推荐IBUS-RIME，FCITX-RIME，FCITX5-RIME），添加适配小小输入法的码表，等等。
2，把yuma.schema.yaml,yuma3.dict.yaml文件下载后，放进相应rime的配置文件目录下，重新部署即可。Linux上，这个目录会是~/.config/ibus/rime, ~/.config/fcitx/rime, ~/.local/fcitx5/rime.
3，在yuma.schema.yaml反查定义项中，作者用的是自然码双拼输入zrm2000来反查。zrm2000也有github repository，也是基于RIME平台的。用者可以自己搜索安装。用户也可用其它办法反查。这在相关注释行中有解释。
