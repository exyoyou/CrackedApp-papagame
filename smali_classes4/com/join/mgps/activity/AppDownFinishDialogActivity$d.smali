.class public Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/activity/AppDownFinishDialogActivity$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/AppDownFinishDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/join/mgps/activity/AppDownFinishDialogActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/AppDownFinishDialogActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->c:Lcom/join/mgps/activity/AppDownFinishDialogActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->b:Ljava/util/List;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->a:Ljava/util/List;

    .line 19
    .line 20
    return-void
.end method

.method private c(Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;Landroid/view/View;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const v0, 0x7f0a094d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    .line 14
    .line 15
    const v1, 0x7f0a1767

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/TextView;

    .line 23
    .line 24
    const v2, 0x7f0a084f

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    const v3, 0x7f0a02fb

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/widget/ImageView;

    .line 41
    .line 42
    const v4, 0x7f0a1a16

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/widget/TextView;

    .line 50
    .line 51
    const v5, 0x7f0a0a84

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Landroid/widget/ImageView;

    .line 59
    .line 60
    const v6, 0x7f0a1764

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Landroid/widget/TextView;

    .line 68
    .line 69
    iget-object v7, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 70
    .line 71
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-static {v7}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    const/4 v8, 0x0

    .line 80
    const/16 v9, 0x8

    .line 81
    .line 82
    if-nez v7, :cond_2

    .line 83
    .line 84
    iget-object v7, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 85
    .line 86
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    const/4 v10, 0x0

    .line 99
    cmpg-float v7, v7, v10

    .line 100
    .line 101
    if-gtz v7, :cond_1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object v7, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 108
    .line 109
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getScore()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    :goto_0
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    :goto_1
    iget-object v4, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 127
    .line 128
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    if-eqz v4, :cond_4

    .line 133
    .line 134
    iget-object v4, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 135
    .line 136
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    if-nez v4, :cond_3

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_3
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    iget-object v4, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 151
    .line 152
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_4
    :goto_2
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    :goto_3
    sget-object v4, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    iget-object v5, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 178
    .line 179
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    const/4 v5, 0x1

    .line 188
    if-eqz v4, :cond_6

    .line 189
    .line 190
    const-string v4, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 191
    .line 192
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_5

    .line 202
    .line 203
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->c:Lcom/join/mgps/activity/AppDownFinishDialogActivity;

    .line 204
    .line 205
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    sget-object v4, Lcom/papa/sim/statistic/Event;->showSoGameStart:Lcom/papa/sim/statistic/Event;

    .line 210
    .line 211
    new-instance v6, Lcom/papa/sim/statistic/Ext;

    .line 212
    .line 213
    invoke-direct {v6}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 214
    .line 215
    .line 216
    iget-object v7, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 217
    .line 218
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-virtual {v6, v5}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v0, v4, v5}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 231
    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->c:Lcom/join/mgps/activity/AppDownFinishDialogActivity;

    .line 235
    .line 236
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    sget-object v4, Lcom/papa/sim/statistic/Event;->showSoGameStart:Lcom/papa/sim/statistic/Event;

    .line 241
    .line 242
    new-instance v5, Lcom/papa/sim/statistic/Ext;

    .line 243
    .line 244
    invoke-direct {v5}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 245
    .line 246
    .line 247
    iget-object v6, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 248
    .line 249
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-virtual {v5, v6}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-virtual {v0, v4, v5}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 258
    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_6
    iget-object v4, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 262
    .line 263
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-eqz v4, :cond_7

    .line 268
    .line 269
    iget-object v4, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->c:Lcom/join/mgps/activity/AppDownFinishDialogActivity;

    .line 270
    .line 271
    invoke-static {v4}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    sget-object v6, Lcom/papa/sim/statistic/Event;->showSinGameStart:Lcom/papa/sim/statistic/Event;

    .line 276
    .line 277
    new-instance v7, Lcom/papa/sim/statistic/Ext;

    .line 278
    .line 279
    invoke-direct {v7}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 280
    .line 281
    .line 282
    iget-object v8, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 283
    .line 284
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    invoke-virtual {v7, v8}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    invoke-virtual {v7, v5}, Lcom/papa/sim/statistic/Ext;->setGameFlag(I)Lcom/papa/sim/statistic/Ext;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-virtual {v4, v6, v5}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 297
    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_7
    iget-object v4, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->c:Lcom/join/mgps/activity/AppDownFinishDialogActivity;

    .line 301
    .line 302
    invoke-static {v4}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    sget-object v5, Lcom/papa/sim/statistic/Event;->showSinGameStart:Lcom/papa/sim/statistic/Event;

    .line 307
    .line 308
    new-instance v6, Lcom/papa/sim/statistic/Ext;

    .line 309
    .line 310
    invoke-direct {v6}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 311
    .line 312
    .line 313
    iget-object v7, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 314
    .line 315
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    invoke-virtual {v6, v7}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    invoke-virtual {v4, v5, v6}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 324
    .line 325
    .line 326
    :goto_4
    const-string v4, "\u5b89\u88c5\u5b8c\u6210"

    .line 327
    .line 328
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    .line 330
    .line 331
    :goto_5
    iget-object v0, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 332
    .line 333
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-static {v2, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iget-object v0, p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 341
    .line 342
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    .line 348
    .line 349
    const v0, 0x7f0a19e5

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 353
    .line 354
    .line 355
    move-result-object p2

    .line 356
    new-instance v0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$a;

    .line 357
    .line 358
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$a;-><init>(Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    .line 363
    .line 364
    new-instance p2, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$b;

    .line 365
    .line 366
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d$b;-><init>(Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    .line 371
    .line 372
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    return-object p1
.end method

.method public b(Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->a:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->b:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "position",
            "object"
        }
    .end annotation

    .line 1
    check-cast p3, Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->a:Ljava/util/List;

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    invoke-interface {p1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "container",
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0d03b7

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->b:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;

    .line 27
    .line 28
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->c(Lcom/join/mgps/activity/AppDownFinishDialogActivity$c;Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/AppDownFinishDialogActivity$d;->a:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "object"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
