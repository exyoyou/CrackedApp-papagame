.class public Lcom/xinzhu/overmind/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Lcom/xinzhu/overmind/utils/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/utils/a;->b:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, v1, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v2, "armeabi"

    .line 18
    .line 19
    const-string v3, "armeabi-v7a"

    .line 20
    .line 21
    const-string v4, "lib/armeabi"

    .line 22
    .line 23
    const-string v5, "arm64-v8a"

    .line 24
    .line 25
    const-string v6, "lib/armeabi-v7a"

    .line 26
    .line 27
    const-string v7, "lib/arm64-v8a"

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x1

    .line 31
    const/4 v10, 0x0

    .line 32
    if-eqz v0, :cond_5

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-object v11, v0

    .line 42
    check-cast v11, [Ljava/io/File;

    .line 43
    .line 44
    array-length v12, v11

    .line 45
    const/4 v13, 0x0

    .line 46
    :goto_0
    if-ge v13, v12, :cond_a

    .line 47
    .line 48
    aget-object v0, v11, v13

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v14

    .line 54
    const-string v15, ".apk"

    .line 55
    .line 56
    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v14

    .line 60
    if-eqz v14, :cond_4

    .line 61
    .line 62
    :try_start_0
    new-instance v14, Ljava/util/zip/ZipFile;

    .line 63
    .line 64
    invoke-direct {v14, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    :try_start_1
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 72
    .line 73
    .line 74
    move-result v15

    .line 75
    if-eqz v15, :cond_3

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v15

    .line 81
    check-cast v15, Ljava/util/zip/ZipEntry;

    .line 82
    .line 83
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v16

    .line 91
    if-eqz v16, :cond_1

    .line 92
    .line 93
    iget-object v15, v1, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    .line 94
    .line 95
    invoke-virtual {v15, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {v15, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v16

    .line 103
    if-eqz v16, :cond_2

    .line 104
    .line 105
    iget-object v15, v1, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    .line 106
    .line 107
    invoke-virtual {v15, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    if-eqz v15, :cond_0

    .line 116
    .line 117
    iget-object v15, v1, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    .line 118
    .line 119
    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    new-array v0, v9, [Ljava/io/Closeable;

    .line 124
    .line 125
    aput-object v14, v0, v10

    .line 126
    .line 127
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :catch_0
    move-exception v0

    .line 132
    goto :goto_2

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    goto :goto_3

    .line 135
    :catch_1
    move-exception v0

    .line 136
    move-object v14, v8

    .line 137
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    .line 139
    .line 140
    new-array v0, v9, [Ljava/io/Closeable;

    .line 141
    .line 142
    aput-object v14, v0, v10

    .line 143
    .line 144
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :catchall_1
    move-exception v0

    .line 149
    move-object v8, v14

    .line 150
    :goto_3
    new-array v2, v9, [Ljava/io/Closeable;

    .line 151
    .line 152
    aput-object v8, v2, v10

    .line 153
    .line 154
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_4
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_5
    :try_start_3
    new-instance v11, Ljava/util/zip/ZipFile;

    .line 162
    .line 163
    move-object/from16 v0, p1

    .line 164
    .line 165
    invoke-direct {v11, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 166
    .line 167
    .line 168
    :try_start_4
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    :cond_6
    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-eqz v8, :cond_9

    .line 177
    .line 178
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 183
    .line 184
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v12

    .line 192
    if-eqz v12, :cond_7

    .line 193
    .line 194
    iget-object v8, v1, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    .line 195
    .line 196
    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_7
    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v12

    .line 204
    if-eqz v12, :cond_8

    .line 205
    .line 206
    iget-object v8, v1, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    .line 207
    .line 208
    invoke-virtual {v8, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_8
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    if-eqz v8, :cond_6

    .line 217
    .line 218
    iget-object v8, v1, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    .line 219
    .line 220
    invoke-virtual {v8, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_9
    new-array v0, v9, [Ljava/io/Closeable;

    .line 225
    .line 226
    aput-object v11, v0, v10

    .line 227
    .line 228
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 229
    .line 230
    .line 231
    goto :goto_7

    .line 232
    :catchall_2
    move-exception v0

    .line 233
    move-object v8, v11

    .line 234
    goto :goto_8

    .line 235
    :catch_2
    move-exception v0

    .line 236
    move-object v8, v11

    .line 237
    goto :goto_6

    .line 238
    :catchall_3
    move-exception v0

    .line 239
    goto :goto_8

    .line 240
    :catch_3
    move-exception v0

    .line 241
    :goto_6
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 242
    .line 243
    .line 244
    new-array v0, v9, [Ljava/io/Closeable;

    .line 245
    .line 246
    aput-object v8, v0, v10

    .line 247
    .line 248
    invoke-static {v0}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 249
    .line 250
    .line 251
    :cond_a
    :goto_7
    return-void

    .line 252
    :goto_8
    new-array v2, v9, [Ljava/io/Closeable;

    .line 253
    .line 254
    aput-object v8, v2, v10

    .line 255
    .line 256
    invoke-static {v2}, Lcom/xinzhu/overmind/utils/p;->a([Ljava/io/Closeable;)V

    .line 257
    .line 258
    .line 259
    throw v0
.end method

.method public static a(Ljava/io/File;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/utils/a;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/xinzhu/overmind/utils/a;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/xinzhu/overmind/utils/a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/utils/a;-><init>(Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/xinzhu/overmind/utils/a;->b:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p0, v0, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    .line 22
    .line 23
    return-object p0
.end method

.method public static e(Ljava/io/File;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/utils/a;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/xinzhu/overmind/utils/a;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/xinzhu/overmind/utils/a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/utils/a;-><init>(Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/xinzhu/overmind/utils/a;->b:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/xinzhu/overmind/utils/a;->d()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 v1, 0x1

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->isPluginPkgInstalled()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->is64Bit()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/xinzhu/overmind/utils/a;->c()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :cond_3
    invoke-virtual {v0}, Lcom/xinzhu/overmind/utils/a;->b()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0
.end method


# virtual methods
.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v1, "armeabi"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    .line 12
    .line 13
    const-string v1, "armeabi-v7a"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v1, "arm64-v8a"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/a;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
