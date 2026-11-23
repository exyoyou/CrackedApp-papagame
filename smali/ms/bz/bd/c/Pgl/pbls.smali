.class public final Lms/bz/bd/c/Pgl/pbls;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x7

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "9b2cc3"

    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lms/bz/bd/c/Pgl/pbls;->c:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x4t
        0x53t
        0x71t
        0x18t
        0x4ft
        0x21t
        0x3et
    .end array-data
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v4, Landroid/content/Intent;

    .line 12
    .line 13
    const/16 v5, 0x1a

    .line 14
    .line 15
    new-array v11, v5, [B

    .line 16
    .line 17
    fill-array-data v11, :array_0

    .line 18
    .line 19
    .line 20
    const v6, 0x1000001

    .line 21
    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    const-wide/16 v8, 0x0

    .line 25
    .line 26
    const-string v10, "73b964"

    .line 27
    .line 28
    invoke-static/range {v6 .. v11}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .line 36
    .line 37
    const/16 v5, 0x80

    .line 38
    .line 39
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 58
    .line 59
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 60
    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 64
    .line 65
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 66
    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    const/16 v5, 0x10

    .line 70
    .line 71
    new-array v11, v5, [B

    .line 72
    .line 73
    fill-array-data v11, :array_1

    .line 74
    .line 75
    .line 76
    const v6, 0x1000001

    .line 77
    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    const-wide/16 v8, 0x0

    .line 81
    .line 82
    const-string v10, "429766"

    .line 83
    .line 84
    invoke-static/range {v6 .. v11}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    if-eqz v4, :cond_1

    .line 95
    .line 96
    const/4 v0, 0x1

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 99
    :goto_1
    if-nez v0, :cond_5

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const/16 v0, 0x8

    .line 106
    .line 107
    new-array v9, v0, [B

    .line 108
    .line 109
    fill-array-data v9, :array_2

    .line 110
    .line 111
    .line 112
    const v4, 0x1000001

    .line 113
    .line 114
    .line 115
    const/4 v5, 0x0

    .line 116
    const-wide/16 v6, 0x0

    .line 117
    .line 118
    const-string v8, "3afefb"

    .line 119
    .line 120
    invoke-static/range {v4 .. v9}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Ljava/lang/String;

    .line 125
    .line 126
    :try_start_0
    const-string v8, "519f96"

    .line 127
    .line 128
    const/16 v9, 0x19

    .line 129
    .line 130
    new-array v9, v9, [B

    .line 131
    .line 132
    fill-array-data v9, :array_3

    .line 133
    .line 134
    .line 135
    invoke-static/range {v4 .. v9}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    const v5, 0x1000001

    .line 146
    .line 147
    .line 148
    const/4 v6, 0x0

    .line 149
    const-wide/16 v7, 0x0

    .line 150
    .line 151
    const-string v9, "637ecd"

    .line 152
    .line 153
    const/16 v10, 0xa

    .line 154
    .line 155
    new-array v10, v10, [B

    .line 156
    .line 157
    fill-array-data v10, :array_4

    .line 158
    .line 159
    .line 160
    invoke-static/range {v5 .. v10}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    check-cast v5, Ljava/lang/String;

    .line 165
    .line 166
    new-array v6, v2, [Ljava/lang/Class;

    .line 167
    .line 168
    const-class v7, Ljava/lang/String;

    .line 169
    .line 170
    aput-object v7, v6, v3

    .line 171
    .line 172
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 177
    .line 178
    .line 179
    new-array v5, v2, [Ljava/lang/Object;

    .line 180
    .line 181
    aput-object v0, v5, v3

    .line 182
    .line 183
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .line 189
    move-object v1, v0

    .line 190
    goto :goto_2

    .line 191
    :catch_0
    move-exception v0

    .line 192
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    :goto_2
    if-nez v1, :cond_3

    .line 196
    .line 197
    :goto_3
    const/4 p0, 0x0

    .line 198
    goto :goto_5

    .line 199
    :cond_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    :try_start_1
    sget-object v5, Lms/bz/bd/c/Pgl/pbls;->c:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const/4 v5, 0x2

    .line 213
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    new-instance p0, Landroid/os/Binder;

    .line 220
    .line 221
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 225
    .line 226
    .line 227
    const p0, 0x5f4c5350

    .line 228
    .line 229
    .line 230
    invoke-interface {v1, p0, v0, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    if-nez p0, :cond_4

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_4
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 244
    .line 245
    .line 246
    const/4 p0, 0x1

    .line 247
    goto :goto_5

    .line 248
    :catchall_0
    move-exception p0

    .line 249
    :try_start_2
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 250
    .line 251
    .line 252
    :goto_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :goto_5
    if-nez p0, :cond_5

    .line 260
    .line 261
    return v3

    .line 262
    :catchall_1
    move-exception p0

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 267
    .line 268
    .line 269
    throw p0

    .line 270
    :cond_5
    return v2

    .line 271
    :array_0
    .array-data 1
        0x27t
        0x3ft
        0x15t
        0x5ft
        0x6t
        0x2at
        0x30t
        0x5ct
        0x3at
        0x67t
        0x32t
        0x34t
        0x1ft
        0x59t
        0x47t
        0x22t
        0x37t
        0x6t
        0x3at
        0x66t
        0x28t
        0x7ft
        0x3ct
        0x6ct
        0x20t
        0xdt
    .end array-data

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    nop

    .line 289
    :array_1
    .array-data 1
        0x3dt
        0x20t
        0x45t
        0x50t
        0xct
        0x25t
        0x3at
        0x1at
        0x66t
        0x71t
        0x20t
        0x22t
        0x59t
        0x4at
        0x6t
        0x2ft
    .end array-data

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    :array_2
    .array-data 1
        0x23t
        0x60t
        0x1t
        0x18t
        0x4ft
        0x7ct
        0x24t
        0x59t
    .end array-data

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_3
    .array-data 1
        0x25t
        0x3dt
        0x4et
        0x0t
        0x9t
        0x28t
        0x32t
        0x5et
        0x67t
        0x25t
        0x6at
        0x0t
        0x4ft
        0x0t
        0x10t
        0x28t
        0x35t
        0x15t
        0x45t
        0x37t
        0x2at
        0x32t
        0x4dt
        0x17t
        0x14t
    .end array-data

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    nop

    .line 327
    :array_4
    .array-data 1
        0x20t
        0x34t
        0x50t
        0x22t
        0x59t
        0x61t
        0x23t
        0x1bt
        0x65t
        0x30t
    .end array-data
.end method
