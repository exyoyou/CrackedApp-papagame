.class Lcom/join/mgps/activity/b3$y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/b3$y;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/b3$y;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/b3$y;I)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/b3$y$a;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/activity/b3;->z0()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const-string v0, "image_index"

    .line 10
    .line 11
    const-string v1, "image_urls"

    .line 12
    .line 13
    const-class v2, Lcom/join/mgps/activity/ImagePagerActivity;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz p1, :cond_4

    .line 17
    .line 18
    iget p1, p0, Lcom/join/mgps/activity/b3$y$a;->b:I

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/activity/b3;->y0()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->i1:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/join/mgps/activity/b3;->Z(Lcom/join/mgps/activity/b3;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget v1, p0, Lcom/join/mgps/activity/b3$y$a;->b:I

    .line 57
    .line 58
    add-int/lit8 v1, v1, -0x1

    .line 59
    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->fromData(Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/join/mgps/activity/b3;->Z(Lcom/join/mgps/activity/b3;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

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
    iget-object p1, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 92
    .line 93
    iget-object p1, p1, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/join/mgps/activity/b3;->Z(Lcom/join/mgps/activity/b3;)Lcom/join/mgps/dto/GamedetialModleFourBean;

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
    new-instance v4, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    if-eqz p1, :cond_2

    .line 109
    .line 110
    const/4 v5, 0x0

    .line 111
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-ge v5, v6, :cond_2

    .line 116
    .line 117
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v6, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 122
    .line 123
    invoke-virtual {v6}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v6}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    add-int/lit8 v5, v5, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_2
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 138
    .line 139
    iget-object v5, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 140
    .line 141
    iget-object v5, v5, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 142
    .line 143
    iget-object v5, v5, Lcom/join/mgps/activity/b3;->i1:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 144
    .line 145
    invoke-direct {p1, v5, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    new-array v2, v2, [Ljava/lang/String;

    .line 153
    .line 154
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-ge v3, v5, :cond_3

    .line 159
    .line 160
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    check-cast v5, Ljava/lang/String;

    .line 165
    .line 166
    aput-object v5, v2, v3

    .line 167
    .line 168
    add-int/lit8 v3, v3, 0x1

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_3
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    iget v1, p0, Lcom/join/mgps/activity/b3$y$a;->b:I

    .line 175
    .line 176
    add-int/lit8 v1, v1, -0x1

    .line 177
    .line 178
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 182
    .line 183
    iget-object v0, v0, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 184
    .line 185
    iget-object v0, v0, Lcom/join/mgps/activity/b3;->i1:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 186
    .line 187
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .line 189
    .line 190
    goto/16 :goto_4

    .line 191
    .line 192
    :catch_0
    move-exception p1

    .line 193
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_4

    .line 197
    .line 198
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 199
    .line 200
    iget-object p1, p1, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/join/mgps/activity/b3;->y0()Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_5

    .line 207
    .line 208
    iget-object p1, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 209
    .line 210
    iget-object p1, p1, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 211
    .line 212
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->i1:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 213
    .line 214
    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iget-object v0, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 219
    .line 220
    iget-object v0, v0, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 221
    .line 222
    invoke-static {v0}, Lcom/join/mgps/activity/b3;->Z(Lcom/join/mgps/activity/b3;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    iget v1, p0, Lcom/join/mgps/activity/b3$y$a;->b:I

    .line 231
    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->fromData(Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    iget-object v0, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 243
    .line 244
    iget-object v0, v0, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 245
    .line 246
    invoke-static {v0}, Lcom/join/mgps/activity/b3;->Z(Lcom/join/mgps/activity/b3;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 259
    .line 260
    .line 261
    goto/16 :goto_4

    .line 262
    .line 263
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 264
    .line 265
    iget-object p1, p1, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 266
    .line 267
    invoke-static {p1}, Lcom/join/mgps/activity/b3;->Z(Lcom/join/mgps/activity/b3;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    new-instance v4, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .line 279
    .line 280
    iget-object v5, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 281
    .line 282
    iget-object v5, v5, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 283
    .line 284
    invoke-static {v5}, Lcom/join/mgps/activity/b3;->Z(Lcom/join/mgps/activity/b3;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    if-eqz v5, :cond_6

    .line 297
    .line 298
    iget-object v5, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 299
    .line 300
    iget-object v5, v5, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 301
    .line 302
    invoke-static {v5}, Lcom/join/mgps/activity/b3;->Z(Lcom/join/mgps/activity/b3;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_video_url()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    if-eqz v5, :cond_6

    .line 315
    .line 316
    iget-object v5, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 317
    .line 318
    iget-object v5, v5, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 319
    .line 320
    invoke-static {v5}, Lcom/join/mgps/activity/b3;->Z(Lcom/join/mgps/activity/b3;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    invoke-virtual {v5}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    :cond_6
    if-eqz p1, :cond_7

    .line 332
    .line 333
    const/4 v5, 0x0

    .line 334
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 335
    .line 336
    .line 337
    move-result v6

    .line 338
    if-ge v5, v6, :cond_7

    .line 339
    .line 340
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    check-cast v6, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 345
    .line 346
    invoke-virtual {v6}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    invoke-virtual {v6}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    add-int/lit8 v5, v5, 0x1

    .line 358
    .line 359
    goto :goto_2

    .line 360
    :cond_7
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    .line 361
    .line 362
    iget-object v5, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 363
    .line 364
    iget-object v5, v5, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 365
    .line 366
    iget-object v5, v5, Lcom/join/mgps/activity/b3;->i1:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 367
    .line 368
    invoke-direct {p1, v5, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    .line 370
    .line 371
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    new-array v2, v2, [Ljava/lang/String;

    .line 376
    .line 377
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    if-ge v3, v5, :cond_8

    .line 382
    .line 383
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    check-cast v5, Ljava/lang/String;

    .line 388
    .line 389
    aput-object v5, v2, v3

    .line 390
    .line 391
    add-int/lit8 v3, v3, 0x1

    .line 392
    .line 393
    goto :goto_3

    .line 394
    :cond_8
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    .line 396
    .line 397
    iget v1, p0, Lcom/join/mgps/activity/b3$y$a;->b:I

    .line 398
    .line 399
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    .line 401
    .line 402
    iget-object v0, p0, Lcom/join/mgps/activity/b3$y$a;->c:Lcom/join/mgps/activity/b3$y;

    .line 403
    .line 404
    iget-object v0, v0, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 405
    .line 406
    iget-object v0, v0, Lcom/join/mgps/activity/b3;->i1:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 407
    .line 408
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 409
    .line 410
    .line 411
    goto :goto_4

    .line 412
    :catch_1
    move-exception p1

    .line 413
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 414
    .line 415
    .line 416
    :goto_4
    return-void
.end method
