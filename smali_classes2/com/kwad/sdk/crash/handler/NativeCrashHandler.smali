.class public final Lcom/kwad/sdk/crash/handler/NativeCrashHandler;
.super Lcom/kwad/sdk/crash/handler/b;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/crash/handler/NativeCrashHandler$a;
    }
.end annotation


# static fields
.field private static final NATIVE_CRASH_HAPPENED_BEGIN:Ljava/lang/String; = "------ Native Crash Happened Begin ------\n"

.field private static final TAG:Ljava/lang/String; = "NativeCrashHandler"

.field private static mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;


# instance fields
.field private mMessageFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/crash/model/message/NativeExceptionMessage;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/crash/model/message/NativeExceptionMessage;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/kwad/sdk/crash/handler/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/crash/handler/NativeCrashHandler$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;-><init>()V

    return-void
.end method

.method public static native doCrash()V
.end method

.method public static native doFakeCrash()V
.end method

.method public static native doMemoryCorruption()V
.end method

.method public static native doNativeFdOverLimitCrash()V
.end method

.method public static getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler$a;->Qu()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static native install(Ljava/lang/String;Ljava/lang/String;I)V
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public static declared-synchronized onCallFromNative(J)V
    .locals 9
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    const-class p0, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string p1, "NativeCrashHandler"

    .line 5
    .line 6
    const-string v0, "onCallFromNative"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/kwad/sdk/crash/handler/b;->isExceptionHappened:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sput-object p1, Lcom/kwad/sdk/crash/handler/b;->sCrashingPid:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p1, p1, Lcom/kwad/sdk/crash/handler/b;->mLogDir:Ljava/io/File;

    .line 32
    .line 33
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Lcom/kwad/sdk/crash/handler/b;->mLogcatFile:Ljava/io/File;

    .line 38
    .line 39
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v1, v1, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessageFile:Ljava/io/File;

    .line 44
    .line 45
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v2, v2, Lcom/kwad/sdk/crash/handler/b;->mJavaTraceFile:Ljava/io/File;

    .line 50
    .line 51
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v3, v3, Lcom/kwad/sdk/crash/handler/b;->mMemoryInfoFile:Ljava/io/File;

    .line 56
    .line 57
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Lcom/kwad/sdk/crash/handler/b;->getUploader()Lcom/kwad/sdk/crash/report/e;

    .line 62
    .line 63
    .line 64
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 65
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_0

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_0

    .line 76
    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    sget-object v6, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 83
    .line 84
    iget-object v7, v6, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mErrorMessage:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v7, "create "

    .line 90
    .line 91
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v7, " failed!\n"

    .line 102
    .line 103
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    iput-object v5, v6, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mErrorMessage:Ljava/lang/String;

    .line 111
    .line 112
    if-eqz v4, :cond_0

    .line 113
    .line 114
    sget-object v5, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 115
    .line 116
    invoke-virtual {v5}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->toJson()Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    iget-object v5, v5, Lcom/kwad/sdk/crash/handler/b;->mDumpDir:Ljava/io/File;

    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-nez v5, :cond_1

    .line 130
    .line 131
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    iget-object v5, v5, Lcom/kwad/sdk/crash/handler/b;->mDumpDir:Ljava/io/File;

    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-nez v5, :cond_1

    .line 142
    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    sget-object v6, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 149
    .line 150
    iget-object v7, v6, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mErrorMessage:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v7, "create "

    .line 156
    .line 157
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    iget-object v7, v7, Lcom/kwad/sdk/crash/handler/b;->mDumpDir:Ljava/io/File;

    .line 165
    .line 166
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v7, " failed!\n"

    .line 174
    .line 175
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    iput-object v5, v6, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mErrorMessage:Ljava/lang/String;

    .line 183
    .line 184
    if-eqz v4, :cond_1

    .line 185
    .line 186
    sget-object v5, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 187
    .line 188
    invoke-virtual {v5}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->toJson()Lorg/json/JSONObject;

    .line 189
    .line 190
    .line 191
    :cond_1
    if-nez v0, :cond_2

    .line 192
    .line 193
    new-instance v5, Ljava/io/File;

    .line 194
    .line 195
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    iget-object v6, v6, Lcom/kwad/sdk/crash/handler/b;->mDumpDir:Ljava/io/File;

    .line 200
    .line 201
    const-string v7, "logcat"

    .line 202
    .line 203
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    move-object v0, v5

    .line 207
    :cond_2
    if-nez v1, :cond_3

    .line 208
    .line 209
    new-instance v5, Ljava/io/File;

    .line 210
    .line 211
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    iget-object v6, v6, Lcom/kwad/sdk/crash/handler/b;->mDumpDir:Ljava/io/File;

    .line 216
    .line 217
    const-string v7, "message"

    .line 218
    .line 219
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    move-object v1, v5

    .line 223
    :cond_3
    if-nez v2, :cond_4

    .line 224
    .line 225
    new-instance v5, Ljava/io/File;

    .line 226
    .line 227
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    iget-object v6, v6, Lcom/kwad/sdk/crash/handler/b;->mDumpDir:Ljava/io/File;

    .line 232
    .line 233
    const-string v7, "all_java_backtrace"

    .line 234
    .line 235
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    move-object v2, v5

    .line 239
    :cond_4
    if-nez v3, :cond_5

    .line 240
    .line 241
    new-instance v5, Ljava/io/File;

    .line 242
    .line 243
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    iget-object v6, v6, Lcom/kwad/sdk/crash/handler/b;->mDumpDir:Ljava/io/File;

    .line 248
    .line 249
    const-string v7, "meminfo"

    .line 250
    .line 251
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    move-object v3, v5

    .line 255
    :cond_5
    sget-object v5, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 256
    .line 257
    invoke-static {}, Lcom/kwad/sdk/crash/e;->Qd()Lcom/kwad/sdk/crash/e;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    invoke-virtual {v6}, Lcom/kwad/sdk/crash/e;->getContext()Landroid/content/Context;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    const/4 v7, 0x0

    .line 266
    invoke-static {v7, v5, v6}, Lcom/kwad/sdk/crash/utils/g;->b(Ljava/lang/Throwable;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Landroid/content/Context;)V

    .line 267
    .line 268
    .line 269
    sget-object v5, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 270
    .line 271
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    invoke-virtual {v6}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getCrashType()I

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    invoke-static {v5, v6}, Lcom/kwad/sdk/crash/utils/g;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;I)V

    .line 280
    .line 281
    .line 282
    sget-object v5, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 283
    .line 284
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    iget-object v6, v6, Lcom/kwad/sdk/crash/handler/b;->mDumpDir:Ljava/io/File;

    .line 289
    .line 290
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    invoke-static {v6}, Lcom/kwad/sdk/crash/utils/g;->gI(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    iput-object v6, v5, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mLogUUID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 299
    .line 300
    :try_start_2
    const-string v5, "NativeCrashHandler"

    .line 301
    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    const-string v7, "onCallFromNative write message "

    .line 305
    .line 306
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    sget-object v7, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 310
    .line 311
    invoke-virtual {v7}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->toJson()Lorg/json/JSONObject;

    .line 312
    .line 313
    .line 314
    move-result-object v7

    .line 315
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    invoke-static {v5, v6}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    sget-object v5, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 330
    .line 331
    invoke-virtual {v5}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->toJson()Lorg/json/JSONObject;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    invoke-static {v1, v5}, Lcom/kwad/sdk/crash/utils/g;->a(Ljava/io/File;Ljava/lang/CharSequence;)V

    .line 340
    .line 341
    .line 342
    invoke-static {v2}, Lcom/kwad/sdk/crash/utils/g;->H(Ljava/io/File;)V

    .line 343
    .line 344
    .line 345
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {v1, p1}, Lcom/kwad/sdk/crash/handler/b;->backupLogFiles(Ljava/io/File;)V

    .line 350
    .line 351
    .line 352
    const-string p1, "NativeCrashHandler"

    .line 353
    .line 354
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    iget-object v1, v1, Lcom/kwad/sdk/crash/handler/b;->mDumpDir:Ljava/io/File;

    .line 359
    .line 360
    invoke-static {v4, p1, v1}, Lcom/kwad/sdk/crash/utils/g;->a(Lcom/kwad/sdk/crash/report/e;Ljava/lang/String;Ljava/io/File;)V

    .line 361
    .line 362
    .line 363
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    invoke-virtual {p1}, Lcom/kwad/sdk/crash/handler/b;->uploadRemainingExceptions()V

    .line 368
    .line 369
    .line 370
    invoke-static {v3}, Lcom/kwad/sdk/crash/utils/g;->I(Ljava/io/File;)V

    .line 371
    .line 372
    .line 373
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/g;->F(Ljava/io/File;)V

    .line 374
    .line 375
    .line 376
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    iget-object p1, p1, Lcom/kwad/sdk/crash/handler/b;->mExceptionListener:Lcom/kwad/sdk/crash/f;

    .line 381
    .line 382
    if-eqz p1, :cond_6

    .line 383
    .line 384
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    iget-object p1, p1, Lcom/kwad/sdk/crash/handler/b;->mExceptionListener:Lcom/kwad/sdk/crash/f;

    .line 389
    .line 390
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getCrashType()I

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    sget-object v1, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 399
    .line 400
    invoke-interface {p1, v0, v1}, Lcom/kwad/sdk/crash/f;->a(ILcom/kwad/sdk/crash/model/message/ExceptionMessage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    .line 402
    .line 403
    :cond_6
    monitor-exit p0

    .line 404
    return-void

    .line 405
    :catchall_0
    move-exception p1

    .line 406
    :try_start_3
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 407
    .line 408
    .line 409
    if-eqz v4, :cond_7

    .line 410
    .line 411
    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/g;->x(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 412
    .line 413
    .line 414
    :cond_7
    monitor-exit p0

    .line 415
    return-void

    .line 416
    :catchall_1
    move-exception v5

    .line 417
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    sget-object v7, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 423
    .line 424
    iget-object v8, v7, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mErrorMessage:Ljava/lang/String;

    .line 425
    .line 426
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v6

    .line 436
    iput-object v6, v7, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mErrorMessage:Ljava/lang/String;

    .line 437
    .line 438
    const-string v6, "AnrAndNativeAdExceptionCollector"

    .line 439
    .line 440
    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    invoke-static {v6, v5}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 445
    .line 446
    .line 447
    if-eqz v1, :cond_8

    .line 448
    .line 449
    :try_start_5
    const-string v5, "NativeCrashHandler"

    .line 450
    .line 451
    new-instance v6, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    const-string v7, "onCallFromNative write message "

    .line 454
    .line 455
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    sget-object v7, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 459
    .line 460
    invoke-virtual {v7}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->toJson()Lorg/json/JSONObject;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v7

    .line 468
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v6

    .line 475
    invoke-static {v5, v6}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    sget-object v5, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 479
    .line 480
    invoke-virtual {v5}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->toJson()Lorg/json/JSONObject;

    .line 481
    .line 482
    .line 483
    move-result-object v5

    .line 484
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v5

    .line 488
    invoke-static {v1, v5}, Lcom/kwad/sdk/crash/utils/g;->a(Ljava/io/File;Ljava/lang/CharSequence;)V

    .line 489
    .line 490
    .line 491
    :cond_8
    invoke-static {v2}, Lcom/kwad/sdk/crash/utils/g;->H(Ljava/io/File;)V

    .line 492
    .line 493
    .line 494
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    invoke-virtual {v1, p1}, Lcom/kwad/sdk/crash/handler/b;->backupLogFiles(Ljava/io/File;)V

    .line 499
    .line 500
    .line 501
    const-string p1, "NativeCrashHandler"

    .line 502
    .line 503
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    iget-object v1, v1, Lcom/kwad/sdk/crash/handler/b;->mDumpDir:Ljava/io/File;

    .line 508
    .line 509
    invoke-static {v4, p1, v1}, Lcom/kwad/sdk/crash/utils/g;->a(Lcom/kwad/sdk/crash/report/e;Ljava/lang/String;Ljava/io/File;)V

    .line 510
    .line 511
    .line 512
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    invoke-virtual {p1}, Lcom/kwad/sdk/crash/handler/b;->uploadRemainingExceptions()V

    .line 517
    .line 518
    .line 519
    invoke-static {v3}, Lcom/kwad/sdk/crash/utils/g;->I(Ljava/io/File;)V

    .line 520
    .line 521
    .line 522
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/g;->F(Ljava/io/File;)V

    .line 523
    .line 524
    .line 525
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    iget-object p1, p1, Lcom/kwad/sdk/crash/handler/b;->mExceptionListener:Lcom/kwad/sdk/crash/f;

    .line 530
    .line 531
    if-eqz p1, :cond_9

    .line 532
    .line 533
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 534
    .line 535
    .line 536
    move-result-object p1

    .line 537
    iget-object p1, p1, Lcom/kwad/sdk/crash/handler/b;->mExceptionListener:Lcom/kwad/sdk/crash/f;

    .line 538
    .line 539
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getCrashType()I

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    sget-object v1, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 548
    .line 549
    invoke-interface {p1, v0, v1}, Lcom/kwad/sdk/crash/f;->a(ILcom/kwad/sdk/crash/model/message/ExceptionMessage;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 550
    .line 551
    .line 552
    :cond_9
    monitor-exit p0

    .line 553
    return-void

    .line 554
    :catchall_2
    move-exception p1

    .line 555
    :try_start_6
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 556
    .line 557
    .line 558
    if-eqz v4, :cond_a

    .line 559
    .line 560
    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/g;->x(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 561
    .line 562
    .line 563
    :cond_a
    monitor-exit p0

    .line 564
    return-void

    .line 565
    :catchall_3
    move-exception v5

    .line 566
    if-eqz v1, :cond_b

    .line 567
    .line 568
    :try_start_7
    const-string v6, "NativeCrashHandler"

    .line 569
    .line 570
    new-instance v7, Ljava/lang/StringBuilder;

    .line 571
    .line 572
    const-string v8, "onCallFromNative write message "

    .line 573
    .line 574
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    sget-object v8, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 578
    .line 579
    invoke-virtual {v8}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->toJson()Lorg/json/JSONObject;

    .line 580
    .line 581
    .line 582
    move-result-object v8

    .line 583
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v8

    .line 587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v7

    .line 594
    invoke-static {v6, v7}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    sget-object v6, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 598
    .line 599
    invoke-virtual {v6}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->toJson()Lorg/json/JSONObject;

    .line 600
    .line 601
    .line 602
    move-result-object v6

    .line 603
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v6

    .line 607
    invoke-static {v1, v6}, Lcom/kwad/sdk/crash/utils/g;->a(Ljava/io/File;Ljava/lang/CharSequence;)V

    .line 608
    .line 609
    .line 610
    :cond_b
    invoke-static {v2}, Lcom/kwad/sdk/crash/utils/g;->H(Ljava/io/File;)V

    .line 611
    .line 612
    .line 613
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    invoke-virtual {v1, p1}, Lcom/kwad/sdk/crash/handler/b;->backupLogFiles(Ljava/io/File;)V

    .line 618
    .line 619
    .line 620
    const-string p1, "NativeCrashHandler"

    .line 621
    .line 622
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    iget-object v1, v1, Lcom/kwad/sdk/crash/handler/b;->mDumpDir:Ljava/io/File;

    .line 627
    .line 628
    invoke-static {v4, p1, v1}, Lcom/kwad/sdk/crash/utils/g;->a(Lcom/kwad/sdk/crash/report/e;Ljava/lang/String;Ljava/io/File;)V

    .line 629
    .line 630
    .line 631
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 632
    .line 633
    .line 634
    move-result-object p1

    .line 635
    invoke-virtual {p1}, Lcom/kwad/sdk/crash/handler/b;->uploadRemainingExceptions()V

    .line 636
    .line 637
    .line 638
    invoke-static {v3}, Lcom/kwad/sdk/crash/utils/g;->I(Ljava/io/File;)V

    .line 639
    .line 640
    .line 641
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/g;->F(Ljava/io/File;)V

    .line 642
    .line 643
    .line 644
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 645
    .line 646
    .line 647
    move-result-object p1

    .line 648
    iget-object p1, p1, Lcom/kwad/sdk/crash/handler/b;->mExceptionListener:Lcom/kwad/sdk/crash/f;

    .line 649
    .line 650
    if-eqz p1, :cond_c

    .line 651
    .line 652
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 653
    .line 654
    .line 655
    move-result-object p1

    .line 656
    iget-object p1, p1, Lcom/kwad/sdk/crash/handler/b;->mExceptionListener:Lcom/kwad/sdk/crash/f;

    .line 657
    .line 658
    invoke-static {}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getInstance()Lcom/kwad/sdk/crash/handler/NativeCrashHandler;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    invoke-virtual {v0}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->getCrashType()I

    .line 663
    .line 664
    .line 665
    move-result v0

    .line 666
    sget-object v1, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessage:Lcom/kwad/sdk/crash/model/message/ExceptionMessage;

    .line 667
    .line 668
    invoke-interface {p1, v0, v1}, Lcom/kwad/sdk/crash/f;->a(ILcom/kwad/sdk/crash/model/message/ExceptionMessage;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 669
    .line 670
    .line 671
    goto :goto_0

    .line 672
    :catchall_4
    move-exception p1

    .line 673
    :try_start_8
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 674
    .line 675
    .line 676
    if-eqz v4, :cond_c

    .line 677
    .line 678
    invoke-static {p1}, Lcom/kwad/sdk/crash/utils/g;->x(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    :cond_c
    :goto_0
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 682
    :catchall_5
    move-exception p1

    .line 683
    monitor-exit p0

    .line 684
    throw p1
.end method


# virtual methods
.method protected final getCrashType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final init(Ljava/io/File;ZLjava/lang/String;Lcom/kwad/sdk/crash/report/c;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-super {p0, p1, p2, p4}, Lcom/kwad/sdk/crash/handler/b;->init(Ljava/io/File;Lcom/kwad/sdk/crash/f;Lcom/kwad/sdk/crash/report/e;)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/kwad/sdk/crash/b;->PO()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/kwad/sdk/crash/handler/b;->mLogDir:Ljava/io/File;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    iget-object p2, p0, Lcom/kwad/sdk/crash/handler/b;->mLogDir:Ljava/io/File;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 23
    .line 24
    .line 25
    :cond_1
    new-instance p2, Ljava/io/File;

    .line 26
    .line 27
    new-instance p4, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lcom/kwad/sdk/crash/handler/b;->FILE_NAME_BASE:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, "-native-0"

    .line 38
    .line 39
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p4

    .line 46
    invoke-direct {p2, p1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Lcom/kwad/sdk/crash/handler/b;->mDumpDir:Ljava/io/File;

    .line 50
    .line 51
    new-instance p1, Ljava/io/File;

    .line 52
    .line 53
    iget-object p2, p0, Lcom/kwad/sdk/crash/handler/b;->mDumpDir:Ljava/io/File;

    .line 54
    .line 55
    const-string p4, "logcat"

    .line 56
    .line 57
    invoke-direct {p1, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/kwad/sdk/crash/handler/b;->mLogcatFile:Ljava/io/File;

    .line 61
    .line 62
    new-instance p1, Ljava/io/File;

    .line 63
    .line 64
    iget-object p2, p0, Lcom/kwad/sdk/crash/handler/b;->mDumpDir:Ljava/io/File;

    .line 65
    .line 66
    const-string p4, "message"

    .line 67
    .line 68
    invoke-direct {p1, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/kwad/sdk/crash/handler/NativeCrashHandler;->mMessageFile:Ljava/io/File;

    .line 72
    .line 73
    new-instance p1, Ljava/io/File;

    .line 74
    .line 75
    iget-object p2, p0, Lcom/kwad/sdk/crash/handler/b;->mDumpDir:Ljava/io/File;

    .line 76
    .line 77
    const-string p4, "all_java_backtrace"

    .line 78
    .line 79
    invoke-direct {p1, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lcom/kwad/sdk/crash/handler/b;->mJavaTraceFile:Ljava/io/File;

    .line 83
    .line 84
    new-instance p1, Ljava/io/File;

    .line 85
    .line 86
    iget-object p2, p0, Lcom/kwad/sdk/crash/handler/b;->mDumpDir:Ljava/io/File;

    .line 87
    .line 88
    const-string p4, "meminfo"

    .line 89
    .line 90
    invoke-direct {p1, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lcom/kwad/sdk/crash/handler/b;->mMemoryInfoFile:Ljava/io/File;

    .line 94
    .line 95
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    .line 97
    const/16 p2, 0x17

    .line 98
    .line 99
    if-lt p1, p2, :cond_2

    .line 100
    .line 101
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {p1}, Lcom/kwad/sdk/crash/handler/e;->a(Landroid/os/Looper;)Landroid/os/MessageQueue;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    new-instance p2, Lcom/kwad/sdk/crash/handler/NativeCrashHandler$1;

    .line 110
    .line 111
    invoke-direct {p2, p0, p3}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler$1;-><init>(Lcom/kwad/sdk/crash/handler/NativeCrashHandler;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    new-instance p1, Landroid/os/Handler;

    .line 119
    .line 120
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 125
    .line 126
    .line 127
    new-instance p2, Lcom/kwad/sdk/crash/handler/NativeCrashHandler$2;

    .line 128
    .line 129
    invoke-direct {p2, p0, p3}, Lcom/kwad/sdk/crash/handler/NativeCrashHandler$2;-><init>(Lcom/kwad/sdk/crash/handler/NativeCrashHandler;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :catchall_0
    invoke-virtual {p0}, Lcom/kwad/sdk/crash/handler/b;->getUploader()Lcom/kwad/sdk/crash/report/e;

    .line 137
    .line 138
    .line 139
    :goto_0
    return-void
.end method

.method protected final reportException([Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V
    .locals 4
    .param p1    # [Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/CountDownLatch;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/kwad/sdk/crash/report/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/crash/report/g;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kwad/sdk/crash/handler/b;->getUploader()Lcom/kwad/sdk/crash/report/e;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/crash/report/d;->a(Lcom/kwad/sdk/crash/report/e;)V

    .line 11
    .line 12
    .line 13
    array-length v1, p1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_0

    .line 16
    .line 17
    aget-object v3, p1, v2

    .line 18
    .line 19
    invoke-virtual {v0, v3, p2}, Lcom/kwad/sdk/crash/report/d;->a(Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
