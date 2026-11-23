.class Lcom/join/mgps/activity/MGGameDetailActivity$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGGameDetailActivity;->showDialog(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

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
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 113
    .line 114
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    sget-object v1, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 128
    .line 129
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_5

    .line 142
    .line 143
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 148
    .line 149
    invoke-static {v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {p1, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-eqz p1, :cond_5

    .line 162
    .line 163
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 164
    .line 165
    invoke-static {v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->V4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 170
    .line 171
    .line 172
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 173
    .line 174
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->addFrom(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 182
    .line 183
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-eqz p1, :cond_a

    .line 188
    .line 189
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 190
    .line 191
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 200
    .line 201
    invoke-static {v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-lez p1, :cond_7

    .line 214
    .line 215
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 216
    .line 217
    iget-object p1, p1, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 218
    .line 219
    if-eqz p1, :cond_6

    .line 220
    .line 221
    const-string v0, "checkgame"

    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-eqz p1, :cond_6

    .line 232
    .line 233
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 234
    .line 235
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 240
    .line 241
    invoke-static {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 250
    .line 251
    iget-object v1, v1, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 252
    .line 253
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->A4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_2

    .line 261
    .line 262
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 263
    .line 264
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 269
    .line 270
    invoke-static {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 283
    .line 284
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 289
    .line 290
    invoke-static {v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->B1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBeanV3;)V

    .line 295
    .line 296
    .line 297
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 298
    .line 299
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 304
    .line 305
    invoke-static {v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    if-eqz p1, :cond_8

    .line 314
    .line 315
    goto :goto_1

    .line 316
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 317
    .line 318
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getDown_status()I

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    if-ne p1, v0, :cond_9

    .line 327
    .line 328
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 329
    .line 330
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 335
    .line 336
    invoke-static {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 341
    .line 342
    .line 343
    goto :goto_1

    .line 344
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 345
    .line 346
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 351
    .line 352
    invoke-static {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 357
    .line 358
    invoke-static {v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBeanV3;->getTp_down_url()Ljava/util/List;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 367
    .line 368
    invoke-static {v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBeanV3;->getOther_down_switch()I

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    iget-object v3, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 377
    .line 378
    invoke-static {v3}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$600(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/join/mgps/dto/DetailResultBeanV3;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCdn_down_switch()I

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 387
    .line 388
    .line 389
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 390
    .line 391
    invoke-virtual {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->onDetailDownload()V

    .line 392
    .line 393
    .line 394
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$p;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 395
    .line 396
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$500(Lcom/join/mgps/activity/MGGameDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    const/4 v0, 0x2

    .line 401
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 402
    .line 403
    .line 404
    :goto_3
    return-void
.end method
