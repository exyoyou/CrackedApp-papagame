.class public Lcom/byazt/kft/c$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x118,
        0x71
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/c;->tt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kft/c;


# direct methods
.method public constructor <init>(Lcom/byazt/kft/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/kft/c;->a(Lcom/byazt/kft/c;)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/kft/c;->sp(Lcom/byazt/kft/c;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/byazt/kft/c;->x(Lcom/byazt/kft/c;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/byazt/kft/c;->ve(Lcom/byazt/kft/c;)Lcom/byazt/ga/LottieAnimationView;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 35
    .line 36
    new-instance v1, Lcom/byazt/ga/LottieAnimationView;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/byazt/kft/c;->i(Lcom/byazt/kft/c;)Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v1, v2}, Lcom/byazt/ga/LottieAnimationView;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/byazt/kft/c;->c(Lcom/byazt/kft/c;Lcom/byazt/ga/LottieAnimationView;)Lcom/byazt/ga/LottieAnimationView;

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/byazt/kft/c;->ve(Lcom/byazt/kft/c;)Lcom/byazt/ga/LottieAnimationView;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/byazt/kft/c;->da(Lcom/byazt/kft/c;)Lcom/byazt/jzl/tt;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/byazt/ga/LottieAnimationView;->setVideoStats(Lcom/byazt/jzl/tt;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/byazt/kft/c;->ve(Lcom/byazt/kft/c;)Lcom/byazt/ga/LottieAnimationView;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/4 v1, -0x1

    .line 72
    invoke-virtual {v0, v1}, Lcom/byazt/ga/LottieAnimationView;->setRepeatCount(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/byazt/kft/c;->ve(Lcom/byazt/kft/c;)Lcom/byazt/ga/LottieAnimationView;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/byazt/kft/c;->sl(Lcom/byazt/kft/c;)F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/byazt/ga/LottieAnimationView;->setSpeed(F)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/byazt/kft/c;->ve(Lcom/byazt/kft/c;)Lcom/byazt/ga/LottieAnimationView;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    new-instance v1, Lcom/byazt/kft/c$9$1;

    .line 97
    .line 98
    invoke-direct {v1, p0}, Lcom/byazt/kft/c$9$1;-><init>(Lcom/byazt/kft/c$9;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/byazt/ga/LottieAnimationView;->setImageAssetDelegate(Lcom/byazt/ga/uj;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/byazt/kft/c;->ve(Lcom/byazt/kft/c;)Lcom/byazt/ga/LottieAnimationView;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Lcom/byazt/kft/c$9$2;

    .line 111
    .line 112
    iget-object v2, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 113
    .line 114
    invoke-static {v2}, Lcom/byazt/kft/c;->ve(Lcom/byazt/kft/c;)Lcom/byazt/ga/LottieAnimationView;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-direct {v1, p0, v2}, Lcom/byazt/kft/c$9$2;-><init>(Lcom/byazt/kft/c$9;Lcom/byazt/ga/LottieAnimationView;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcom/byazt/ga/LottieAnimationView;->setTextDelegate(Lcom/byazt/ga/gt;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/byazt/kft/c;->ve(Lcom/byazt/kft/c;)Lcom/byazt/ga/LottieAnimationView;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 131
    .line 132
    invoke-static {v1}, Lcom/byazt/kft/c;->sp(Lcom/byazt/kft/c;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 137
    .line 138
    invoke-static {v2}, Lcom/byazt/kft/c;->z(Lcom/byazt/kft/c;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ga/LottieAnimationView;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 146
    .line 147
    invoke-static {v0}, Lcom/byazt/kft/c;->m(Lcom/byazt/kft/c;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 151
    .line 152
    const/4 v1, 0x1

    .line 153
    invoke-static {v0, v1}, Lcom/byazt/kft/c;->c(Lcom/byazt/kft/c;Z)Z

    .line 154
    .line 155
    .line 156
    const-string v0, "TTLottieFakeVideoPlayer"

    .line 157
    .line 158
    const-string v2, "--==--onPrepared"

    .line 159
    .line 160
    invoke-static {v0, v2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 164
    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 166
    .line 167
    .line 168
    move-result-wide v2

    .line 169
    iget-object v4, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 170
    .line 171
    invoke-static {v4}, Lcom/byazt/kft/c;->nu(Lcom/byazt/kft/c;)J

    .line 172
    .line 173
    .line 174
    move-result-wide v4

    .line 175
    sub-long/2addr v2, v4

    .line 176
    invoke-static {v0, v2, v3}, Lcom/byazt/kft/c;->c(Lcom/byazt/kft/c;J)J

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 180
    .line 181
    invoke-static {v0}, Lcom/byazt/kft/c;->rh(Lcom/byazt/kft/c;)Ljava/util/Set;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_1

    .line 194
    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Lcom/byazt/fk/sp$c;

    .line 200
    .line 201
    iget-object v3, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 202
    .line 203
    invoke-interface {v2, v3}, Lcom/byazt/fk/sp$c;->onPrepared(Lcom/byazt/fk/sp;)V

    .line 204
    .line 205
    .line 206
    iget-object v3, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 207
    .line 208
    invoke-static {v3}, Lcom/byazt/kft/c;->tt(Lcom/byazt/kft/c;)I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    iget-object v5, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 213
    .line 214
    invoke-static {v5}, Lcom/byazt/kft/c;->c(Lcom/byazt/kft/c;)I

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    invoke-interface {v2, v3, v4, v5}, Lcom/byazt/fk/sp$c;->onVideoSizeChanged(Lcom/byazt/fk/sp;II)V

    .line 219
    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 223
    .line 224
    invoke-static {v0}, Lcom/byazt/kft/c;->uj(Lcom/byazt/kft/c;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_3

    .line 229
    .line 230
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 231
    .line 232
    invoke-static {v0}, Lcom/byazt/kft/c;->gt(Lcom/byazt/kft/c;)Lcom/byazt/fk/sp;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iget-object v2, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 237
    .line 238
    invoke-static {v2}, Lcom/byazt/kft/c;->my(Lcom/byazt/kft/c;)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    invoke-interface {v0, v2}, Lcom/byazt/fk/sp;->setQuietPlay(Z)V

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 246
    .line 247
    invoke-static {v0}, Lcom/byazt/kft/c;->gt(Lcom/byazt/kft/c;)Lcom/byazt/fk/sp;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-interface {v0, v1}, Lcom/byazt/fk/sp;->setLoop(Z)V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 255
    .line 256
    invoke-static {v0}, Lcom/byazt/kft/c;->rl(Lcom/byazt/kft/c;)J

    .line 257
    .line 258
    .line 259
    move-result-wide v0

    .line 260
    const-wide/16 v2, 0x0

    .line 261
    .line 262
    cmp-long v4, v0, v2

    .line 263
    .line 264
    if-lez v4, :cond_2

    .line 265
    .line 266
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 267
    .line 268
    invoke-static {v0}, Lcom/byazt/kft/c;->rl(Lcom/byazt/kft/c;)J

    .line 269
    .line 270
    .line 271
    move-result-wide v1

    .line 272
    invoke-static {v0, v1, v2}, Lcom/byazt/kft/c;->tt(Lcom/byazt/kft/c;J)V

    .line 273
    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 277
    .line 278
    invoke-virtual {v0}, Lcom/byazt/kft/c;->play()V

    .line 279
    .line 280
    .line 281
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 282
    .line 283
    invoke-static {v0}, Lcom/byazt/kft/c;->rh(Lcom/byazt/kft/c;)Ljava/util/Set;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-eqz v1, :cond_4

    .line 296
    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    check-cast v1, Lcom/byazt/fk/sp$c;

    .line 302
    .line 303
    iget-object v2, p0, Lcom/byazt/kft/c$9;->c:Lcom/byazt/kft/c;

    .line 304
    .line 305
    invoke-static {v2}, Lcom/byazt/kft/c;->nu(Lcom/byazt/kft/c;)J

    .line 306
    .line 307
    .line 308
    move-result-wide v3

    .line 309
    invoke-interface {v1, v2, v3, v4}, Lcom/byazt/fk/sp$c;->onRenderStart(Lcom/byazt/fk/sp;J)V

    .line 310
    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_4
    return-void
.end method
