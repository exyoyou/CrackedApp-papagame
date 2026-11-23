.class public abstract Lcom/byazt/zk/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zy/n;
.implements Lcom/byazt/dg/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x38d,
        0x36
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/BlurMaskFilter;

.field public final c:Landroid/graphics/Matrix;

.field public d:Z

.field public final da:Landroid/graphics/Matrix;

.field public eo:Landroid/graphics/Paint;

.field public gr:Lcom/byazt/dg/uj;

.field public final gt:Landroid/graphics/RectF;

.field public gu:Lcom/byazt/dg/x;

.field public h:Z

.field public final i:Landroid/graphics/Path;

.field public final m:Landroid/graphics/Paint;

.field public final md:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/dg/c<",
            "**>;>;"
        }
    .end annotation
.end field

.field public final my:Landroid/graphics/RectF;

.field public n:F

.field public final nu:Landroid/graphics/RectF;

.field public or:F

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/zk/ve;",
            ">;"
        }
    .end annotation
.end field

.field public final qy:Ljava/lang/String;

.field public final rh:Landroid/graphics/RectF;

.field public final rl:Landroid/graphics/RectF;

.field public final sl:Landroid/graphics/Matrix;

.field public final sp:Landroid/os/Handler;

.field public final t:Landroid/graphics/Paint;

.field public final tt:Lcom/byazt/ga/x;

.field public final u:Landroid/graphics/Paint;

.field public final uj:Lcom/byazt/dg/m;

.field public final ve:Lcom/byazt/zk/x;

.field public x:Z

.field public final yp:Landroid/graphics/Paint;

.field public yv:Lcom/byazt/zk/ve;

.field public final z:Landroid/graphics/Paint;

.field public final zb:Landroid/graphics/Matrix;

.field public zm:Lcom/byazt/zk/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/zk/ve;->sp:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/Path;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    .line 21
    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/byazt/zk/ve;->da:Landroid/graphics/Matrix;

    .line 28
    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/byazt/zk/ve;->sl:Landroid/graphics/Matrix;

    .line 35
    .line 36
    new-instance v0, Lcom/byazt/xg/c;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-direct {v0, v1}, Lcom/byazt/xg/c;-><init>(I)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/byazt/zk/ve;->t:Landroid/graphics/Paint;

    .line 43
    .line 44
    new-instance v0, Lcom/byazt/xg/c;

    .line 45
    .line 46
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Lcom/byazt/xg/c;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/byazt/zk/ve;->u:Landroid/graphics/Paint;

    .line 52
    .line 53
    new-instance v0, Lcom/byazt/xg/c;

    .line 54
    .line 55
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 56
    .line 57
    invoke-direct {v0, v1, v2}, Lcom/byazt/xg/c;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/byazt/zk/ve;->yp:Landroid/graphics/Paint;

    .line 61
    .line 62
    new-instance v0, Lcom/byazt/xg/c;

    .line 63
    .line 64
    invoke-direct {v0, v1}, Lcom/byazt/xg/c;-><init>(I)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/byazt/zk/ve;->z:Landroid/graphics/Paint;

    .line 68
    .line 69
    new-instance v2, Lcom/byazt/xg/c;

    .line 70
    .line 71
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 72
    .line 73
    invoke-direct {v2, v3}, Lcom/byazt/xg/c;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 74
    .line 75
    .line 76
    iput-object v2, p0, Lcom/byazt/zk/ve;->m:Landroid/graphics/Paint;

    .line 77
    .line 78
    new-instance v2, Landroid/graphics/RectF;

    .line 79
    .line 80
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v2, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    .line 84
    .line 85
    new-instance v2, Landroid/graphics/RectF;

    .line 86
    .line 87
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v2, p0, Lcom/byazt/zk/ve;->rh:Landroid/graphics/RectF;

    .line 91
    .line 92
    new-instance v2, Landroid/graphics/RectF;

    .line 93
    .line 94
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v2, p0, Lcom/byazt/zk/ve;->my:Landroid/graphics/RectF;

    .line 98
    .line 99
    new-instance v2, Landroid/graphics/RectF;

    .line 100
    .line 101
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v2, p0, Lcom/byazt/zk/ve;->gt:Landroid/graphics/RectF;

    .line 105
    .line 106
    new-instance v2, Landroid/graphics/RectF;

    .line 107
    .line 108
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v2, p0, Lcom/byazt/zk/ve;->rl:Landroid/graphics/RectF;

    .line 112
    .line 113
    new-instance v2, Landroid/graphics/Matrix;

    .line 114
    .line 115
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v2, p0, Lcom/byazt/zk/ve;->c:Landroid/graphics/Matrix;

    .line 119
    .line 120
    new-instance v2, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v2, p0, Lcom/byazt/zk/ve;->md:Ljava/util/List;

    .line 126
    .line 127
    iput-boolean v1, p0, Lcom/byazt/zk/ve;->h:Z

    .line 128
    .line 129
    const/4 v1, 0x0

    .line 130
    iput v1, p0, Lcom/byazt/zk/ve;->n:F

    .line 131
    .line 132
    new-instance v1, Landroid/graphics/Matrix;

    .line 133
    .line 134
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object v1, p0, Lcom/byazt/zk/ve;->zb:Landroid/graphics/Matrix;

    .line 138
    .line 139
    const/high16 v1, 0x3f800000    # 1.0f

    .line 140
    .line 141
    iput v1, p0, Lcom/byazt/zk/ve;->or:F

    .line 142
    .line 143
    iput-object p1, p0, Lcom/byazt/zk/ve;->tt:Lcom/byazt/ga/x;

    .line 144
    .line 145
    iput-object p2, p0, Lcom/byazt/zk/ve;->ve:Lcom/byazt/zk/x;

    .line 146
    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/byazt/zk/x;->a()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v1, "#draw"

    .line 160
    .line 161
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    iput-object p1, p0, Lcom/byazt/zk/ve;->qy:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {p2}, Lcom/byazt/zk/x;->t()Lcom/byazt/zk/x$tt;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    sget-object v1, Lcom/byazt/zk/x$tt;->ve:Lcom/byazt/zk/x$tt;

    .line 175
    .line 176
    if-ne p1, v1, :cond_0

    .line 177
    .line 178
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 179
    .line 180
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 181
    .line 182
    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 190
    .line 191
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 192
    .line 193
    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 197
    .line 198
    .line 199
    :goto_0
    invoke-virtual {p2}, Lcom/byazt/zk/x;->z()Lcom/byazt/kd/t;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p1}, Lcom/byazt/kd/t;->da()Lcom/byazt/dg/m;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iput-object p1, p0, Lcom/byazt/zk/ve;->uj:Lcom/byazt/dg/m;

    .line 208
    .line 209
    invoke-virtual {p1, p0}, Lcom/byazt/dg/m;->c(Lcom/byazt/dg/c$c;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2}, Lcom/byazt/zk/x;->da()Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    if-eqz p1, :cond_2

    .line 217
    .line 218
    invoke-virtual {p2}, Lcom/byazt/zk/x;->da()Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-nez p1, :cond_2

    .line 227
    .line 228
    new-instance p1, Lcom/byazt/dg/x;

    .line 229
    .line 230
    invoke-virtual {p2}, Lcom/byazt/zk/x;->da()Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-direct {p1, p2}, Lcom/byazt/dg/x;-><init>(Ljava/util/List;)V

    .line 235
    .line 236
    .line 237
    iput-object p1, p0, Lcom/byazt/zk/ve;->gu:Lcom/byazt/dg/x;

    .line 238
    .line 239
    invoke-virtual {p1}, Lcom/byazt/dg/x;->tt()Ljava/util/List;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    if-eqz p2, :cond_1

    .line 252
    .line 253
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    check-cast p2, Lcom/byazt/dg/c;

    .line 258
    .line 259
    invoke-virtual {p2, p0}, Lcom/byazt/dg/c;->c(Lcom/byazt/dg/c$c;)V

    .line 260
    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/byazt/zk/ve;->gu:Lcom/byazt/dg/x;

    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/byazt/dg/x;->ve()Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    if-eqz p2, :cond_2

    .line 278
    .line 279
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    check-cast p2, Lcom/byazt/dg/c;

    .line 284
    .line 285
    invoke-virtual {p0, p2}, Lcom/byazt/zk/ve;->c(Lcom/byazt/dg/c;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2, p0}, Lcom/byazt/dg/c;->c(Lcom/byazt/dg/c$c;)V

    .line 289
    .line 290
    .line 291
    goto :goto_2

    .line 292
    :cond_2
    invoke-direct {p0}, Lcom/byazt/zk/ve;->yp()V

    .line 293
    .line 294
    .line 295
    return-void
.end method

.method private static c(Lcom/byazt/ga/x;Lcom/byazt/zk/x;)Lcom/byazt/ga/i$c;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/zk/x;->sp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/ga/x;->a(Ljava/lang/String;)Lcom/byazt/ga/i;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/byazt/ga/i;->da()Lcom/byazt/ga/i$c;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static c(Lcom/byazt/zk/uj;Lcom/byazt/zk/x;Lcom/byazt/ga/x;Lcom/byazt/ga/a;Landroid/content/Context;)Lcom/byazt/zk/ve;
    .locals 6

    .line 4
    sget-object v0, Lcom/byazt/zk/ve$2;->c:[I

    invoke-virtual {p1}, Lcom/byazt/zk/x;->sl()Lcom/byazt/zk/x$c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Unknown layer type "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/zk/x;->sl()Lcom/byazt/zk/x$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/kk/a;->tt(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 6
    :pswitch_0
    new-instance p0, Lcom/byazt/zk/t;

    invoke-direct {p0, p2, p1}, Lcom/byazt/zk/t;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;)V

    return-object p0

    .line 7
    :pswitch_1
    new-instance p0, Lcom/byazt/zk/i;

    invoke-direct {p0, p2, p1}, Lcom/byazt/zk/i;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;)V

    return-object p0

    :pswitch_2
    const-string p0, "text:"

    .line 8
    invoke-static {p2, p1, p0}, Lcom/byazt/zk/ve;->c(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 9
    new-instance p0, Lcom/byazt/zk/a;

    invoke-direct {p0, p2, p1, p4}, Lcom/byazt/zk/a;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Landroid/content/Context;)V

    return-object p0

    :cond_0
    const-string p0, "videoview:"

    .line 10
    invoke-static {p2, p1, p0}, Lcom/byazt/zk/ve;->c(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 11
    invoke-static {p2, p1}, Lcom/byazt/zk/ve;->c(Lcom/byazt/ga/x;Lcom/byazt/zk/x;)Lcom/byazt/ga/i$c;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 12
    iget-object p3, p0, Lcom/byazt/ga/i$c;->c:Lcom/byazt/ga/i$c$c;

    if-eqz p3, :cond_1

    iget v0, p3, Lcom/byazt/ga/i$c$c;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 13
    new-instance p0, Lcom/byazt/zk/n;

    invoke-direct {p0, p2, p1, p4, p3}, Lcom/byazt/zk/n;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Landroid/content/Context;Lcom/byazt/ga/i$c$c;)V

    return-object p0

    .line 14
    :cond_1
    iget-boolean p0, p0, Lcom/byazt/ga/i$c;->tt:Z

    if-eqz p0, :cond_2

    .line 15
    new-instance p0, Lcom/byazt/zk/tt;

    invoke-direct {p0, p2, p1, p4}, Lcom/byazt/zk/tt;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Landroid/content/Context;)V

    return-object p0

    .line 16
    :cond_2
    new-instance p0, Lcom/byazt/zk/yp;

    invoke-direct {p0, p2, p1, p4}, Lcom/byazt/zk/yp;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Landroid/content/Context;)V

    return-object p0

    .line 17
    :cond_3
    new-instance p0, Lcom/byazt/zk/yp;

    invoke-direct {p0, p2, p1, p4}, Lcom/byazt/zk/yp;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Landroid/content/Context;)V

    return-object p0

    :cond_4
    const-string p0, "animview:"

    .line 18
    invoke-static {p2, p1, p0}, Lcom/byazt/zk/ve;->c(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 19
    new-instance p0, Lcom/byazt/zk/c;

    invoke-direct {p0, p2, p1, p4}, Lcom/byazt/zk/c;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Landroid/content/Context;)V

    return-object p0

    :cond_5
    const-string p0, "view:"

    .line 20
    invoke-static {p2, p1, p0}, Lcom/byazt/zk/ve;->c(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 21
    new-instance p0, Lcom/byazt/zk/u;

    invoke-direct {p0, p2, p1, p4}, Lcom/byazt/zk/u;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Landroid/content/Context;)V

    return-object p0

    .line 22
    :cond_6
    new-instance p0, Lcom/byazt/zk/sp;

    invoke-direct {p0, p2, p1}, Lcom/byazt/zk/sp;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;)V

    .line 23
    invoke-virtual {p0}, Lcom/byazt/zk/sp;->yp()Landroid/graphics/Bitmap;

    return-object p0

    .line 24
    :pswitch_3
    new-instance p0, Lcom/byazt/zk/sl;

    invoke-direct {p0, p2, p1}, Lcom/byazt/zk/sl;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;)V

    return-object p0

    .line 25
    :pswitch_4
    new-instance p0, Lcom/byazt/zk/uj;

    .line 26
    invoke-virtual {p1}, Lcom/byazt/zk/x;->sp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/byazt/ga/a;->tt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/byazt/zk/uj;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Ljava/util/List;Lcom/byazt/ga/a;Landroid/content/Context;)V

    return-object p0

    .line 27
    :pswitch_5
    new-instance p4, Lcom/byazt/zk/da;

    invoke-direct {p4, p2, p1, p0, p3}, Lcom/byazt/zk/da;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Lcom/byazt/zk/uj;Lcom/byazt/ga/a;)V

    return-object p4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "Layer#clearLayer"

    .line 114
    invoke-static {v0}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v5, v2, v3

    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float v6, v2, v3

    iget v2, v1, Landroid/graphics/RectF;->right:F

    add-float v7, v2, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v8, v1, v3

    iget-object v9, p0, Lcom/byazt/zk/ve;->m:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 116
    invoke-static {v0}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    return-void
.end method

.method private c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 7

    const-string v0, "Layer#saveLayer"

    .line 139
    invoke-static {v0}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/byazt/zk/ve;->u:Landroid/graphics/Paint;

    const/16 v3, 0x13

    invoke-static {p1, v1, v2, v3}, Lcom/byazt/kk/da;->c(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 141
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lcom/byazt/zk/ve;->c(Landroid/graphics/Canvas;)V

    .line 143
    :cond_0
    invoke-static {v0}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    const/4 v0, 0x0

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/byazt/zk/ve;->gu:Lcom/byazt/dg/x;

    invoke-virtual {v1}, Lcom/byazt/dg/x;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 145
    iget-object v1, p0, Lcom/byazt/zk/ve;->gu:Lcom/byazt/dg/x;

    invoke-virtual {v1}, Lcom/byazt/dg/x;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/jx/x;

    .line 146
    iget-object v2, p0, Lcom/byazt/zk/ve;->gu:Lcom/byazt/dg/x;

    invoke-virtual {v2}, Lcom/byazt/dg/x;->tt()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/dg/c;

    .line 147
    iget-object v3, p0, Lcom/byazt/zk/ve;->gu:Lcom/byazt/dg/x;

    invoke-virtual {v3}, Lcom/byazt/dg/x;->ve()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/dg/c;

    .line 148
    sget-object v4, Lcom/byazt/zk/ve$2;->tt:[I

    invoke-virtual {v1}, Lcom/byazt/jx/x;->c()Lcom/byazt/jx/x$c;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0xff

    const/4 v6, 0x1

    if-eq v4, v6, :cond_8

    const/4 v6, 0x2

    if-eq v4, v6, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 149
    :cond_1
    invoke-virtual {v1}, Lcom/byazt/jx/x;->uj()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/byazt/zk/ve;->tt(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/byazt/dg/c;Lcom/byazt/dg/c;)V

    goto :goto_1

    .line 151
    :cond_2
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/byazt/zk/ve;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/byazt/dg/c;Lcom/byazt/dg/c;)V

    goto :goto_1

    .line 152
    :cond_3
    invoke-virtual {v1}, Lcom/byazt/jx/x;->uj()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/byazt/zk/ve;->n(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/byazt/dg/c;Lcom/byazt/dg/c;)V

    goto :goto_1

    .line 154
    :cond_4
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/byazt/zk/ve;->uj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/byazt/dg/c;Lcom/byazt/dg/c;)V

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    .line 155
    iget-object v4, p0, Lcom/byazt/zk/ve;->t:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v4, p0, Lcom/byazt/zk/ve;->t:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 157
    iget-object v4, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/byazt/zk/ve;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 158
    :cond_6
    invoke-virtual {v1}, Lcom/byazt/jx/x;->uj()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 159
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/byazt/zk/ve;->ve(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/byazt/dg/c;Lcom/byazt/dg/c;)V

    goto :goto_1

    .line 160
    :cond_7
    invoke-direct {p0, p1, p2, v2}, Lcom/byazt/zk/ve;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/byazt/dg/c;)V

    goto :goto_1

    .line 161
    :cond_8
    invoke-direct {p0}, Lcom/byazt/zk/ve;->m()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 162
    iget-object v1, p0, Lcom/byazt/zk/ve;->t:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 163
    iget-object v1, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/byazt/zk/ve;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    const-string p2, "Layer#restoreLayer"

    .line 164
    invoke-static {p2}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 166
    invoke-static {p2}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    return-void
.end method

.method private c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/byazt/dg/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/byazt/dg/c<",
            "Lcom/byazt/jx/yp;",
            "Landroid/graphics/Path;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-virtual {p3}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 173
    iget-object v0, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 174
    iget-object p3, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 175
    iget-object p2, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/byazt/zk/ve;->yp:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/byazt/dg/c;Lcom/byazt/dg/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/byazt/dg/c<",
            "Lcom/byazt/jx/yp;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/byazt/dg/c<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 167
    invoke-virtual {p3}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 168
    iget-object v0, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 169
    iget-object p3, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 170
    iget-object p2, p0, Lcom/byazt/zk/ve;->t:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float p3, p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 171
    iget-object p2, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/byazt/zk/ve;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private c(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 10

    .line 117
    iget-object v0, p0, Lcom/byazt/zk/ve;->my:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 118
    invoke-virtual {p0}, Lcom/byazt/zk/ve;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/byazt/zk/ve;->gu:Lcom/byazt/dg/x;

    invoke-virtual {v0}, Lcom/byazt/dg/x;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    .line 120
    iget-object v4, p0, Lcom/byazt/zk/ve;->gu:Lcom/byazt/dg/x;

    invoke-virtual {v4}, Lcom/byazt/dg/x;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/jx/x;

    .line 121
    iget-object v5, p0, Lcom/byazt/zk/ve;->gu:Lcom/byazt/dg/x;

    invoke-virtual {v5}, Lcom/byazt/dg/x;->tt()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/dg/c;

    .line 122
    invoke-virtual {v5}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    if-eqz v5, :cond_5

    .line 123
    iget-object v6, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 124
    iget-object v5, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    invoke-virtual {v5, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 125
    sget-object v5, Lcom/byazt/zk/ve$2;->tt:[I

    invoke-virtual {v4}, Lcom/byazt/jx/x;->c()Lcom/byazt/jx/x$c;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    invoke-virtual {v4}, Lcom/byazt/jx/x;->uj()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 127
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/byazt/zk/ve;->rl:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v3, :cond_3

    .line 128
    iget-object v4, p0, Lcom/byazt/zk/ve;->my:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/byazt/zk/ve;->rl:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_2

    .line 129
    :cond_3
    iget-object v4, p0, Lcom/byazt/zk/ve;->my:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/byazt/zk/ve;->rl:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 130
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lcom/byazt/zk/ve;->my:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/byazt/zk/ve;->rl:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 131
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, p0, Lcom/byazt/zk/ve;->my:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/byazt/zk/ve;->rl:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    .line 132
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v8, p0, Lcom/byazt/zk/ve;->my:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/byazt/zk/ve;->rl:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    .line 133
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 134
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 135
    :cond_6
    iget-object p2, p0, Lcom/byazt/zk/ve;->my:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 136
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_7
    return-void
.end method

.method public static synthetic c(Lcom/byazt/zk/ve;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/zk/ve;->tt(Z)V

    return-void
.end method

.method private static c(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/zk/x;->sp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/ga/x;->a(Ljava/lang/String;)Lcom/byazt/ga/i;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/byazt/ga/i;->yp()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private m()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/ve;->gu:Lcom/byazt/dg/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dg/x;->tt()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/byazt/zk/ve;->gu:Lcom/byazt/dg/x;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/byazt/dg/x;->c()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ge v0, v2, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Lcom/byazt/zk/ve;->gu:Lcom/byazt/dg/x;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/byazt/dg/x;->c()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/byazt/jx/x;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/byazt/jx/x;->c()Lcom/byazt/jx/x$c;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sget-object v3, Lcom/byazt/jx/x$c;->uj:Lcom/byazt/jx/x$c;

    .line 45
    .line 46
    if-eq v2, v3, :cond_1

    .line 47
    .line 48
    return v1

    .line 49
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x1

    .line 53
    return v0
.end method

.method private n(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/byazt/dg/c;Lcom/byazt/dg/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/byazt/dg/c<",
            "Lcom/byazt/jx/yp;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/byazt/dg/c<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/byazt/zk/ve;->u:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lcom/byazt/kk/da;->c(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/byazt/zk/ve;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 4
    iget-object v0, p0, Lcom/byazt/zk/ve;->yp:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-float p4, p4

    const v1, 0x40233333    # 2.55f

    mul-float p4, p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5
    invoke-virtual {p3}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 6
    iget-object p4, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 7
    iget-object p3, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 8
    iget-object p2, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/byazt/zk/ve;->yp:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private nu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/ve;->p:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/zk/ve;->yv:Lcom/byazt/zk/ve;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/byazt/zk/ve;->p:Ljava/util/List;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/byazt/zk/ve;->p:Ljava/util/List;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/zk/ve;->yv:Lcom/byazt/zk/ve;

    .line 25
    .line 26
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/byazt/zk/ve;->p:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lcom/byazt/zk/ve;->yv:Lcom/byazt/zk/ve;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-void
.end method

.method private tt(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/byazt/dg/c;Lcom/byazt/dg/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/byazt/dg/c<",
            "Lcom/byazt/jx/yp;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/byazt/dg/c<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/byazt/zk/ve;->t:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lcom/byazt/kk/da;->c(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 11
    iget-object v0, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/byazt/zk/ve;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 12
    invoke-virtual {p3}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 13
    iget-object v0, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 14
    iget-object p3, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 15
    iget-object p2, p0, Lcom/byazt/zk/ve;->t:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float p3, p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16
    iget-object p2, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/byazt/zk/ve;->yp:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private tt(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    .line 3
    invoke-virtual {p0}, Lcom/byazt/zk/ve;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/zk/ve;->ve:Lcom/byazt/zk/x;

    invoke-virtual {v0}, Lcom/byazt/zk/x;->t()Lcom/byazt/zk/x$tt;

    move-result-object v0

    sget-object v1, Lcom/byazt/zk/x$tt;->ve:Lcom/byazt/zk/x$tt;

    if-ne v0, v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/zk/ve;->gt:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6
    iget-object v0, p0, Lcom/byazt/zk/ve;->zm:Lcom/byazt/zk/ve;

    iget-object v2, p0, Lcom/byazt/zk/ve;->gt:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p2, v3}, Lcom/byazt/zk/ve;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 7
    iget-object p2, p0, Lcom/byazt/zk/ve;->gt:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 8
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    return-void
.end method

.method private tt(Z)V
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/byazt/zk/ve;->h:Z

    if-eq p1, v0, :cond_0

    .line 19
    iput-boolean p1, p0, Lcom/byazt/zk/ve;->h:Z

    .line 20
    invoke-direct {p0}, Lcom/byazt/zk/ve;->z()V

    :cond_0
    return-void
.end method

.method private uj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/byazt/dg/c;Lcom/byazt/dg/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/byazt/dg/c<",
            "Lcom/byazt/jx/yp;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/byazt/dg/c<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/byazt/zk/ve;->u:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lcom/byazt/kk/da;->c(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 3
    invoke-virtual {p3}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 4
    iget-object v0, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 5
    iget-object p3, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 6
    iget-object p2, p0, Lcom/byazt/zk/ve;->t:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float p3, p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7
    iget-object p2, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/byazt/zk/ve;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/zk/ve;)Lcom/byazt/dg/uj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zk/ve;->gr:Lcom/byazt/dg/uj;

    return-object p0
.end method

.method private ve(F)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/zk/ve;->tt:Lcom/byazt/ga/x;

    invoke-virtual {v0}, Lcom/byazt/ga/x;->p()Lcom/byazt/ga/a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/byazt/ga/a;->ve()Lcom/byazt/ga/rh;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/zk/ve;->ve:Lcom/byazt/zk/x;

    invoke-virtual {v1}, Lcom/byazt/zk/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/byazt/ga/rh;->c(Ljava/lang/String;F)V

    return-void
.end method

.method private ve(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/byazt/dg/c;Lcom/byazt/dg/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/byazt/dg/c<",
            "Lcom/byazt/jx/yp;",
            "Landroid/graphics/Path;",
            ">;",
            "Lcom/byazt/dg/c<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/byazt/zk/ve;->yp:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lcom/byazt/kk/da;->c(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/byazt/zk/ve;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/zk/ve;->yp:Landroid/graphics/Paint;

    invoke-virtual {p4}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-float p4, p4

    const v1, 0x40233333    # 2.55f

    mul-float p4, p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    invoke-virtual {p3}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 9
    iget-object p4, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 10
    iget-object p3, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 11
    iget-object p2, p0, Lcom/byazt/zk/ve;->i:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/byazt/zk/ve;->yp:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private yp()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/ve;->ve:Lcom/byazt/zk/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/zk/x;->uj()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Lcom/byazt/dg/uj;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/byazt/zk/ve;->ve:Lcom/byazt/zk/x;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/byazt/zk/x;->uj()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v0, v2}, Lcom/byazt/dg/uj;-><init>(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/byazt/zk/ve;->gr:Lcom/byazt/dg/uj;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byazt/dg/c;->c()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/zk/ve;->gr:Lcom/byazt/dg/uj;

    .line 31
    .line 32
    new-instance v2, Lcom/byazt/zk/ve$1;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Lcom/byazt/zk/ve$1;-><init>(Lcom/byazt/zk/ve;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/byazt/dg/c;->c(Lcom/byazt/dg/c$c;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/zk/ve;->gr:Lcom/byazt/dg/uj;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Float;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/high16 v2, 0x3f800000    # 1.0f

    .line 53
    .line 54
    cmpl-float v0, v0, v2

    .line 55
    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v1, 0x0

    .line 60
    :goto_0
    invoke-direct {p0, v1}, Lcom/byazt/zk/ve;->tt(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/byazt/zk/ve;->gr:Lcom/byazt/dg/uj;

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/byazt/zk/ve;->c(Lcom/byazt/dg/c;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    invoke-direct {p0, v1}, Lcom/byazt/zk/ve;->tt(Z)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/ve;->tt:Lcom/byazt/ga/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ga/x;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/ve;->zb:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/byazt/zk/ve;->z()V

    return-void
.end method

.method public c(F)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/byazt/zk/ve;->uj:Lcom/byazt/dg/m;

    invoke-virtual {v0, p1}, Lcom/byazt/dg/m;->c(F)V

    .line 177
    iget-object v0, p0, Lcom/byazt/zk/ve;->gu:Lcom/byazt/dg/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 178
    :goto_0
    iget-object v2, p0, Lcom/byazt/zk/ve;->gu:Lcom/byazt/dg/x;

    invoke-virtual {v2}, Lcom/byazt/dg/x;->tt()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/byazt/zk/ve;->gu:Lcom/byazt/dg/x;

    invoke-virtual {v2}, Lcom/byazt/dg/x;->tt()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/dg/c;

    invoke-virtual {v2, p1}, Lcom/byazt/dg/c;->c(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/byazt/zk/ve;->gr:Lcom/byazt/dg/uj;

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0, p1}, Lcom/byazt/dg/c;->c(F)V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/byazt/zk/ve;->zm:Lcom/byazt/zk/ve;

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {v0, p1}, Lcom/byazt/zk/ve;->c(F)V

    .line 184
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/byazt/zk/ve;->md:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/byazt/zk/ve;->md:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dg/c;

    invoke-virtual {v0, p1}, Lcom/byazt/dg/c;->c(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/byazt/zk/ve;->uj:Lcom/byazt/dg/m;

    invoke-virtual {v0}, Lcom/byazt/dg/m;->c()Lcom/byazt/dg/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/zk/ve;->uj:Lcom/byazt/dg/m;

    invoke-virtual {v0}, Lcom/byazt/dg/m;->c()Lcom/byazt/dg/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    mul-float v0, v0, p1

    .line 138
    iput v0, p0, Lcom/byazt/zk/ve;->or:F

    return-void
.end method

.method public c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    .line 47
    iget-object v0, p0, Lcom/byazt/zk/ve;->qy:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 48
    iget-boolean v0, p0, Lcom/byazt/zk/ve;->h:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/byazt/zk/ve;->ve:Lcom/byazt/zk/x;

    invoke-virtual {v0}, Lcom/byazt/zk/x;->qy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/byazt/zk/ve;->nu()V

    const-string v0, "Layer#parentMatrix"

    .line 50
    invoke-static {v0}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/byazt/zk/ve;->zb:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 52
    iget-object v1, p0, Lcom/byazt/zk/ve;->da:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 53
    iget-object v1, p0, Lcom/byazt/zk/ve;->da:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 54
    iget-object v1, p0, Lcom/byazt/zk/ve;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 55
    iget-object v2, p0, Lcom/byazt/zk/ve;->da:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/byazt/zk/ve;->p:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/zk/ve;

    iget-object v3, v3, Lcom/byazt/zk/ve;->uj:Lcom/byazt/dg/m;

    invoke-virtual {v3}, Lcom/byazt/dg/m;->uj()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {v0}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    .line 57
    iget-object v0, p0, Lcom/byazt/zk/ve;->uj:Lcom/byazt/dg/m;

    invoke-virtual {v0}, Lcom/byazt/dg/m;->c()Lcom/byazt/dg/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {v0}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x64

    :goto_1
    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    int-to-float v0, v0

    mul-float p3, p3, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    mul-float p3, p3, v1

    float-to-int p3, p3

    .line 60
    invoke-virtual {p0}, Lcom/byazt/zk/ve;->n()Z

    move-result v0

    const-string v1, "Layer#drawLayer"

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/byazt/zk/ve;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 61
    iget-object p2, p0, Lcom/byazt/zk/ve;->da:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/byazt/zk/ve;->uj:Lcom/byazt/dg/m;

    invoke-virtual {v0}, Lcom/byazt/dg/m;->uj()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 62
    invoke-static {v1}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/byazt/zk/ve;->da:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/zk/ve;->tt(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 64
    invoke-static {v1}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    .line 65
    iget-object p1, p0, Lcom/byazt/zk/ve;->qy:Ljava/lang/String;

    invoke-static {p1}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/byazt/zk/ve;->ve(F)V

    return-void

    :cond_3
    const-string v0, "Layer#computeBounds"

    .line 66
    invoke-static {v0}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/byazt/zk/ve;->da:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/byazt/zk/ve;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 68
    iget-object v2, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    invoke-direct {p0, v2, p2}, Lcom/byazt/zk/ve;->tt(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 69
    iget-object v2, p0, Lcom/byazt/zk/ve;->da:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/byazt/zk/ve;->uj:Lcom/byazt/dg/m;

    invoke-virtual {v3}, Lcom/byazt/dg/m;->uj()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 70
    iget-object v2, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/byazt/zk/ve;->da:Landroid/graphics/Matrix;

    invoke-direct {p0, v2, v3}, Lcom/byazt/zk/ve;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 71
    iget-object v2, p0, Lcom/byazt/zk/ve;->rh:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 72
    iget-object v2, p0, Lcom/byazt/zk/ve;->sl:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 73
    iget-object v2, p0, Lcom/byazt/zk/ve;->sl:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_4

    .line 74
    iget-object v2, p0, Lcom/byazt/zk/ve;->sl:Landroid/graphics/Matrix;

    invoke-virtual {v2, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 75
    iget-object v2, p0, Lcom/byazt/zk/ve;->sl:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/byazt/zk/ve;->rh:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 76
    :cond_4
    iget-object v2, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/byazt/zk/ve;->rh:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 77
    iget-object v2, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 78
    :cond_5
    invoke-static {v0}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    .line 79
    iget-object v0, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_8

    const-string v0, "Layer#saveLayer"

    .line 80
    invoke-static {v0}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/byazt/zk/ve;->t:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 82
    iget-object v2, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/byazt/zk/ve;->t:Landroid/graphics/Paint;

    invoke-static {p1, v2, v3}, Lcom/byazt/kk/da;->c(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 83
    invoke-static {v0}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    .line 84
    invoke-direct {p0, p1}, Lcom/byazt/zk/ve;->c(Landroid/graphics/Canvas;)V

    .line 85
    invoke-static {v1}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/byazt/zk/ve;->da:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v2, p3}, Lcom/byazt/zk/ve;->tt(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 87
    invoke-static {v1}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    .line 88
    invoke-virtual {p0}, Lcom/byazt/zk/ve;->i()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 89
    iget-object v1, p0, Lcom/byazt/zk/ve;->da:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/byazt/zk/ve;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 90
    :cond_6
    invoke-virtual {p0}, Lcom/byazt/zk/ve;->n()Z

    move-result v1

    const-string v2, "Layer#restoreLayer"

    if-eqz v1, :cond_7

    const-string v1, "Layer#drawMatte"

    .line 91
    invoke-static {v1}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 92
    invoke-static {v0}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/byazt/zk/ve;->z:Landroid/graphics/Paint;

    const/16 v5, 0x13

    invoke-static {p1, v3, v4, v5}, Lcom/byazt/kk/da;->c(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    .line 94
    invoke-static {v0}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    .line 95
    invoke-direct {p0, p1}, Lcom/byazt/zk/ve;->c(Landroid/graphics/Canvas;)V

    .line 96
    iget-object v0, p0, Lcom/byazt/zk/ve;->zm:Lcom/byazt/zk/ve;

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/zk/ve;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 97
    invoke-static {v2}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 99
    invoke-static {v2}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    .line 100
    invoke-static {v1}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    .line 101
    :cond_7
    invoke-static {v2}, Lcom/byazt/ga/n;->c(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 103
    invoke-static {v2}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    .line 104
    :cond_8
    iget-boolean p2, p0, Lcom/byazt/zk/ve;->d:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/byazt/zk/ve;->eo:Landroid/graphics/Paint;

    if-eqz p2, :cond_9

    .line 105
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object p2, p0, Lcom/byazt/zk/ve;->eo:Landroid/graphics/Paint;

    const p3, -0x3d7fd

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object p2, p0, Lcom/byazt/zk/ve;->eo:Landroid/graphics/Paint;

    const/high16 p3, 0x40800000    # 4.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    iget-object p2, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/byazt/zk/ve;->eo:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 109
    iget-object p2, p0, Lcom/byazt/zk/ve;->eo:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object p2, p0, Lcom/byazt/zk/ve;->eo:Landroid/graphics/Paint;

    const p3, 0x50ebebeb

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object p2, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/byazt/zk/ve;->eo:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 112
    :cond_9
    iget-object p1, p0, Lcom/byazt/zk/ve;->qy:Ljava/lang/String;

    invoke-static {p1}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/byazt/zk/ve;->ve(F)V

    return-void

    .line 113
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/byazt/zk/ve;->qy:Ljava/lang/String;

    invoke-static {p1}, Lcom/byazt/ga/n;->tt(Ljava/lang/String;)F

    return-void
.end method

.method public c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 38
    iget-object p1, p0, Lcom/byazt/zk/ve;->nu:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 39
    invoke-direct {p0}, Lcom/byazt/zk/ve;->nu()V

    .line 40
    iget-object p1, p0, Lcom/byazt/zk/ve;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    .line 41
    iget-object p1, p0, Lcom/byazt/zk/ve;->p:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 43
    iget-object p2, p0, Lcom/byazt/zk/ve;->c:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/byazt/zk/ve;->p:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/byazt/zk/ve;

    iget-object p3, p3, Lcom/byazt/zk/ve;->uj:Lcom/byazt/dg/m;

    invoke-virtual {p3}, Lcom/byazt/dg/m;->uj()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/byazt/zk/ve;->yv:Lcom/byazt/zk/ve;

    if-eqz p1, :cond_1

    .line 45
    iget-object p2, p0, Lcom/byazt/zk/ve;->c:Landroid/graphics/Matrix;

    iget-object p1, p1, Lcom/byazt/zk/ve;->uj:Lcom/byazt/dg/m;

    invoke-virtual {p1}, Lcom/byazt/dg/m;->uj()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/byazt/zk/ve;->c:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/byazt/zk/ve;->uj:Lcom/byazt/dg/m;

    invoke-virtual {p2}, Lcom/byazt/dg/m;->uj()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public c(Lcom/byazt/dg/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dg/c<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/byazt/zk/ve;->md:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lcom/byazt/zk/ve;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/byazt/zk/ve;->zm:Lcom/byazt/zk/ve;

    return-void
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/zk/ve;->sp:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/zy/ve;",
            ">;",
            "Ljava/util/List<",
            "Lcom/byazt/zy/ve;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/byazt/zk/ve;->eo:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/byazt/xg/c;

    invoke-direct {v0}, Lcom/byazt/xg/c;-><init>()V

    iput-object v0, p0, Lcom/byazt/zk/ve;->eo:Landroid/graphics/Paint;

    .line 34
    :cond_0
    iput-boolean p1, p0, Lcom/byazt/zk/ve;->d:Z

    return-void
.end method

.method public da()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/zk/ve;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/ve;->gu:Lcom/byazt/dg/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/dg/x;->tt()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/ve;->zm:Lcom/byazt/zk/ve;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/ve;->ve:Lcom/byazt/zk/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/zk/x;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public sp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/ve;->ve:Lcom/byazt/zk/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/zk/x;->sp()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public t()Lcom/byazt/jx/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/ve;->ve:Lcom/byazt/zk/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/zk/x;->gu()Lcom/byazt/jx/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public tt(F)Landroid/graphics/BlurMaskFilter;
    .locals 3

    .line 21
    iget v0, p0, Lcom/byazt/zk/ve;->n:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 22
    iget-object p1, p0, Lcom/byazt/zk/ve;->a:Landroid/graphics/BlurMaskFilter;

    return-object p1

    .line 23
    :cond_0
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/byazt/zk/ve;->a:Landroid/graphics/BlurMaskFilter;

    .line 24
    iput p1, p0, Lcom/byazt/zk/ve;->n:F

    return-object v0
.end method

.method public tt(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0

    .line 9
    invoke-virtual {p0, p3}, Lcom/byazt/zk/ve;->c(I)V

    return-void
.end method

.method public tt(Lcom/byazt/zk/ve;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/zk/ve;->yv:Lcom/byazt/zk/ve;

    return-void
.end method

.method public tt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/zk/ve;->x:Z

    return v0
.end method

.method public u()Lcom/byazt/fs/da;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/ve;->ve:Lcom/byazt/zk/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/zk/x;->gr()Lcom/byazt/fs/da;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public uj()Lcom/byazt/zk/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/ve;->ve:Lcom/byazt/zk/x;

    return-object v0
.end method

.method public ve()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/zk/ve;->x:Z

    return-void
.end method

.method public x()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/zk/ve;->or:F

    .line 2
    .line 3
    return v0
.end method
