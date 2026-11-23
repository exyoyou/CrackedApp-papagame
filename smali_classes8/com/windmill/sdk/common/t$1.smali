.class Lcom/windmill/sdk/common/t$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/t;-><init>(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/common/t$a;Lcom/windmill/sdk/common/t$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/common/t;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/t;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

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
    iget-object v1, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 50
    .line 51
    invoke-virtual {v1, v2, p1, v0}, Lcom/windmill/sdk/common/t;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v1, "loadAd strategy name"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;)Landroid/os/Handler;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 90
    .line 91
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/l;->b(Landroid/os/Handler;I)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;)Landroid/os/Handler;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 103
    .line 104
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/l;->a(Landroid/os/Handler;I)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v0, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6---\u8d85\u65f6\u9636\u6bb5\uff1a"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->i:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v0, "  thread:\uff1a"

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v0, " loadId\uff1a"

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 144
    .line 145
    invoke-static {v0}, Lcom/windmill/sdk/common/t;->b(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 160
    .line 161
    iget-object v0, p1, Lcom/windmill/sdk/common/l;->i:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {p1}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;)Landroid/os/Handler;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {p1, v1}, Lcom/windmill/sdk/common/l;->a(Landroid/os/Handler;)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 171
    .line 172
    iget-object p1, p1, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    .line 173
    .line 174
    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    .line 175
    .line 176
    if-ne p1, v1, :cond_9

    .line 177
    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v1, "-----loadAd--Timeout----"

    .line 184
    .line 185
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 189
    .line 190
    invoke-static {v1}, Lcom/windmill/sdk/common/t;->b(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 205
    .line 206
    iget-object v1, p1, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 207
    .line 208
    invoke-virtual {p1, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/s;)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/windmill/sdk/common/l;->j()Lcom/windmill/sdk/strategy/a;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    if-eqz p1, :cond_7

    .line 218
    .line 219
    const/4 v1, 0x1

    .line 220
    invoke-virtual {p1, v1}, Lcom/windmill/sdk/strategy/a;->h(I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Y()I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-ne v3, v1, :cond_5

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Z()I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-ne v3, v1, :cond_4

    .line 234
    .line 235
    iget-object v1, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 236
    .line 237
    invoke-virtual {v1, p1}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/strategy/a;)Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_7

    .line 242
    .line 243
    return-void

    .line 244
    :cond_4
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Z()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-nez v1, :cond_7

    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->v()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_7

    .line 255
    .line 256
    iget-object v0, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 257
    .line 258
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/t;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_5
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->C()Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-eqz v1, :cond_6

    .line 271
    .line 272
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->v()Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-eqz v1, :cond_7

    .line 277
    .line 278
    const/4 v0, 0x0

    .line 279
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/strategy/a;->i(Z)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 283
    .line 284
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/t;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 289
    .line 290
    .line 291
    return-void

    .line 292
    :cond_6
    iget-object v1, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 293
    .line 294
    invoke-virtual {v1, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    if-eqz v1, :cond_7

    .line 299
    .line 300
    invoke-virtual {v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isLoadSuccess()Z

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    if-eqz v3, :cond_7

    .line 305
    .line 306
    iget-object v0, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 307
    .line 308
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    :cond_7
    iget-object p1, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 313
    .line 314
    iget-object p1, p1, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 315
    .line 316
    if-eqz p1, :cond_8

    .line 317
    .line 318
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->j()V

    .line 319
    .line 320
    .line 321
    :cond_8
    iget-object p1, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 322
    .line 323
    iget-object v1, p1, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 324
    .line 325
    iget-object v3, p1, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 326
    .line 327
    invoke-static {p1}, Lcom/windmill/sdk/common/t;->b(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-virtual {p1, v1, v3, v4}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Ljava/util/List;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    iget-object p1, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 335
    .line 336
    invoke-virtual {p1}, Lcom/windmill/sdk/common/t;->b()V

    .line 337
    .line 338
    .line 339
    iget-object p1, p0, Lcom/windmill/sdk/common/t$1;->a:Lcom/windmill/sdk/common/t;

    .line 340
    .line 341
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

    .line 342
    .line 343
    invoke-static {p1, v1, v2, v0}, Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/WindMillError;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    :cond_9
    :goto_0
    return-void
.end method
