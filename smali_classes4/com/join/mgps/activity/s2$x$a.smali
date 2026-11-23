.class Lcom/join/mgps/activity/s2$x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/s2$x;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/s2$x;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/s2$x;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/s2$x$a;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/activity/s2;->r0()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const-string p2, "image_index"

    .line 10
    .line 11
    const-string v0, "image_urls"

    .line 12
    .line 13
    const-class v1, Lcom/join/mgps/activity/ImagePagerActivity;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz p1, :cond_5

    .line 17
    .line 18
    iget p1, p0, Lcom/join/mgps/activity/s2$x$a;->b:I

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/activity/s2;->q0()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->i1:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 45
    .line 46
    iget-object p2, p2, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 47
    .line 48
    invoke-static {p2}, Lcom/join/mgps/activity/s2;->Y(Lcom/join/mgps/activity/s2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iget v0, p0, Lcom/join/mgps/activity/s2$x$a;->b:I

    .line 57
    .line 58
    add-int/lit8 v0, v0, -0x1

    .line 59
    .line 60
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->fromData(Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 71
    .line 72
    iget-object p2, p2, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 73
    .line 74
    invoke-static {p2}, Lcom/join/mgps/activity/s2;->Y(Lcom/join/mgps/activity/s2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 87
    .line 88
    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 92
    .line 93
    iget-object p1, p1, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/join/mgps/activity/s2;->Y(Lcom/join/mgps/activity/s2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    new-instance v3, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    if-eqz p1, :cond_2

    .line 109
    .line 110
    const/4 v4, 0x0

    .line 111
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-ge v4, v5, :cond_2

    .line 116
    .line 117
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    check-cast v5, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 122
    .line 123
    invoke-virtual {v5}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v5}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    add-int/lit8 v4, v4, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_2
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 138
    .line 139
    iget-object v4, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 140
    .line 141
    iget-object v4, v4, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 142
    .line 143
    iget-object v4, v4, Lcom/join/mgps/activity/s2;->i1:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 144
    .line 145
    invoke-direct {p1, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    new-array v1, v1, [Ljava/lang/String;

    .line 153
    .line 154
    const/4 v4, 0x0

    .line 155
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-ge v4, v5, :cond_3

    .line 160
    .line 161
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    check-cast v5, Ljava/lang/String;

    .line 166
    .line 167
    aput-object v5, v1, v4

    .line 168
    .line 169
    add-int/lit8 v4, v4, 0x1

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 173
    .line 174
    iget-object v3, v3, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 175
    .line 176
    invoke-static {v3}, Lcom/join/mgps/activity/s2;->Y(Lcom/join/mgps/activity/s2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVedio_url()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-eqz v3, :cond_4

    .line 189
    .line 190
    iget v3, p0, Lcom/join/mgps/activity/s2$x$a;->b:I

    .line 191
    .line 192
    if-nez v3, :cond_4

    .line 193
    .line 194
    new-instance p1, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;

    .line 195
    .line 196
    invoke-direct {p1}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;-><init>()V

    .line 197
    .line 198
    .line 199
    iget-object p2, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 200
    .line 201
    iget-object p2, p2, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 202
    .line 203
    invoke-static {p2}, Lcom/join/mgps/activity/s2;->Y(Lcom/join/mgps/activity/s2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVedio_url()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->H(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    aget-object p2, v1, v2

    .line 215
    .line 216
    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->C(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object p2, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 220
    .line 221
    iget-object p2, p2, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 222
    .line 223
    iget-object p2, p2, Lcom/join/mgps/activity/s2;->i1:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 224
    .line 225
    invoke-static {p2}, Lcom/join/mgps/adapter/FullScreenActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-virtual {p2, p1}, Lcom/join/mgps/adapter/FullScreenActivity_$b;->a(Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 234
    .line 235
    .line 236
    goto/16 :goto_4

    .line 237
    .line 238
    :cond_4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    iget v0, p0, Lcom/join/mgps/activity/s2$x$a;->b:I

    .line 242
    .line 243
    add-int/lit8 v0, v0, -0x1

    .line 244
    .line 245
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    .line 247
    .line 248
    iget-object p2, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 249
    .line 250
    iget-object p2, p2, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 251
    .line 252
    iget-object p2, p2, Lcom/join/mgps/activity/s2;->i1:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 253
    .line 254
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .line 256
    .line 257
    goto/16 :goto_4

    .line 258
    .line 259
    :catch_0
    move-exception p1

    .line 260
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_4

    .line 264
    .line 265
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 266
    .line 267
    iget-object p1, p1, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 268
    .line 269
    invoke-virtual {p1}, Lcom/join/mgps/activity/s2;->q0()Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-eqz p1, :cond_6

    .line 274
    .line 275
    iget-object p1, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 276
    .line 277
    iget-object p1, p1, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 278
    .line 279
    iget-object p1, p1, Lcom/join/mgps/activity/s2;->i1:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 280
    .line 281
    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    iget-object p2, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 286
    .line 287
    iget-object p2, p2, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 288
    .line 289
    invoke-static {p2}, Lcom/join/mgps/activity/s2;->Y(Lcom/join/mgps/activity/s2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    iget v0, p0, Lcom/join/mgps/activity/s2$x$a;->b:I

    .line 298
    .line 299
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    check-cast p2, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    .line 304
    .line 305
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->fromData(Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    iget-object p2, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 310
    .line 311
    iget-object p2, p2, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 312
    .line 313
    invoke-static {p2}, Lcom/join/mgps/activity/s2;->Y(Lcom/join/mgps/activity/s2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 326
    .line 327
    .line 328
    goto/16 :goto_4

    .line 329
    .line 330
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 331
    .line 332
    iget-object p1, p1, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 333
    .line 334
    invoke-static {p1}, Lcom/join/mgps/activity/s2;->Y(Lcom/join/mgps/activity/s2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    new-instance v3, Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .line 346
    .line 347
    if-eqz p1, :cond_7

    .line 348
    .line 349
    const/4 v4, 0x0

    .line 350
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 351
    .line 352
    .line 353
    move-result v5

    .line 354
    if-ge v4, v5, :cond_7

    .line 355
    .line 356
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    check-cast v5, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 361
    .line 362
    invoke-virtual {v5}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    invoke-virtual {v5}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    add-int/lit8 v4, v4, 0x1

    .line 374
    .line 375
    goto :goto_2

    .line 376
    :cond_7
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    .line 377
    .line 378
    iget-object v4, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 379
    .line 380
    iget-object v4, v4, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 381
    .line 382
    iget-object v4, v4, Lcom/join/mgps/activity/s2;->i1:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 383
    .line 384
    invoke-direct {p1, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    new-array v1, v1, [Ljava/lang/String;

    .line 392
    .line 393
    const/4 v4, 0x0

    .line 394
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    if-ge v4, v5, :cond_8

    .line 399
    .line 400
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v5

    .line 404
    check-cast v5, Ljava/lang/String;

    .line 405
    .line 406
    aput-object v5, v1, v4

    .line 407
    .line 408
    add-int/lit8 v4, v4, 0x1

    .line 409
    .line 410
    goto :goto_3

    .line 411
    :cond_8
    iget-object v3, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 412
    .line 413
    iget-object v3, v3, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 414
    .line 415
    invoke-static {v3}, Lcom/join/mgps/activity/s2;->Y(Lcom/join/mgps/activity/s2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVedio_url()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    if-eqz v3, :cond_9

    .line 428
    .line 429
    iget v3, p0, Lcom/join/mgps/activity/s2$x$a;->b:I

    .line 430
    .line 431
    if-nez v3, :cond_9

    .line 432
    .line 433
    new-instance p1, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;

    .line 434
    .line 435
    invoke-direct {p1}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;-><init>()V

    .line 436
    .line 437
    .line 438
    iget-object p2, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 439
    .line 440
    iget-object p2, p2, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 441
    .line 442
    invoke-static {p2}, Lcom/join/mgps/activity/s2;->Y(Lcom/join/mgps/activity/s2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVedio_url()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p2

    .line 450
    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->H(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    aget-object p2, v1, v2

    .line 454
    .line 455
    invoke-virtual {p1, p2}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->C(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    iget-object p2, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 459
    .line 460
    iget-object p2, p2, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 461
    .line 462
    iget-object p2, p2, Lcom/join/mgps/activity/s2;->i1:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 463
    .line 464
    invoke-static {p2}, Lcom/join/mgps/adapter/FullScreenActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    .line 465
    .line 466
    .line 467
    move-result-object p2

    .line 468
    invoke-virtual {p2, p1}, Lcom/join/mgps/adapter/FullScreenActivity_$b;->a(Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;)Lcom/join/mgps/adapter/FullScreenActivity_$b;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 473
    .line 474
    .line 475
    goto :goto_4

    .line 476
    :cond_9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    .line 478
    .line 479
    iget v0, p0, Lcom/join/mgps/activity/s2$x$a;->b:I

    .line 480
    .line 481
    add-int/lit8 v0, v0, -0x1

    .line 482
    .line 483
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 484
    .line 485
    .line 486
    iget-object p2, p0, Lcom/join/mgps/activity/s2$x$a;->c:Lcom/join/mgps/activity/s2$x;

    .line 487
    .line 488
    iget-object p2, p2, Lcom/join/mgps/activity/s2$x;->a:Lcom/join/mgps/activity/s2;

    .line 489
    .line 490
    iget-object p2, p2, Lcom/join/mgps/activity/s2;->i1:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 491
    .line 492
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 493
    .line 494
    .line 495
    goto :goto_4

    .line 496
    :catch_1
    move-exception p1

    .line 497
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 498
    .line 499
    .line 500
    :goto_4
    return v2
.end method
