.class public Lcom/join/mgps/dialog/l0;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/l0$d;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/join/mgps/dto/Filepath;

.field private f:Lcom/join/mgps/dto/Filepath;

.field private g:Lcom/join/mgps/dialog/l0$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dialog/l0;->c:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/dialog/l0;->d:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/l0;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "theme"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p2, ""

    .line 6
    iput-object p2, p0, Lcom/join/mgps/dialog/l0;->c:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/join/mgps/dialog/l0;->d:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/join/mgps/dialog/l0;->b:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cancelable",
            "cancelListener"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const-string p2, ""

    .line 10
    iput-object p2, p0, Lcom/join/mgps/dialog/l0;->c:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/join/mgps/dialog/l0;->d:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/join/mgps/dialog/l0;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/l0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/l0;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/l0;)Lcom/join/mgps/dto/Filepath;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/l0;->e:Lcom/join/mgps/dto/Filepath;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/dialog/l0;)Lcom/join/mgps/dialog/l0$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/l0;->g:Lcom/join/mgps/dialog/l0$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/dialog/l0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/l0;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/dialog/l0;)Lcom/join/mgps/dto/Filepath;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/l0;->f:Lcom/join/mgps/dto/Filepath;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/dialog/l0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/l0;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public g(Lcom/join/mgps/dialog/l0$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "choicedWhat"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/l0;->g:Lcom/join/mgps/dialog/l0$d;

    .line 2
    .line 3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0d0250

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f0a0347

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/CheckBox;

    .line 20
    .line 21
    const v2, 0x7f0a0346

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/widget/CheckBox;

    .line 29
    .line 30
    const v3, 0x7f0a0f8b

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroid/widget/TextView;

    .line 38
    .line 39
    const v4, 0x7f0a0f8c

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Landroid/widget/TextView;

    .line 47
    .line 48
    const v5, 0x7f0a0338

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Landroid/widget/TextView;

    .line 56
    .line 57
    const v6, 0x7f0a115f

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Landroid/widget/LinearLayout;

    .line 65
    .line 66
    const v7, 0x7f0a149a

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    check-cast v7, Landroid/widget/TextView;

    .line 74
    .line 75
    const v8, 0x7f0a1499

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    check-cast v8, Landroid/widget/TextView;

    .line 83
    .line 84
    const v9, 0x7f0a0f88

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    check-cast v9, Landroid/widget/RelativeLayout;

    .line 92
    .line 93
    const v10, 0x7f0a1498

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    check-cast v10, Landroid/widget/RelativeLayout;

    .line 101
    .line 102
    const/16 v11, 0x8

    .line 103
    .line 104
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object v12, v0, Lcom/join/mgps/dialog/l0;->b:Landroid/content/Context;

    .line 108
    .line 109
    invoke-static {v12}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    invoke-virtual {v12}, Lcom/join/mgps/pref/h;->g()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    iget-object v13, v0, Lcom/join/mgps/dialog/l0;->b:Landroid/content/Context;

    .line 118
    .line 119
    invoke-static {v13}, Lcom/join/mgps/Util/f2;->a(Landroid/content/Context;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    if-eqz v13, :cond_6

    .line 124
    .line 125
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    if-nez v15, :cond_0

    .line 130
    .line 131
    goto/16 :goto_2

    .line 132
    .line 133
    :cond_0
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v13

    .line 141
    if-eqz v13, :cond_5

    .line 142
    .line 143
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    check-cast v13, Lcom/join/mgps/dto/Filepath;

    .line 148
    .line 149
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->isIslocal()Z

    .line 150
    .line 151
    .line 152
    move-result v15

    .line 153
    const-string v14, "/\u603b"

    .line 154
    .line 155
    const-string v11, "\u53ef\u7528:"

    .line 156
    .line 157
    if-eqz v15, :cond_2

    .line 158
    .line 159
    iput-object v13, v0, Lcom/join/mgps/dialog/l0;->e:Lcom/join/mgps/dto/Filepath;

    .line 160
    .line 161
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v15

    .line 165
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v15

    .line 169
    if-eqz v15, :cond_1

    .line 170
    .line 171
    const/4 v15, 0x1

    .line 172
    invoke-virtual {v1, v15}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 173
    .line 174
    .line 175
    const/4 v15, 0x0

    .line 176
    invoke-virtual {v2, v15}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 177
    .line 178
    .line 179
    :cond_1
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v15

    .line 183
    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v15

    .line 190
    iput-object v15, v0, Lcom/join/mgps/dialog/l0;->c:Ljava/lang/String;

    .line 191
    .line 192
    new-instance v15, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getAvailable()J

    .line 201
    .line 202
    .line 203
    move-result-wide v16

    .line 204
    invoke-static/range {v16 .. v17}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getAllsize()J

    .line 215
    .line 216
    .line 217
    move-result-wide v13

    .line 218
    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v11

    .line 222
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_2
    iput-object v13, v0, Lcom/join/mgps/dialog/l0;->f:Lcom/join/mgps/dto/Filepath;

    .line 234
    .line 235
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v15

    .line 239
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v15

    .line 243
    if-eqz v15, :cond_3

    .line 244
    .line 245
    const/4 v15, 0x0

    .line 246
    invoke-virtual {v1, v15}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 247
    .line 248
    .line 249
    const/4 v15, 0x1

    .line 250
    invoke-virtual {v2, v15}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 251
    .line 252
    .line 253
    :cond_3
    const/4 v15, 0x0

    .line 254
    invoke-virtual {v10, v15}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v15

    .line 261
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v15

    .line 268
    iput-object v15, v0, Lcom/join/mgps/dialog/l0;->d:Ljava/lang/String;

    .line 269
    .line 270
    new-instance v15, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getAvailable()J

    .line 279
    .line 280
    .line 281
    move-result-wide v16

    .line 282
    invoke-static/range {v16 .. v17}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v11

    .line 286
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v13}, Lcom/join/mgps/dto/Filepath;->getAllsize()J

    .line 293
    .line 294
    .line 295
    move-result-wide v13

    .line 296
    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v11

    .line 300
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v11

    .line 307
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    .line 309
    .line 310
    iget-object v11, v0, Lcom/join/mgps/dialog/l0;->d:Ljava/lang/String;

    .line 311
    .line 312
    const-string v13, "/Android/data"

    .line 313
    .line 314
    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 315
    .line 316
    .line 317
    move-result v11

    .line 318
    if-eqz v11, :cond_4

    .line 319
    .line 320
    const/4 v11, 0x0

    .line 321
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 322
    .line 323
    .line 324
    goto :goto_1

    .line 325
    :cond_4
    const/16 v11, 0x8

    .line 326
    .line 327
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 328
    .line 329
    .line 330
    :goto_1
    const/16 v11, 0x8

    .line 331
    .line 332
    goto/16 :goto_0

    .line 333
    .line 334
    :cond_5
    new-instance v1, Lcom/join/mgps/dialog/l0$a;

    .line 335
    .line 336
    invoke-direct {v1, v0}, Lcom/join/mgps/dialog/l0$a;-><init>(Lcom/join/mgps/dialog/l0;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    .line 341
    .line 342
    new-instance v1, Lcom/join/mgps/dialog/l0$b;

    .line 343
    .line 344
    invoke-direct {v1, v0}, Lcom/join/mgps/dialog/l0$b;-><init>(Lcom/join/mgps/dialog/l0;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    .line 349
    .line 350
    new-instance v1, Lcom/join/mgps/dialog/l0$c;

    .line 351
    .line 352
    invoke-direct {v1, v0}, Lcom/join/mgps/dialog/l0$c;-><init>(Lcom/join/mgps/dialog/l0;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v10, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    .line 357
    .line 358
    return-void

    .line 359
    :cond_6
    :goto_2
    const/16 v1, 0x8

    .line 360
    .line 361
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 362
    .line 363
    .line 364
    const/4 v1, 0x0

    .line 365
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    .line 367
    .line 368
    const-string v1, "\u6ca1\u6709\u53ef\u9009\u4e0b\u8f7d\u4f4d\u7f6e"

    .line 369
    .line 370
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 371
    .line 372
    invoke-virtual {v5, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 373
    .line 374
    .line 375
    return-void
.end method
