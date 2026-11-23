.class Lcom/BaseAppCompatActivity$17;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/BaseAppCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/BaseAppCompatActivity;)V
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
    iput-object p1, p0, Lcom/BaseAppCompatActivity$17;->a:Lcom/BaseAppCompatActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/BaseAppCompatActivity$17;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/join/mgps/Util/UtilsMy;->M0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.wufun.unzip.failed"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/BaseAppCompatActivity$17;->a:Lcom/BaseAppCompatActivity;

    .line 14
    .line 15
    invoke-static {v0, p2, p1}, Lcom/BaseAppCompatActivity;->access$300(Lcom/BaseAppCompatActivity;Landroid/content/Intent;Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.deletecheckhasfile"

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    iget-object v0, p0, Lcom/BaseAppCompatActivity$17;->a:Lcom/BaseAppCompatActivity;

    .line 33
    .line 34
    iget-boolean v0, v0, Lcom/BaseAppCompatActivity;->isInBackground:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const-string v0, "plugNumber"

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v0, "gameZipPath"

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v0, "PackageName"

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string v0, "romType"

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    const-string v0, "gameName"

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_3

    .line 100
    .line 101
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_3

    .line 116
    .line 117
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->MD:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_3

    .line 132
    .line 133
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->SFC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_3

    .line 148
    .line 149
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_3

    .line 164
    .line 165
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->PS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_3

    .line 180
    .line 181
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->WSC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_3

    .line 196
    .line 197
    sget-object v0, Lcom/join/mgps/enums/ConstantIntEnum;->GBC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_2

    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_2
    new-instance v0, Lcom/join/mgps/customview/x;

    .line 215
    .line 216
    invoke-direct {v0, p1}, Lcom/join/mgps/customview/x;-><init>(Landroid/content/Context;)V

    .line 217
    .line 218
    .line 219
    new-instance v7, Lcom/d;

    .line 220
    .line 221
    move-object v1, v7

    .line 222
    move-object v2, p1

    .line 223
    invoke-direct/range {v1 .. v6}, Lcom/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v7}, Lcom/join/mgps/customview/x;->d(Lcom/join/mgps/customview/x$a;)V

    .line 227
    .line 228
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 230
    .line 231
    .line 232
    move-result-wide v1

    .line 233
    iget-object p1, p0, Lcom/BaseAppCompatActivity$17;->a:Lcom/BaseAppCompatActivity;

    .line 234
    .line 235
    iget-wide v3, p1, Lcom/BaseAppCompatActivity;->timeLastDe:J

    .line 236
    .line 237
    sub-long/2addr v1, v3

    .line 238
    const-wide/16 v3, 0x7d0

    .line 239
    .line 240
    cmp-long v5, v1, v3

    .line 241
    .line 242
    if-lez v5, :cond_a

    .line 243
    .line 244
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/customview/x;->e(Landroid/view/View;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lcom/BaseAppCompatActivity$17;->a:Lcom/BaseAppCompatActivity;

    .line 260
    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 262
    .line 263
    .line 264
    move-result-wide v0

    .line 265
    iput-wide v0, p1, Lcom/BaseAppCompatActivity;->timeLastDe:J

    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :cond_3
    :goto_0
    return-void

    .line 270
    :cond_4
    const-string p1, "com.wufun.down.androidversion"

    .line 271
    .line 272
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    const-string v0, "gameid"

    .line 281
    .line 282
    if-eqz p1, :cond_6

    .line 283
    .line 284
    iget-object p1, p0, Lcom/BaseAppCompatActivity$17;->a:Lcom/BaseAppCompatActivity;

    .line 285
    .line 286
    iget-boolean v1, p1, Lcom/BaseAppCompatActivity;->isInBackground:Z

    .line 287
    .line 288
    if-eqz v1, :cond_5

    .line 289
    .line 290
    return-void

    .line 291
    :cond_5
    invoke-static {p1}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    iget-object v1, p0, Lcom/BaseAppCompatActivity$17;->a:Lcom/BaseAppCompatActivity;

    .line 296
    .line 297
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    invoke-virtual {p1, v1, p2}, Lcom/join/mgps/Util/g0;->P(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    goto :goto_1

    .line 305
    :cond_6
    const-string p1, "com.wufun.down.arch.unsupported"

    .line 306
    .line 307
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    const/16 v1, 0x60

    .line 316
    .line 317
    if-eqz p1, :cond_8

    .line 318
    .line 319
    iget-object p1, p0, Lcom/BaseAppCompatActivity$17;->a:Lcom/BaseAppCompatActivity;

    .line 320
    .line 321
    iget-boolean v2, p1, Lcom/BaseAppCompatActivity;->isInBackground:Z

    .line 322
    .line 323
    if-eqz v2, :cond_7

    .line 324
    .line 325
    return-void

    .line 326
    :cond_7
    invoke-static {p1}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    iget-object v2, p0, Lcom/BaseAppCompatActivity$17;->a:Lcom/BaseAppCompatActivity;

    .line 331
    .line 332
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    const-string v3, "cpuType"

    .line 337
    .line 338
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 339
    .line 340
    .line 341
    move-result p2

    .line 342
    invoke-virtual {p1, v2, v0, p2}, Lcom/join/mgps/Util/g0;->Q(Landroid/content/Context;Ljava/lang/String;I)V

    .line 343
    .line 344
    .line 345
    goto :goto_1

    .line 346
    :cond_8
    const-string p1, "com.wufun.launch.arch.unsupported"

    .line 347
    .line 348
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    if-eqz p1, :cond_a

    .line 357
    .line 358
    iget-object p1, p0, Lcom/BaseAppCompatActivity$17;->a:Lcom/BaseAppCompatActivity;

    .line 359
    .line 360
    iget-boolean v0, p1, Lcom/BaseAppCompatActivity;->isInBackground:Z

    .line 361
    .line 362
    if-eqz v0, :cond_9

    .line 363
    .line 364
    return-void

    .line 365
    :cond_9
    invoke-static {p1}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    iget-object v0, p0, Lcom/BaseAppCompatActivity$17;->a:Lcom/BaseAppCompatActivity;

    .line 370
    .line 371
    const-string v2, "args"

    .line 372
    .line 373
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    const-string v3, "gameId"

    .line 378
    .line 379
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    const-string v4, "needBit"

    .line 384
    .line 385
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 386
    .line 387
    .line 388
    move-result p2

    .line 389
    invoke-virtual {p1, v0, v2, v3, p2}, Lcom/join/mgps/Util/g0;->T(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 390
    .line 391
    .line 392
    :cond_a
    :goto_1
    return-void
.end method
