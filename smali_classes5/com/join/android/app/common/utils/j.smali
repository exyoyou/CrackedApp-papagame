.class public Lcom/join/android/app/common/utils/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/utils/j$a;
    }
.end annotation


# static fields
.field private static b:I = 0x2d0

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/android/app/common/utils/j$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 9
    .line 10
    const/16 v2, 0xf0

    .line 11
    .line 12
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 21
    .line 22
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 23
    .line 24
    const/16 v2, 0x140

    .line 25
    .line 26
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 27
    .line 28
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 35
    .line 36
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 37
    .line 38
    const/16 v2, 0x168

    .line 39
    .line 40
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 41
    .line 42
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 49
    .line 50
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 51
    .line 52
    const/16 v2, 0x180

    .line 53
    .line 54
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 55
    .line 56
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 63
    .line 64
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 65
    .line 66
    const/16 v2, 0x188

    .line 67
    .line 68
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 69
    .line 70
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 77
    .line 78
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 79
    .line 80
    const/16 v2, 0x190

    .line 81
    .line 82
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 83
    .line 84
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 91
    .line 92
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 93
    .line 94
    const/16 v2, 0x19a

    .line 95
    .line 96
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 97
    .line 98
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 105
    .line 106
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 107
    .line 108
    const/16 v2, 0x19b

    .line 109
    .line 110
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 111
    .line 112
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 119
    .line 120
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 121
    .line 122
    const/16 v2, 0x1a4

    .line 123
    .line 124
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 125
    .line 126
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 133
    .line 134
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 135
    .line 136
    const/16 v2, 0x1ae

    .line 137
    .line 138
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 139
    .line 140
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 147
    .line 148
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 149
    .line 150
    const/16 v2, 0x1b0

    .line 151
    .line 152
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 153
    .line 154
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 161
    .line 162
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 163
    .line 164
    const/16 v2, 0x1b8

    .line 165
    .line 166
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 167
    .line 168
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 169
    .line 170
    .line 171
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 175
    .line 176
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 177
    .line 178
    const/16 v2, 0x1e0

    .line 179
    .line 180
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 181
    .line 182
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 183
    .line 184
    .line 185
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 189
    .line 190
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 191
    .line 192
    const/16 v2, 0x215

    .line 193
    .line 194
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 195
    .line 196
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 203
    .line 204
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 205
    .line 206
    const/16 v2, 0x250

    .line 207
    .line 208
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 209
    .line 210
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 217
    .line 218
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 219
    .line 220
    const/16 v2, 0x258

    .line 221
    .line 222
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 223
    .line 224
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 225
    .line 226
    .line 227
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 231
    .line 232
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 233
    .line 234
    const/16 v2, 0x280

    .line 235
    .line 236
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 237
    .line 238
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 239
    .line 240
    .line 241
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 245
    .line 246
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 247
    .line 248
    const/16 v2, 0x296

    .line 249
    .line 250
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 251
    .line 252
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 253
    .line 254
    .line 255
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 259
    .line 260
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 261
    .line 262
    const/16 v2, 0x2d0

    .line 263
    .line 264
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 265
    .line 266
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 267
    .line 268
    .line 269
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 273
    .line 274
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 275
    .line 276
    const/16 v2, 0x300

    .line 277
    .line 278
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 279
    .line 280
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 281
    .line 282
    .line 283
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 287
    .line 288
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 289
    .line 290
    const/16 v2, 0x320

    .line 291
    .line 292
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 293
    .line 294
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 295
    .line 296
    .line 297
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    sget-object v0, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 301
    .line 302
    new-instance v1, Lcom/join/android/app/common/utils/j$a;

    .line 303
    .line 304
    const/16 v2, 0x32b

    .line 305
    .line 306
    sget v3, Lcom/join/android/app/common/utils/j;->b:I

    .line 307
    .line 308
    invoke-direct {v1, v2, v3}, Lcom/join/android/app/common/utils/j$a;-><init>(II)V

    .line 309
    .line 310
    .line 311
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, "test"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/join/android/app/common/utils/j;->a:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/io/File;

    .line 2
    .line 3
    const-string v0, "."

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/io/File;

    .line 9
    .line 10
    const-string v1, "src/test/res/"

    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance p0, Lcom/join/android/app/common/utils/j;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/join/android/app/common/utils/j;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lcom/join/android/app/common/utils/j;->c(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/android/app/common/utils/j;->b()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private e(Ljava/io/File;Ljava/lang/StringBuffer;Lcom/join/android/app/common/utils/j$a;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lay",
            "sb",
            "dimens"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const-string v1, "\">"

    .line 4
    .line 5
    const-string v2, "\n"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    .line 9
    .line 10
    new-instance v5, Ljava/io/OutputStreamWriter;

    .line 11
    .line 12
    new-instance v6, Ljava/io/FileOutputStream;

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    move-object v8, p1

    .line 16
    invoke-direct {v6, p1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 17
    .line 18
    .line 19
    const-string v8, "UTF-8"

    .line 20
    .line 21
    invoke-direct {v5, v6, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    .line 26
    .line 27
    :try_start_1
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v3, "<resources>\n"

    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuffer;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .line 41
    .line 42
    :goto_0
    const/16 v5, 0x501

    .line 43
    .line 44
    if-ge v7, v5, :cond_1

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 48
    .line 49
    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v6, "    <dimen name=\"wdp"

    .line 56
    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    invoke-static/range {p3 .. p3}, Lcom/join/android/app/common/utils/j$a;->a(Lcom/join/android/app/common/utils/j$a;)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    int-to-double v5, v5

    .line 78
    invoke-static/range {p3 .. p3}, Lcom/join/android/app/common/utils/j$a;->b(Lcom/join/android/app/common/utils/j$a;)I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    int-to-double v8, v8

    .line 83
    div-double/2addr v5, v8

    .line 84
    int-to-double v8, v7

    .line 85
    mul-double v5, v5, v8

    .line 86
    .line 87
    new-instance v10, Ljava/math/BigDecimal;

    .line 88
    .line 89
    invoke-direct {v10, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    .line 90
    .line 91
    .line 92
    const/4 v5, 0x4

    .line 93
    const/4 v6, 0x2

    .line 94
    invoke-virtual {v10, v6, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    invoke-virtual {v10}, Ljava/math/BigDecimal;->doubleValue()D

    .line 99
    .line 100
    .line 101
    move-result-wide v10

    .line 102
    new-instance v12, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v10, "dp</dimen>\n"

    .line 111
    .line 112
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    invoke-virtual {v4, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const/4 v10, 0x5

    .line 130
    if-lt v7, v10, :cond_0

    .line 131
    .line 132
    const/16 v10, 0x32

    .line 133
    .line 134
    if-gt v7, v10, :cond_0

    .line 135
    .line 136
    new-instance v10, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v11, "    <dimen name=\"spx_"

    .line 142
    .line 143
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    .line 158
    .line 159
    invoke-static/range {p3 .. p3}, Lcom/join/android/app/common/utils/j$a;->a(Lcom/join/android/app/common/utils/j$a;)I

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    int-to-double v10, v10

    .line 164
    invoke-static/range {p3 .. p3}, Lcom/join/android/app/common/utils/j$a;->b(Lcom/join/android/app/common/utils/j$a;)I

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    int-to-double v12, v12

    .line 169
    div-double/2addr v10, v12

    .line 170
    mul-double v10, v10, v8

    .line 171
    .line 172
    new-instance v8, Ljava/math/BigDecimal;

    .line 173
    .line 174
    invoke-direct {v8, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8, v6, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    .line 182
    .line 183
    .line 184
    move-result-wide v5

    .line 185
    new-instance v8, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v5, "sp</dimen>\n"

    .line 194
    .line 195
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    .line 204
    .line 205
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_1
    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-string v0, "    /**********\u5b57\u4f53\u9002\u914d***************/\n"

    .line 213
    .line 214
    invoke-virtual {v4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const-string v0, "</resources>"

    .line 228
    .line 229
    invoke-virtual {v4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    .line 231
    .line 232
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :catchall_0
    move-exception v0

    .line 237
    move-object v1, v0

    .line 238
    move-object v3, v4

    .line 239
    goto :goto_3

    .line 240
    :catch_0
    move-exception v0

    .line 241
    move-object v3, v4

    .line 242
    goto :goto_1

    .line 243
    :catchall_1
    move-exception v0

    .line 244
    move-object v1, v0

    .line 245
    goto :goto_3

    .line 246
    :catch_1
    move-exception v0

    .line 247
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 248
    .line 249
    .line 250
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :catch_2
    move-exception v0

    .line 255
    move-object v1, v0

    .line 256
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 257
    .line 258
    .line 259
    :goto_2
    return-void

    .line 260
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 261
    .line 262
    .line 263
    goto :goto_4

    .line 264
    :catch_3
    move-exception v0

    .line 265
    move-object v2, v0

    .line 266
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    .line 268
    .line 269
    :goto_4
    throw v1
.end method


# virtual methods
.method public b()V
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/android/app/common/utils/j;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 12
    .line 13
    const-string v1, "path\u4e3a\u7a7a"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    sget-object v2, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ge v1, v2, :cond_2

    .line 32
    .line 33
    sget-object v2, Lcom/join/android/app/common/utils/j;->c:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/join/android/app/common/utils/j$a;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Lcom/join/android/app/common/utils/j;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v4, "values-sw"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Lcom/join/android/app/common/utils/j$a;->a(Lcom/join/android/app/common/utils/j$a;)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v4, "dp"

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 78
    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v6, "\u5199\u5165\u6587\u4ef6\uff1a"

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v6, "\n"

    .line 93
    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v4, Ljava/io/File;

    .line 105
    .line 106
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_1

    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 116
    .line 117
    .line 118
    :cond_1
    new-instance v3, Ljava/io/File;

    .line 119
    .line 120
    const-string v5, "dimen.xml"

    .line 121
    .line 122
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, v3, v0, v2}, Lcom/join/android/app/common/utils/j;->e(Ljava/io/File;Ljava/lang/StringBuffer;Lcom/join/android/app/common/utils/j$a;)V

    .line 129
    .line 130
    .line 131
    add-int/lit8 v1, v1, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_2
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/utils/j;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public d(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wBaseDp"
        }
    .end annotation

    .line 1
    sput p1, Lcom/join/android/app/common/utils/j;->b:I

    .line 2
    .line 3
    return-void
.end method
