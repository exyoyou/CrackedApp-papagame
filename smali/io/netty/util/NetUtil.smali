.class public final Lio/netty/util/NetUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IPV4_MAX_CHAR_BETWEEN_SEPARATOR:I = 0x3

.field private static final IPV4_PREFERRED:Z

.field private static final IPV4_SEPARATORS:I = 0x3

.field private static final IPV6_ADDRESSES_PREFERRED:Z

.field private static final IPV6_BYTE_COUNT:I = 0x10

.field private static final IPV6_MAX_CHAR_BETWEEN_SEPARATOR:I = 0x4

.field private static final IPV6_MAX_CHAR_COUNT:I = 0x27

.field private static final IPV6_MAX_SEPARATORS:I = 0x8

.field private static final IPV6_MIN_SEPARATORS:I = 0x2

.field private static final IPV6_WORD_COUNT:I = 0x8

.field public static final LOCALHOST:Ljava/net/InetAddress;

.field public static final LOCALHOST4:Ljava/net/Inet4Address;

.field public static final LOCALHOST6:Ljava/net/Inet6Address;

.field public static final LOOPBACK_IF:Ljava/net/NetworkInterface;

.field public static final SOMAXCONN:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v0, "Failed to find the loopback interface"

    .line 2
    .line 3
    const-string v1, "localhost"

    .line 4
    .line 5
    const-string v2, "Using hard-coded IPv4 localhost address: {}"

    .line 6
    .line 7
    const-string v3, "java.net.preferIPv4Stack"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {v3, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    sput-boolean v3, Lio/netty/util/NetUtil;->IPV4_PREFERRED:Z

    .line 15
    .line 16
    const-string v5, "java.net.preferIPv6Addresses"

    .line 17
    .line 18
    invoke-static {v5, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    sput-boolean v5, Lio/netty/util/NetUtil;->IPV6_ADDRESSES_PREFERRED:Z

    .line 23
    .line 24
    const-class v6, Lio/netty/util/NetUtil;

    .line 25
    .line 26
    invoke-static {v6}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    sput-object v6, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 31
    .line 32
    const-string v7, "-Djava.net.preferIPv4Stack: {}"

    .line 33
    .line 34
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v6, v7, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const-string v3, "-Djava.net.preferIPv6Addresses: {}"

    .line 42
    .line 43
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-interface {v6, v3, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x4

    .line 51
    new-array v3, v3, [B

    .line 52
    .line 53
    fill-array-data v3, :array_0

    .line 54
    .line 55
    .line 56
    const/16 v5, 0x10

    .line 57
    .line 58
    new-array v5, v5, [B

    .line 59
    .line 60
    fill-array-data v5, :array_1

    .line 61
    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    :try_start_0
    invoke-static {v1, v3}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v3

    .line 72
    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    move-object v3, v6

    .line 76
    :goto_0
    sput-object v3, Lio/netty/util/NetUtil;->LOCALHOST4:Ljava/net/Inet4Address;

    .line 77
    .line 78
    :try_start_1
    invoke-static {v1, v5}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Ljava/net/Inet6Address;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_1
    move-exception v1

    .line 86
    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    move-object v1, v6

    .line 90
    :goto_1
    sput-object v1, Lio/netty/util/NetUtil;->LOCALHOST6:Ljava/net/Inet6Address;

    .line 91
    .line 92
    new-instance v5, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    :try_start_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    if-eqz v7, :cond_1

    .line 102
    .line 103
    :cond_0
    :goto_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_1

    .line 108
    .line 109
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    check-cast v8, Ljava/net/NetworkInterface;

    .line 114
    .line 115
    invoke-static {v8}, Lio/netty/util/internal/SocketUtils;->addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    if-eqz v9, :cond_0

    .line 124
    .line 125
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :catch_2
    move-exception v7

    .line 130
    sget-object v8, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 131
    .line 132
    const-string v9, "Failed to retrieve the list of available network interfaces"

    .line 133
    .line 134
    invoke-interface {v8, v9, v7}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-eqz v8, :cond_4

    .line 146
    .line 147
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    check-cast v8, Ljava/net/NetworkInterface;

    .line 152
    .line 153
    invoke-static {v8}, Lio/netty/util/internal/SocketUtils;->addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    :cond_3
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    if-eqz v10, :cond_2

    .line 162
    .line 163
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    check-cast v10, Ljava/net/InetAddress;

    .line 168
    .line 169
    invoke-virtual {v10}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    if-eqz v11, :cond_3

    .line 174
    .line 175
    move-object v6, v8

    .line 176
    goto :goto_3

    .line 177
    :cond_4
    move-object v10, v6

    .line 178
    :goto_3
    if-nez v6, :cond_7

    .line 179
    .line 180
    :try_start_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-eqz v7, :cond_6

    .line 189
    .line 190
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    check-cast v7, Ljava/net/NetworkInterface;

    .line 195
    .line 196
    invoke-virtual {v7}, Ljava/net/NetworkInterface;->isLoopback()Z

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    if-eqz v8, :cond_5

    .line 201
    .line 202
    invoke-static {v7}, Lio/netty/util/internal/SocketUtils;->addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 207
    .line 208
    .line 209
    move-result v9
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4

    .line 210
    if-eqz v9, :cond_5

    .line 211
    .line 212
    :try_start_4
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    check-cast v5, Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3

    .line 217
    .line 218
    move-object v10, v5

    .line 219
    move-object v6, v7

    .line 220
    goto :goto_4

    .line 221
    :catch_3
    move-exception v5

    .line 222
    move-object v6, v7

    .line 223
    goto :goto_5

    .line 224
    :cond_6
    :goto_4
    if-nez v6, :cond_7

    .line 225
    .line 226
    :try_start_5
    sget-object v5, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 227
    .line 228
    invoke-interface {v5, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_4

    .line 229
    .line 230
    .line 231
    goto :goto_6

    .line 232
    :catch_4
    move-exception v5

    .line 233
    :goto_5
    sget-object v7, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 234
    .line 235
    invoke-interface {v7, v0, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    .line 237
    .line 238
    :cond_7
    :goto_6
    if-eqz v6, :cond_8

    .line 239
    .line 240
    sget-object v0, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 241
    .line 242
    const/4 v1, 0x3

    .line 243
    new-array v1, v1, [Ljava/lang/Object;

    .line 244
    .line 245
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    aput-object v2, v1, v4

    .line 250
    .line 251
    const/4 v2, 0x1

    .line 252
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    aput-object v3, v1, v2

    .line 257
    .line 258
    const/4 v2, 0x2

    .line 259
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    aput-object v3, v1, v2

    .line 264
    .line 265
    const-string v2, "Loopback interface: {} ({}, {})"

    .line 266
    .line 267
    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    goto :goto_9

    .line 271
    :cond_8
    if-nez v10, :cond_c

    .line 272
    .line 273
    :try_start_6
    sget-object v0, Lio/netty/util/NetUtil;->LOCALHOST6:Ljava/net/Inet6Address;

    .line 274
    .line 275
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    if-eqz v0, :cond_9

    .line 280
    .line 281
    sget-object v0, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 282
    .line 283
    const-string v4, "Using hard-coded IPv6 localhost address: {}"

    .line 284
    .line 285
    invoke-interface {v0, v4, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 286
    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_9
    move-object v1, v10

    .line 290
    :goto_7
    if-nez v1, :cond_a

    .line 291
    .line 292
    goto :goto_8

    .line 293
    :cond_a
    move-object v3, v1

    .line 294
    goto :goto_a

    .line 295
    :catchall_0
    move-exception v0

    .line 296
    if-nez v10, :cond_b

    .line 297
    .line 298
    sget-object v1, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 299
    .line 300
    invoke-interface {v1, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    :cond_b
    throw v0

    .line 304
    :catch_5
    nop

    .line 305
    if-nez v10, :cond_c

    .line 306
    .line 307
    :goto_8
    sget-object v0, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 308
    .line 309
    invoke-interface {v0, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    goto :goto_a

    .line 313
    :cond_c
    :goto_9
    move-object v3, v10

    .line 314
    :goto_a
    sput-object v6, Lio/netty/util/NetUtil;->LOOPBACK_IF:Ljava/net/NetworkInterface;

    .line 315
    .line 316
    sput-object v3, Lio/netty/util/NetUtil;->LOCALHOST:Ljava/net/InetAddress;

    .line 317
    .line 318
    new-instance v0, Lio/netty/util/NetUtil$1;

    .line 319
    .line 320
    invoke-direct {v0}, Lio/netty/util/NetUtil$1;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Ljava/lang/Integer;

    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    sput v0, Lio/netty/util/NetUtil;->SOMAXCONN:I

    .line 334
    .line 335
    return-void

    .line 336
    nop

    .line 337
    :array_0
    .array-data 1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
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

.method static synthetic access$000()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/util/NetUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/netty/util/NetUtil;->sysctlGetInt(Ljava/lang/String;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bytesToIpAddress([B)Ljava/lang/String;
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/NetUtil;->bytesToIpAddress([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToIpAddress([BII)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-static {p0, p1, p2}, Lio/netty/util/NetUtil;->toAddressString([BIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (expected: 4 or 16)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0xf

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 7
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 9
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    .line 11
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createByteArrayFromIpAddressString(Ljava/lang/String;)[B
    .locals 4

    .line 1
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lio/netty/util/NetUtil;->validIpV4ToBytes(Ljava/lang/String;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x5b

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    sub-int/2addr v1, v3

    .line 33
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :cond_1
    const/16 v1, 0x25

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ltz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :cond_2
    invoke-static {p0, v3}, Lio/netty/util/NetUtil;->getIPv6ByName(Ljava/lang/CharSequence;Z)[B

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_3
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method private static decimalDigit(Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/lit8 p0, p0, -0x30

    .line 6
    .line 7
    return p0
.end method

.method public static getByName(Ljava/lang/CharSequence;)Ljava/net/Inet6Address;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lio/netty/util/NetUtil;->getByName(Ljava/lang/CharSequence;Z)Ljava/net/Inet6Address;

    move-result-object p0

    return-object p0
.end method

.method public static getByName(Ljava/lang/CharSequence;Z)Ljava/net/Inet6Address;
    .locals 1

    .line 2
    invoke-static {p0, p1}, Lio/netty/util/NetUtil;->getIPv6ByName(Ljava/lang/CharSequence;Z)[B

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, -0x1

    .line 3
    :try_start_0
    invoke-static {p1, p0, v0}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getHostname(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    return-object p0
.end method

.method private static getIPv6ByName(Ljava/lang/CharSequence;Z)[B
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    new-array v2, v1, [B

    .line 6
    .line 7
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, -0x1

    .line 15
    const/4 v10, 0x0

    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v12, 0x0

    .line 18
    const/4 v13, 0x0

    .line 19
    const/4 v14, 0x0

    .line 20
    :goto_0
    const/16 v16, 0xa

    .line 21
    .line 22
    const/16 v17, 0x0

    .line 23
    .line 24
    const/16 v5, 0x3a

    .line 25
    .line 26
    const/4 v4, 0x4

    .line 27
    const/16 v18, 0xf

    .line 28
    .line 29
    if-ge v6, v3, :cond_14

    .line 30
    .line 31
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v15

    .line 35
    const/16 v1, 0x2e

    .line 36
    .line 37
    if-eq v15, v1, :cond_c

    .line 38
    .line 39
    if-eq v15, v5, :cond_4

    .line 40
    .line 41
    invoke-static {v15}, Lio/netty/util/NetUtil;->isValidHexChar(C)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    if-lez v8, :cond_0

    .line 48
    .line 49
    invoke-static {v15}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_0
    if-gez v9, :cond_1

    .line 57
    .line 58
    move v9, v6

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    sub-int v1, v6, v9

    .line 61
    .line 62
    if-le v1, v4, :cond_2

    .line 63
    .line 64
    return-object v17

    .line 65
    :cond_2
    :goto_1
    invoke-static {v15}, Lio/netty/util/internal/StringUtil;->decodeHexNibble(C)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    sub-int v4, v6, v9

    .line 70
    .line 71
    const/4 v5, 0x2

    .line 72
    shl-int/2addr v4, v5

    .line 73
    shl-int/2addr v1, v4

    .line 74
    add-int/2addr v13, v1

    .line 75
    const/4 v1, 0x1

    .line 76
    goto/16 :goto_7

    .line 77
    .line 78
    :cond_3
    :goto_2
    return-object v17

    .line 79
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 80
    .line 81
    sub-int v1, v6, v9

    .line 82
    .line 83
    if-gt v1, v4, :cond_b

    .line 84
    .line 85
    if-gtz v8, :cond_b

    .line 86
    .line 87
    const/16 v9, 0x8

    .line 88
    .line 89
    if-gt v10, v9, :cond_b

    .line 90
    .line 91
    add-int/lit8 v9, v11, 0x1

    .line 92
    .line 93
    const/16 v15, 0x10

    .line 94
    .line 95
    if-lt v9, v15, :cond_5

    .line 96
    .line 97
    goto :goto_6

    .line 98
    :cond_5
    rsub-int/lit8 v1, v1, 0x4

    .line 99
    .line 100
    const/4 v15, 0x2

    .line 101
    shl-int/2addr v1, v15

    .line 102
    shl-int v1, v13, v1

    .line 103
    .line 104
    if-lez v12, :cond_6

    .line 105
    .line 106
    add-int/lit8 v12, v12, -0x2

    .line 107
    .line 108
    :cond_6
    and-int/lit8 v13, v1, 0xf

    .line 109
    .line 110
    shl-int/2addr v13, v4

    .line 111
    shr-int/lit8 v15, v1, 0x4

    .line 112
    .line 113
    and-int/lit8 v15, v15, 0xf

    .line 114
    .line 115
    or-int/2addr v13, v15

    .line 116
    int-to-byte v13, v13

    .line 117
    aput-byte v13, v2, v11

    .line 118
    .line 119
    add-int/lit8 v11, v9, 0x1

    .line 120
    .line 121
    shr-int/lit8 v13, v1, 0x8

    .line 122
    .line 123
    and-int/lit8 v13, v13, 0xf

    .line 124
    .line 125
    shl-int/lit8 v4, v13, 0x4

    .line 126
    .line 127
    shr-int/lit8 v13, v1, 0xc

    .line 128
    .line 129
    and-int/lit8 v13, v13, 0xf

    .line 130
    .line 131
    or-int/2addr v4, v13

    .line 132
    int-to-byte v4, v4

    .line 133
    aput-byte v4, v2, v9

    .line 134
    .line 135
    add-int/lit8 v4, v6, 0x1

    .line 136
    .line 137
    if-ge v4, v3, :cond_a

    .line 138
    .line 139
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-ne v9, v5, :cond_a

    .line 144
    .line 145
    add-int/lit8 v6, v4, 0x1

    .line 146
    .line 147
    if-nez v7, :cond_9

    .line 148
    .line 149
    if-ge v6, v3, :cond_7

    .line 150
    .line 151
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-ne v6, v5, :cond_7

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 159
    .line 160
    const/4 v5, 0x2

    .line 161
    if-ne v10, v5, :cond_8

    .line 162
    .line 163
    if-nez v1, :cond_8

    .line 164
    .line 165
    const/4 v1, 0x1

    .line 166
    goto :goto_3

    .line 167
    :cond_8
    const/4 v1, 0x0

    .line 168
    :goto_3
    rsub-int/lit8 v6, v11, 0x10

    .line 169
    .line 170
    sub-int/2addr v6, v5

    .line 171
    move v14, v1

    .line 172
    move v12, v6

    .line 173
    move v7, v11

    .line 174
    move v6, v4

    .line 175
    goto :goto_5

    .line 176
    :cond_9
    :goto_4
    return-object v17

    .line 177
    :cond_a
    :goto_5
    const/4 v1, 0x1

    .line 178
    const/4 v9, -0x1

    .line 179
    const/4 v13, 0x0

    .line 180
    goto/16 :goto_7

    .line 181
    .line 182
    :cond_b
    :goto_6
    return-object v17

    .line 183
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 184
    .line 185
    sub-int v1, v6, v9

    .line 186
    .line 187
    const/4 v4, 0x3

    .line 188
    if-gt v1, v4, :cond_13

    .line 189
    .line 190
    if-ltz v9, :cond_13

    .line 191
    .line 192
    if-gt v8, v4, :cond_13

    .line 193
    .line 194
    if-lez v10, :cond_d

    .line 195
    .line 196
    add-int v4, v11, v12

    .line 197
    .line 198
    const/16 v5, 0xc

    .line 199
    .line 200
    if-lt v4, v5, :cond_13

    .line 201
    .line 202
    :cond_d
    add-int/lit8 v4, v6, 0x1

    .line 203
    .line 204
    if-ge v4, v3, :cond_13

    .line 205
    .line 206
    const/16 v4, 0x10

    .line 207
    .line 208
    if-ge v11, v4, :cond_13

    .line 209
    .line 210
    const/4 v4, 0x1

    .line 211
    if-ne v8, v4, :cond_11

    .line 212
    .line 213
    if-eqz p1, :cond_13

    .line 214
    .line 215
    if-eqz v11, :cond_e

    .line 216
    .line 217
    invoke-static {v2, v11, v7, v12}, Lio/netty/util/NetUtil;->isValidIPv4Mapped([BIII)Z

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-eqz v4, :cond_13

    .line 222
    .line 223
    :cond_e
    const/4 v4, 0x3

    .line 224
    if-ne v1, v4, :cond_f

    .line 225
    .line 226
    add-int/lit8 v4, v6, -0x1

    .line 227
    .line 228
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    invoke-static {v4}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    if-eqz v4, :cond_13

    .line 237
    .line 238
    add-int/lit8 v4, v6, -0x2

    .line 239
    .line 240
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    invoke-static {v4}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-eqz v4, :cond_13

    .line 249
    .line 250
    add-int/lit8 v4, v6, -0x3

    .line 251
    .line 252
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    invoke-static {v4}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    if-eqz v4, :cond_13

    .line 261
    .line 262
    :cond_f
    const/4 v4, 0x2

    .line 263
    if-ne v1, v4, :cond_10

    .line 264
    .line 265
    add-int/lit8 v4, v6, -0x1

    .line 266
    .line 267
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    invoke-static {v4}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    if-eqz v4, :cond_13

    .line 276
    .line 277
    add-int/lit8 v4, v6, -0x2

    .line 278
    .line 279
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    invoke-static {v4}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    if-eqz v4, :cond_13

    .line 288
    .line 289
    :cond_10
    const/4 v4, 0x1

    .line 290
    if-ne v1, v4, :cond_11

    .line 291
    .line 292
    add-int/lit8 v4, v6, -0x1

    .line 293
    .line 294
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    invoke-static {v4}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    if-nez v4, :cond_11

    .line 303
    .line 304
    goto :goto_8

    .line 305
    :cond_11
    rsub-int/lit8 v1, v1, 0x3

    .line 306
    .line 307
    const/4 v4, 0x2

    .line 308
    shl-int/2addr v1, v4

    .line 309
    shl-int v1, v13, v1

    .line 310
    .line 311
    and-int/lit8 v4, v1, 0xf

    .line 312
    .line 313
    mul-int/lit8 v4, v4, 0x64

    .line 314
    .line 315
    shr-int/lit8 v5, v1, 0x4

    .line 316
    .line 317
    and-int/lit8 v5, v5, 0xf

    .line 318
    .line 319
    mul-int/lit8 v5, v5, 0xa

    .line 320
    .line 321
    add-int/2addr v4, v5

    .line 322
    const/16 v5, 0x8

    .line 323
    .line 324
    shr-int/2addr v1, v5

    .line 325
    and-int/lit8 v1, v1, 0xf

    .line 326
    .line 327
    add-int/2addr v4, v1

    .line 328
    if-ltz v4, :cond_13

    .line 329
    .line 330
    const/16 v1, 0xff

    .line 331
    .line 332
    if-le v4, v1, :cond_12

    .line 333
    .line 334
    goto :goto_8

    .line 335
    :cond_12
    add-int/lit8 v1, v11, 0x1

    .line 336
    .line 337
    int-to-byte v4, v4

    .line 338
    aput-byte v4, v2, v11

    .line 339
    .line 340
    move v11, v1

    .line 341
    goto/16 :goto_5

    .line 342
    .line 343
    :goto_7
    add-int/2addr v6, v1

    .line 344
    const/16 v1, 0x10

    .line 345
    .line 346
    goto/16 :goto_0

    .line 347
    .line 348
    :cond_13
    :goto_8
    return-object v17

    .line 349
    :cond_14
    if-lez v7, :cond_15

    .line 350
    .line 351
    const/4 v1, 0x1

    .line 352
    goto :goto_9

    .line 353
    :cond_15
    const/4 v1, 0x0

    .line 354
    :goto_9
    if-lez v8, :cond_1d

    .line 355
    .line 356
    if-lez v9, :cond_16

    .line 357
    .line 358
    sub-int v3, v6, v9

    .line 359
    .line 360
    const/4 v4, 0x3

    .line 361
    if-gt v3, v4, :cond_1c

    .line 362
    .line 363
    goto :goto_a

    .line 364
    :cond_16
    const/4 v4, 0x3

    .line 365
    :goto_a
    if-ne v8, v4, :cond_1c

    .line 366
    .line 367
    const/16 v3, 0x10

    .line 368
    .line 369
    if-lt v11, v3, :cond_17

    .line 370
    .line 371
    goto :goto_e

    .line 372
    :cond_17
    if-nez v10, :cond_18

    .line 373
    .line 374
    const/4 v0, 0x2

    .line 375
    const/16 v12, 0xc

    .line 376
    .line 377
    goto :goto_d

    .line 378
    :cond_18
    const/4 v3, 0x2

    .line 379
    if-lt v10, v3, :cond_1c

    .line 380
    .line 381
    if-nez v1, :cond_1a

    .line 382
    .line 383
    const/4 v3, 0x6

    .line 384
    if-ne v10, v3, :cond_1a

    .line 385
    .line 386
    const/4 v3, 0x0

    .line 387
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    if-ne v4, v5, :cond_19

    .line 392
    .line 393
    goto :goto_b

    .line 394
    :cond_19
    const/4 v0, 0x2

    .line 395
    goto :goto_c

    .line 396
    :cond_1a
    const/4 v3, 0x0

    .line 397
    :goto_b
    if-eqz v1, :cond_1c

    .line 398
    .line 399
    const/16 v1, 0x8

    .line 400
    .line 401
    if-ge v10, v1, :cond_1c

    .line 402
    .line 403
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-ne v0, v5, :cond_19

    .line 408
    .line 409
    const/4 v0, 0x2

    .line 410
    if-gt v7, v0, :cond_1c

    .line 411
    .line 412
    :goto_c
    add-int/lit8 v12, v12, -0x2

    .line 413
    .line 414
    :goto_d
    sub-int/2addr v6, v9

    .line 415
    const/4 v1, 0x3

    .line 416
    rsub-int/lit8 v4, v6, 0x3

    .line 417
    .line 418
    shl-int/lit8 v0, v4, 0x2

    .line 419
    .line 420
    shl-int v0, v13, v0

    .line 421
    .line 422
    and-int/lit8 v1, v0, 0xf

    .line 423
    .line 424
    mul-int/lit8 v1, v1, 0x64

    .line 425
    .line 426
    shr-int/lit8 v3, v0, 0x4

    .line 427
    .line 428
    and-int/lit8 v3, v3, 0xf

    .line 429
    .line 430
    mul-int/lit8 v3, v3, 0xa

    .line 431
    .line 432
    add-int/2addr v1, v3

    .line 433
    const/16 v3, 0x8

    .line 434
    .line 435
    shr-int/2addr v0, v3

    .line 436
    and-int/lit8 v0, v0, 0xf

    .line 437
    .line 438
    add-int/2addr v1, v0

    .line 439
    if-ltz v1, :cond_1c

    .line 440
    .line 441
    const/16 v0, 0xff

    .line 442
    .line 443
    if-le v1, v0, :cond_1b

    .line 444
    .line 445
    goto :goto_e

    .line 446
    :cond_1b
    add-int/lit8 v0, v11, 0x1

    .line 447
    .line 448
    int-to-byte v1, v1

    .line 449
    aput-byte v1, v2, v11

    .line 450
    .line 451
    goto/16 :goto_10

    .line 452
    .line 453
    :cond_1c
    :goto_e
    return-object v17

    .line 454
    :cond_1d
    const/4 v15, 0x1

    .line 455
    sub-int/2addr v3, v15

    .line 456
    if-lez v9, :cond_1e

    .line 457
    .line 458
    sub-int v15, v6, v9

    .line 459
    .line 460
    if-gt v15, v4, :cond_2c

    .line 461
    .line 462
    :cond_1e
    const/4 v15, 0x2

    .line 463
    if-lt v10, v15, :cond_2c

    .line 464
    .line 465
    if-nez v1, :cond_1f

    .line 466
    .line 467
    add-int/lit8 v15, v10, 0x1

    .line 468
    .line 469
    const/16 v4, 0x8

    .line 470
    .line 471
    if-ne v15, v4, :cond_2c

    .line 472
    .line 473
    const/4 v15, 0x0

    .line 474
    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    .line 475
    .line 476
    .line 477
    move-result v4

    .line 478
    if-eq v4, v5, :cond_2c

    .line 479
    .line 480
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 481
    .line 482
    .line 483
    move-result v4

    .line 484
    if-eq v4, v5, :cond_2c

    .line 485
    .line 486
    :cond_1f
    if-eqz v1, :cond_21

    .line 487
    .line 488
    const/16 v1, 0x8

    .line 489
    .line 490
    if-gt v10, v1, :cond_2c

    .line 491
    .line 492
    if-ne v10, v1, :cond_21

    .line 493
    .line 494
    const/4 v1, 0x2

    .line 495
    if-gt v7, v1, :cond_20

    .line 496
    .line 497
    const/4 v1, 0x0

    .line 498
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 499
    .line 500
    .line 501
    move-result v4

    .line 502
    if-ne v4, v5, :cond_2c

    .line 503
    .line 504
    :cond_20
    const/16 v1, 0xe

    .line 505
    .line 506
    if-lt v7, v1, :cond_21

    .line 507
    .line 508
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    if-ne v1, v5, :cond_2c

    .line 513
    .line 514
    :cond_21
    add-int/lit8 v1, v11, 0x1

    .line 515
    .line 516
    const/16 v4, 0x10

    .line 517
    .line 518
    if-ge v1, v4, :cond_2c

    .line 519
    .line 520
    if-gez v9, :cond_22

    .line 521
    .line 522
    const/4 v4, 0x1

    .line 523
    sub-int/2addr v3, v4

    .line 524
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    if-ne v3, v5, :cond_2c

    .line 529
    .line 530
    :cond_22
    const/4 v3, 0x2

    .line 531
    if-le v7, v3, :cond_23

    .line 532
    .line 533
    const/4 v4, 0x0

    .line 534
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    if-ne v0, v5, :cond_23

    .line 539
    .line 540
    goto/16 :goto_15

    .line 541
    .line 542
    :cond_23
    if-ltz v9, :cond_24

    .line 543
    .line 544
    sub-int/2addr v6, v9

    .line 545
    const/4 v0, 0x4

    .line 546
    if-gt v6, v0, :cond_25

    .line 547
    .line 548
    rsub-int/lit8 v4, v6, 0x4

    .line 549
    .line 550
    shl-int/lit8 v3, v4, 0x2

    .line 551
    .line 552
    shl-int/2addr v13, v3

    .line 553
    goto :goto_f

    .line 554
    :cond_24
    const/4 v0, 0x4

    .line 555
    :cond_25
    :goto_f
    and-int/lit8 v3, v13, 0xf

    .line 556
    .line 557
    shl-int/2addr v3, v0

    .line 558
    shr-int/lit8 v0, v13, 0x4

    .line 559
    .line 560
    and-int/lit8 v0, v0, 0xf

    .line 561
    .line 562
    or-int/2addr v0, v3

    .line 563
    int-to-byte v0, v0

    .line 564
    aput-byte v0, v2, v11

    .line 565
    .line 566
    add-int/lit8 v0, v1, 0x1

    .line 567
    .line 568
    shr-int/lit8 v3, v13, 0x8

    .line 569
    .line 570
    and-int/lit8 v3, v3, 0xf

    .line 571
    .line 572
    const/4 v4, 0x4

    .line 573
    shl-int/2addr v3, v4

    .line 574
    const/16 v4, 0xc

    .line 575
    .line 576
    shr-int/lit8 v4, v13, 0xc

    .line 577
    .line 578
    and-int/lit8 v4, v4, 0xf

    .line 579
    .line 580
    or-int/2addr v3, v4

    .line 581
    int-to-byte v3, v3

    .line 582
    aput-byte v3, v2, v1

    .line 583
    .line 584
    :goto_10
    add-int v1, v0, v12

    .line 585
    .line 586
    const/16 v3, 0x10

    .line 587
    .line 588
    if-nez v14, :cond_27

    .line 589
    .line 590
    if-lt v1, v3, :cond_26

    .line 591
    .line 592
    goto :goto_12

    .line 593
    :cond_26
    const/4 v0, 0x0

    .line 594
    :goto_11
    if-ge v0, v12, :cond_2a

    .line 595
    .line 596
    add-int v1, v0, v7

    .line 597
    .line 598
    add-int v4, v1, v12

    .line 599
    .line 600
    if-ge v4, v3, :cond_2a

    .line 601
    .line 602
    aget-byte v5, v2, v1

    .line 603
    .line 604
    aput-byte v5, v2, v4

    .line 605
    .line 606
    const/4 v4, 0x0

    .line 607
    aput-byte v4, v2, v1

    .line 608
    .line 609
    add-int/lit8 v0, v0, 0x1

    .line 610
    .line 611
    goto :goto_11

    .line 612
    :cond_27
    :goto_12
    if-lt v1, v3, :cond_28

    .line 613
    .line 614
    add-int/lit8 v7, v7, 0x1

    .line 615
    .line 616
    :cond_28
    :goto_13
    if-ge v0, v3, :cond_2a

    .line 617
    .line 618
    const/16 v1, 0xf

    .line 619
    .line 620
    :goto_14
    if-lt v1, v7, :cond_29

    .line 621
    .line 622
    add-int/lit8 v4, v1, -0x1

    .line 623
    .line 624
    aget-byte v4, v2, v4

    .line 625
    .line 626
    aput-byte v4, v2, v1

    .line 627
    .line 628
    add-int/lit8 v1, v1, -0x1

    .line 629
    .line 630
    goto :goto_14

    .line 631
    :cond_29
    const/4 v4, 0x0

    .line 632
    aput-byte v4, v2, v1

    .line 633
    .line 634
    add-int/lit8 v7, v7, 0x1

    .line 635
    .line 636
    add-int/lit8 v0, v0, 0x1

    .line 637
    .line 638
    goto :goto_13

    .line 639
    :cond_2a
    if-lez v8, :cond_2b

    .line 640
    .line 641
    const/16 v0, 0xb

    .line 642
    .line 643
    const/4 v1, -0x1

    .line 644
    aput-byte v1, v2, v0

    .line 645
    .line 646
    aput-byte v1, v2, v16

    .line 647
    .line 648
    :cond_2b
    return-object v2

    .line 649
    :cond_2c
    :goto_15
    return-object v17
.end method

.method private static inRangeEndExclusive(III)Z
    .locals 0

    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static intToIpAddress(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    shr-int/lit8 v1, p0, 0x18

    .line 9
    .line 10
    and-int/lit16 v1, v1, 0xff

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x2e

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    shr-int/lit8 v2, p0, 0x10

    .line 21
    .line 22
    and-int/lit16 v2, v2, 0xff

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    shr-int/lit8 v2, p0, 0x8

    .line 31
    .line 32
    and-int/lit16 v2, v2, 0xff

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    and-int/lit16 p0, p0, 0xff

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method private static ipv4WordToByte(Ljava/lang/String;II)B
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lio/netty/util/NetUtil;->decimalDigit(Ljava/lang/String;I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    int-to-byte p0, v0

    .line 10
    return p0

    .line 11
    :cond_0
    mul-int/lit8 v0, v0, 0xa

    .line 12
    .line 13
    invoke-static {p0, p1}, Lio/netty/util/NetUtil;->decimalDigit(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    if-ne p1, p2, :cond_1

    .line 21
    .line 22
    int-to-byte p0, v0

    .line 23
    return p0

    .line 24
    :cond_1
    mul-int/lit8 v0, v0, 0xa

    .line 25
    .line 26
    invoke-static {p0, p1}, Lio/netty/util/NetUtil;->decimalDigit(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    add-int/2addr v0, p0

    .line 31
    int-to-byte p0, v0

    .line 32
    return p0
.end method

.method public static isIpV4StackPreferred()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/netty/util/NetUtil;->IPV4_PREFERRED:Z

    .line 2
    .line 3
    return v0
.end method

.method public static isIpV6AddressesPreferred()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/netty/util/NetUtil;->IPV6_ADDRESSES_PREFERRED:Z

    .line 2
    .line 3
    return v0
.end method

.method private static isValidHexChar(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_3

    const/16 v0, 0x66

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidIPv4Mapped([BIII)Z
    .locals 4

    .line 1
    add-int/2addr p3, p2

    .line 2
    const/16 v0, 0xe

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt p3, v0, :cond_0

    .line 7
    .line 8
    const/4 p3, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p3, 0x0

    .line 11
    :goto_0
    const/16 v0, 0xc

    .line 12
    .line 13
    if-gt p1, v0, :cond_2

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    if-lt p1, v3, :cond_2

    .line 17
    .line 18
    if-eqz p3, :cond_1

    .line 19
    .line 20
    if-ge p2, v0, :cond_2

    .line 21
    .line 22
    :cond_1
    add-int/lit8 p2, p1, -0x1

    .line 23
    .line 24
    aget-byte p2, p0, p2

    .line 25
    .line 26
    add-int/lit8 v0, p1, -0x2

    .line 27
    .line 28
    aget-byte v0, p0, v0

    .line 29
    .line 30
    invoke-static {p2, v0, p3}, Lio/netty/util/NetUtil;->isValidIPv4MappedSeparators(BBZ)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    add-int/lit8 p1, p1, -0x3

    .line 37
    .line 38
    invoke-static {p0, v2, p1}, Lio/netty/util/internal/PlatformDependent;->isZero([BII)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_1
    return v1
.end method

.method private static isValidIPv4MappedChar(C)Z
    .locals 1

    const/16 v0, 0x66

    if-eq p0, v0, :cond_1

    const/16 v0, 0x46

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isValidIPv4MappedSeparators(BBZ)Z
    .locals 0

    if-ne p0, p1, :cond_1

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    const/4 p0, -0x1

    if-ne p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidIpV4Address(Lio/netty/util/AsciiString;II)Z
    .locals 3

    sub-int v0, p2, p1

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2e

    .line 10
    invoke-virtual {p0, v1, v0}, Lio/netty/util/AsciiString;->indexOf(CI)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x2

    .line 11
    invoke-virtual {p0, v1, v0}, Lio/netty/util/AsciiString;->indexOf(CI)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p0, v0, p1}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    .line 12
    invoke-virtual {p0, v1, p1}, Lio/netty/util/AsciiString;->indexOf(CI)I

    move-result v0

    if-lez v0, :cond_0

    sub-int/2addr p1, v2

    invoke-static {p0, p1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/2addr v0, v2

    .line 13
    invoke-static {p0, v0, p2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isValidIpV4Address(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method private static isValidIpV4Address(Ljava/lang/CharSequence;II)Z
    .locals 1

    .line 3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;II)Z

    move-result p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_1

    check-cast p0, Lio/netty/util/AsciiString;

    .line 4
    invoke-static {p0, p1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Address(Lio/netty/util/AsciiString;II)Z

    move-result p0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0, p1, p2}, Lio/netty/util/NetUtil;->isValidIpV4Address0(Ljava/lang/CharSequence;II)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static isValidIpV4Address(Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private static isValidIpV4Address(Ljava/lang/String;II)Z
    .locals 3

    sub-int v0, p2, p1

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2e

    .line 6
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x2

    .line 7
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p0, v0, p1}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    .line 8
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_0

    sub-int/2addr p1, v2

    invoke-static {p0, p1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/2addr v0, v2

    .line 9
    invoke-static {p0, v0, p2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static isValidIpV4Address0(Ljava/lang/CharSequence;II)Z
    .locals 3

    .line 1
    sub-int v0, p2, p1

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x7

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    add-int/lit8 v0, p1, 0x1

    .line 11
    .line 12
    const/16 v1, 0x2e

    .line 13
    .line 14
    invoke-static {p0, v1, v0}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    invoke-static {p0, p1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    invoke-static {p0, v1, v0}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-lez p1, :cond_0

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    sub-int/2addr v0, v2

    .line 36
    invoke-static {p0, v0, p1}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    add-int/lit8 p1, p1, 0x2

    .line 43
    .line 44
    invoke-static {p0, v1, p1}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-lez v0, :cond_0

    .line 49
    .line 50
    sub-int/2addr p1, v2

    .line 51
    invoke-static {p0, p1, v0}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    add-int/2addr v0, v2

    .line 58
    invoke-static {p0, v0, p2}, Lio/netty/util/NetUtil;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v2, 0x0

    .line 66
    :goto_0
    return v2
.end method

.method private static isValidIpV4Word(Ljava/lang/CharSequence;II)Z
    .locals 6

    .line 1
    sub-int/2addr p2, p1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p2, v1, :cond_6

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    if-gt p2, v2, :cond_6

    .line 8
    .line 9
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/16 v4, 0x30

    .line 14
    .line 15
    if-ge v3, v4, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v5, 0x39

    .line 19
    .line 20
    if-ne p2, v2, :cond_4

    .line 21
    .line 22
    add-int/lit8 p2, p1, 0x1

    .line 23
    .line 24
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-lt p2, v4, :cond_3

    .line 29
    .line 30
    add-int/lit8 p1, p1, 0x2

    .line 31
    .line 32
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-lt p0, v4, :cond_3

    .line 37
    .line 38
    const/16 p1, 0x31

    .line 39
    .line 40
    if-gt v3, p1, :cond_1

    .line 41
    .line 42
    if-gt p2, v5, :cond_1

    .line 43
    .line 44
    if-le p0, v5, :cond_2

    .line 45
    .line 46
    :cond_1
    const/16 p1, 0x32

    .line 47
    .line 48
    if-ne v3, p1, :cond_3

    .line 49
    .line 50
    const/16 p1, 0x35

    .line 51
    .line 52
    if-gt p2, p1, :cond_3

    .line 53
    .line 54
    if-le p0, p1, :cond_2

    .line 55
    .line 56
    if-ge p2, p1, :cond_3

    .line 57
    .line 58
    if-gt p0, v5, :cond_3

    .line 59
    .line 60
    :cond_2
    const/4 v0, 0x1

    .line 61
    :cond_3
    return v0

    .line 62
    :cond_4
    if-gt v3, v5, :cond_6

    .line 63
    .line 64
    if-eq p2, v1, :cond_5

    .line 65
    .line 66
    add-int/2addr p1, v1

    .line 67
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidNumericChar(C)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_6

    .line 76
    .line 77
    :cond_5
    const/4 v0, 0x1

    .line 78
    :cond_6
    :goto_0
    return v0
.end method

.method public static isValidIpV6Address(Ljava/lang/CharSequence;)Z
    .locals 14

    .line 2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-eq v3, v4, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const/16 v6, 0x3a

    if-ne v3, v6, :cond_4

    add-int/lit8 v3, v4, 0x1

    .line 6
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v4, 0x2

    move v13, v4

    move v4, v3

    move v3, v13

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_1
    move v7, v4

    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x7

    if-ge v7, v0, :cond_17

    .line 7
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 8
    invoke-static {v10}, Lio/netty/util/NetUtil;->isValidHexChar(C)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v9, 0x4

    if-ge v8, v9, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    return v1

    :cond_6
    const/16 v11, 0x25

    if-eq v10, v11, :cond_16

    const/16 v12, 0x2e

    if-eq v10, v12, :cond_b

    if-eq v10, v6, :cond_7

    return v1

    :cond_7
    if-le v2, v9, :cond_8

    return v1

    :cond_8
    add-int/lit8 v9, v7, -0x1

    .line 9
    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v10, v6, :cond_a

    if-ltz v3, :cond_9

    return v1

    :cond_9
    move v3, v9

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    if-gez v3, :cond_c

    const/4 v5, 0x6

    if-ne v2, v5, :cond_e

    :cond_c
    if-ne v2, v9, :cond_d

    if-ge v3, v4, :cond_e

    :cond_d
    if-le v2, v9, :cond_f

    :cond_e
    return v1

    :cond_f
    sub-int/2addr v7, v8

    add-int/lit8 v2, v7, -0x2

    .line 10
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/netty/util/NetUtil;->isValidIPv4MappedChar(C)Z

    move-result v3

    if-eqz v3, :cond_12

    add-int/lit8 v3, v2, -0x1

    .line 11
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/netty/util/NetUtil;->isValidIPv4MappedChar(C)Z

    move-result v3

    if-eqz v3, :cond_11

    add-int/lit8 v3, v2, -0x2

    .line 12
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/netty/util/NetUtil;->isValidIPv4MappedChar(C)Z

    move-result v3

    if-eqz v3, :cond_11

    add-int/lit8 v3, v2, -0x3

    .line 13
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/netty/util/NetUtil;->isValidIPv4MappedChar(C)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_5

    :cond_10
    add-int/lit8 v2, v2, -0x5

    goto :goto_6

    :cond_11
    :goto_5
    return v1

    :cond_12
    :goto_6
    if-lt v2, v4, :cond_14

    .line 14
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    if-eq v3, v5, :cond_13

    if-eq v3, v6, :cond_13

    return v1

    :cond_13
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_14
    add-int/lit8 v1, v7, 0x7

    .line 15
    invoke-static {p0, v11, v1}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    if-gez v1, :cond_15

    goto :goto_7

    :cond_15
    move v0, v1

    .line 16
    :goto_7
    invoke-static {p0, v7, v0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0

    :cond_16
    move v0, v7

    :cond_17
    if-gez v3, :cond_19

    if-ne v2, v9, :cond_18

    if-lez v8, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1

    :cond_19
    add-int/lit8 p0, v3, 0x2

    if-eq p0, v0, :cond_1a

    if-lez v8, :cond_1b

    const/16 p0, 0x8

    if-lt v2, p0, :cond_1a

    if-gt v3, v4, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public static isValidIpV6Address(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isValidNumericChar(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static newSocketAddressStringBuilder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    add-int/2addr v0, p1

    .line 16
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    return-object p2

    .line 23
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    add-int/lit8 v2, v0, 0x3

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    add-int/2addr v2, p1

    .line 32
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const/16 p1, 0x5d

    .line 36
    .line 37
    const/16 v2, 0x5b

    .line 38
    .line 39
    if-le v0, v1, :cond_1

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-ne v3, v2, :cond_1

    .line 47
    .line 48
    sub-int/2addr v0, v1

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-ne v0, p1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    return-object p2

    .line 59
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    return-object p2
.end method

.method private static sysctlGetInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/ProcessBuilder;

    .line 2
    .line 3
    const-string v1, "sysctl"

    .line 4
    .line 5
    filled-new-array {v1, p0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Ljava/io/InputStreamReader;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/io/BufferedReader;

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    .line 29
    .line 30
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    add-int/lit8 v3, v3, -0x1

    .line 47
    .line 48
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-le v3, v4, :cond_1

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_0

    .line 63
    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x0

    .line 91
    return-object p0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 94
    .line 95
    .line 96
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 97
    :catchall_1
    move-exception p0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 101
    .line 102
    .line 103
    :cond_2
    throw p0
.end method

.method public static toAddressString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lio/netty/util/NetUtil;->toAddressString(Ljava/net/InetAddress;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toAddressString(Ljava/net/InetAddress;Z)Ljava/lang/String;
    .locals 2

    .line 2
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lio/netty/util/NetUtil;->toAddressString([BIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static toAddressString([BIZ)Ljava/lang/String;
    .locals 9

    const/16 v0, 0x8

    new-array v1, v0, [I

    add-int/lit8 v2, p1, 0x8

    :goto_0
    const/4 v3, 0x1

    if-ge p1, v2, :cond_0

    shl-int/lit8 v4, p1, 0x1

    .line 7
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v0

    add-int/2addr v4, v3

    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v5

    aput v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    const/4 p1, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_1
    if-ge v2, v0, :cond_4

    .line 8
    aget v7, v1, v2

    if-nez v7, :cond_1

    if-gez v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_1
    if-ltz v4, :cond_3

    sub-int v7, v2, v4

    if-le v7, v5, :cond_2

    move v5, v7

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    move v6, v4

    const/4 v4, -0x1

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-ltz v4, :cond_5

    sub-int/2addr v2, v4

    if-le v2, v5, :cond_5

    move v5, v2

    goto :goto_4

    :cond_5
    move v4, v6

    :goto_4
    if-ne v5, v3, :cond_6

    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    move p0, v4

    :goto_5
    add-int/2addr v5, p0

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x3a

    if-gez v5, :cond_7

    aget p0, v1, p1

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    if-ge v3, v0, :cond_10

    .line 11
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    aget p0, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 13
    :cond_7
    invoke-static {p1, p0, v5}, Lio/netty/util/NetUtil;->inRangeEndExclusive(III)Z

    move-result v6

    const-string v7, "::"

    const/4 v8, 0x5

    if-eqz v6, :cond_8

    .line 14
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_9

    if-ne v5, v8, :cond_9

    aget p2, v1, v8

    const v6, 0xffff

    if-ne p2, v6, :cond_9

    const/4 p1, 0x1

    goto :goto_7

    :cond_8
    aget p2, v1, p1

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_7
    if-ge v3, v0, :cond_10

    .line 16
    invoke-static {v3, p0, v5}, Lio/netty/util/NetUtil;->inRangeEndExclusive(III)Z

    move-result p2

    if-nez p2, :cond_e

    add-int/lit8 p2, v3, -0x1

    .line 17
    invoke-static {p2, p0, v5}, Lio/netty/util/NetUtil;->inRangeEndExclusive(III)Z

    move-result p2

    const/16 v6, 0x2e

    if-nez p2, :cond_c

    if-eqz p1, :cond_b

    const/4 p2, 0x6

    if-ne v3, p2, :cond_a

    goto :goto_8

    .line 18
    :cond_a
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 19
    :cond_b
    :goto_8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    :goto_9
    if-eqz p1, :cond_d

    if-le v3, v8, :cond_d

    .line 20
    aget p2, v1, v3

    shr-int/2addr p2, v0

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    aget p2, v1, v3

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 23
    :cond_d
    aget p2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_e
    add-int/lit8 p2, v3, -0x1

    .line 24
    invoke-static {p2, p0, v5}, Lio/netty/util/NetUtil;->inRangeEndExclusive(III)Z

    move-result p2

    if-nez p2, :cond_f

    .line 25
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 26
    :cond_10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toSocketAddressString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 11
    invoke-static {p0, p1, v0}, Lio/netty/util/NetUtil;->newSocketAddressStringBuilder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x3a

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toSocketAddressString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0}, Lio/netty/util/NetUtil;->getHostname(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, v1}, Lio/netty/util/NetUtil;->newSocketAddressStringBuilder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lio/netty/util/NetUtil;->toAddressString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    .line 7
    instance-of p0, p0, Ljava/net/Inet4Address;

    invoke-static {v1, v0, p0}, Lio/netty/util/NetUtil;->newSocketAddressStringBuilder(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    :goto_0
    const/16 v1, 0x3a

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static validIpV4ToBytes(Ljava/lang/String;)[B
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/16 v1, 0x2e

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {p0, v4, v3}, Lio/netty/util/NetUtil;->ipv4WordToByte(Ljava/lang/String;II)B

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    aput-byte v5, v0, v4

    .line 17
    .line 18
    add-int/lit8 v4, v3, 0x1

    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    add-int/2addr v3, v5

    .line 22
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-static {p0, v4, v3}, Lio/netty/util/NetUtil;->ipv4WordToByte(Ljava/lang/String;II)B

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    aput-byte v4, v0, v2

    .line 31
    .line 32
    add-int/lit8 v4, v3, 0x1

    .line 33
    .line 34
    add-int/2addr v3, v5

    .line 35
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {p0, v4, v1}, Lio/netty/util/NetUtil;->ipv4WordToByte(Ljava/lang/String;II)B

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    aput-byte v3, v0, v5

    .line 44
    .line 45
    add-int/2addr v1, v2

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-static {p0, v1, v2}, Lio/netty/util/NetUtil;->ipv4WordToByte(Ljava/lang/String;II)B

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    const/4 v1, 0x3

    .line 55
    aput-byte p0, v0, v1

    .line 56
    .line 57
    return-object v0
.end method
