.class public Lcom/byazt/un/uj$1$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x7f4
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/uj$1;->onError(Lcom/byazt/fk/sp;Lcom/byazt/fk/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/fk/ve;

.field public final synthetic tt:Lcom/byazt/un/uj$1;


# direct methods
.method public constructor <init>(Lcom/byazt/un/uj$1;Lcom/byazt/fk/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/un/uj$1$4;->c:Lcom/byazt/fk/ve;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/un/uj$1$4;->c:Lcom/byazt/fk/ve;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/fk/ve;->getCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/byazt/un/uj$1$4;->c:Lcom/byazt/fk/ve;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/byazt/fk/ve;->getExtraCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->c:Lcom/byazt/fk/ve;

    .line 14
    .line 15
    invoke-interface {v2}, Lcom/byazt/fk/ve;->getMsg()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 20
    .line 21
    iget-object v3, v3, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static {v3, v0, v1, v2, v4}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj;IILjava/lang/String;Lorg/json/JSONArray;)V

    .line 25
    .line 26
    .line 27
    const-string v2, "CALLBACK_ON_ERROR\u3001\u3001before isVideoPlaying\u3001\u3001\u3001\u3001\u3001"

    .line 28
    .line 29
    const-string v3, "NativeVideoController"

    .line 30
    .line 31
    invoke-static {v3, v2}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/byazt/un/uj;->bx()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    const/16 v2, -0x3ec

    .line 45
    .line 46
    if-eq v1, v2, :cond_0

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v4, "\u51fa\u9519\u540e errorcode,extra\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    .line 52
    .line 53
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v4, ","

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v3, v2}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 75
    .line 76
    iget-object v2, v2, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 77
    .line 78
    invoke-static {v2, v0, v1}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj;II)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    const/4 v4, 0x0

    .line 83
    const/4 v5, 0x1

    .line 84
    if-nez v2, :cond_3

    .line 85
    .line 86
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 87
    .line 88
    iget-object v2, v2, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 89
    .line 90
    invoke-static {v2}, Lcom/byazt/un/uj;->zm(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {v2}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    if-ne v0, v5, :cond_6

    .line 102
    .line 103
    const/16 v2, -0x13

    .line 104
    .line 105
    if-eq v1, v2, :cond_2

    .line 106
    .line 107
    const/16 v2, -0x26

    .line 108
    .line 109
    if-ne v1, v2, :cond_6

    .line 110
    .line 111
    :cond_2
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 112
    .line 113
    iget-object v2, v2, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 114
    .line 115
    invoke-static {v2}, Lcom/byazt/un/uj;->d(Lcom/byazt/un/uj;)Lcom/byazt/un/a;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    if-eqz v2, :cond_5

    .line 120
    .line 121
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 122
    .line 123
    iget-object v2, v2, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 124
    .line 125
    invoke-static {v2}, Lcom/byazt/un/uj;->or(Lcom/byazt/un/uj;)Lcom/byazt/un/a;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iget-object v3, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 130
    .line 131
    iget-object v3, v3, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 132
    .line 133
    invoke-static {v3}, Lcom/byazt/un/uj;->eo(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    iget-object v5, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 138
    .line 139
    iget-object v5, v5, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 140
    .line 141
    invoke-static {v5}, Lcom/byazt/un/uj;->zb(Lcom/byazt/un/uj;)Ljava/lang/ref/WeakReference;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v2, v3, v5, v4}, Lcom/byazt/un/a;->c(Lcom/byazt/ete/ic;Ljava/lang/ref/WeakReference;Z)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_3
    :goto_0
    const-string v2, "\u51fa\u9519\u540e\u5c55\u793a\u7ed3\u679c\u9875\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    .line 150
    .line 151
    invoke-static {v3, v2}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 155
    .line 156
    iget-object v2, v2, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 157
    .line 158
    invoke-static {v2}, Lcom/byazt/un/uj;->yv(Lcom/byazt/un/uj;)Lcom/byazt/un/a;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    if-eqz v2, :cond_4

    .line 163
    .line 164
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 165
    .line 166
    iget-object v2, v2, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 167
    .line 168
    invoke-static {v2}, Lcom/byazt/un/uj;->h(Lcom/byazt/un/uj;)Lcom/byazt/un/a;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    iget-object v3, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 173
    .line 174
    iget-object v3, v3, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 175
    .line 176
    invoke-static {v3}, Lcom/byazt/un/uj;->p(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    iget-object v6, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 181
    .line 182
    iget-object v6, v6, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 183
    .line 184
    invoke-static {v6}, Lcom/byazt/un/uj;->md(Lcom/byazt/un/uj;)Ljava/lang/ref/WeakReference;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v2, v3, v6, v4}, Lcom/byazt/un/a;->c(Lcom/byazt/ete/ic;Ljava/lang/ref/WeakReference;Z)V

    .line 189
    .line 190
    .line 191
    :cond_4
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 192
    .line 193
    iget-object v2, v2, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 194
    .line 195
    invoke-virtual {v2, v5}, Lcom/byazt/nj/c;->ve(Z)V

    .line 196
    .line 197
    .line 198
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 199
    .line 200
    iget-object v2, v2, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 201
    .line 202
    invoke-virtual {v2}, Lcom/byazt/un/uj;->da()V

    .line 203
    .line 204
    .line 205
    :cond_6
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 206
    .line 207
    iget-object v2, v2, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 208
    .line 209
    invoke-static {v2}, Lcom/byazt/un/uj;->cu(Lcom/byazt/un/uj;)Lcom/byazt/un/a;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    if-eqz v2, :cond_7

    .line 214
    .line 215
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 216
    .line 217
    iget-object v2, v2, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 218
    .line 219
    invoke-static {v2}, Lcom/byazt/un/uj;->qp(Lcom/byazt/un/uj;)Lcom/byazt/un/a;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v2}, Lcom/byazt/un/a;->tt()V

    .line 224
    .line 225
    .line 226
    :cond_7
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 227
    .line 228
    iget-object v2, v2, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 229
    .line 230
    invoke-static {v2}, Lcom/byazt/un/uj;->nb(Lcom/byazt/un/uj;)Lcom/byazt/dh/ve$c;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    if-eqz v2, :cond_8

    .line 235
    .line 236
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 237
    .line 238
    iget-object v2, v2, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 239
    .line 240
    invoke-static {v2}, Lcom/byazt/un/uj;->nb(Lcom/byazt/un/uj;)Lcom/byazt/dh/ve$c;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    iget-object v3, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 245
    .line 246
    iget-object v3, v3, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 247
    .line 248
    invoke-static {v3}, Lcom/byazt/un/uj;->pf(Lcom/byazt/un/uj;)J

    .line 249
    .line 250
    .line 251
    move-result-wide v3

    .line 252
    iget-object v5, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 253
    .line 254
    iget-object v5, v5, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 255
    .line 256
    invoke-static {v5}, Lcom/byazt/un/uj;->bx(Lcom/byazt/un/uj;)J

    .line 257
    .line 258
    .line 259
    move-result-wide v5

    .line 260
    iget-object v7, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 261
    .line 262
    iget-object v7, v7, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 263
    .line 264
    invoke-static {v7}, Lcom/byazt/un/uj;->sv(Lcom/byazt/un/uj;)J

    .line 265
    .line 266
    .line 267
    move-result-wide v7

    .line 268
    invoke-static {v5, v6, v7, v8}, Lcom/byazt/vv/c;->c(JJ)I

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    invoke-interface {v2, v3, v4, v5}, Lcom/byazt/dh/ve$c;->tt(JI)V

    .line 273
    .line 274
    .line 275
    :cond_8
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 276
    .line 277
    iget-object v2, v2, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 278
    .line 279
    invoke-static {v2}, Lcom/byazt/un/uj;->gt(Lcom/byazt/un/uj;)Ljava/lang/ref/WeakReference;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    if-eqz v2, :cond_9

    .line 284
    .line 285
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 286
    .line 287
    iget-object v2, v2, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 288
    .line 289
    invoke-static {v2}, Lcom/byazt/un/uj;->gt(Lcom/byazt/un/uj;)Ljava/lang/ref/WeakReference;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    if-eqz v2, :cond_9

    .line 298
    .line 299
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 300
    .line 301
    iget-object v2, v2, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 302
    .line 303
    invoke-virtual {v2}, Lcom/byazt/un/uj;->bx()Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-nez v2, :cond_9

    .line 308
    .line 309
    iget-object v2, p0, Lcom/byazt/un/uj$1$4;->tt:Lcom/byazt/un/uj$1;

    .line 310
    .line 311
    iget-object v2, v2, Lcom/byazt/un/uj$1;->c:Lcom/byazt/un/uj;

    .line 312
    .line 313
    invoke-static {v2}, Lcom/byazt/un/uj;->gt(Lcom/byazt/un/uj;)Ljava/lang/ref/WeakReference;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    check-cast v2, Lcom/byazt/dh/ve$uj;

    .line 322
    .line 323
    invoke-interface {v2, v0, v1}, Lcom/byazt/dh/ve$uj;->onVideoError(II)V

    .line 324
    .line 325
    .line 326
    :cond_9
    return-void
.end method
