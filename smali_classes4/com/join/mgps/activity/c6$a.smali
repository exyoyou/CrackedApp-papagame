.class Lcom/join/mgps/activity/c6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/c6;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/c6;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/c6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/c6$a;->a:Lcom/join/mgps/activity/c6;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "view",
            "position"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/c6$a;->a:Lcom/join/mgps/activity/c6;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/c6;->f:Lcom/join/mgps/activity/c6$b;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const v0, 0x7f0a02a5

    .line 16
    .line 17
    .line 18
    if-ne p2, v0, :cond_5

    .line 19
    .line 20
    if-eqz p1, :cond_5

    .line 21
    .line 22
    iget-object p2, p0, Lcom/join/mgps/activity/c6$a;->a:Lcom/join/mgps/activity/c6;

    .line 23
    .line 24
    iget v0, p2, Lcom/join/mgps/activity/c6;->h:I

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    if-ne v0, v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isSo()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    iget-object p2, p0, Lcom/join/mgps/activity/c6$a;->a:Lcom/join/mgps/activity/c6;

    .line 42
    .line 43
    invoke-static {p2}, Lcom/join/mgps/activity/c6;->a(Lcom/join/mgps/activity/c6;)Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    sget-object p3, Lcom/papa/sim/statistic/Event;->onclickSoGameStart:Lcom/papa/sim/statistic/Event;

    .line 52
    .line 53
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 54
    .line 55
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p2, p3, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/c6$a;->a:Lcom/join/mgps/activity/c6;

    .line 75
    .line 76
    invoke-static {p2}, Lcom/join/mgps/activity/c6;->a(Lcom/join/mgps/activity/c6;)Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    sget-object p3, Lcom/papa/sim/statistic/Event;->onclickSoGameStart:Lcom/papa/sim/statistic/Event;

    .line 85
    .line 86
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 87
    .line 88
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p2, p3, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_2

    .line 108
    .line 109
    iget-object p2, p0, Lcom/join/mgps/activity/c6$a;->a:Lcom/join/mgps/activity/c6;

    .line 110
    .line 111
    invoke-static {p2}, Lcom/join/mgps/activity/c6;->a(Lcom/join/mgps/activity/c6;)Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    sget-object p3, Lcom/papa/sim/statistic/Event;->onclickSinGameStart:Lcom/papa/sim/statistic/Event;

    .line 120
    .line 121
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 122
    .line 123
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p2, p3, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/c6$a;->a:Lcom/join/mgps/activity/c6;

    .line 143
    .line 144
    invoke-static {p2}, Lcom/join/mgps/activity/c6;->a(Lcom/join/mgps/activity/c6;)Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    sget-object p3, Lcom/papa/sim/statistic/Event;->onclickSinGameStart:Lcom/papa/sim/statistic/Event;

    .line 153
    .line 154
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 155
    .line 156
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p2, p3, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 168
    .line 169
    .line 170
    :goto_0
    iget-object p2, p0, Lcom/join/mgps/activity/c6$a;->a:Lcom/join/mgps/activity/c6;

    .line 171
    .line 172
    invoke-static {p2}, Lcom/join/mgps/activity/c6;->a(Lcom/join/mgps/activity/c6;)Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    sget-object p3, Lcom/papa/sim/statistic/Event;->onclickGameStart:Lcom/papa/sim/statistic/Event;

    .line 181
    .line 182
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 183
    .line 184
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p2, p3, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 196
    .line 197
    .line 198
    iget-object p2, p0, Lcom/join/mgps/activity/c6$a;->a:Lcom/join/mgps/activity/c6;

    .line 199
    .line 200
    invoke-static {p2}, Lcom/join/mgps/activity/c6;->a(Lcom/join/mgps/activity/c6;)Landroid/content/Context;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lcom/join/mgps/activity/c6$a;->a:Lcom/join/mgps/activity/c6;

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_3
    invoke-static {p2, p1}, Lcom/join/mgps/activity/c6;->b(Lcom/join/mgps/activity/c6;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 214
    .line 215
    .line 216
    iget-object p2, p0, Lcom/join/mgps/activity/c6$a;->a:Lcom/join/mgps/activity/c6;

    .line 217
    .line 218
    invoke-static {p2}, Lcom/join/mgps/activity/c6;->a(Lcom/join/mgps/activity/c6;)Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    sget-object v0, Lcom/papa/sim/statistic/Event;->onclickGameInstall:Lcom/papa/sim/statistic/Event;

    .line 227
    .line 228
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 229
    .line 230
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {v1, p1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 242
    .line 243
    .line 244
    iget-object p1, p0, Lcom/join/mgps/activity/c6$a;->a:Lcom/join/mgps/activity/c6;

    .line 245
    .line 246
    iget-object p1, p1, Lcom/join/mgps/activity/c6;->f:Lcom/join/mgps/activity/c6$b;

    .line 247
    .line 248
    invoke-virtual {p1, p3}, Lcom/join/mgps/base/BaseQuickAdapter;->remove(I)V

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Lcom/join/mgps/activity/c6$a;->a:Lcom/join/mgps/activity/c6;

    .line 252
    .line 253
    iget-object p1, p1, Lcom/join/mgps/activity/c6;->f:Lcom/join/mgps/activity/c6$b;

    .line 254
    .line 255
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Lcom/join/mgps/activity/c6$a;->a:Lcom/join/mgps/activity/c6;

    .line 259
    .line 260
    iget-object p1, p1, Lcom/join/mgps/activity/c6;->f:Lcom/join/mgps/activity/c6$b;

    .line 261
    .line 262
    invoke-virtual {p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    if-gtz p1, :cond_4

    .line 267
    .line 268
    iget-object p1, p0, Lcom/join/mgps/activity/c6$a;->a:Lcom/join/mgps/activity/c6;

    .line 269
    .line 270
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 271
    .line 272
    .line 273
    goto :goto_1

    .line 274
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/c6$a;->a:Lcom/join/mgps/activity/c6;

    .line 275
    .line 276
    invoke-static {p1}, Lcom/join/mgps/activity/c6;->c(Lcom/join/mgps/activity/c6;)V

    .line 277
    .line 278
    .line 279
    :cond_5
    :goto_1
    return-void
.end method
