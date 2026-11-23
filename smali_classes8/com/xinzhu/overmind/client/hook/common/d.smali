.class public Lcom/xinzhu/overmind/client/hook/common/d;
.super Lcom/xinzhu/overmind/client/hook/e;
.source "SourceFile"


# static fields
.field public static e:I = -0x1

.field public static f:I = -0x2

.field public static g:I = -0x3

.field public static h:I = -0x4


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/e;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/xinzhu/overmind/client/hook/common/d;->a:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/xinzhu/overmind/client/hook/common/d;->b:Ljava/lang/String;

    .line 15
    .line 16
    iput p2, p0, Lcom/xinzhu/overmind/client/hook/common/d;->c:I

    .line 17
    .line 18
    iput p3, p0, Lcom/xinzhu/overmind/client/hook/common/d;->d:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/hook/common/d;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    array-length v0, p3

    .line 9
    iget v1, p0, Lcom/xinzhu/overmind/client/hook/common/d;->d:I

    .line 10
    .line 11
    if-ge v1, v0, :cond_11

    .line 12
    .line 13
    iget v1, p0, Lcom/xinzhu/overmind/client/hook/common/d;->c:I

    .line 14
    .line 15
    if-ge v1, v0, :cond_11

    .line 16
    .line 17
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 18
    .line 19
    const/4 v3, -0x1

    .line 20
    if-eq v1, v2, :cond_8

    .line 21
    .line 22
    if-ltz v1, :cond_1

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_1
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 26
    .line 27
    if-ne v1, v2, :cond_2

    .line 28
    .line 29
    add-int/lit8 v1, v0, -0x1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 33
    .line 34
    if-ne v1, v2, :cond_7

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    :goto_0
    array-length v2, p3

    .line 38
    if-ge v1, v2, :cond_5

    .line 39
    .line 40
    aget-object v2, p3, v1

    .line 41
    .line 42
    instance-of v4, v2, Ljava/lang/String;

    .line 43
    .line 44
    if-nez v4, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    check-cast v2, Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v4, v2, v5}, Lma/g;->t(Ljava/lang/String;I)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    const/4 v1, -0x1

    .line 68
    :goto_2
    if-ltz v1, :cond_8

    .line 69
    .line 70
    aget-object v2, p3, v1

    .line 71
    .line 72
    instance-of v2, v2, Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v2, :cond_6

    .line 75
    .line 76
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    aput-object v2, p3, v1

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v4, p0, Lcom/xinzhu/overmind/client/hook/common/d;->b:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v4, " mReplacePkgIndex unexpected type "

    .line 94
    .line 95
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    aget-object v1, p3, v1

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    .line 109
    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    iget-object p3, p0, Lcom/xinzhu/overmind/client/hook/common/d;->b:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p3, " mReplacePkgIndex unexpected "

    .line 121
    .line 122
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget p3, p0, Lcom/xinzhu/overmind/client/hook/common/d;->c:I

    .line 126
    .line 127
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    :cond_8
    :goto_3
    iget v1, p0, Lcom/xinzhu/overmind/client/hook/common/d;->d:I

    .line 139
    .line 140
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 141
    .line 142
    if-eq v1, v2, :cond_10

    .line 143
    .line 144
    if-ltz v1, :cond_9

    .line 145
    .line 146
    move v3, v1

    .line 147
    goto :goto_5

    .line 148
    :cond_9
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 149
    .line 150
    if-ne v1, v2, :cond_a

    .line 151
    .line 152
    add-int/lit8 v3, v0, -0x1

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_a
    sget v0, Lcom/xinzhu/overmind/client/hook/common/d;->h:I

    .line 156
    .line 157
    if-ne v1, v0, :cond_f

    .line 158
    .line 159
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_b

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_b
    array-length v0, p3

    .line 167
    add-int/lit8 v0, v0, -0x1

    .line 168
    .line 169
    :goto_4
    if-ltz v0, :cond_d

    .line 170
    .line 171
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    aget-object v2, p3, v0

    .line 180
    .line 181
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/utils/wrappers/ObjectsWrapper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_c

    .line 186
    .line 187
    move v3, v0

    .line 188
    goto :goto_5

    .line 189
    :cond_c
    add-int/lit8 v0, v0, -0x1

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_d
    :goto_5
    if-ltz v3, :cond_10

    .line 193
    .line 194
    aget-object v0, p3, v3

    .line 195
    .line 196
    instance-of v0, v0, Ljava/lang/Integer;

    .line 197
    .line 198
    if-eqz v0, :cond_e

    .line 199
    .line 200
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUid()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    aput-object v0, p3, v3

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    iget-object v1, p0, Lcom/xinzhu/overmind/client/hook/common/d;->b:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v1, " mReplaceUserIdIndex unexpected type "

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    aget-object v1, p3, v3

    .line 231
    .line 232
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    .line 241
    .line 242
    new-instance p2, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    iget-object p3, p0, Lcom/xinzhu/overmind/client/hook/common/d;->b:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string p3, " mReplaceUserIdIndex unexpected "

    .line 253
    .line 254
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget p3, p0, Lcom/xinzhu/overmind/client/hook/common/d;->d:I

    .line 258
    .line 259
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw p1

    .line 270
    :cond_10
    :goto_6
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    return-object p1

    .line 275
    :cond_11
    new-instance p1, Ljava/lang/RuntimeException;

    .line 276
    .line 277
    new-instance p2, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    iget-object p3, p0, Lcom/xinzhu/overmind/client/hook/common/d;->b:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string p3, " mReplaceUserIdIndex or mReplacePkgIndex out of range"

    .line 288
    .line 289
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p2

    .line 296
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw p1
.end method
