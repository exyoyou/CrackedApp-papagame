.class public Lcom/byazt/uo/tt$4$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x30c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uo/tt$4;->c(Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/view/View;

.field public final synthetic tt:F

.field public final synthetic uj:Lcom/byazt/uo/tt$4;

.field public final synthetic ve:F


# direct methods
.method public constructor <init>(Lcom/byazt/uo/tt$4;Landroid/view/View;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/uo/tt$4$3;->c:Landroid/view/View;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/uo/tt$4$3;->tt:F

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/uo/tt$4$3;->ve:F

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "Splash_FullLink"

    .line 2
    .line 3
    const-string v1, "CSJSplashExpressRender- runOnUiThread - onRenderSuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/uo/tt$4$3;->c:Landroid/view/View;

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    iget v0, p0, Lcom/byazt/uo/tt$4$3;->tt:F

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    cmpl-float v0, v0, v1

    .line 16
    .line 17
    if-lez v0, :cond_4

    .line 18
    .line 19
    iget v0, p0, Lcom/byazt/uo/tt$4$3;->ve:F

    .line 20
    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    if-lez v0, :cond_4

    .line 24
    .line 25
    new-instance v0, Lcom/byazt/im/i;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/byazt/uo/c;->zb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget-object v2, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 40
    .line 41
    invoke-direct {v0, v1, v2}, Lcom/byazt/im/i;-><init>(ZLcom/byazt/nc/tt;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/byazt/uo/tt;->c(Lcom/byazt/uo/tt;)Lcom/byazt/ouz/NativeExpressView;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/byazt/ouz/NativeExpressView;->rl()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iget-object v2, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 59
    .line 60
    invoke-static {v2}, Lcom/byazt/uo/tt;->c(Lcom/byazt/uo/tt;)Lcom/byazt/ouz/NativeExpressView;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    if-nez v1, :cond_0

    .line 67
    .line 68
    iget-object v2, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 69
    .line 70
    iget-object v2, v2, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 71
    .line 72
    iget-object v2, v2, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    .line 73
    .line 74
    const/16 v3, 0x8

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Lcom/byazt/cc/TsView;->setComplianceBarVisibility(I)V

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-virtual {v0, v1}, Lcom/byazt/im/i;->c(Z)V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 83
    .line 84
    iget-object v2, v2, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 85
    .line 86
    iget-object v2, v2, Lcom/byazt/uo/c;->nb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    .line 88
    const/4 v3, 0x1

    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    const/4 v4, 0x1

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    const/4 v4, 0x2

    .line 94
    :goto_0
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 98
    .line 99
    iget-object v2, v2, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 100
    .line 101
    iget-object v2, v2, Lcom/byazt/uo/c;->yv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 107
    .line 108
    iget-object v2, v2, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 109
    .line 110
    iget-object v4, v2, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    .line 111
    .line 112
    invoke-static {v2}, Lcom/byazt/uo/tt;->c(Lcom/byazt/uo/tt;)Lcom/byazt/ouz/NativeExpressView;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v4, v2}, Lcom/byazt/cc/TsView;->setExpressView(Lcom/byazt/ouz/NativeExpressView;)V

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 120
    .line 121
    iget-object v2, v2, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 122
    .line 123
    invoke-static {v2}, Lcom/byazt/uo/tt;->n(Lcom/byazt/uo/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 131
    .line 132
    iget-object v2, v2, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 133
    .line 134
    iget-object v2, v2, Lcom/byazt/uo/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_2

    .line 141
    .line 142
    iget-object v2, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 143
    .line 144
    iget-object v2, v2, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 145
    .line 146
    invoke-static {v2}, Lcom/byazt/uo/tt;->a(Lcom/byazt/uo/tt;)Ljava/lang/ref/WeakReference;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-static {v2, v3}, Lcom/byazt/uo/tt;->c(Lcom/byazt/uo/tt;Ljava/lang/ref/WeakReference;)V

    .line 151
    .line 152
    .line 153
    iget-object v2, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 154
    .line 155
    iget-object v2, v2, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 156
    .line 157
    iget-object v2, v2, Lcom/byazt/uo/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 158
    .line 159
    const/4 v3, 0x0

    .line 160
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    .line 162
    .line 163
    :cond_2
    iget-object v2, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 164
    .line 165
    iget-object v2, v2, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 166
    .line 167
    iget-object v2, v2, Lcom/byazt/uo/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-nez v2, :cond_3

    .line 174
    .line 175
    if-nez v1, :cond_3

    .line 176
    .line 177
    iget-object v1, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 178
    .line 179
    iget-object v1, v1, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 180
    .line 181
    iget-object v1, v1, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 182
    .line 183
    invoke-static {v1}, Lcom/byazt/ete/iu;->c(Lcom/byazt/ete/ic;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_3

    .line 188
    .line 189
    iget-object v1, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 190
    .line 191
    iget-object v1, v1, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 192
    .line 193
    invoke-static {v1}, Lcom/byazt/uo/tt;->sp(Lcom/byazt/uo/tt;)V

    .line 194
    .line 195
    .line 196
    :cond_3
    iget-object v1, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 197
    .line 198
    iget-object v1, v1, Lcom/byazt/uo/tt$4;->c:Lcom/byazt/gat/uj;

    .line 199
    .line 200
    invoke-interface {v1, v0}, Lcom/byazt/gat/uj;->tt(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 204
    .line 205
    iget-object v0, v0, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 206
    .line 207
    invoke-static {v0}, Lcom/byazt/uo/tt;->x(Lcom/byazt/uo/tt;)Lcom/byazt/sy/n;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 212
    .line 213
    iget-object v1, v1, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 214
    .line 215
    iget-object v1, v1, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/byazt/cc/TsView;->getEasyPlayableLayout()Landroid/widget/FrameLayout;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    iget-object v2, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 222
    .line 223
    iget-object v2, v2, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 224
    .line 225
    invoke-static {v2}, Lcom/byazt/uo/tt;->c(Lcom/byazt/uo/tt;)Lcom/byazt/ouz/NativeExpressView;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v2}, Lcom/byazt/ouz/NativeExpressView;->getVideoContainer()Landroid/view/ViewGroup;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v0, v1, v2}, Lcom/byazt/sy/n;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 237
    .line 238
    iget-object v0, v0, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 239
    .line 240
    invoke-static {v0}, Lcom/byazt/uo/tt;->i(Lcom/byazt/uo/tt;)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 245
    .line 246
    iget-object v0, v0, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 247
    .line 248
    iget-object v0, v0, Lcom/byazt/uo/c;->zm:Lcom/byazt/im/sp;

    .line 249
    .line 250
    const/4 v1, 0x3

    .line 251
    invoke-virtual {v0, v1}, Lcom/byazt/im/sp;->tt(I)V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 255
    .line 256
    iget-object v0, v0, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 257
    .line 258
    iget-object v0, v0, Lcom/byazt/uo/c;->zm:Lcom/byazt/im/sp;

    .line 259
    .line 260
    const-string v1, "render splash view error"

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Lcom/byazt/im/sp;->c(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Lcom/byazt/uo/tt$4$3;->uj:Lcom/byazt/uo/tt$4;

    .line 266
    .line 267
    iget-object v1, v0, Lcom/byazt/uo/tt$4;->c:Lcom/byazt/gat/uj;

    .line 268
    .line 269
    iget-object v0, v0, Lcom/byazt/uo/tt$4;->tt:Lcom/byazt/uo/tt;

    .line 270
    .line 271
    iget-object v0, v0, Lcom/byazt/uo/c;->zm:Lcom/byazt/im/sp;

    .line 272
    .line 273
    invoke-interface {v1, v0}, Lcom/byazt/gat/uj;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :catchall_0
    move-exception v0

    .line 278
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 279
    .line 280
    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string v2, "onRenderFail:"

    .line 284
    .line 285
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    const-string v1, "splash"

    .line 300
    .line 301
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    return-void
.end method
