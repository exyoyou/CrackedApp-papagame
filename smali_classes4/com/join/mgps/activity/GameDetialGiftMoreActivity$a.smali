.class Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->showDialog(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$700(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/join/mgps/customview/t;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$700(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/join/mgps/customview/t;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$700(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/join/mgps/customview/t;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$800(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$800(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$900(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/join/mgps/dto/CollectionBeanSub;

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
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$900(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$900(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$100(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$800(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$800(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    sget-object v1, Lcom/papa/sim/statistic/Where;->detail:Lcom/papa/sim/statistic/Where;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setKeyword(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$800(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_5

    .line 148
    .line 149
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 154
    .line 155
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$800(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {p1, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-eqz p1, :cond_5

    .line 168
    .line 169
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 170
    .line 171
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$800(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-static {v1, p1}, Lcom/join/mgps/Util/UtilsMy;->V4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 176
    .line 177
    .line 178
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 179
    .line 180
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$900(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    if-eqz p1, :cond_9

    .line 185
    .line 186
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 187
    .line 188
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$900(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 197
    .line 198
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$900(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-lez p1, :cond_6

    .line 211
    .line 212
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 213
    .line 214
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$100(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 219
    .line 220
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$800(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 233
    .line 234
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$800(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 239
    .line 240
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$900(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->z1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 248
    .line 249
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$100(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 254
    .line 255
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$800(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-eqz p1, :cond_7

    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 267
    .line 268
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$900(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    if-ne p1, v0, :cond_8

    .line 277
    .line 278
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 279
    .line 280
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$100(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 285
    .line 286
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$800(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 291
    .line 292
    .line 293
    goto :goto_1

    .line 294
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 295
    .line 296
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$100(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 301
    .line 302
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$800(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 307
    .line 308
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$900(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    iget-object v2, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 317
    .line 318
    invoke-static {v2}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$900(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    iget-object v3, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 327
    .line 328
    invoke-static {v3}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$900(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 337
    .line 338
    .line 339
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$a;->b:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    .line 340
    .line 341
    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->access$800(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    const/4 v0, 0x2

    .line 346
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 347
    .line 348
    .line 349
    :goto_2
    return-void
.end method
