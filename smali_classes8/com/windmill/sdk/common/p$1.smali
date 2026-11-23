.class Lcom/windmill/sdk/common/p$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/p;-><init>(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/p$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/common/p;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/p;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "looper"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/16 v1, 0x3e9

    .line 9
    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/16 v1, 0x3eb

    .line 13
    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/16 v1, 0x3ec

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x7d0

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_0
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    instance-of v0, p1, Lcom/windmill/sdk/strategy/a;

    .line 29
    .line 30
    if-eqz v0, :cond_9

    .line 31
    .line 32
    check-cast p1, Lcom/windmill/sdk/strategy/a;

    .line 33
    .line 34
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    .line 35
    .line 36
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_CHANNEL_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v3, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 50
    .line 51
    invoke-virtual {v1, v2, p1, v0}, Lcom/windmill/sdk/common/p;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :catchall_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/common/p;)Landroid/os/Handler;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 69
    .line 70
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/l;->b(Landroid/os/Handler;I)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/common/p;)Landroid/os/Handler;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 82
    .line 83
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/l;->a(Landroid/os/Handler;I)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v0, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6---\u8d85\u65f6\u9636\u6bb5\uff1a"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->i:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v0, "  thread:\uff1a"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v0, " loadId\uff1a"

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 123
    .line 124
    invoke-static {v0}, Lcom/windmill/sdk/common/p;->b(Lcom/windmill/sdk/common/p;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 139
    .line 140
    iget-object v0, p1, Lcom/windmill/sdk/common/l;->i:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/common/p;)Landroid/os/Handler;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {p1, v1}, Lcom/windmill/sdk/common/l;->a(Landroid/os/Handler;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 150
    .line 151
    iget-object p1, p1, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    .line 152
    .line 153
    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    .line 154
    .line 155
    if-ne p1, v1, :cond_9

    .line 156
    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v1, "------------loadAd------------Timeout------------"

    .line 163
    .line 164
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 168
    .line 169
    invoke-static {v1}, Lcom/windmill/sdk/common/p;->b(Lcom/windmill/sdk/common/p;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 184
    .line 185
    iget-object v1, p1, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 186
    .line 187
    invoke-virtual {p1, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/s;)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/windmill/sdk/common/l;->j()Lcom/windmill/sdk/strategy/a;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    if-eqz p1, :cond_7

    .line 197
    .line 198
    const/4 v1, 0x1

    .line 199
    invoke-virtual {p1, v1}, Lcom/windmill/sdk/strategy/a;->h(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Y()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-ne v3, v1, :cond_5

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Z()I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-ne v3, v1, :cond_4

    .line 213
    .line 214
    iget-object v1, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 215
    .line 216
    invoke-virtual {v1, p1}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/strategy/a;)Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-eqz p1, :cond_7

    .line 221
    .line 222
    return-void

    .line 223
    :cond_4
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Z()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-nez v1, :cond_7

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->v()Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_7

    .line 234
    .line 235
    iget-object v1, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 236
    .line 237
    invoke-virtual {v1, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    if-eqz v1, :cond_7

    .line 242
    .line 243
    iget-object v0, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 244
    .line 245
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/p;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_5
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->C()Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-eqz v1, :cond_6

    .line 254
    .line 255
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->v()Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_7

    .line 260
    .line 261
    iget-object v1, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 262
    .line 263
    invoke-virtual {v1, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    if-eqz v1, :cond_7

    .line 268
    .line 269
    const/4 v0, 0x0

    .line 270
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/strategy/a;->i(Z)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 274
    .line 275
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/p;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :cond_6
    iget-object v1, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 280
    .line 281
    invoke-virtual {v1, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    if-eqz v1, :cond_7

    .line 286
    .line 287
    invoke-virtual {v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isLoadSuccess()Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-eqz v3, :cond_7

    .line 292
    .line 293
    iget-object v0, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 294
    .line 295
    invoke-virtual {v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getNativeAdDataList()Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v0, v1, p1, v2}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/List;)V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :cond_7
    iget-object p1, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 304
    .line 305
    invoke-virtual {p1}, Lcom/windmill/sdk/common/p;->c()V

    .line 306
    .line 307
    .line 308
    iget-object p1, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 309
    .line 310
    iget-object p1, p1, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 311
    .line 312
    if-eqz p1, :cond_8

    .line 313
    .line 314
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->j()V

    .line 315
    .line 316
    .line 317
    :cond_8
    iget-object p1, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 318
    .line 319
    iget-object v1, p1, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 320
    .line 321
    iget-object v3, p1, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 322
    .line 323
    invoke-static {p1}, Lcom/windmill/sdk/common/p;->b(Lcom/windmill/sdk/common/p;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    invoke-virtual {p1, v1, v3, v4}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Ljava/util/List;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget-object p1, p0, Lcom/windmill/sdk/common/p$1;->a:Lcom/windmill/sdk/common/p;

    .line 331
    .line 332
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

    .line 333
    .line 334
    invoke-static {p1, v1, v2, v0}, Lcom/windmill/sdk/common/p;->a(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/WindMillError;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :cond_9
    :goto_0
    return-void
.end method
