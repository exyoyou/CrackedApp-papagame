.class public Lcom/alipay/sdk/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/util/f$a;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String; = "failed"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/alipay/android/app/IAlixPay;

.field private final c:Ljava/lang/Object;

.field private d:Z

.field private e:Lcom/alipay/sdk/util/f$a;

.field private f:Landroid/content/ServiceConnection;

.field private g:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/sdk/util/f$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/alipay/android/app/IAlixPay;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/alipay/sdk/util/f;->c:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lcom/alipay/sdk/util/g;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/g;-><init>(Lcom/alipay/sdk/util/f;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    .line 14
    .line 15
    new-instance v0, Lcom/alipay/sdk/util/h;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/h;-><init>(Lcom/alipay/sdk/util/f;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/alipay/sdk/util/f;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/alipay/sdk/util/f;->e:Lcom/alipay/sdk/util/f$a;

    .line 25
    .line 26
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/util/f;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic b(Lcom/alipay/sdk/util/f;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/sdk/util/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method private d(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alipay/sdk/util/j;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-virtual {v1, p2, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/alipay/sdk/util/f;->c:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    :try_start_1
    iget-object v1, p0, Lcom/alipay/sdk/util/f;->c:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {}, Lcom/alipay/sdk/data/a;->f()Lcom/alipay/sdk/data/a;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/alipay/sdk/data/a;->a()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    int-to-long v4, v2

    .line 37
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 38
    .line 39
    .line 40
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 41
    const/4 p2, 0x0

    .line 42
    const/4 v1, 0x0

    .line 43
    :try_start_3
    iget-object v2, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    .line 44
    .line 45
    if-nez v2, :cond_6

    .line 46
    .line 47
    iget-object p1, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/alipay/sdk/util/j;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v2, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-ge v5, v6, :cond_4

    .line 74
    .line 75
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 80
    .line 81
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 82
    .line 83
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 84
    .line 85
    and-int/lit8 v8, v7, 0x1

    .line 86
    .line 87
    if-nez v8, :cond_1

    .line 88
    .line 89
    and-int/lit16 v7, v7, 0x80

    .line 90
    .line 91
    if-nez v7, :cond_1

    .line 92
    .line 93
    const/4 v7, 0x1

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    const/4 v7, 0x0

    .line 96
    :goto_1
    if-eqz v7, :cond_3

    .line 97
    .line 98
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 99
    .line 100
    const-string v8, "com.eg.android.AlipayGphone"

    .line 101
    .line 102
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_2

    .line 107
    .line 108
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 114
    .line 115
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v6, "-"

    .line 119
    .line 120
    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_2
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 125
    .line 126
    const-string v8, "theme"

    .line 127
    .line 128
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-nez v7, :cond_3

    .line 133
    .line 134
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 135
    .line 136
    const-string v8, "com.google."

    .line 137
    .line 138
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-nez v7, :cond_3

    .line 143
    .line 144
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 145
    .line 146
    const-string v8, "com.android."

    .line 147
    .line 148
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-nez v7, :cond_3

    .line 153
    .line 154
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v6, "-"

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    const-string v3, "biz"

    .line 170
    .line 171
    const-string v4, "ClientBindFailed"

    .line 172
    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v0, "|"

    .line 182
    .line 183
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string p1, "|"

    .line 190
    .line 191
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {v3, v4, p1}, Lcom/alipay/sdk/app/statistic/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string p1, "failed"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 205
    .line 206
    :try_start_4
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 207
    .line 208
    iget-object v2, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    .line 209
    .line 210
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :catchall_0
    nop

    .line 215
    :goto_4
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 216
    .line 217
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    .line 218
    .line 219
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    .line 220
    .line 221
    iget-boolean v0, p0, Lcom/alipay/sdk/util/f;->d:Z

    .line 222
    .line 223
    if-eqz v0, :cond_5

    .line 224
    .line 225
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 226
    .line 227
    invoke-virtual {v0, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 228
    .line 229
    .line 230
    iput-boolean p2, p0, Lcom/alipay/sdk/util/f;->d:Z

    .line 231
    .line 232
    :cond_5
    return-object p1

    .line 233
    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->e:Lcom/alipay/sdk/util/f$a;

    .line 234
    .line 235
    if-eqz v0, :cond_7

    .line 236
    .line 237
    invoke-interface {v0}, Lcom/alipay/sdk/util/f$a;->a()V

    .line 238
    .line 239
    .line 240
    :cond_7
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 241
    .line 242
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-nez v0, :cond_8

    .line 247
    .line 248
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 249
    .line 250
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 251
    .line 252
    .line 253
    iput-boolean v3, p0, Lcom/alipay/sdk/util/f;->d:Z

    .line 254
    .line 255
    :cond_8
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    .line 256
    .line 257
    iget-object v2, p0, Lcom/alipay/sdk/util/f;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 258
    .line 259
    invoke-interface {v0, v2}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    .line 263
    .line 264
    invoke-interface {v0, p1}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    .line 269
    .line 270
    iget-object v2, p0, Lcom/alipay/sdk/util/f;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 271
    .line 272
    invoke-interface {v0, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 273
    .line 274
    .line 275
    :try_start_6
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 276
    .line 277
    iget-object v2, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    .line 278
    .line 279
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 280
    .line 281
    .line 282
    goto :goto_5

    .line 283
    :catchall_1
    nop

    .line 284
    :goto_5
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 285
    .line 286
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    .line 287
    .line 288
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    .line 289
    .line 290
    iget-boolean v0, p0, Lcom/alipay/sdk/util/f;->d:Z

    .line 291
    .line 292
    if-eqz v0, :cond_9

    .line 293
    .line 294
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 295
    .line 296
    invoke-virtual {v0, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 297
    .line 298
    .line 299
    iput-boolean p2, p0, Lcom/alipay/sdk/util/f;->d:Z

    .line 300
    .line 301
    :cond_9
    return-object p1

    .line 302
    :catchall_2
    move-exception p1

    .line 303
    :try_start_7
    const-string v0, "biz"

    .line 304
    .line 305
    const-string v2, "ClientBindException"

    .line 306
    .line 307
    invoke-static {v0, v2, p1}, Lcom/alipay/sdk/app/statistic/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    .line 309
    .line 310
    const-string p1, "failed"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 311
    .line 312
    :try_start_8
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 313
    .line 314
    iget-object v2, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    .line 315
    .line 316
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 317
    .line 318
    .line 319
    goto :goto_6

    .line 320
    :catchall_3
    nop

    .line 321
    :goto_6
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 322
    .line 323
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    .line 324
    .line 325
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    .line 326
    .line 327
    iget-boolean v0, p0, Lcom/alipay/sdk/util/f;->d:Z

    .line 328
    .line 329
    if-eqz v0, :cond_a

    .line 330
    .line 331
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 332
    .line 333
    invoke-virtual {v0, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 334
    .line 335
    .line 336
    iput-boolean p2, p0, Lcom/alipay/sdk/util/f;->d:Z

    .line 337
    .line 338
    :cond_a
    return-object p1

    .line 339
    :catchall_4
    move-exception p1

    .line 340
    :try_start_9
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 341
    .line 342
    iget-object v2, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    .line 343
    .line 344
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 345
    .line 346
    .line 347
    goto :goto_7

    .line 348
    :catchall_5
    nop

    .line 349
    :goto_7
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 350
    .line 351
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->f:Landroid/content/ServiceConnection;

    .line 352
    .line 353
    iput-object v1, p0, Lcom/alipay/sdk/util/f;->b:Lcom/alipay/android/app/IAlixPay;

    .line 354
    .line 355
    iget-boolean v0, p0, Lcom/alipay/sdk/util/f;->d:Z

    .line 356
    .line 357
    if-eqz v0, :cond_b

    .line 358
    .line 359
    iget-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 360
    .line 361
    invoke-virtual {v0, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 362
    .line 363
    .line 364
    iput-boolean p2, p0, Lcom/alipay/sdk/util/f;->d:Z

    .line 365
    .line 366
    :cond_b
    throw p1

    .line 367
    :catchall_6
    move-exception p1

    .line 368
    monitor-exit p2

    .line 369
    throw p1
.end method

.method static synthetic f(Lcom/alipay/sdk/util/f;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "com.eg.android.AlipayGphone"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/alipay/sdk/util/j;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/util/j$a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v2, v1, Lcom/alipay/sdk/util/j$a;->a:[B

    .line 12
    .line 13
    invoke-static {v2}, Lcom/alipay/sdk/util/j;->f([B)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string v3, "b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d649"

    .line 20
    .line 21
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    const-string v1, "biz"

    .line 28
    .line 29
    const-string v3, "ClientSignError"

    .line 30
    .line 31
    invoke-static {v1, v3, v2}, Lcom/alipay/sdk/app/statistic/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p1, "failed"

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_0
    iget v1, v1, Lcom/alipay/sdk/util/j$a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    .line 39
    const/16 v2, 0x4e

    .line 40
    .line 41
    if-le v1, v2, :cond_1

    .line 42
    .line 43
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    .line 44
    .line 45
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "com.alipay.android.app.TransProcessPayActivity"

    .line 49
    .line 50
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 56
    .line 57
    .line 58
    const-wide/16 v1, 0x96

    .line 59
    .line 60
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_1
    move-exception v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    .line 74
    .line 75
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    const-string v0, "com.eg.android.AlipayGphone.IAlixPay"

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p1, v1}, Lcom/alipay/sdk/util/f;->d(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/alipay/sdk/util/f;->a:Landroid/app/Activity;

    .line 3
    .line 4
    return-void
.end method
