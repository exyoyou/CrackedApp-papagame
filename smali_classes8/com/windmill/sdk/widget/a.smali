.class public Lcom/windmill/sdk/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/widget/a$a;,
        Lcom/windmill/sdk/widget/a$b;
    }
.end annotation


# instance fields
.field private a:I

.field public autoPlayMuted:I

.field private b:I

.field private c:Lcom/windmill/sdk/widget/CircleWebView;

.field public close_position:I

.field public close_style:I

.field public listener:Lcom/windmill/sdk/widget/ViewInteractionListener;

.field public mistake_click_rate:I

.field public nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

.field public nativeBtnStyle:I

.field public nativeRenderOri:I

.field public nativeRenderType:I

.field public nativeShakeAd:I

.field public nativeSkipTime:I

.field public nativeTemplateId:Ljava/lang/String;

.field public nativeTotalTime:I

.field public privacy_url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/windmill/sdk/natives/WMNativeAdData;Ljava/util/Map;Lcom/windmill/sdk/widget/ViewInteractionListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeAdData",
            "serverExtra",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/windmill/sdk/widget/ViewInteractionListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/windmill/sdk/widget/a;->nativeRenderType:I

    .line 6
    .line 7
    iput v0, p0, Lcom/windmill/sdk/widget/a;->nativeRenderOri:I

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    iput-object v1, p0, Lcom/windmill/sdk/widget/a;->nativeTemplateId:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x5

    .line 14
    iput v2, p0, Lcom/windmill/sdk/widget/a;->nativeSkipTime:I

    .line 15
    .line 16
    iput v0, p0, Lcom/windmill/sdk/widget/a;->nativeBtnStyle:I

    .line 17
    .line 18
    iput v0, p0, Lcom/windmill/sdk/widget/a;->nativeShakeAd:I

    .line 19
    .line 20
    iput v0, p0, Lcom/windmill/sdk/widget/a;->autoPlayMuted:I

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    iput v2, p0, Lcom/windmill/sdk/widget/a;->nativeTotalTime:I

    .line 24
    .line 25
    iput v0, p0, Lcom/windmill/sdk/widget/a;->a:I

    .line 26
    .line 27
    iput v0, p0, Lcom/windmill/sdk/widget/a;->b:I

    .line 28
    .line 29
    iput v0, p0, Lcom/windmill/sdk/widget/a;->close_style:I

    .line 30
    .line 31
    iput v0, p0, Lcom/windmill/sdk/widget/a;->close_position:I

    .line 32
    .line 33
    iput v0, p0, Lcom/windmill/sdk/widget/a;->mistake_click_rate:I

    .line 34
    .line 35
    iput-object v1, p0, Lcom/windmill/sdk/widget/a;->privacy_url:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/windmill/sdk/widget/a;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 38
    .line 39
    iput-object p3, p0, Lcom/windmill/sdk/widget/a;->listener:Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 40
    .line 41
    const-string p1, "nativeRenderType"

    .line 42
    .line 43
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-nez p3, :cond_0

    .line 54
    .line 55
    :try_start_0
    invoke-static {p1}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput p1, p0, Lcom/windmill/sdk/widget/a;->nativeRenderType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_0
    :goto_0
    const-string p1, "nativeRenderOri"

    .line 71
    .line 72
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    if-nez p3, :cond_1

    .line 83
    .line 84
    :try_start_1
    invoke-static {p1}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iput p1, p0, Lcom/windmill/sdk/widget/a;->nativeRenderOri:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catch_1
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    .line 98
    .line 99
    :cond_1
    :goto_1
    const-string p1, "nativeTemplateId"

    .line 100
    .line 101
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    if-nez p3, :cond_2

    .line 112
    .line 113
    iput-object p1, p0, Lcom/windmill/sdk/widget/a;->nativeTemplateId:Ljava/lang/String;

    .line 114
    .line 115
    :cond_2
    const-string p1, "nativeSkipTime"

    .line 116
    .line 117
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    if-nez p3, :cond_3

    .line 128
    .line 129
    :try_start_2
    invoke-static {p1}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    iput p1, p0, Lcom/windmill/sdk/widget/a;->nativeSkipTime:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :catch_2
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    :cond_3
    :goto_2
    const-string p1, "nativeBtnStyle"

    .line 145
    .line 146
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result p3

    .line 156
    if-nez p3, :cond_4

    .line 157
    .line 158
    :try_start_3
    invoke-static {p1}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    iput p1, p0, Lcom/windmill/sdk/widget/a;->nativeBtnStyle:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :catch_3
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 171
    .line 172
    .line 173
    :cond_4
    :goto_3
    const-string p1, "nativeShakeAd"

    .line 174
    .line 175
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result p3

    .line 185
    if-nez p3, :cond_5

    .line 186
    .line 187
    :try_start_4
    invoke-static {p1}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    iput p1, p0, Lcom/windmill/sdk/widget/a;->nativeShakeAd:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :catch_4
    move-exception p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    .line 201
    .line 202
    :cond_5
    :goto_4
    const-string p1, "autoPlayMuted"

    .line 203
    .line 204
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Ljava/lang/String;

    .line 209
    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 211
    .line 212
    .line 213
    move-result p3

    .line 214
    if-nez p3, :cond_6

    .line 215
    .line 216
    :try_start_5
    invoke-static {p1}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    iput p1, p0, Lcom/windmill/sdk/widget/a;->autoPlayMuted:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 225
    .line 226
    goto :goto_5

    .line 227
    :catch_5
    move-exception p1

    .line 228
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 229
    .line 230
    .line 231
    :cond_6
    :goto_5
    const-string p1, "nativeTotalTime"

    .line 232
    .line 233
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    check-cast p1, Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 240
    .line 241
    .line 242
    move-result p3

    .line 243
    if-nez p3, :cond_7

    .line 244
    .line 245
    :try_start_6
    invoke-static {p1}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    iput p1, p0, Lcom/windmill/sdk/widget/a;->nativeTotalTime:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :catch_6
    move-exception p1

    .line 257
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 258
    .line 259
    .line 260
    :cond_7
    :goto_6
    const-string p1, "nativeEnableFullScreenClick"

    .line 261
    .line 262
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    check-cast p1, Ljava/lang/String;

    .line 267
    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 269
    .line 270
    .line 271
    move-result p3

    .line 272
    if-nez p3, :cond_8

    .line 273
    .line 274
    :try_start_7
    invoke-static {p1}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    iput p1, p0, Lcom/windmill/sdk/widget/a;->a:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :catch_7
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 287
    .line 288
    .line 289
    :cond_8
    :goto_7
    const-string p1, "nativeIsAutoClose"

    .line 290
    .line 291
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    check-cast p1, Ljava/lang/String;

    .line 296
    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 298
    .line 299
    .line 300
    move-result p3

    .line 301
    if-nez p3, :cond_9

    .line 302
    .line 303
    :try_start_8
    invoke-static {p1}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    iput p1, p0, Lcom/windmill/sdk/widget/a;->b:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 312
    .line 313
    goto :goto_8

    .line 314
    :catch_8
    move-exception p1

    .line 315
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 316
    .line 317
    .line 318
    :cond_9
    :goto_8
    const-string p1, "close_style"

    .line 319
    .line 320
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    if-eqz p1, :cond_a

    .line 325
    .line 326
    :try_start_9
    check-cast p1, Ljava/lang/Integer;

    .line 327
    .line 328
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    iput p1, p0, Lcom/windmill/sdk/widget/a;->close_style:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 333
    .line 334
    goto :goto_9

    .line 335
    :catch_9
    move-exception p1

    .line 336
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 337
    .line 338
    .line 339
    :cond_a
    :goto_9
    const-string p1, "close_position"

    .line 340
    .line 341
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    if-eqz p1, :cond_b

    .line 346
    .line 347
    :try_start_a
    check-cast p1, Ljava/lang/Integer;

    .line 348
    .line 349
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    iput p1, p0, Lcom/windmill/sdk/widget/a;->close_position:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 354
    .line 355
    goto :goto_a

    .line 356
    :catch_a
    move-exception p1

    .line 357
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 358
    .line 359
    .line 360
    :cond_b
    :goto_a
    const-string p1, "mistake_click_rate"

    .line 361
    .line 362
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    if-eqz p1, :cond_c

    .line 367
    .line 368
    :try_start_b
    check-cast p1, Ljava/lang/Integer;

    .line 369
    .line 370
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    iput p1, p0, Lcom/windmill/sdk/widget/a;->mistake_click_rate:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 375
    .line 376
    goto :goto_b

    .line 377
    :catch_b
    move-exception p1

    .line 378
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 379
    .line 380
    .line 381
    :cond_c
    :goto_b
    const-string p1, "privacy_url"

    .line 382
    .line 383
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    check-cast p1, Ljava/lang/String;

    .line 388
    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 390
    .line 391
    .line 392
    move-result p2

    .line 393
    if-nez p2, :cond_d

    .line 394
    .line 395
    iput-object p1, p0, Lcom/windmill/sdk/widget/a;->privacy_url:Ljava/lang/String;

    .line 396
    .line 397
    :cond_d
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/a;->c:Lcom/windmill/sdk/widget/CircleWebView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/windmill/sdk/widget/a;->c:Lcom/windmill/sdk/widget/CircleWebView;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/windmill/sdk/widget/a;->listener:Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/windmill/sdk/widget/a;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->destroy()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/windmill/sdk/widget/a;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public getAdView(Landroid/content/Context;Lcom/windmill/sdk/widget/a$b;)Lcom/windmill/sdk/widget/CircleWebView;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/a;->c:Lcom/windmill/sdk/widget/CircleWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/a;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAppInfo()Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/a;->getPrivacy_url()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/windmill/sdk/widget/a;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getAppInfo()Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lcom/windmill/sdk/widget/CircleWebView;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Lcom/windmill/sdk/widget/CircleWebView;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/windmill/sdk/widget/a;->c:Lcom/windmill/sdk/widget/CircleWebView;

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    invoke-virtual {v1, p1}, Lcom/windmill/sdk/widget/CircleWebView;->enablePlugins(Z)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/windmill/sdk/widget/a;->c:Lcom/windmill/sdk/widget/CircleWebView;

    .line 44
    .line 45
    new-instance v1, Lcom/windmill/sdk/widget/a$1;

    .line 46
    .line 47
    invoke-direct {v1, p0, p2}, Lcom/windmill/sdk/widget/a$1;-><init>(Lcom/windmill/sdk/widget/a;Lcom/windmill/sdk/widget/a$b;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/windmill/sdk/widget/a;->c:Lcom/windmill/sdk/widget/CircleWebView;

    .line 54
    .line 55
    new-instance p2, Lcom/windmill/sdk/widget/a$a;

    .line 56
    .line 57
    invoke-direct {p2, v0}, Lcom/windmill/sdk/widget/a$a;-><init>(Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;)V

    .line 58
    .line 59
    .line 60
    const-string v0, "sigPrivacy"

    .line 61
    .line 62
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/windmill/sdk/widget/a;->c:Lcom/windmill/sdk/widget/CircleWebView;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/a;->getPrivacy_url()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object p1, p0, Lcom/windmill/sdk/widget/a;->c:Lcom/windmill/sdk/widget/CircleWebView;

    .line 75
    .line 76
    return-object p1
.end method

.method public getAutoPlayMuted()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/a;->autoPlayMuted:I

    .line 2
    .line 3
    return v0
.end method

.method public getClose_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/a;->close_position:I

    .line 2
    .line 3
    return v0
.end method

.method public getClose_style()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/a;->close_style:I

    .line 2
    .line 3
    return v0
.end method

.method public getListener()Lcom/windmill/sdk/widget/ViewInteractionListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/a;->listener:Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMistake_click_rate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/a;->mistake_click_rate:I

    .line 2
    .line 3
    return v0
.end method

.method public getNativeAdData()Lcom/windmill/sdk/natives/WMNativeAdData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/a;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNativeBtnStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/a;->nativeBtnStyle:I

    .line 2
    .line 3
    return v0
.end method

.method public getNativeEnableFullScreenClick()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public getNativeIsAutoClose()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/a;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getNativeRenderOri()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/a;->nativeRenderOri:I

    .line 2
    .line 3
    return v0
.end method

.method public getNativeRenderType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/a;->nativeRenderType:I

    .line 2
    .line 3
    return v0
.end method

.method public getNativeShakeAd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/a;->nativeShakeAd:I

    .line 2
    .line 3
    return v0
.end method

.method public getNativeSkipTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/a;->nativeSkipTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getNativeTemplateId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/a;->nativeTemplateId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNativeTotalTime(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/windmill/sdk/widget/a;->nativeTotalTime:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-gez v0, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iput v1, p0, Lcom/windmill/sdk/widget/a;->nativeTotalTime:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0xf

    .line 12
    .line 13
    iput p1, p0, Lcom/windmill/sdk/widget/a;->nativeTotalTime:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    if-nez p1, :cond_2

    .line 17
    .line 18
    const/4 p1, 0x3

    .line 19
    if-ge v0, p1, :cond_2

    .line 20
    .line 21
    iput v1, p0, Lcom/windmill/sdk/widget/a;->nativeTotalTime:I

    .line 22
    .line 23
    :cond_2
    :goto_0
    iget p1, p0, Lcom/windmill/sdk/widget/a;->nativeTotalTime:I

    .line 24
    .line 25
    return p1
.end method

.method public getPrivacy_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/a;->privacy_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
