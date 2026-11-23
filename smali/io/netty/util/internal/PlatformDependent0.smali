.class final Lio/netty/util/internal/PlatformDependent0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lio/netty/util/internal/SuppressJava6Requirement;
    reason = "Unsafe access is guarded"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ADDRESS_FIELD_OFFSET:J

.field private static final ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

.field private static final BYTE_ARRAY_BASE_OFFSET:J

.field private static final DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final EXPLICIT_NO_UNSAFE_CAUSE:Ljava/lang/Throwable;

.field static final HASH_CODE_ASCII_SEED:I = -0x3d4d51cb

.field static final HASH_CODE_C1:I = -0x3361d2af

.field static final HASH_CODE_C2:I = 0x1b873593

.field private static final INTERNAL_UNSAFE:Ljava/lang/Object;

.field private static final IS_ANDROID:Z

.field private static final IS_EXPLICIT_TRY_REFLECTION_SET_ACCESSIBLE:Z

.field private static final JAVA_VERSION:I

.field private static final UNALIGNED:Z

.field static final UNSAFE:Lsun/misc/Unsafe;

.field private static final UNSAFE_COPY_THRESHOLD:J = 0x100000L

.field private static final UNSAFE_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const-class v0, Lio/netty/util/internal/PlatformDependent0;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 8
    .line 9
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->explicitNoUnsafeCause0()Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sput-object v1, Lio/netty/util/internal/PlatformDependent0;->EXPLICIT_NO_UNSAFE_CAUSE:Ljava/lang/Throwable;

    .line 14
    .line 15
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion0()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    sput v2, Lio/netty/util/internal/PlatformDependent0;->JAVA_VERSION:I

    .line 20
    .line 21
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->isAndroid0()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sput-boolean v2, Lio/netty/util/internal/PlatformDependent0;->IS_ANDROID:Z

    .line 26
    .line 27
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->explicitTryReflectionSetAccessible0()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    sput-boolean v2, Lio/netty/util/internal/PlatformDependent0;->IS_EXPLICIT_TRY_REFLECTION_SET_ACCESSIBLE:Z

    .line 32
    .line 33
    const-wide/16 v2, 0x1

    .line 34
    .line 35
    const-class v4, [B

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    const/4 v6, 0x0

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    move-object v7, v6

    .line 42
    move-object v8, v7

    .line 43
    move-object v9, v8

    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    new-instance v8, Lio/netty/util/internal/PlatformDependent0$1;

    .line 51
    .line 52
    invoke-direct {v8}, Lio/netty/util/internal/PlatformDependent0$1;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    instance-of v9, v8, Ljava/lang/Throwable;

    .line 60
    .line 61
    if-eqz v9, :cond_1

    .line 62
    .line 63
    move-object v1, v8

    .line 64
    check-cast v1, Ljava/lang/Throwable;

    .line 65
    .line 66
    const-string v8, "sun.misc.Unsafe.theUnsafe: unavailable"

    .line 67
    .line 68
    invoke-interface {v0, v8, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    move-object v8, v6

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    check-cast v8, Lsun/misc/Unsafe;

    .line 74
    .line 75
    const-string v9, "sun.misc.Unsafe.theUnsafe: available"

    .line 76
    .line 77
    invoke-interface {v0, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    if-eqz v8, :cond_3

    .line 81
    .line 82
    new-instance v9, Lio/netty/util/internal/PlatformDependent0$2;

    .line 83
    .line 84
    invoke-direct {v9, v8}, Lio/netty/util/internal/PlatformDependent0$2;-><init>(Lsun/misc/Unsafe;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    if-nez v9, :cond_2

    .line 92
    .line 93
    const-string v9, "sun.misc.Unsafe.copyMemory: available"

    .line 94
    .line 95
    invoke-interface {v0, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move-object v1, v9

    .line 100
    check-cast v1, Ljava/lang/Throwable;

    .line 101
    .line 102
    const-string v8, "sun.misc.Unsafe.copyMemory: unavailable"

    .line 103
    .line 104
    invoke-interface {v0, v8, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    move-object v8, v6

    .line 108
    :cond_3
    :goto_1
    if-eqz v8, :cond_5

    .line 109
    .line 110
    new-instance v9, Lio/netty/util/internal/PlatformDependent0$3;

    .line 111
    .line 112
    invoke-direct {v9, v8, v7}, Lio/netty/util/internal/PlatformDependent0$3;-><init>(Lsun/misc/Unsafe;Ljava/nio/ByteBuffer;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    instance-of v10, v9, Ljava/lang/reflect/Field;

    .line 120
    .line 121
    if-eqz v10, :cond_4

    .line 122
    .line 123
    check-cast v9, Ljava/lang/reflect/Field;

    .line 124
    .line 125
    const-string v10, "java.nio.Buffer.address: available"

    .line 126
    .line 127
    invoke-interface {v0, v10}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_4
    check-cast v9, Ljava/lang/Throwable;

    .line 132
    .line 133
    const-string v1, "java.nio.Buffer.address: unavailable"

    .line 134
    .line 135
    invoke-interface {v0, v1, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    move-object v8, v6

    .line 139
    move-object v1, v9

    .line 140
    move-object v9, v8

    .line 141
    goto :goto_2

    .line 142
    :cond_5
    move-object v9, v6

    .line 143
    :goto_2
    if-eqz v8, :cond_6

    .line 144
    .line 145
    invoke-virtual {v8, v4}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    int-to-long v10, v10

    .line 150
    cmp-long v12, v10, v2

    .line 151
    .line 152
    if-eqz v12, :cond_6

    .line 153
    .line 154
    const-string v1, "unsafe.arrayIndexScale is {} (expected: 1). Not using unsafe."

    .line 155
    .line 156
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    invoke-interface {v0, v1, v8}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 164
    .line 165
    const-string v8, "Unexpected unsafe.arrayIndexScale"

    .line 166
    .line 167
    invoke-direct {v1, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    move-object v8, v6

    .line 171
    :cond_6
    :goto_3
    sput-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    .line 172
    .line 173
    sput-object v8, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 174
    .line 175
    const/4 v1, 0x0

    .line 176
    const-wide/16 v10, -0x1

    .line 177
    .line 178
    if-nez v8, :cond_7

    .line 179
    .line 180
    sput-wide v10, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    .line 181
    .line 182
    sput-wide v10, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    .line 183
    .line 184
    sput-boolean v1, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    .line 185
    .line 186
    sput-object v6, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 187
    .line 188
    sput-object v6, Lio/netty/util/internal/PlatformDependent0;->ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

    .line 189
    .line 190
    goto/16 :goto_9

    .line 191
    .line 192
    :cond_7
    :try_start_0
    new-instance v12, Lio/netty/util/internal/PlatformDependent0$4;

    .line 193
    .line 194
    invoke-direct {v12, v7}, Lio/netty/util/internal/PlatformDependent0$4;-><init>(Ljava/nio/ByteBuffer;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v12}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    instance-of v12, v7, Ljava/lang/reflect/Constructor;

    .line 202
    .line 203
    const/4 v13, 0x2

    .line 204
    if-eqz v12, :cond_8

    .line 205
    .line 206
    invoke-virtual {v8, v2, v3}, Lsun/misc/Unsafe;->allocateMemory(J)J

    .line 207
    .line 208
    .line 209
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 210
    :try_start_1
    move-object v8, v7

    .line 211
    check-cast v8, Ljava/lang/reflect/Constructor;

    .line 212
    .line 213
    new-array v12, v13, [Ljava/lang/Object;

    .line 214
    .line 215
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 216
    .line 217
    .line 218
    move-result-object v14

    .line 219
    aput-object v14, v12, v1

    .line 220
    .line 221
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v14

    .line 225
    aput-object v14, v12, v5

    .line 226
    .line 227
    invoke-virtual {v8, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    check-cast v7, Ljava/lang/reflect/Constructor;

    .line 231
    .line 232
    const-string v8, "direct buffer constructor: available"

    .line 233
    .line 234
    invoke-interface {v0, v8}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :catchall_0
    move-exception v0

    .line 239
    goto/16 :goto_b

    .line 240
    .line 241
    :catch_0
    nop

    .line 242
    move-object v7, v6

    .line 243
    goto :goto_4

    .line 244
    :cond_8
    :try_start_2
    const-string v2, "direct buffer constructor: unavailable"

    .line 245
    .line 246
    check-cast v7, Ljava/lang/Throwable;

    .line 247
    .line 248
    invoke-interface {v0, v2, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 249
    .line 250
    .line 251
    move-object v7, v6

    .line 252
    move-wide v2, v10

    .line 253
    :goto_4
    cmp-long v0, v2, v10

    .line 254
    .line 255
    if-eqz v0, :cond_9

    .line 256
    .line 257
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 258
    .line 259
    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 260
    .line 261
    .line 262
    :cond_9
    sput-object v7, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 263
    .line 264
    invoke-static {v9}, Lio/netty/util/internal/PlatformDependent0;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 265
    .line 266
    .line 267
    move-result-wide v2

    .line 268
    sput-wide v2, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    .line 269
    .line 270
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 271
    .line 272
    invoke-virtual {v0, v4}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    int-to-long v2, v0

    .line 277
    sput-wide v2, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    .line 278
    .line 279
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$5;

    .line 280
    .line 281
    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$5;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    instance-of v2, v0, Ljava/lang/Boolean;

    .line 289
    .line 290
    if-eqz v2, :cond_a

    .line 291
    .line 292
    check-cast v0, Ljava/lang/Boolean;

    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 299
    .line 300
    const-string v3, "java.nio.Bits.unaligned: available, {}"

    .line 301
    .line 302
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-interface {v2, v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_a
    const-string v2, "os.arch"

    .line 311
    .line 312
    const-string v3, ""

    .line 313
    .line 314
    invoke-static {v2, v3}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    const-string v3, "^(i[3-6]86|x86(_64)?|x64|amd64)$"

    .line 319
    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    check-cast v0, Ljava/lang/Throwable;

    .line 325
    .line 326
    sget-object v3, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 327
    .line 328
    const-string v4, "java.nio.Bits.unaligned: unavailable {}"

    .line 329
    .line 330
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    invoke-interface {v3, v4, v7, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    move v0, v2

    .line 338
    :goto_5
    sput-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    .line 339
    .line 340
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    const/16 v2, 0x9

    .line 345
    .line 346
    if-lt v0, v2, :cond_e

    .line 347
    .line 348
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$6;

    .line 349
    .line 350
    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$6;-><init>()V

    .line 351
    .line 352
    .line 353
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    instance-of v2, v0, Ljava/lang/Throwable;

    .line 358
    .line 359
    if-nez v2, :cond_c

    .line 360
    .line 361
    new-instance v2, Lio/netty/util/internal/PlatformDependent0$7;

    .line 362
    .line 363
    invoke-direct {v2, v0}, Lio/netty/util/internal/PlatformDependent0$7;-><init>(Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    instance-of v3, v2, Ljava/lang/reflect/Method;

    .line 371
    .line 372
    if-eqz v3, :cond_b

    .line 373
    .line 374
    :try_start_3
    move-object v3, v2

    .line 375
    check-cast v3, Ljava/lang/reflect/Method;

    .line 376
    .line 377
    new-array v4, v13, [Ljava/lang/Object;

    .line 378
    .line 379
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 380
    .line 381
    aput-object v7, v4, v1

    .line 382
    .line 383
    const/16 v1, 0x8

    .line 384
    .line 385
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    aput-object v1, v4, v5

    .line 390
    .line 391
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    check-cast v1, [B
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1

    .line 396
    .line 397
    move-object v1, v0

    .line 398
    move-object v0, v2

    .line 399
    move-object v6, v3

    .line 400
    goto :goto_7

    .line 401
    :catch_1
    move-exception v1

    .line 402
    goto :goto_6

    .line 403
    :catch_2
    move-exception v1

    .line 404
    :goto_6
    move-object v15, v1

    .line 405
    move-object v1, v0

    .line 406
    move-object v0, v15

    .line 407
    goto :goto_7

    .line 408
    :cond_b
    move-object v1, v0

    .line 409
    move-object v0, v2

    .line 410
    goto :goto_7

    .line 411
    :cond_c
    move-object v1, v6

    .line 412
    :goto_7
    instance-of v2, v0, Ljava/lang/Throwable;

    .line 413
    .line 414
    if-eqz v2, :cond_d

    .line 415
    .line 416
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 417
    .line 418
    const-string v3, "jdk.internal.misc.Unsafe.allocateUninitializedArray(int): unavailable"

    .line 419
    .line 420
    check-cast v0, Ljava/lang/Throwable;

    .line 421
    .line 422
    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    .line 424
    .line 425
    goto :goto_8

    .line 426
    :cond_d
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 427
    .line 428
    const-string v2, "jdk.internal.misc.Unsafe.allocateUninitializedArray(int): available"

    .line 429
    .line 430
    invoke-interface {v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    goto :goto_8

    .line 434
    :cond_e
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 435
    .line 436
    const-string v1, "jdk.internal.misc.Unsafe.allocateUninitializedArray(int): unavailable prior to Java9"

    .line 437
    .line 438
    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    move-object v1, v6

    .line 442
    :goto_8
    sput-object v6, Lio/netty/util/internal/PlatformDependent0;->ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

    .line 443
    .line 444
    move-object v6, v1

    .line 445
    :goto_9
    sput-object v6, Lio/netty/util/internal/PlatformDependent0;->INTERNAL_UNSAFE:Ljava/lang/Object;

    .line 446
    .line 447
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 448
    .line 449
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 450
    .line 451
    if-eqz v1, :cond_f

    .line 452
    .line 453
    const-string v1, "available"

    .line 454
    .line 455
    goto :goto_a

    .line 456
    :cond_f
    const-string v1, "unavailable"

    .line 457
    .line 458
    :goto_a
    const-string v2, "java.nio.DirectByteBuffer.<init>(long, int): {}"

    .line 459
    .line 460
    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    return-void

    .line 464
    :catchall_1
    move-exception v0

    .line 465
    move-wide v2, v10

    .line 466
    :goto_b
    cmp-long v1, v2, v10

    .line 467
    .line 468
    if-eqz v1, :cond_10

    .line 469
    .line 470
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 471
    .line 472
    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 473
    .line 474
    .line 475
    :cond_10
    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static addressSize()I
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsun/misc/Unsafe;->addressSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method static allocateDirectNoCleaner(I)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    int-to-long v1, v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {v0, v1, p0}, Lio/netty/util/internal/PlatformDependent0;->newDirectBuffer(JI)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method static allocateMemory(J)J
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->allocateMemory(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method static allocateUninitializedArray(I)[B
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->INTERNAL_UNSAFE:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v3, 0x1

    .line 18
    aput-object p0, v2, v3

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, [B
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    return-object p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    new-instance v0, Ljava/lang/Error;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :catch_1
    move-exception p0

    .line 35
    new-instance v0, Ljava/lang/Error;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method static byteArrayBaseOffset()J
    .locals 2

    .line 1
    sget-wide v0, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static copyMemory(JJJ)V
    .locals 9

    .line 1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 2
    invoke-static/range {p0 .. p5}, Lio/netty/util/internal/PlatformDependent0;->copyMemoryWithSafePointPolling(JJJ)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v3, p0

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v2 .. v8}, Lsun/misc/Unsafe;->copyMemory(JJJ)V

    :goto_0
    return-void
.end method

.method static copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 11

    .line 4
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 5
    invoke-static/range {p0 .. p7}, Lio/netty/util/internal/PlatformDependent0;->copyMemoryWithSafePointPolling(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v2 .. v10}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    :goto_0
    return-void
.end method

.method private static copyMemoryWithSafePointPolling(JJJ)V
    .locals 9

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_0

    const-wide/32 v0, 0x100000

    .line 1
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, v7

    invoke-virtual/range {v0 .. v6}, Lsun/misc/Unsafe;->copyMemory(JJJ)V

    sub-long/2addr p4, v7

    add-long/2addr p0, v7

    add-long/2addr p2, v7

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static copyMemoryWithSafePointPolling(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 17

    move-wide/from16 v9, p1

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, v13, v0

    if-lez v2, :cond_0

    const-wide/32 v0, 0x100000

    .line 3
    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    .line 4
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v1, p0

    move-wide v2, v9

    move-object/from16 v4, p3

    move-wide v5, v11

    move-wide v7, v15

    invoke-virtual/range {v0 .. v8}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    sub-long/2addr v13, v15

    add-long/2addr v9, v15

    add-long/2addr v11, v15

    goto :goto_0

    :cond_0
    return-void
.end method

.method static directBufferAddress(Ljava/nio/ByteBuffer;)J
    .locals 2

    .line 1
    sget-wide v0, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    .line 2
    .line 3
    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent0;->getLong(Ljava/lang/Object;J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method static equals([BI[BII)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    and-int/lit8 v4, v3, 0x7

    .line 10
    .line 11
    sget-wide v5, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    .line 12
    .line 13
    int-to-long v7, v1

    .line 14
    add-long/2addr v5, v7

    .line 15
    sub-int v1, p3, v1

    .line 16
    .line 17
    int-to-long v7, v1

    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    if-lt v3, v1, :cond_1

    .line 21
    .line 22
    int-to-long v10, v4

    .line 23
    add-long/2addr v10, v5

    .line 24
    const-wide/16 v12, 0x8

    .line 25
    .line 26
    sub-long v14, v5, v12

    .line 27
    .line 28
    int-to-long v12, v3

    .line 29
    add-long/2addr v14, v12

    .line 30
    :goto_0
    cmp-long v1, v14, v10

    .line 31
    .line 32
    if-ltz v1, :cond_1

    .line 33
    .line 34
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 35
    .line 36
    invoke-virtual {v1, v0, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v12

    .line 40
    move-wide/from16 v16, v10

    .line 41
    .line 42
    add-long v9, v14, v7

    .line 43
    .line 44
    invoke-virtual {v1, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v9

    .line 48
    cmp-long v1, v12, v9

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    return v1

    .line 54
    :cond_0
    const-wide/16 v9, 0x8

    .line 55
    .line 56
    sub-long/2addr v14, v9

    .line 57
    move-wide/from16 v10, v16

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v1, 0x4

    .line 61
    if-lt v4, v1, :cond_2

    .line 62
    .line 63
    add-int/lit8 v4, v4, -0x4

    .line 64
    .line 65
    int-to-long v9, v4

    .line 66
    add-long/2addr v9, v5

    .line 67
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 68
    .line 69
    invoke-virtual {v1, v0, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    add-long/2addr v9, v7

    .line 74
    invoke-virtual {v1, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eq v3, v1, :cond_2

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    return v1

    .line 82
    :cond_2
    const/4 v1, 0x0

    .line 83
    add-long/2addr v7, v5

    .line 84
    const/4 v3, 0x1

    .line 85
    const/4 v9, 0x2

    .line 86
    if-lt v4, v9, :cond_5

    .line 87
    .line 88
    sget-object v10, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 89
    .line 90
    invoke-virtual {v10, v0, v5, v6}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    invoke-virtual {v10, v2, v7, v8}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    if-ne v11, v12, :cond_4

    .line 99
    .line 100
    if-eq v4, v9, :cond_3

    .line 101
    .line 102
    const-wide/16 v11, 0x2

    .line 103
    .line 104
    add-long/2addr v5, v11

    .line 105
    invoke-virtual {v10, v0, v5, v6}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    add-long/2addr v7, v11

    .line 110
    invoke-virtual {v10, v2, v7, v8}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-ne v0, v2, :cond_4

    .line 115
    .line 116
    :cond_3
    const/4 v9, 0x1

    .line 117
    goto :goto_1

    .line 118
    :cond_4
    const/4 v9, 0x0

    .line 119
    :goto_1
    return v9

    .line 120
    :cond_5
    if-eqz v4, :cond_7

    .line 121
    .line 122
    sget-object v4, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 123
    .line 124
    invoke-virtual {v4, v0, v5, v6}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    invoke-virtual {v4, v2, v7, v8}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-ne v0, v2, :cond_6

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_6
    const/4 v9, 0x0

    .line 136
    goto :goto_3

    .line 137
    :cond_7
    :goto_2
    const/4 v9, 0x1

    .line 138
    :goto_3
    return v9
.end method

.method static equalsConstantTime([BI[BII)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    and-int/lit8 v4, v3, 0x7

    .line 10
    .line 11
    int-to-long v4, v4

    .line 12
    sget-wide v6, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    .line 13
    .line 14
    int-to-long v8, v1

    .line 15
    add-long/2addr v6, v8

    .line 16
    add-long v8, v6, v4

    .line 17
    .line 18
    sub-int v1, p3, v1

    .line 19
    .line 20
    int-to-long v10, v1

    .line 21
    const-wide/16 v12, 0x8

    .line 22
    .line 23
    sub-long v14, v6, v12

    .line 24
    .line 25
    int-to-long v12, v3

    .line 26
    add-long/2addr v14, v12

    .line 27
    const-wide/16 v16, 0x0

    .line 28
    .line 29
    :goto_0
    cmp-long v1, v14, v8

    .line 30
    .line 31
    if-ltz v1, :cond_0

    .line 32
    .line 33
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 34
    .line 35
    invoke-virtual {v1, v0, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v18

    .line 39
    add-long v12, v14, v10

    .line 40
    .line 41
    invoke-virtual {v1, v2, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v12

    .line 45
    xor-long v12, v18, v12

    .line 46
    .line 47
    or-long v16, v16, v12

    .line 48
    .line 49
    const-wide/16 v12, 0x8

    .line 50
    .line 51
    sub-long/2addr v14, v12

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-wide/16 v12, 0x4

    .line 54
    .line 55
    cmp-long v1, v4, v12

    .line 56
    .line 57
    if-ltz v1, :cond_1

    .line 58
    .line 59
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 60
    .line 61
    invoke-virtual {v1, v0, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    add-long/2addr v6, v10

    .line 66
    invoke-virtual {v1, v2, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    xor-int/2addr v1, v3

    .line 71
    int-to-long v6, v1

    .line 72
    or-long v16, v16, v6

    .line 73
    .line 74
    sub-long/2addr v4, v12

    .line 75
    :cond_1
    const-wide/16 v6, 0x2

    .line 76
    .line 77
    cmp-long v1, v4, v6

    .line 78
    .line 79
    if-ltz v1, :cond_2

    .line 80
    .line 81
    sub-long v12, v8, v4

    .line 82
    .line 83
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 84
    .line 85
    invoke-virtual {v1, v0, v12, v13}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    add-long/2addr v12, v10

    .line 90
    invoke-virtual {v1, v2, v12, v13}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    xor-int/2addr v1, v3

    .line 95
    int-to-long v12, v1

    .line 96
    or-long v16, v16, v12

    .line 97
    .line 98
    sub-long/2addr v4, v6

    .line 99
    :cond_2
    const-wide/16 v6, 0x1

    .line 100
    .line 101
    cmp-long v1, v4, v6

    .line 102
    .line 103
    if-nez v1, :cond_3

    .line 104
    .line 105
    sub-long/2addr v8, v6

    .line 106
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 107
    .line 108
    invoke-virtual {v1, v0, v8, v9}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    add-long/2addr v8, v10

    .line 113
    invoke-virtual {v1, v2, v8, v9}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    xor-int/2addr v0, v1

    .line 118
    int-to-long v0, v0

    .line 119
    or-long v16, v16, v0

    .line 120
    .line 121
    :cond_3
    move-wide/from16 v0, v16

    .line 122
    .line 123
    const-wide/16 v2, 0x0

    .line 124
    .line 125
    invoke-static {v0, v1, v2, v3}, Lio/netty/util/internal/ConstantTimeUtils;->equalsConstantTime(JJ)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    return v0
.end method

.method private static explicitNoUnsafeCause0()Ljava/lang/Throwable;
    .locals 4

    .line 1
    const-string v0, "io.netty.noUnsafe"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 9
    .line 10
    const-string v2, "-Dio.netty.noUnsafe: {}"

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {v1, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v0, "sun.misc.Unsafe: unavailable (io.netty.noUnsafe)"

    .line 22
    .line 23
    invoke-interface {v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    const-string v0, "io.netty.tryUnsafe"

    .line 33
    .line 34
    invoke-static {v0}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string v0, "org.jboss.netty.tryUnsafe"

    .line 42
    .line 43
    :goto_0
    const/4 v2, 0x1

    .line 44
    invoke-static {v0, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v3, "sun.misc.Unsafe: unavailable ("

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ")"

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 76
    .line 77
    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :cond_2
    const/4 v0, 0x0

    .line 82
    return-object v0
.end method

.method private static explicitTryReflectionSetAccessible0()Z
    .locals 2

    .line 1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    const-string v1, "io.netty.tryReflectionSetAccessible"

    .line 13
    .line 14
    invoke-static {v1, v0}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method static freeMemory(J)V
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static getByte(J)B
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    return p0
.end method

.method static getByte([BI)B
    .locals 5

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$8;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lio/netty/util/internal/PlatformDependent0$8;-><init>(Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/ClassLoader;

    .line 22
    .line 23
    return-object p0
.end method

.method static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$9;

    .line 17
    .line 18
    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$9;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/ClassLoader;

    .line 26
    .line 27
    return-object v0
.end method

.method static getInt(J)I
    .locals 1

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getInt(J)I

    move-result p0

    return p0
.end method

.method static getInt(Ljava/lang/Object;J)I
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static getInt([BI)I
    .locals 5

    .line 3
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static getLong(J)J
    .locals 1

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getLong(Ljava/lang/Object;J)J
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static getLong([BI)J
    .locals 5

    .line 3
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method static getShort(J)S
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getShort(J)S

    move-result p0

    return p0
.end method

.method static getShort([BI)S
    .locals 5

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result p0

    return p0
.end method

.method static getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$10;

    .line 13
    .line 14
    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$10;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/ClassLoader;

    .line 22
    .line 23
    return-object v0
.end method

.method static getUnsafeUnavailabilityCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method static hasAllocateArrayMethod()Z
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method static hasDirectBufferNoCleanerConstructor()Z
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method static hasUnsafe()Z
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method static hashCodeAscii([BII)I
    .locals 10

    .line 1
    sget-wide v0, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    .line 2
    .line 3
    int-to-long v2, p1

    .line 4
    add-long/2addr v0, v2

    .line 5
    and-int/lit8 p1, p2, 0x7

    .line 6
    .line 7
    int-to-long v2, p1

    .line 8
    add-long/2addr v2, v0

    .line 9
    const-wide/16 v4, 0x8

    .line 10
    .line 11
    sub-long v6, v0, v4

    .line 12
    .line 13
    int-to-long v8, p2

    .line 14
    add-long/2addr v6, v8

    .line 15
    const p2, -0x3d4d51cb

    .line 16
    .line 17
    .line 18
    :goto_0
    cmp-long v8, v6, v2

    .line 19
    .line 20
    if-ltz v8, :cond_0

    .line 21
    .line 22
    sget-object v8, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 23
    .line 24
    invoke-virtual {v8, p0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v8

    .line 28
    invoke-static {v8, v9, p2}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiCompute(JI)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    sub-long/2addr v6, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    if-nez p1, :cond_1

    .line 35
    .line 36
    return p2

    .line 37
    :cond_1
    const/4 v2, 0x2

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x1

    .line 40
    if-eq p1, v2, :cond_2

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 v2, 0x0

    .line 45
    :goto_1
    const/4 v5, 0x4

    .line 46
    if-eq p1, v5, :cond_3

    .line 47
    .line 48
    const/4 v6, 0x1

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    const/4 v6, 0x0

    .line 51
    :goto_2
    and-int/2addr v2, v6

    .line 52
    const/4 v6, 0x6

    .line 53
    if-eq p1, v6, :cond_4

    .line 54
    .line 55
    const/4 v6, 0x1

    .line 56
    goto :goto_3

    .line 57
    :cond_4
    const/4 v6, 0x0

    .line 58
    :goto_3
    and-int/2addr v2, v6

    .line 59
    const v6, 0x1b873593

    .line 60
    .line 61
    .line 62
    const v7, -0x3361d2af    # -8.293031E7f

    .line 63
    .line 64
    .line 65
    if-eqz v2, :cond_5

    .line 66
    .line 67
    mul-int p2, p2, v7

    .line 68
    .line 69
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 70
    .line 71
    invoke-virtual {v2, p0, v0, v1}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(B)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    add-int/2addr p2, v2

    .line 80
    const-wide/16 v8, 0x1

    .line 81
    .line 82
    add-long/2addr v0, v8

    .line 83
    const v2, 0x1b873593

    .line 84
    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_5
    const v2, -0x3361d2af    # -8.293031E7f

    .line 88
    .line 89
    .line 90
    :goto_4
    if-eq p1, v4, :cond_6

    .line 91
    .line 92
    const/4 v8, 0x1

    .line 93
    goto :goto_5

    .line 94
    :cond_6
    const/4 v8, 0x0

    .line 95
    :goto_5
    if-eq p1, v5, :cond_7

    .line 96
    .line 97
    const/4 v9, 0x1

    .line 98
    goto :goto_6

    .line 99
    :cond_7
    const/4 v9, 0x0

    .line 100
    :goto_6
    and-int/2addr v8, v9

    .line 101
    const/4 v9, 0x5

    .line 102
    if-eq p1, v9, :cond_8

    .line 103
    .line 104
    const/4 v3, 0x1

    .line 105
    :cond_8
    and-int/2addr v3, v8

    .line 106
    if-eqz v3, :cond_a

    .line 107
    .line 108
    mul-int p2, p2, v2

    .line 109
    .line 110
    sget-object v3, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 111
    .line 112
    invoke-virtual {v3, p0, v0, v1}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(S)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    add-int/2addr p2, v3

    .line 121
    if-ne v2, v7, :cond_9

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_9
    const v6, -0x3361d2af    # -8.293031E7f

    .line 125
    .line 126
    .line 127
    :goto_7
    const-wide/16 v2, 0x2

    .line 128
    .line 129
    add-long/2addr v0, v2

    .line 130
    move v2, v6

    .line 131
    :cond_a
    if-lt p1, v5, :cond_b

    .line 132
    .line 133
    mul-int p2, p2, v2

    .line 134
    .line 135
    sget-object p1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 136
    .line 137
    invoke-virtual {p1, p0, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(I)I

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    add-int/2addr p2, p0

    .line 146
    :cond_b
    return p2
.end method

.method static hashCodeAsciiCompute(JI)I
    .locals 2

    .line 1
    const v0, -0x3361d2af    # -8.293031E7f

    .line 2
    .line 3
    .line 4
    mul-int p2, p2, v0

    .line 5
    .line 6
    long-to-int v0, p0

    .line 7
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const v1, 0x1b873593

    .line 12
    .line 13
    .line 14
    mul-int v0, v0, v1

    .line 15
    .line 16
    add-int/2addr p2, v0

    .line 17
    const-wide v0, 0x1f1f1f1f00000000L    # 8.854494059669966E-159

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr p0, v0

    .line 23
    const/16 v0, 0x20

    .line 24
    .line 25
    ushr-long/2addr p0, v0

    .line 26
    long-to-int p1, p0

    .line 27
    add-int/2addr p2, p1

    .line 28
    return p2
.end method

.method static hashCodeAsciiSanitize(B)I
    .locals 0

    .line 1
    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method static hashCodeAsciiSanitize(I)I
    .locals 1

    .line 2
    const v0, 0x1f1f1f1f

    and-int/2addr p0, v0

    return p0
.end method

.method static hashCodeAsciiSanitize(S)I
    .locals 0

    .line 3
    and-int/lit16 p0, p0, 0x1f1f

    return p0
.end method

.method static isAndroid()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->IS_ANDROID:Z

    .line 2
    .line 3
    return v0
.end method

.method private static isAndroid0()Z
    .locals 3

    .line 1
    const-string v0, "java.vm.name"

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Dalvik"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 16
    .line 17
    const-string v2, "Platform: Android"

    .line 18
    .line 19
    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return v0
.end method

.method static isExplicitNoUnsafe()Z
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->EXPLICIT_NO_UNSAFE_CAUSE:Ljava/lang/Throwable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method static isExplicitTryReflectionSetAccessible()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->IS_EXPLICIT_TRY_REFLECTION_SET_ACCESSIBLE:Z

    .line 2
    .line 3
    return v0
.end method

.method static isUnaligned()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    .line 2
    .line 3
    return v0
.end method

.method static isZero([BII)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-gtz v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    sget-wide v4, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    .line 12
    .line 13
    int-to-long v6, v1

    .line 14
    add-long/2addr v4, v6

    .line 15
    and-int/lit8 v6, v2, 0x7

    .line 16
    .line 17
    int-to-long v7, v6

    .line 18
    add-long/2addr v7, v4

    .line 19
    const-wide/16 v9, 0x8

    .line 20
    .line 21
    sub-long v11, v4, v9

    .line 22
    .line 23
    int-to-long v13, v2

    .line 24
    add-long/2addr v11, v13

    .line 25
    :goto_0
    const/4 v2, 0x0

    .line 26
    cmp-long v13, v11, v7

    .line 27
    .line 28
    if-ltz v13, :cond_2

    .line 29
    .line 30
    sget-object v13, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 31
    .line 32
    invoke-virtual {v13, v0, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v13

    .line 36
    const-wide/16 v15, 0x0

    .line 37
    .line 38
    cmp-long v17, v13, v15

    .line 39
    .line 40
    if-eqz v17, :cond_1

    .line 41
    .line 42
    return v2

    .line 43
    :cond_1
    sub-long/2addr v11, v9

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v7, 0x4

    .line 46
    if-lt v6, v7, :cond_3

    .line 47
    .line 48
    add-int/lit8 v6, v6, -0x4

    .line 49
    .line 50
    sget-object v7, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 51
    .line 52
    int-to-long v8, v6

    .line 53
    add-long/2addr v8, v4

    .line 54
    invoke-virtual {v7, v0, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_3

    .line 59
    .line 60
    return v2

    .line 61
    :cond_3
    const/4 v7, 0x2

    .line 62
    if-lt v6, v7, :cond_6

    .line 63
    .line 64
    sget-object v8, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 65
    .line 66
    invoke-virtual {v8, v0, v4, v5}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_4

    .line 71
    .line 72
    if-eq v6, v7, :cond_5

    .line 73
    .line 74
    add-int/2addr v1, v7

    .line 75
    aget-byte v0, v0, v1

    .line 76
    .line 77
    if-nez v0, :cond_4

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const/4 v3, 0x0

    .line 81
    :cond_5
    :goto_1
    return v3

    .line 82
    :cond_6
    aget-byte v0, v0, v1

    .line 83
    .line 84
    if-nez v0, :cond_7

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_7
    const/4 v3, 0x0

    .line 88
    :goto_2
    return v3
.end method

.method static javaVersion()I
    .locals 1

    .line 1
    sget v0, Lio/netty/util/internal/PlatformDependent0;->JAVA_VERSION:I

    .line 2
    .line 3
    return v0
.end method

.method private static javaVersion0()I
    .locals 4

    .line 1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->isAndroid0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->majorVersionFromJavaSpecificationVersion()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 14
    .line 15
    const-string v2, "Java version: {}"

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-interface {v1, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return v0
.end method

.method static majorVersion(Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string v0, "\\."

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    new-array v0, v0, [I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    array-length v3, p0

    .line 13
    if-ge v2, v3, :cond_0

    .line 14
    .line 15
    aget-object v3, p0, v2

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    aput v3, v0, v2

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    aget p0, v0, v1

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    if-ne p0, v1, :cond_1

    .line 30
    .line 31
    aget p0, v0, v1

    .line 32
    .line 33
    :cond_1
    return p0
.end method

.method static majorVersionFromJavaSpecificationVersion()I
    .locals 2

    .line 1
    const-string v0, "java.specification.version"

    .line 2
    .line 3
    const-string v1, "1.6"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent0;->majorVersion(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method static newDirectBuffer(JI)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    const-string v0, "capacity"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 p1, 0x0

    .line 16
    aput-object p0, v1, p1

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 p1, 0x1

    .line 23
    aput-object p0, v1, p1

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    instance-of p1, p0, Ljava/lang/Error;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    check-cast p0, Ljava/lang/Error;

    .line 38
    .line 39
    throw p0

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/Error;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method static objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method static putByte(JB)V
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    return-void
.end method

.method static putByte([BIB)V
    .locals 5

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method static putInt(JI)V
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putInt(JI)V

    return-void
.end method

.method static putInt([BII)V
    .locals 5

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method static putLong(JJ)V
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putLong(JJ)V

    return-void
.end method

.method static putLong([BIJ)V
    .locals 6

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long v2, v1, v3

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static putShort(JS)V
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putShort(JS)V

    return-void
.end method

.method static putShort([BIS)V
    .locals 5

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    return-void
.end method

.method static reallocateDirectNoCleaner(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 5

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    int-to-long v3, p1

    .line 8
    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->reallocateMemory(JJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {v0, v1, p1}, Lio/netty/util/internal/PlatformDependent0;->newDirectBuffer(JI)Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method static reallocateMemory(JJ)J
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->reallocateMemory(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method static setMemory(JJB)V
    .locals 6

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->setMemory(JJB)V

    return-void
.end method

.method static setMemory(Ljava/lang/Object;JJB)V
    .locals 7

    .line 2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lsun/misc/Unsafe;->setMemory(Ljava/lang/Object;JJB)V

    return-void
.end method

.method static throwException(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 2
    .line 3
    const-string v1, "cause"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Throwable;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->throwException(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method static unalignedAccess()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    .line 2
    .line 3
    return v0
.end method
