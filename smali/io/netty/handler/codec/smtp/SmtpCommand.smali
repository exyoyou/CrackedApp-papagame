.class public final Lio/netty/handler/codec/smtp/SmtpCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTH:Lio/netty/handler/codec/smtp/SmtpCommand;

.field private static final COMMANDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/handler/codec/smtp/SmtpCommand;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA:Lio/netty/handler/codec/smtp/SmtpCommand;

.field public static final EHLO:Lio/netty/handler/codec/smtp/SmtpCommand;

.field public static final EMPTY:Lio/netty/handler/codec/smtp/SmtpCommand;

.field public static final EXPN:Lio/netty/handler/codec/smtp/SmtpCommand;

.field public static final HELO:Lio/netty/handler/codec/smtp/SmtpCommand;

.field public static final HELP:Lio/netty/handler/codec/smtp/SmtpCommand;

.field public static final MAIL:Lio/netty/handler/codec/smtp/SmtpCommand;

.field public static final NOOP:Lio/netty/handler/codec/smtp/SmtpCommand;

.field public static final QUIT:Lio/netty/handler/codec/smtp/SmtpCommand;

.field public static final RCPT:Lio/netty/handler/codec/smtp/SmtpCommand;

.field public static final RSET:Lio/netty/handler/codec/smtp/SmtpCommand;

.field public static final VRFY:Lio/netty/handler/codec/smtp/SmtpCommand;


# instance fields
.field private final name:Lio/netty/util/AsciiString;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 2
    .line 3
    const-string v1, "EHLO"

    .line 4
    .line 5
    invoke-static {v1}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lio/netty/handler/codec/smtp/SmtpCommand;-><init>(Lio/netty/util/AsciiString;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lio/netty/handler/codec/smtp/SmtpCommand;->EHLO:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 13
    .line 14
    new-instance v1, Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 15
    .line 16
    const-string v2, "HELO"

    .line 17
    .line 18
    invoke-static {v2}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Lio/netty/handler/codec/smtp/SmtpCommand;-><init>(Lio/netty/util/AsciiString;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lio/netty/handler/codec/smtp/SmtpCommand;->HELO:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 26
    .line 27
    new-instance v2, Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 28
    .line 29
    const-string v3, "AUTH"

    .line 30
    .line 31
    invoke-static {v3}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-direct {v2, v3}, Lio/netty/handler/codec/smtp/SmtpCommand;-><init>(Lio/netty/util/AsciiString;)V

    .line 36
    .line 37
    .line 38
    sput-object v2, Lio/netty/handler/codec/smtp/SmtpCommand;->AUTH:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 39
    .line 40
    new-instance v3, Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 41
    .line 42
    const-string v4, "MAIL"

    .line 43
    .line 44
    invoke-static {v4}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-direct {v3, v4}, Lio/netty/handler/codec/smtp/SmtpCommand;-><init>(Lio/netty/util/AsciiString;)V

    .line 49
    .line 50
    .line 51
    sput-object v3, Lio/netty/handler/codec/smtp/SmtpCommand;->MAIL:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 52
    .line 53
    new-instance v4, Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 54
    .line 55
    const-string v5, "RCPT"

    .line 56
    .line 57
    invoke-static {v5}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-direct {v4, v5}, Lio/netty/handler/codec/smtp/SmtpCommand;-><init>(Lio/netty/util/AsciiString;)V

    .line 62
    .line 63
    .line 64
    sput-object v4, Lio/netty/handler/codec/smtp/SmtpCommand;->RCPT:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 65
    .line 66
    new-instance v5, Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 67
    .line 68
    const-string v6, "DATA"

    .line 69
    .line 70
    invoke-static {v6}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-direct {v5, v6}, Lio/netty/handler/codec/smtp/SmtpCommand;-><init>(Lio/netty/util/AsciiString;)V

    .line 75
    .line 76
    .line 77
    sput-object v5, Lio/netty/handler/codec/smtp/SmtpCommand;->DATA:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 78
    .line 79
    new-instance v6, Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 80
    .line 81
    const-string v7, "NOOP"

    .line 82
    .line 83
    invoke-static {v7}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-direct {v6, v7}, Lio/netty/handler/codec/smtp/SmtpCommand;-><init>(Lio/netty/util/AsciiString;)V

    .line 88
    .line 89
    .line 90
    sput-object v6, Lio/netty/handler/codec/smtp/SmtpCommand;->NOOP:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 91
    .line 92
    new-instance v7, Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 93
    .line 94
    const-string v8, "RSET"

    .line 95
    .line 96
    invoke-static {v8}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-direct {v7, v8}, Lio/netty/handler/codec/smtp/SmtpCommand;-><init>(Lio/netty/util/AsciiString;)V

    .line 101
    .line 102
    .line 103
    sput-object v7, Lio/netty/handler/codec/smtp/SmtpCommand;->RSET:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 104
    .line 105
    new-instance v8, Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 106
    .line 107
    const-string v9, "EXPN"

    .line 108
    .line 109
    invoke-static {v9}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    invoke-direct {v8, v9}, Lio/netty/handler/codec/smtp/SmtpCommand;-><init>(Lio/netty/util/AsciiString;)V

    .line 114
    .line 115
    .line 116
    sput-object v8, Lio/netty/handler/codec/smtp/SmtpCommand;->EXPN:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 117
    .line 118
    new-instance v9, Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 119
    .line 120
    const-string v10, "VRFY"

    .line 121
    .line 122
    invoke-static {v10}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    invoke-direct {v9, v10}, Lio/netty/handler/codec/smtp/SmtpCommand;-><init>(Lio/netty/util/AsciiString;)V

    .line 127
    .line 128
    .line 129
    sput-object v9, Lio/netty/handler/codec/smtp/SmtpCommand;->VRFY:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 130
    .line 131
    new-instance v10, Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 132
    .line 133
    const-string v11, "HELP"

    .line 134
    .line 135
    invoke-static {v11}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    invoke-direct {v10, v11}, Lio/netty/handler/codec/smtp/SmtpCommand;-><init>(Lio/netty/util/AsciiString;)V

    .line 140
    .line 141
    .line 142
    sput-object v10, Lio/netty/handler/codec/smtp/SmtpCommand;->HELP:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 143
    .line 144
    new-instance v11, Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 145
    .line 146
    const-string v12, "QUIT"

    .line 147
    .line 148
    invoke-static {v12}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    invoke-direct {v11, v12}, Lio/netty/handler/codec/smtp/SmtpCommand;-><init>(Lio/netty/util/AsciiString;)V

    .line 153
    .line 154
    .line 155
    sput-object v11, Lio/netty/handler/codec/smtp/SmtpCommand;->QUIT:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 156
    .line 157
    new-instance v12, Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 158
    .line 159
    const-string v13, ""

    .line 160
    .line 161
    invoke-static {v13}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 162
    .line 163
    .line 164
    move-result-object v13

    .line 165
    invoke-direct {v12, v13}, Lio/netty/handler/codec/smtp/SmtpCommand;-><init>(Lio/netty/util/AsciiString;)V

    .line 166
    .line 167
    .line 168
    sput-object v12, Lio/netty/handler/codec/smtp/SmtpCommand;->EMPTY:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 169
    .line 170
    new-instance v13, Ljava/util/HashMap;

    .line 171
    .line 172
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 173
    .line 174
    .line 175
    sput-object v13, Lio/netty/handler/codec/smtp/SmtpCommand;->COMMANDS:Ljava/util/Map;

    .line 176
    .line 177
    invoke-virtual {v0}, Lio/netty/handler/codec/smtp/SmtpCommand;->name()Lio/netty/util/AsciiString;

    .line 178
    .line 179
    .line 180
    move-result-object v14

    .line 181
    invoke-virtual {v14}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v14

    .line 185
    invoke-interface {v13, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Lio/netty/handler/codec/smtp/SmtpCommand;->name()Lio/netty/util/AsciiString;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Lio/netty/handler/codec/smtp/SmtpCommand;->name()Lio/netty/util/AsciiString;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-interface {v13, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3}, Lio/netty/handler/codec/smtp/SmtpCommand;->name()Lio/netty/util/AsciiString;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-interface {v13, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4}, Lio/netty/handler/codec/smtp/SmtpCommand;->name()Lio/netty/util/AsciiString;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-interface {v13, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5}, Lio/netty/handler/codec/smtp/SmtpCommand;->name()Lio/netty/util/AsciiString;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-interface {v13, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6}, Lio/netty/handler/codec/smtp/SmtpCommand;->name()Lio/netty/util/AsciiString;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-interface {v13, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v7}, Lio/netty/handler/codec/smtp/SmtpCommand;->name()Lio/netty/util/AsciiString;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-interface {v13, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v8}, Lio/netty/handler/codec/smtp/SmtpCommand;->name()Lio/netty/util/AsciiString;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-interface {v13, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v9}, Lio/netty/handler/codec/smtp/SmtpCommand;->name()Lio/netty/util/AsciiString;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-interface {v13, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v10}, Lio/netty/handler/codec/smtp/SmtpCommand;->name()Lio/netty/util/AsciiString;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-interface {v13, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v11}, Lio/netty/handler/codec/smtp/SmtpCommand;->name()Lio/netty/util/AsciiString;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-interface {v13, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v12}, Lio/netty/handler/codec/smtp/SmtpCommand;->name()Lio/netty/util/AsciiString;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-interface {v13, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    return-void
.end method

.method private constructor <init>(Lio/netty/util/AsciiString;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/netty/handler/codec/smtp/SmtpCommand;->name:Lio/netty/util/AsciiString;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Lio/netty/handler/codec/smtp/SmtpCommand;
    .locals 2

    .line 1
    const-string v0, "commandName"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lio/netty/handler/codec/smtp/SmtpCommand;->COMMANDS:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 22
    .line 23
    invoke-static {p0}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v0, p0}, Lio/netty/handler/codec/smtp/SmtpCommand;-><init>(Lio/netty/util/AsciiString;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-object v0
.end method


# virtual methods
.method encode(Lio/netty/buffer/ByteBuf;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/smtp/SmtpCommand;->name:Lio/netty/util/AsciiString;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/smtp/SmtpCommand;->name:Lio/netty/util/AsciiString;

    .line 12
    .line 13
    check-cast p1, Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 14
    .line 15
    invoke-virtual {p1}, Lio/netty/handler/codec/smtp/SmtpCommand;->name()Lio/netty/util/AsciiString;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/smtp/SmtpCommand;->name:Lio/netty/util/AsciiString;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/util/AsciiString;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method isContentExpected()Z
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/smtp/SmtpCommand;->DATA:Lio/netty/handler/codec/smtp/SmtpCommand;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/smtp/SmtpCommand;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public name()Lio/netty/util/AsciiString;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/smtp/SmtpCommand;->name:Lio/netty/util/AsciiString;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SmtpCommand{name="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/netty/handler/codec/smtp/SmtpCommand;->name:Lio/netty/util/AsciiString;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x7d

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
