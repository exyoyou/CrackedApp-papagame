.class Lcom/mob/tools/utils/BitmapHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tools/network/HttpResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/utils/BitmapHelper$1;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mob/tools/utils/BitmapHelper$1;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mob/tools/utils/BitmapHelper$1;->c:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onResponse(Lcn/fly/tools/network/HttpConnection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcn/fly/tools/network/HttpConnection;->getResponseCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xc8

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    if-ne v0, v1, :cond_6

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mob/tools/utils/BitmapHelper$1;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/mob/tools/utils/BitmapHelper;->a(Lcn/fly/tools/network/HttpConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/io/File;

    .line 19
    .line 20
    iget-object v5, p0, Lcom/mob/tools/utils/BitmapHelper$1;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v1, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 49
    .line 50
    .line 51
    :cond_1
    :try_start_0
    new-instance v5, Lcom/mob/tools/utils/BitmapHelper$1$1;

    .line 52
    .line 53
    invoke-interface {p1}, Lcn/fly/tools/network/HttpConnection;->getInputStream()Ljava/io/InputStream;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v5, p0, p1}, Lcom/mob/tools/utils/BitmapHelper$1$1;-><init>(Lcom/mob/tools/utils/BitmapHelper$1;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 58
    .line 59
    .line 60
    :try_start_1
    invoke-static {v5, v4}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    .line 61
    .line 62
    .line 63
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_4

    .line 71
    .line 72
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    .line 73
    .line 74
    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    .line 76
    .line 77
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v6, ".gif"

    .line 82
    .line 83
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_3

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v3, ".png"

    .line 94
    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 103
    .line 104
    const/16 v3, 0x50

    .line 105
    .line 106
    invoke-virtual {p1, v0, v3, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 111
    .line 112
    const/16 v3, 0x64

    .line 113
    .line 114
    invoke-virtual {p1, v0, v3, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 115
    .line 116
    .line 117
    :goto_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/mob/tools/utils/BitmapHelper$1;->c:Ljava/util/HashMap;

    .line 121
    .line 122
    const-string v0, "bitmap"

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    .line 130
    .line 131
    new-array p1, v4, [Ljava/io/Closeable;

    .line 132
    .line 133
    aput-object v5, p1, v2

    .line 134
    .line 135
    invoke-static {p1}, Lcom/mob/commons/a;->a([Ljava/io/Closeable;)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :catchall_0
    move-exception p1

    .line 140
    move-object v3, v5

    .line 141
    goto :goto_2

    .line 142
    :catchall_1
    move-exception p1

    .line 143
    :goto_2
    new-array v0, v4, [Ljava/io/Closeable;

    .line 144
    .line 145
    aput-object v3, v0, v2

    .line 146
    .line 147
    invoke-static {v0}, Lcom/mob/commons/a;->a([Ljava/io/Closeable;)V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :cond_4
    :goto_3
    return-void

    .line 152
    :catchall_2
    move-exception p1

    .line 153
    move-object v3, v5

    .line 154
    goto :goto_4

    .line 155
    :catchall_3
    move-exception p1

    .line 156
    :goto_4
    new-array v0, v4, [Ljava/io/Closeable;

    .line 157
    .line 158
    aput-object v3, v0, v2

    .line 159
    .line 160
    invoke-static {v0}, Lcom/mob/commons/a;->a([Ljava/io/Closeable;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_5

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 170
    .line 171
    .line 172
    :cond_5
    throw p1

    .line 173
    :cond_6
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    new-instance v5, Ljava/io/InputStreamReader;

    .line 179
    .line 180
    invoke-interface {p1}, Lcn/fly/tools/network/HttpConnection;->getErrorStream()Ljava/io/InputStream;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    const-string v6, "utf-8"

    .line 185
    .line 186
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-direct {v5, p1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 191
    .line 192
    .line 193
    :try_start_5
    new-instance p1, Ljava/io/BufferedReader;

    .line 194
    .line 195
    invoke-direct {p1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 196
    .line 197
    .line 198
    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    :goto_5
    if-eqz v3, :cond_8

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-lez v6, :cond_7

    .line 209
    .line 210
    const/16 v6, 0xa

    .line 211
    .line 212
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    goto :goto_5

    .line 223
    :cond_8
    new-instance v3, Ljava/util/HashMap;

    .line 224
    .line 225
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 226
    .line 227
    .line 228
    const-string v6, "error"

    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    const-string v1, "status"

    .line 238
    .line 239
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    new-instance v0, Ljava/lang/Throwable;

    .line 247
    .line 248
    invoke-static {v3}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 256
    :catchall_4
    move-exception v0

    .line 257
    move-object v3, p1

    .line 258
    goto :goto_6

    .line 259
    :catchall_5
    move-exception v0

    .line 260
    goto :goto_6

    .line 261
    :catchall_6
    move-exception v0

    .line 262
    move-object v5, v3

    .line 263
    :goto_6
    const/4 p1, 0x2

    .line 264
    new-array p1, p1, [Ljava/io/Closeable;

    .line 265
    .line 266
    aput-object v3, p1, v2

    .line 267
    .line 268
    aput-object v5, p1, v4

    .line 269
    .line 270
    invoke-static {p1}, Lcom/mob/commons/a;->a([Ljava/io/Closeable;)V

    .line 271
    .line 272
    .line 273
    throw v0
.end method
