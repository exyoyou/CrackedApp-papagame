.class Lcom/windmill/sdk/common/s$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/s;->a(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/common/s;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/s;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "----loadAd--\u5355\u5c42\u8d85\u65f6---"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/windmill/sdk/common/s;->b(Lcom/windmill/sdk/common/s;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    .line 61
    instance-of v0, p1, Lcom/windmill/sdk/strategy/a;

    .line 62
    .line 63
    if-eqz v0, :cond_9

    .line 64
    .line 65
    check-cast p1, Lcom/windmill/sdk/strategy/a;

    .line 66
    .line 67
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    .line 68
    .line 69
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_CHANNEL_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-direct {v0, v3, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

    .line 83
    .line 84
    invoke-virtual {v1, v2, p1, v0}, Lcom/windmill/sdk/common/s;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :catchall_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/common/s;)Landroid/os/Handler;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 102
    .line 103
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/l;->b(Landroid/os/Handler;I)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/common/s;)Landroid/os/Handler;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 115
    .line 116
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/l;->a(Landroid/os/Handler;I)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v0, "----loadAd---\u52a8\u6001\u603b\u8d85\u65f6---\u8d85\u65f6\u9636\u6bb5\uff1a"

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->i:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v0, "  thread:\uff1a"

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v0, " loadId\uff1a"

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

    .line 156
    .line 157
    invoke-static {v0}, Lcom/windmill/sdk/common/s;->b(Lcom/windmill/sdk/common/s;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

    .line 172
    .line 173
    iget-object v0, p1, Lcom/windmill/sdk/common/l;->i:Ljava/lang/String;

    .line 174
    .line 175
    invoke-static {p1}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/common/s;)Landroid/os/Handler;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {p1, v1}, Lcom/windmill/sdk/common/l;->a(Landroid/os/Handler;)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

    .line 183
    .line 184
    iget-object v1, p1, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 185
    .line 186
    invoke-virtual {p1, v1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/s;)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/windmill/sdk/common/l;->j()Lcom/windmill/sdk/strategy/a;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    if-eqz p1, :cond_7

    .line 196
    .line 197
    const/4 v1, 0x1

    .line 198
    invoke-virtual {p1, v1}, Lcom/windmill/sdk/strategy/a;->h(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Y()I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-ne v3, v1, :cond_5

    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Z()I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-ne v3, v1, :cond_4

    .line 212
    .line 213
    iget-object v1, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

    .line 214
    .line 215
    invoke-static {v1, p1}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/strategy/a;)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-eqz p1, :cond_7

    .line 220
    .line 221
    return-void

    .line 222
    :cond_4
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Z()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-nez v1, :cond_7

    .line 227
    .line 228
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->v()Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_7

    .line 233
    .line 234
    iget-object v0, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

    .line 235
    .line 236
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/s;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_5
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->C()Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-eqz v1, :cond_6

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
    const/4 v0, 0x0

    .line 257
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/strategy/a;->i(Z)V

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

    .line 261
    .line 262
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/s;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :cond_6
    iget-object v1, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

    .line 271
    .line 272
    invoke-virtual {v1, p1}, Lcom/windmill/sdk/common/l;->f(Lcom/windmill/sdk/strategy/a;)Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    if-eqz v1, :cond_7

    .line 277
    .line 278
    invoke-virtual {v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isLoadSuccess()Z

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-eqz v3, :cond_7

    .line 283
    .line 284
    iget-object v0, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

    .line 285
    .line 286
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :cond_7
    iget-object p1, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

    .line 291
    .line 292
    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusClose:Lcom/czhj/sdk/common/models/AdStatus;

    .line 293
    .line 294
    iput-object v1, p1, Lcom/windmill/sdk/common/l;->a:Lcom/czhj/sdk/common/models/AdStatus;

    .line 295
    .line 296
    iget-object p1, p1, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 297
    .line 298
    if-eqz p1, :cond_8

    .line 299
    .line 300
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/s;->j()V

    .line 301
    .line 302
    .line 303
    :cond_8
    iget-object p1, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

    .line 304
    .line 305
    iget-object v1, p1, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 306
    .line 307
    iget-object v3, p1, Lcom/windmill/sdk/common/l;->d:Ljava/util/List;

    .line 308
    .line 309
    invoke-static {p1}, Lcom/windmill/sdk/common/s;->b(Lcom/windmill/sdk/common/s;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-virtual {p1, v1, v3, v4}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Ljava/util/List;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object p1, p0, Lcom/windmill/sdk/common/s$1;->a:Lcom/windmill/sdk/common/s;

    .line 317
    .line 318
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

    .line 319
    .line 320
    iget-object v3, p1, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 321
    .line 322
    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-static {p1, v1, v3, v2, v0}, Lcom/windmill/sdk/common/s;->a(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    :cond_9
    :goto_0
    return-void
.end method
