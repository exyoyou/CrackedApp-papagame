.class Lcom/join/mgps/activity/ModGameIndexActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->showTabUi(Lcom/join/mgps/dto/ModGameDetailBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f0a0fee

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->tabDatas:Ljava/util/List;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/join/mgps/activity/ModGameIndexActivity$z;

    .line 35
    .line 36
    iget v1, v1, Lcom/join/mgps/activity/ModGameIndexActivity$z;->b:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const v1, 0x7f0a084f

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/ImageView;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const v3, 0x7f0a10d8

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Landroid/widget/TextView;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 68
    .line 69
    iget-object v3, v3, Lcom/join/mgps/activity/ModGameIndexActivity;->tabDatas:Ljava/util/List;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lcom/join/mgps/activity/ModGameIndexActivity$z;

    .line 80
    .line 81
    iget v3, v3, Lcom/join/mgps/activity/ModGameIndexActivity$z;->d:I

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabDatas:Ljava/util/List;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/join/mgps/activity/ModGameIndexActivity$z;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity$z;->e:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabDatas:Ljava/util/List;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/join/mgps/activity/ModGameIndexActivity$z;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity$z;->f:Ljava/lang/String;

    .line 124
    .line 125
    const-string v2, "MOD"

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    const-string v2, "1"

    .line 132
    .line 133
    if-eqz v0, :cond_1

    .line 134
    .line 135
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 136
    .line 137
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    sget-object v0, Lcom/papa/sim/statistic/Event;->changeCloudItTab:Lcom/papa/sim/statistic/Event;

    .line 142
    .line 143
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 144
    .line 145
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 153
    .line 154
    iget-object v2, v2, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabDatas:Ljava/util/List;

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Lcom/join/mgps/activity/ModGameIndexActivity$z;

    .line 178
    .line 179
    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity$z;->f:Ljava/lang/String;

    .line 180
    .line 181
    const-string v3, "\u6211\u7684\u5b58\u6863"

    .line 182
    .line 183
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    const-string v3, "2"

    .line 188
    .line 189
    if-eqz v0, :cond_2

    .line 190
    .line 191
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 192
    .line 193
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    sget-object v0, Lcom/papa/sim/statistic/Event;->changeCloudItTab:Lcom/papa/sim/statistic/Event;

    .line 198
    .line 199
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 200
    .line 201
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 214
    .line 215
    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabDatas:Ljava/util/List;

    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    check-cast v0, Lcom/join/mgps/activity/ModGameIndexActivity$z;

    .line 226
    .line 227
    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity$z;->f:Ljava/lang/String;

    .line 228
    .line 229
    const-string v4, "\u653b\u7565"

    .line 230
    .line 231
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_3

    .line 236
    .line 237
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    const v4, 0x7f0a18cc

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const/16 v4, 0x8

    .line 249
    .line 250
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    const v5, 0x7f0a085a

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    const/4 v0, 0x0

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 280
    .line 281
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    sget-object v5, Lcom/papa/sim/statistic/Event;->singleStartGamePageList:Lcom/papa/sim/statistic/Event;

    .line 286
    .line 287
    sget-object v6, Lcom/papa/sim/statistic/Event;->ClickIntroTab:Lcom/papa/sim/statistic/Event;

    .line 288
    .line 289
    const-string v7, ""

    .line 290
    .line 291
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 292
    .line 293
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 297
    .line 298
    .line 299
    move-result-object v8

    .line 300
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 301
    .line 302
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 306
    .line 307
    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 310
    .line 311
    .line 312
    move-result-object v9

    .line 313
    invoke-virtual/range {v4 .. v9}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 314
    .line 315
    .line 316
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 317
    .line 318
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    sget-object v0, Lcom/papa/sim/statistic/Event;->changeCloudItTab:Lcom/papa/sim/statistic/Event;

    .line 323
    .line 324
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 325
    .line 326
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 334
    .line 335
    iget-object v2, v2, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 342
    .line 343
    .line 344
    goto :goto_0

    .line 345
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 346
    .line 347
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    sget-object v0, Lcom/papa/sim/statistic/Event;->changeCloudItTab:Lcom/papa/sim/statistic/Event;

    .line 352
    .line 353
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 354
    .line 355
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 356
    .line 357
    .line 358
    const-string v2, "0"

    .line 359
    .line 360
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 365
    .line 366
    iget-object v2, v2, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 367
    .line 368
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 373
    .line 374
    .line 375
    :cond_4
    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f0a0fee

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const v1, 0x7f08009c

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const v1, 0x7f0a084f

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const v3, 0x7f0a10d8

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 55
    .line 56
    iget-object v3, v3, Lcom/join/mgps/activity/ModGameIndexActivity;->tabDatas:Ljava/util/List;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lcom/join/mgps/activity/ModGameIndexActivity$z;

    .line 67
    .line 68
    iget v3, v3, Lcom/join/mgps/activity/ModGameIndexActivity$z;->a:I

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabDatas:Ljava/util/List;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/join/mgps/activity/ModGameIndexActivity$z;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity$z;->c:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$l;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->tabDatas:Ljava/util/List;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lcom/join/mgps/activity/ModGameIndexActivity$z;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity$z;->f:Ljava/lang/String;

    .line 111
    .line 112
    const-string v2, "\u653b\u7565"

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const/16 v1, 0x8

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const v0, 0x7f0a085a

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    :cond_1
    :goto_0
    return-void
.end method
