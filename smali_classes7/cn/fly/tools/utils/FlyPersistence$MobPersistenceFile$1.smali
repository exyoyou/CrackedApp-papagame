.class Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/commons/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;


# direct methods
.method constructor <init>(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcn/fly/tools/utils/FileLocker;)Z
    .locals 4

    .line 1
    :try_start_0
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 2
    .line 3
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 10
    .line 11
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence;->a(Landroid/content/Context;)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 20
    .line 21
    new-instance v1, Ljava/io/File;

    .line 22
    .line 23
    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 24
    .line 25
    invoke-static {v2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Ljava/io/File;)Ljava/io/File;

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 36
    .line 37
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 52
    .line 53
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 65
    .line 66
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 77
    .line 78
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/File;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    const-wide/32 v2, 0xa800

    .line 87
    .line 88
    .line 89
    cmp-long p1, v0, v2

    .line 90
    .line 91
    if-gez p1, :cond_1

    .line 92
    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v0, "Del dirty, size: "

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 104
    .line 105
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/File;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, ", min: "

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 129
    .line 130
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 138
    .line 139
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/File;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 144
    .line 145
    .line 146
    :cond_1
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 147
    .line 148
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/File;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_2

    .line 157
    .line 158
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 159
    .line 160
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/File;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 168
    .line 169
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 170
    .line 171
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 172
    .line 173
    invoke-static {v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/File;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    const-string v2, "002Dbhde"

    .line 178
    .line 179
    invoke-static {v2}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 190
    .line 191
    const/16 v0, 0x400

    .line 192
    .line 193
    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 198
    .line 199
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 200
    .line 201
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 202
    .line 203
    invoke-static {v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->c(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/File;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    const-string v2, "002@bhde"

    .line 208
    .line 209
    invoke-static {v2}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 220
    .line 221
    invoke-static {p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->d(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Z

    .line 222
    .line 223
    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v0, "ava sz "

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 235
    .line 236
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/util/LinkedList;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v0, " useds "

    .line 248
    .line 249
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 253
    .line 254
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->f(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/util/HashMap;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 270
    .line 271
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$MpfBrokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    .line 277
    .line 278
    goto :goto_0

    .line 279
    :catch_0
    move-exception p1

    .line 280
    :try_start_2
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 281
    .line 282
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    .line 288
    .line 289
    :try_start_3
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 290
    .line 291
    invoke-static {v0, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 292
    .line 293
    .line 294
    goto :goto_0

    .line 295
    :catchall_0
    move-exception p1

    .line 296
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$1;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 297
    .line 298
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :catchall_1
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 306
    return p1
.end method
