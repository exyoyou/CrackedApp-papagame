.class Lcom/join/mgps/activity/f2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/f2;->C0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/f2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/f2;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->Q(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/customview/t;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->Q(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->Q(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/customview/t;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->R(Lcom/join/mgps/activity/f2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->R(Lcom/join/mgps/activity/f2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/join/mgps/activity/f2;->N(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/16 v1, 0x2b

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/join/mgps/activity/f2;->N(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v2, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/join/mgps/activity/f2;->N(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-lez v0, :cond_2

    .line 85
    .line 86
    const/16 p1, 0x2b

    .line 87
    .line 88
    :cond_2
    const/4 v0, 0x5

    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    if-eq p1, v0, :cond_3

    .line 92
    .line 93
    const/16 v2, 0x9

    .line 94
    .line 95
    if-eq p1, v2, :cond_4

    .line 96
    .line 97
    if-eq p1, v1, :cond_4

    .line 98
    .line 99
    goto/16 :goto_2

    .line 100
    .line 101
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->O(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/join/mgps/activity/f2;->R(Lcom/join/mgps/activity/f2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v1, "2"

    .line 114
    .line 115
    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->p4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_2

    .line 119
    .line 120
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 121
    .line 122
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->R(Lcom/join/mgps/activity/f2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    sget-object v1, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 136
    .line 137
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->R(Lcom/join/mgps/activity/f2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_5

    .line 150
    .line 151
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-object v1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 156
    .line 157
    invoke-static {v1}, Lcom/join/mgps/activity/f2;->R(Lcom/join/mgps/activity/f2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {p1, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-eqz p1, :cond_5

    .line 170
    .line 171
    iget-object v1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 172
    .line 173
    invoke-static {v1}, Lcom/join/mgps/activity/f2;->R(Lcom/join/mgps/activity/f2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->V4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 178
    .line 179
    .line 180
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->R(Lcom/join/mgps/activity/f2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/f2;->addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 190
    .line 191
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->N(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    if-eqz p1, :cond_c

    .line 196
    .line 197
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 198
    .line 199
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->N(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iget-object v1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 208
    .line 209
    invoke-static {v1}, Lcom/join/mgps/activity/f2;->N(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-lez p1, :cond_9

    .line 222
    .line 223
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 224
    .line 225
    iget-object p1, p1, Lcom/join/mgps/activity/f2;->L:Lcom/join/mgps/dto/ExtBean;

    .line 226
    .line 227
    if-eqz p1, :cond_6

    .line 228
    .line 229
    const-string v1, "checkgame"

    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-eqz p1, :cond_6

    .line 240
    .line 241
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 242
    .line 243
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->O(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    iget-object v0, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 248
    .line 249
    iget-object v1, v0, Lcom/join/mgps/activity/f2;->K:Ljava/lang/String;

    .line 250
    .line 251
    iget-object v0, v0, Lcom/join/mgps/activity/f2;->L:Lcom/join/mgps/dto/ExtBean;

    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {p1, v1, v0}, Lcom/join/mgps/Util/UtilsMy;->A4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 263
    .line 264
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->O(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iget-object v1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 269
    .line 270
    invoke-static {v1}, Lcom/join/mgps/activity/f2;->R(Lcom/join/mgps/activity/f2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-eqz p1, :cond_7

    .line 279
    .line 280
    goto/16 :goto_1

    .line 281
    .line 282
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 283
    .line 284
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->N(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    if-ne p1, v0, :cond_8

    .line 293
    .line 294
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 295
    .line 296
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->O(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    iget-object v0, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 301
    .line 302
    invoke-static {v0}, Lcom/join/mgps/activity/f2;->R(Lcom/join/mgps/activity/f2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_1

    .line 310
    .line 311
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 312
    .line 313
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->O(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    iget-object v0, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 318
    .line 319
    iget-object v0, v0, Lcom/join/mgps/activity/f2;->K:Ljava/lang/String;

    .line 320
    .line 321
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    goto :goto_1

    .line 325
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 326
    .line 327
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->R(Lcom/join/mgps/activity/f2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    iget-object v1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 332
    .line 333
    invoke-static {v1}, Lcom/join/mgps/activity/f2;->N(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->D1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 338
    .line 339
    .line 340
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 341
    .line 342
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->O(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    iget-object v1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 347
    .line 348
    invoke-static {v1}, Lcom/join/mgps/activity/f2;->R(Lcom/join/mgps/activity/f2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    if-eqz p1, :cond_a

    .line 357
    .line 358
    goto :goto_1

    .line 359
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 360
    .line 361
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->N(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    invoke-virtual {p1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDown_status()I

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    if-ne p1, v0, :cond_b

    .line 370
    .line 371
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 372
    .line 373
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->O(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    iget-object v0, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 378
    .line 379
    invoke-static {v0}, Lcom/join/mgps/activity/f2;->R(Lcom/join/mgps/activity/f2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 384
    .line 385
    .line 386
    goto :goto_1

    .line 387
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 388
    .line 389
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->O(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    iget-object v0, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 394
    .line 395
    invoke-static {v0}, Lcom/join/mgps/activity/f2;->R(Lcom/join/mgps/activity/f2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 400
    .line 401
    invoke-static {v1}, Lcom/join/mgps/activity/f2;->N(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-virtual {v1}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTp_down_url()Ljava/util/List;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    iget-object v2, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 410
    .line 411
    invoke-static {v2}, Lcom/join/mgps/activity/f2;->N(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-virtual {v2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getOther_down_switch()I

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    iget-object v3, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 420
    .line 421
    invoke-static {v3}, Lcom/join/mgps/activity/f2;->N(Lcom/join/mgps/activity/f2;)Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    invoke-virtual {v3}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCdn_down_switch()I

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 430
    .line 431
    .line 432
    :cond_c
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/f2$c;->b:Lcom/join/mgps/activity/f2;

    .line 433
    .line 434
    invoke-static {p1}, Lcom/join/mgps/activity/f2;->R(Lcom/join/mgps/activity/f2;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    const/4 v0, 0x2

    .line 439
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 440
    .line 441
    .line 442
    :goto_2
    return-void
.end method
