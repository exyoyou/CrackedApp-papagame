.class Lcom/join/mgps/activity/GiftsDetailActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GiftsDetailActivity;->showDialog(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GiftsDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GiftsDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$000(Lcom/join/mgps/activity/GiftsDetailActivity;)Landroid/app/Dialog;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$000(Lcom/join/mgps/activity/GiftsDetailActivity;)Landroid/app/Dialog;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$000(Lcom/join/mgps/activity/GiftsDetailActivity;)Landroid/app/Dialog;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$100(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$100(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$200(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/join/mgps/dto/DetailResultBean;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$200(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/join/mgps/dto/DetailResultBean;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

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
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$300(Lcom/join/mgps/activity/GiftsDetailActivity;)Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$100(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$200(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/join/mgps/dto/DetailResultBean;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_9

    .line 117
    .line 118
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$200(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/join/mgps/dto/DetailResultBean;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 129
    .line 130
    invoke-static {v1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$200(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/join/mgps/dto/DetailResultBean;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-lez p1, :cond_5

    .line 143
    .line 144
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$300(Lcom/join/mgps/activity/GiftsDetailActivity;)Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 151
    .line 152
    invoke-static {v0}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$100(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_1

    .line 164
    .line 165
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 166
    .line 167
    invoke-static {p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$100(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_6

    .line 180
    .line 181
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 186
    .line 187
    invoke-static {v1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$100(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {p1, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    if-eqz p1, :cond_6

    .line 200
    .line 201
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 202
    .line 203
    invoke-static {v1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$100(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->V4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 208
    .line 209
    .line 210
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 211
    .line 212
    invoke-static {p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$100(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 217
    .line 218
    invoke-static {v1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$200(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/join/mgps/dto/DetailResultBean;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->A1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/DetailResultBean;)V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 226
    .line 227
    invoke-static {p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$300(Lcom/join/mgps/activity/GiftsDetailActivity;)Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 232
    .line 233
    invoke-static {v1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$100(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_7

    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 245
    .line 246
    invoke-static {p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$200(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/join/mgps/dto/DetailResultBean;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    if-ne p1, v0, :cond_8

    .line 255
    .line 256
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 257
    .line 258
    invoke-static {p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$300(Lcom/join/mgps/activity/GiftsDetailActivity;)Landroid/content/Context;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 263
    .line 264
    invoke-static {v0}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$100(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 269
    .line 270
    .line 271
    goto :goto_1

    .line 272
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 273
    .line 274
    invoke-static {p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$300(Lcom/join/mgps/activity/GiftsDetailActivity;)Landroid/content/Context;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 279
    .line 280
    invoke-static {v0}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$100(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 285
    .line 286
    invoke-static {v1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$200(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/join/mgps/dto/DetailResultBean;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getTp_down_url()Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 295
    .line 296
    invoke-static {v2}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$200(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/join/mgps/dto/DetailResultBean;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getOther_down_switch()I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    iget-object v3, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 305
    .line 306
    invoke-static {v3}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$200(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/join/mgps/dto/DetailResultBean;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getCdn_down_switch()I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 315
    .line 316
    .line 317
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity$a;->b:Lcom/join/mgps/activity/GiftsDetailActivity;

    .line 318
    .line 319
    invoke-static {p1}, Lcom/join/mgps/activity/GiftsDetailActivity;->access$100(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    const/4 v0, 0x2

    .line 324
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 325
    .line 326
    .line 327
    :goto_2
    return-void
.end method
