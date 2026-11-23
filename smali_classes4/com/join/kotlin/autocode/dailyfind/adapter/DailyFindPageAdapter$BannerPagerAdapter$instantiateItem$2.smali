.class public final Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2",
        "Landroid/view/View$OnClickListener;",
        "onClick",
        "",
        "view",
        "Landroid/view/View;",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $container:Landroid/view/ViewGroup;

.field final synthetic $position:I

.field final synthetic this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;


# direct methods
.method constructor <init>(Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->$position:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->$container:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    sget-object p1, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter;->Companion:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$Companion;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->getModleFourBean()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$Companion;->hasVideo(Lcom/join/mgps/dto/GamedetialModleFourBean;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "image_index"

    .line 14
    .line 15
    const-string v2, "image_urls"

    .line 16
    .line 17
    const-class v3, Lcom/join/mgps/activity/ImagePagerActivity;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v0, :cond_6

    .line 22
    .line 23
    iget v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->$position:I

    .line 24
    .line 25
    if-eqz v0, :cond_11

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->getModleFourBean()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$Companion;->hasGameScreenShot(Lcom/join/mgps/dto/GamedetialModleFourBean;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->$container:Landroid/view/ViewGroup;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->getModleFourBean()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    iget v1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->$position:I

    .line 64
    .line 65
    add-int/lit8 v1, v1, -0x1

    .line 66
    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    move-object v0, v5

    .line 75
    :goto_0
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->fromData(Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->getModleFourBean()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    :cond_1
    invoke-virtual {p1, v5}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 96
    .line 97
    .line 98
    goto/16 :goto_9

    .line 99
    .line 100
    :cond_2
    iget-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->getModleFourBean()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    if-eqz v5, :cond_4

    .line 118
    .line 119
    move-object v0, v5

    .line 120
    check-cast v0, Ljava/util/Collection;

    .line 121
    .line 122
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    const/4 v6, 0x0

    .line 127
    :goto_1
    if-ge v6, v0, :cond_4

    .line 128
    .line 129
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    check-cast v7, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 134
    .line 135
    invoke-virtual {v7}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-virtual {v7}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    add-int/lit8 v6, v6, 0x1

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_4
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 150
    .line 151
    iget-object v5, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->$container:Landroid/view/ViewGroup;

    .line 152
    .line 153
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-direct {v0, v5, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .line 159
    .line 160
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    new-array v3, v3, [Ljava/lang/String;

    .line 165
    .line 166
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    :goto_2
    if-ge v4, v5, :cond_5

    .line 171
    .line 172
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    aput-object v6, v3, v4

    .line 177
    .line 178
    add-int/lit8 v4, v4, 0x1

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_5
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    iget p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->$position:I

    .line 185
    .line 186
    add-int/lit8 p1, p1, -0x1

    .line 187
    .line 188
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->$container:Landroid/view/ViewGroup;

    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .line 199
    .line 200
    goto/16 :goto_9

    .line 201
    .line 202
    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_9

    .line 207
    .line 208
    :cond_6
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->getModleFourBean()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {p1, v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$Companion;->hasGameScreenShot(Lcom/join/mgps/dto/GamedetialModleFourBean;)Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-eqz p1, :cond_9

    .line 219
    .line 220
    iget-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->$container:Landroid/view/ViewGroup;

    .line 221
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-static {p1}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->getModleFourBean()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    if-eqz v0, :cond_7

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_screen_shot()Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    if-eqz v0, :cond_7

    .line 243
    .line 244
    iget v1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->$position:I

    .line 245
    .line 246
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_7
    move-object v0, v5

    .line 254
    :goto_3
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->fromData(Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->getModleFourBean()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    if-eqz v0, :cond_8

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    :cond_8
    invoke-virtual {p1, v5}, Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/screenshot/ScreenshotTrueListAcvity_$IntentBuilder_;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 275
    .line 276
    .line 277
    goto/16 :goto_9

    .line 278
    .line 279
    :cond_9
    iget-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 280
    .line 281
    invoke-virtual {p1}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->getModleFourBean()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    if-eqz p1, :cond_a

    .line 286
    .line 287
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    goto :goto_4

    .line 292
    :cond_a
    move-object p1, v5

    .line 293
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .line 297
    .line 298
    iget-object v6, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 299
    .line 300
    invoke-virtual {v6}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->getModleFourBean()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    if-eqz v6, :cond_b

    .line 305
    .line 306
    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    goto :goto_5

    .line 311
    :cond_b
    move-object v6, v5

    .line 312
    :goto_5
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    if-eqz v6, :cond_e

    .line 317
    .line 318
    iget-object v6, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 319
    .line 320
    invoke-virtual {v6}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->getModleFourBean()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    if-eqz v6, :cond_c

    .line 325
    .line 326
    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_video_url()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    goto :goto_6

    .line 331
    :cond_c
    move-object v6, v5

    .line 332
    :goto_6
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    if-eqz v6, :cond_e

    .line 337
    .line 338
    iget-object v6, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->this$0:Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;

    .line 339
    .line 340
    invoke-virtual {v6}, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter;->getModleFourBean()Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    if-eqz v6, :cond_d

    .line 345
    .line 346
    invoke-virtual {v6}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_pic()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    :cond_d
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    :cond_e
    if-eqz p1, :cond_f

    .line 354
    .line 355
    move-object v5, p1

    .line 356
    check-cast v5, Ljava/util/Collection;

    .line 357
    .line 358
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    const/4 v6, 0x0

    .line 363
    :goto_7
    if-ge v6, v5, :cond_f

    .line 364
    .line 365
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v7

    .line 369
    check-cast v7, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 370
    .line 371
    invoke-virtual {v7}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    invoke-virtual {v7}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    add-int/lit8 v6, v6, 0x1

    .line 383
    .line 384
    goto :goto_7

    .line 385
    :cond_f
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    .line 386
    .line 387
    iget-object v5, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->$container:Landroid/view/ViewGroup;

    .line 388
    .line 389
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    invoke-direct {p1, v5, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    .line 395
    .line 396
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    new-array v3, v3, [Ljava/lang/String;

    .line 401
    .line 402
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 403
    .line 404
    .line 405
    move-result v5

    .line 406
    :goto_8
    if-ge v4, v5, :cond_10

    .line 407
    .line 408
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    aput-object v6, v3, v4

    .line 413
    .line 414
    add-int/lit8 v4, v4, 0x1

    .line 415
    .line 416
    goto :goto_8

    .line 417
    :cond_10
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    .line 419
    .line 420
    iget v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->$position:I

    .line 421
    .line 422
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 423
    .line 424
    .line 425
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/adapter/DailyFindPageAdapter$BannerPagerAdapter$instantiateItem$2;->$container:Landroid/view/ViewGroup;

    .line 426
    .line 427
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 432
    .line 433
    .line 434
    goto :goto_9

    .line 435
    :catch_1
    move-exception p1

    .line 436
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 437
    .line 438
    .line 439
    :cond_11
    :goto_9
    return-void
.end method
