.class Lcom/join/android/app/component/album/lib/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/lib/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/component/album/lib/b;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/lib/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/b$b;->b:Lcom/join/android/app/component/album/lib/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/join/android/app/component/album/lib/b$b;->b:Lcom/join/android/app/component/album/lib/b;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/join/android/app/component/album/lib/b;->d(Lcom/join/android/app/component/album/lib/b;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 27
    .line 28
    .line 29
    new-instance v8, Lcom/join/android/app/component/album/lib/a;

    .line 30
    .line 31
    invoke-direct {v8}, Lcom/join/android/app/component/album/lib/a;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "All"

    .line 35
    .line 36
    invoke-virtual {v8, v4}, Lcom/join/android/app/component/album/lib/a;->j(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v4, ""

    .line 40
    .line 41
    invoke-virtual {v8, v4}, Lcom/join/android/app/component/album/lib/a;->k(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v9, 0x1

    .line 45
    invoke-virtual {v8, v9}, Lcom/join/android/app/component/album/lib/a;->i(I)V

    .line 46
    .line 47
    .line 48
    const-string v4, "\u5168\u90e8"

    .line 49
    .line 50
    invoke-virtual {v8, v4}, Lcom/join/android/app/component/album/lib/a;->l(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v8, v1}, Lcom/join/android/app/component/album/lib/a;->g(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    const-string v4, "ALL"

    .line 57
    .line 58
    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const-string v10, "_data"

    .line 62
    .line 63
    const-string v11, "bucket_display_name"

    .line 64
    .line 65
    filled-new-array {v10, v11}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const-string v7, "datetaken DESC "

    .line 70
    .line 71
    const-string v5, "mime_type=? or mime_type=?"

    .line 72
    .line 73
    const-string v6, "image/jpeg"

    .line 74
    .line 75
    const-string v12, "image/png"

    .line 76
    .line 77
    filled-new-array {v6, v12}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-nez v2, :cond_0

    .line 86
    .line 87
    return-void

    .line 88
    :cond_0
    const/4 v3, 0x0

    .line 89
    move-object v4, v3

    .line 90
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_7

    .line 95
    .line 96
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    if-nez v4, :cond_1

    .line 113
    .line 114
    move-object v4, v5

    .line 115
    :cond_1
    new-instance v7, Ljava/io/File;

    .line 116
    .line 117
    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    if-nez v7, :cond_2

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    if-eqz v12, :cond_3

    .line 139
    .line 140
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    check-cast v6, Lcom/join/android/app/component/album/lib/a;

    .line 145
    .line 146
    invoke-virtual {v6}, Lcom/join/android/app/component/album/lib/a;->a()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    check-cast v5, Lcom/join/android/app/component/album/lib/a;

    .line 158
    .line 159
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    check-cast v6, Lcom/join/android/app/component/album/lib/a;

    .line 164
    .line 165
    invoke-virtual {v6}, Lcom/join/android/app/component/album/lib/a;->a()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    invoke-virtual {v5, v6}, Lcom/join/android/app/component/album/lib/a;->i(I)V

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v12

    .line 185
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    if-eqz v13, :cond_5

    .line 190
    .line 191
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v13

    .line 195
    check-cast v13, Lcom/join/android/app/component/album/lib/a;

    .line 196
    .line 197
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v14

    .line 201
    if-nez v14, :cond_4

    .line 202
    .line 203
    invoke-virtual {v13}, Lcom/join/android/app/component/album/lib/a;->b()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v14

    .line 211
    if-eqz v14, :cond_4

    .line 212
    .line 213
    invoke-virtual {v13}, Lcom/join/android/app/component/album/lib/a;->a()Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v12

    .line 217
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    invoke-virtual {v13}, Lcom/join/android/app/component/album/lib/a;->a()Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 225
    .line 226
    .line 227
    move-result v12

    .line 228
    invoke-virtual {v13, v12}, Lcom/join/android/app/component/album/lib/a;->i(I)V

    .line 229
    .line 230
    .line 231
    const/4 v12, 0x0

    .line 232
    goto :goto_1

    .line 233
    :cond_5
    const/4 v12, 0x1

    .line 234
    :goto_1
    if-eqz v12, :cond_6

    .line 235
    .line 236
    new-instance v12, Lcom/join/android/app/component/album/lib/a;

    .line 237
    .line 238
    invoke-direct {v12}, Lcom/join/android/app/component/album/lib/a;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v12, v7}, Lcom/join/android/app/component/album/lib/a;->j(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v12, v5}, Lcom/join/android/app/component/album/lib/a;->k(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    new-instance v13, Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v12, v13}, Lcom/join/android/app/component/album/lib/a;->g(Ljava/util/List;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v12}, Lcom/join/android/app/component/album/lib/a;->a()Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v13

    .line 259
    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    invoke-virtual {v12, v9}, Lcom/join/android/app/component/album/lib/a;->i(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v12, v6}, Lcom/join/android/app/component/album/lib/a;->h(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-interface {v0, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_6
    move-object v12, v3

    .line 273
    :goto_2
    iget-object v5, p0, Lcom/join/android/app/component/album/lib/b$b;->b:Lcom/join/android/app/component/album/lib/b;

    .line 274
    .line 275
    invoke-static {v5}, Lcom/join/android/app/component/album/lib/b;->e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    const/16 v6, 0x8

    .line 284
    .line 285
    iput v6, v5, Landroid/os/Message;->what:I

    .line 286
    .line 287
    iput-object v12, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 288
    .line 289
    iget-object v6, p0, Lcom/join/android/app/component/album/lib/b$b;->b:Lcom/join/android/app/component/album/lib/b;

    .line 290
    .line 291
    invoke-static {v6}, Lcom/join/android/app/component/album/lib/b;->e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 296
    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v8}, Lcom/join/android/app/component/album/lib/a;->a()Ljava/util/List;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    invoke-virtual {v8, v1}, Lcom/join/android/app/component/album/lib/a;->i(I)V

    .line 312
    .line 313
    .line 314
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/b$b;->b:Lcom/join/android/app/component/album/lib/b;

    .line 315
    .line 316
    invoke-static {v1}, Lcom/join/android/app/component/album/lib/b;->e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    const/4 v2, 0x4

    .line 325
    iput v2, v1, Landroid/os/Message;->what:I

    .line 326
    .line 327
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 328
    .line 329
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$b;->b:Lcom/join/android/app/component/album/lib/b;

    .line 330
    .line 331
    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    .line 337
    .line 338
    return-void
.end method
