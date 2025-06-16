#!/bin/sh
# 手工修正词语码表中班斑两字的编码。目前自动拆分系统不能正确处理玨（jue2，同珏，𤤴）字框。
# 班斑两字的正确拆分应该是玨字框再加中间的部分。在修正单字编码后，词语编码部分，需要特别加以注意。
# 例如，玨框的编码如为dd，竖刀的编码为ed，文字的编码为qw，则班的三码编码应为ded，而不是dde；斑的三码编码应为dqw，而不是ddq。
# 在修正单字部分的三码编码后（也可用下面的sed命令），词语部分的四码编码可用以下命令统一修改：

##一，修正含斑字的编码
sed "/斑/s/dd/dq/g" code.txt > code.txt.a.1
# 但是有这几个词语中有叠用斑字的情况：斑斑，斑斑点点，劣迹斑斑，血迹斑斑，锈迹斑斑，除了第一个双音节词斑斑的编码确实需要修正，其它三个四字词语，其实不需要修改（所以需要还原上面sed命令的修改）。
sed "/迹斑斑/s/dq/dd/g" code.txt.a.1 > code.txt.a

##二，修正含班字的编码
sed "/班/s/dd/de/g" code.txt.a > code.txt.b.1
# 同样地，上述sed命令的修改中有这样两处问题：1)大班这个双音节词的编码错为jddd，但是正确的编码应该是jdde，而不是jded（即，应替换后后出现的dd，而不是前出现的dd）；2)另有两个三音节词语末班车和班干部的正确编码本来就应该分别是ddki和ddqi，无需修改，所以需要复原。
sed "/大班/s/ded/dde/g" code.txt.b.1 > code.txt.b.2
sed "/末班车/s/de/dd/g" code.txt.b.2 > code.txt.b.3
sed "/班干部/s/de/dd/g" code.txt.b.3 > code.txt.b

# 以上，确认无误后，再可恢复文件命名，清理多余临时文件。
cp -i code.txt.b code.txt
rm -i code.txt.a* code.txt.b*

