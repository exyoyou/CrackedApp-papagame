.class public Lorg/apache/http/client/utils/URLEncodedUtilsHC4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final NAME_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final PATHSAFE:Ljava/util/BitSet;

.field private static final PUNCT:Ljava/util/BitSet;

.field private static final QP_SEPS:[C

.field private static final QP_SEP_A:C = '&'

.field private static final QP_SEP_PATTERN:Ljava/lang/String;

.field private static final QP_SEP_S:C = ';'

.field private static final RADIX:I = 0x10

.field private static final RESERVED:Ljava/util/BitSet;

.field private static final UNRESERVED:Ljava/util/BitSet;

.field private static final URIC:Ljava/util/BitSet;

.field private static final URLENCODER:Ljava/util/BitSet;

.field private static final USERINFO:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->QP_SEPS:[C

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "["

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    new-instance v2, Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, "]"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->QP_SEP_PATTERN:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v0, Ljava/util/BitSet;

    .line 39
    .line 40
    const/16 v1, 0x100

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    .line 46
    .line 47
    new-instance v0, Ljava/util/BitSet;

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PUNCT:Ljava/util/BitSet;

    .line 53
    .line 54
    new-instance v0, Ljava/util/BitSet;

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->USERINFO:Ljava/util/BitSet;

    .line 60
    .line 61
    new-instance v0, Ljava/util/BitSet;

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PATHSAFE:Ljava/util/BitSet;

    .line 67
    .line 68
    new-instance v0, Ljava/util/BitSet;

    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->URIC:Ljava/util/BitSet;

    .line 74
    .line 75
    new-instance v0, Ljava/util/BitSet;

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 78
    .line 79
    .line 80
    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->RESERVED:Ljava/util/BitSet;

    .line 81
    .line 82
    new-instance v0, Ljava/util/BitSet;

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->URLENCODER:Ljava/util/BitSet;

    .line 88
    .line 89
    const/16 v0, 0x61

    .line 90
    .line 91
    :goto_0
    const/16 v1, 0x7a

    .line 92
    .line 93
    if-gt v0, v1, :cond_0

    .line 94
    .line 95
    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 98
    .line 99
    .line 100
    add-int/lit8 v0, v0, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    const/16 v0, 0x41

    .line 104
    .line 105
    :goto_1
    const/16 v1, 0x5a

    .line 106
    .line 107
    if-gt v0, v1, :cond_1

    .line 108
    .line 109
    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    const/16 v0, 0x30

    .line 118
    .line 119
    :goto_2
    const/16 v1, 0x39

    .line 120
    .line 121
    if-gt v0, v1, :cond_2

    .line 122
    .line 123
    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v0, v0, 0x1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_2
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->UNRESERVED:Ljava/util/BitSet;

    .line 132
    .line 133
    const/16 v1, 0x5f

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 136
    .line 137
    .line 138
    const/16 v1, 0x2d

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 141
    .line 142
    .line 143
    const/16 v1, 0x2e

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 146
    .line 147
    .line 148
    const/16 v1, 0x2a

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 151
    .line 152
    .line 153
    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->URLENCODER:Ljava/util/BitSet;

    .line 154
    .line 155
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 156
    .line 157
    .line 158
    const/16 v1, 0x21

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 161
    .line 162
    .line 163
    const/16 v1, 0x7e

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 166
    .line 167
    .line 168
    const/16 v1, 0x27

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 171
    .line 172
    .line 173
    const/16 v1, 0x28

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 176
    .line 177
    .line 178
    const/16 v1, 0x29

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 181
    .line 182
    .line 183
    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PUNCT:Ljava/util/BitSet;

    .line 184
    .line 185
    const/16 v2, 0x2c

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 188
    .line 189
    .line 190
    const/16 v3, 0x3b

    .line 191
    .line 192
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 193
    .line 194
    .line 195
    const/16 v4, 0x3a

    .line 196
    .line 197
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 198
    .line 199
    .line 200
    const/16 v5, 0x24

    .line 201
    .line 202
    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 203
    .line 204
    .line 205
    const/16 v6, 0x26

    .line 206
    .line 207
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 208
    .line 209
    .line 210
    const/16 v7, 0x2b

    .line 211
    .line 212
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 213
    .line 214
    .line 215
    const/16 v8, 0x3d

    .line 216
    .line 217
    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 218
    .line 219
    .line 220
    sget-object v9, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->USERINFO:Ljava/util/BitSet;

    .line 221
    .line 222
    invoke-virtual {v9, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v9, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 226
    .line 227
    .line 228
    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PATHSAFE:Ljava/util/BitSet;

    .line 229
    .line 230
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 231
    .line 232
    .line 233
    const/16 v9, 0x2f

    .line 234
    .line 235
    invoke-virtual {v1, v9}, Ljava/util/BitSet;->set(I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 242
    .line 243
    .line 244
    const/16 v10, 0x40

    .line 245
    .line 246
    invoke-virtual {v1, v10}, Ljava/util/BitSet;->set(I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 262
    .line 263
    .line 264
    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->RESERVED:Ljava/util/BitSet;

    .line 265
    .line 266
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v9}, Ljava/util/BitSet;->set(I)V

    .line 270
    .line 271
    .line 272
    const/16 v3, 0x3f

    .line 273
    .line 274
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v10}, Ljava/util/BitSet;->set(I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 296
    .line 297
    .line 298
    const/16 v2, 0x5b

    .line 299
    .line 300
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 301
    .line 302
    .line 303
    const/16 v2, 0x5d

    .line 304
    .line 305
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 306
    .line 307
    .line 308
    sget-object v2, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->URIC:Ljava/util/BitSet;

    .line 309
    .line 310
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 314
    .line 315
    .line 316
    return-void

    .line 317
    :array_0
    .array-data 2
        0x26s
        0x3bs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static decodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->urlDecode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static decodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->urlDecode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encPath(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->PATHSAFE:Ljava/util/BitSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, p1, v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method static encUric(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->URIC:Ljava/util/BitSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, p1, v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method static encUserInfo(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->USERINFO:Ljava/util/BitSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, p1, v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private static encodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->URLENCODER:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->URLENCODER:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/lang/Iterable;CLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/http/NameValuePair;",
            ">;C",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 15
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->encodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->encodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string v2, "="

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v0, 0x26

    .line 12
    invoke-static {p0, v0, p1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->format(Ljava/lang/Iterable;CLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/List;CLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/http/NameValuePair;",
            ">;C",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 4
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->encodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->encodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string v2, "="

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v0, 0x26

    .line 1
    invoke-static {p0, v0, p1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->format(Ljava/util/List;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isEncoded(Lorg/apache/http/HttpEntity;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    array-length v1, p0

    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    aget-object p0, p0, v0

    .line 16
    .line 17
    invoke-interface {p0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "application/x-www-form-urlencoded"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    return v0
.end method

.method public static parse(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 24
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->QP_SEPS:[C

    invoke-static {p0, p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->parse(Ljava/lang/String;Ljava/nio/charset/Charset;[C)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parse(Ljava/lang/String;Ljava/nio/charset/Charset;[C)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            "[C)",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 26
    :cond_0
    sget-object v0, Lorg/apache/http/message/BasicHeaderValueParserHC4;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueParserHC4;

    .line 27
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 28
    invoke-virtual {v1, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 29
    new-instance p0, Lorg/apache/http/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/http/message/ParserCursor;->atEnd()Z

    move-result v3

    if-nez v3, :cond_2

    .line 32
    invoke-virtual {v0, v1, p0, p2}, Lorg/apache/http/message/BasicHeaderValueParserHC4;->parseNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;[C)Lorg/apache/http/NameValuePair;

    move-result-object v3

    .line 33
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 34
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->decodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->decodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 5
    sget-object p0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->QP_SEP_PATTERN:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lorg/apache/http/HttpEntity;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpEntity;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-static {p0}, Lorg/apache/http/entity/ContentType;->get(Lorg/apache/http/HttpEntity;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lorg/apache/http/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    sget-object v1, Lorg/apache/http/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-static {p0, v1}, Lorg/apache/http/util/EntityUtilsHC4;->toString(Lorg/apache/http/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 11
    invoke-virtual {v0}, Lorg/apache/http/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ISO-8859-1"

    .line 12
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 13
    :cond_0
    sget-object v1, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->QP_SEPS:[C

    invoke-static {p0, v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->parse(Ljava/lang/String;Ljava/nio/charset/Charset;[C)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 14
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    sget-object v0, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->QP_SEP_PATTERN:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-virtual {p1, p2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 17
    :goto_0
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 18
    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object p2

    const-string v0, "="

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->decodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->decodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->decodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 p2, 0x0

    .line 23
    :goto_1
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, v1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static urlDecode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/16 v2, 0x25

    .line 28
    .line 29
    if-ne v1, v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x2

    .line 36
    if-lt v3, v4, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/16 v4, 0x10

    .line 47
    .line 48
    invoke-static {v1, v4}, Ljava/lang/Character;->digit(CI)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const/4 v6, -0x1

    .line 57
    if-eq v5, v6, :cond_1

    .line 58
    .line 59
    if-eq v4, v6, :cond_1

    .line 60
    .line 61
    shl-int/lit8 v1, v5, 0x4

    .line 62
    .line 63
    add-int/2addr v1, v4

    .line 64
    int-to-byte v1, v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    .line 72
    int-to-byte v1, v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    .line 76
    int-to-byte v1, v3

    .line 77
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    if-eqz p2, :cond_3

    .line 82
    .line 83
    const/16 v2, 0x2b

    .line 84
    .line 85
    if-ne v1, v2, :cond_3

    .line 86
    .line 87
    const/16 v1, 0x20

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    int-to-byte v1, v1

    .line 94
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0
.end method

.method private static urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    and-int/lit16 p1, p1, 0xff

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    int-to-char p1, p1

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-eqz p3, :cond_2

    .line 38
    .line 39
    const/16 v1, 0x20

    .line 40
    .line 41
    if-ne p1, v1, :cond_2

    .line 42
    .line 43
    const/16 p1, 0x2b

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v1, "%"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    shr-int/lit8 v1, p1, 0x4

    .line 55
    .line 56
    and-int/lit8 v1, v1, 0xf

    .line 57
    .line 58
    const/16 v2, 0x10

    .line 59
    .line 60
    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    and-int/lit8 p1, p1, 0xf

    .line 69
    .line 70
    invoke-static {p1, v2}, Ljava/lang/Character;->forDigit(II)C

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method
