.class Lcom/join/mgps/activity/MGGameDetailActivity$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGGameDetailActivity;->showDialog(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MGGameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

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
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$400(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Dialog;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$400(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Dialog;

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
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$400(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Dialog;

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
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const/16 v1, 0x2b

    .line 75
    .line 76
    if-lez v0, :cond_2

    .line 77
    .line 78
    const/16 p1, 0x2b

    .line 79
    .line 80
    :cond_2
    const/4 v0, 0x5

    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    if-eq p1, v0, :cond_3

    .line 84
    .line 85
    const/16 v2, 0x9

    .line 86
    .line 87
    if-eq p1, v2, :cond_4

    .line 88
    .line 89
    if-eq p1, v1, :cond_4

    .line 90
    .line 91
    goto/16 :goto_3

    .line 92
    .line 93
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v1, "2"

    .line 106
    .line 107
    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->p4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_3

    .line 111
    .line 112
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 113
    .line 114
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    const/4 v1, 0x2

    .line 123
    if-ne p1, v1, :cond_5

    .line 124
    .line 125
    goto/16 :goto_3

    .line 126
    .line 127
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 128
    .line 129
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    sget-object v2, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {p1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 143
    .line 144
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_6

    .line 157
    .line 158
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 163
    .line 164
    invoke-static {v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {p1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    if-eqz p1, :cond_6

    .line 177
    .line 178
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 179
    .line 180
    invoke-static {v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-static {v2, p1}, Lcom/join/mgps/Util/UtilsMy;->V4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 185
    .line 186
    .line 187
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 188
    .line 189
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 197
    .line 198
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    if-eqz p1, :cond_a

    .line 203
    .line 204
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 205
    .line 206
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 215
    .line 216
    invoke-static {v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-lez p1, :cond_7

    .line 229
    .line 230
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 231
    .line 232
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 237
    .line 238
    invoke-static {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 251
    .line 252
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 257
    .line 258
    invoke-static {v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->B1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    .line 263
    .line 264
    .line 265
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 266
    .line 267
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 272
    .line 273
    invoke-static {v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_8

    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 285
    .line 286
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-ne p1, v0, :cond_9

    .line 295
    .line 296
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 297
    .line 298
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 303
    .line 304
    invoke-static {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 309
    .line 310
    .line 311
    goto :goto_1

    .line 312
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 313
    .line 314
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 319
    .line 320
    invoke-static {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 325
    .line 326
    invoke-static {v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTp_down_url()Ljava/util/List;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 335
    .line 336
    invoke-static {v3}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getOther_down_switch()I

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    iget-object v4, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 345
    .line 346
    invoke-static {v4}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    invoke-virtual {v4}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCdn_down_switch()I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    invoke-static {p1, v0, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 355
    .line 356
    .line 357
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 358
    .line 359
    invoke-virtual {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->onDetailDownload()V

    .line 360
    .line 361
    .line 362
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$s;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 363
    .line 364
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 369
    .line 370
    .line 371
    :goto_3
    return-void
.end method
