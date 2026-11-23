.class public Lcom/googlecode/mp4parser/authoring/tracks/h265/a;
.super Lcom/googlecode/mp4parser/authoring/tracks/c;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/tracks/h265/c;


# instance fields
.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation
.end field

.field p:Lcom/coremedia/iso/boxes/s0;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/e;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/c;-><init>(Lcom/googlecode/mp4parser/e;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->l:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->m:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->n:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->o:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcom/googlecode/mp4parser/authoring/tracks/c$a;

    .line 38
    .line 39
    invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/authoring/tracks/c$a;-><init>(Lcom/googlecode/mp4parser/e;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    new-array v2, p1, [Z

    .line 44
    .line 45
    new-array v3, p1, [Z

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    aput-boolean p1, v3, v4

    .line 49
    .line 50
    :goto_0
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/c;->c(Lcom/googlecode/mp4parser/authoring/tracks/c$a;)Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    if-nez v5, :cond_0

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->e()Lcom/coremedia/iso/boxes/s0;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->p:Lcom/coremedia/iso/boxes/s0;

    .line 61
    .line 62
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->o:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    new-array p1, p1, [J

    .line 69
    .line 70
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/c;->f:[J

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/c;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-wide/16 v0, 0x19

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Lcom/googlecode/mp4parser/authoring/i;->t(J)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/c;->f:[J

    .line 82
    .line 83
    const-wide/16 v0, 0x1

    .line 84
    .line 85
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0, v5}, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->f(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/authoring/tracks/h265/b;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    aget-boolean v7, v2, v4

    .line 94
    .line 95
    const/4 v8, 0x2

    .line 96
    if-eqz v7, :cond_2

    .line 97
    .line 98
    invoke-virtual {p0, v6}, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->g(Lcom/googlecode/mp4parser/authoring/tracks/h265/b;)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_1

    .line 103
    .line 104
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    and-int/lit8 v7, v7, -0x80

    .line 109
    .line 110
    if-eqz v7, :cond_2

    .line 111
    .line 112
    invoke-virtual {p0, v0, v2, v3}, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->i(Ljava/util/List;[Z[Z)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    iget v7, v6, Lcom/googlecode/mp4parser/authoring/tracks/h265/b;->b:I

    .line 117
    .line 118
    packed-switch v7, :pswitch_data_0

    .line 119
    .line 120
    .line 121
    :pswitch_0
    goto :goto_1

    .line 122
    :pswitch_1
    invoke-virtual {p0, v0, v2, v3}, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->i(Ljava/util/List;[Z[Z)V

    .line 123
    .line 124
    .line 125
    :cond_2
    :goto_1
    iget v7, v6, Lcom/googlecode/mp4parser/authoring/tracks/h265/b;->b:I

    .line 126
    .line 127
    const/16 v9, 0x27

    .line 128
    .line 129
    if-eq v7, v9, :cond_3

    .line 130
    .line 131
    packed-switch v7, :pswitch_data_1

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :pswitch_2
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    .line 137
    .line 138
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->m:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 148
    .line 149
    const-string v8, "Stored PPS"

    .line 150
    .line 151
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :pswitch_3
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    .line 157
    .line 158
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->l:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    .line 169
    .line 170
    new-instance v7, Lcom/googlecode/mp4parser/authoring/tracks/h265/f;

    .line 171
    .line 172
    new-instance v8, Lcom/googlecode/mp4parser/util/b;

    .line 173
    .line 174
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-direct {v8, v9}, Lcom/googlecode/mp4parser/util/b;-><init>(Ljava/nio/ByteBuffer;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v8}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-direct {v7, v8}, Lcom/googlecode/mp4parser/authoring/tracks/h265/f;-><init>(Ljava/io/InputStream;)V

    .line 186
    .line 187
    .line 188
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 189
    .line 190
    const-string v8, "Stored SPS"

    .line 191
    .line 192
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :pswitch_4
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 197
    .line 198
    .line 199
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->n:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 209
    .line 210
    const-string v8, "Stored VPS"

    .line 211
    .line 212
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_3
    new-instance v7, Lcom/googlecode/mp4parser/authoring/tracks/h265/e;

    .line 217
    .line 218
    new-instance v8, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;

    .line 219
    .line 220
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    invoke-direct {v8, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;-><init>(Ljava/nio/ByteBuffer;)V

    .line 225
    .line 226
    .line 227
    invoke-direct {v7, v8}, Lcom/googlecode/mp4parser/authoring/tracks/h265/e;-><init>(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;)V

    .line 228
    .line 229
    .line 230
    :goto_2
    iget v7, v6, Lcom/googlecode/mp4parser/authoring/tracks/h265/b;->b:I

    .line 231
    .line 232
    packed-switch v7, :pswitch_data_2

    .line 233
    .line 234
    .line 235
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 236
    .line 237
    new-instance v8, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string v9, "Adding "

    .line 240
    .line 241
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget v9, v6, Lcom/googlecode/mp4parser/authoring/tracks/h265/b;->b:I

    .line 245
    .line 246
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    :pswitch_5
    invoke-virtual {p0, v6}, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->g(Lcom/googlecode/mp4parser/authoring/tracks/h265/b;)Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-eqz v5, :cond_5

    .line 264
    .line 265
    iget v5, v6, Lcom/googlecode/mp4parser/authoring/tracks/h265/b;->b:I

    .line 266
    .line 267
    const/16 v7, 0x13

    .line 268
    .line 269
    if-eq v5, v7, :cond_4

    .line 270
    .line 271
    const/16 v7, 0x14

    .line 272
    .line 273
    if-eq v5, v7, :cond_4

    .line 274
    .line 275
    aput-boolean v4, v3, v4

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_4
    aget-boolean v5, v3, v4

    .line 279
    .line 280
    and-int/2addr v5, p1

    .line 281
    aput-boolean v5, v3, v4

    .line 282
    .line 283
    :cond_5
    :goto_3
    aget-boolean v5, v2, v4

    .line 284
    .line 285
    invoke-virtual {p0, v6}, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->g(Lcom/googlecode/mp4parser/authoring/tracks/h265/b;)Z

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    or-int/2addr v5, v6

    .line 290
    aput-boolean v5, v2, v4

    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    nop

    .line 295
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private e()Lcom/coremedia/iso/boxes/s0;
    .locals 9

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/s0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/s0;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->p:Lcom/coremedia/iso/boxes/s0;

    .line 7
    .line 8
    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/h;

    .line 9
    .line 10
    const-string v1, "hvc1"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/h;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/a;->j(I)V

    .line 17
    .line 18
    .line 19
    const/16 v2, 0x18

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/h;->O(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/h;->P(I)V

    .line 25
    .line 26
    .line 27
    const-wide/high16 v2, 0x4052000000000000L    # 72.0

    .line 28
    .line 29
    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/h;->R(D)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/h;->c0(D)V

    .line 33
    .line 34
    .line 35
    const/16 v2, 0x280

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/h;->d0(I)V

    .line 38
    .line 39
    .line 40
    const/16 v2, 0x1e0

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/h;->Q(I)V

    .line 43
    .line 44
    .line 45
    const-string v2, "HEVC Coding"

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/h;->M(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lcom/mp4parser/iso14496/part15/c;

    .line 51
    .line 52
    invoke-direct {v2}, Lcom/mp4parser/iso14496/part15/c;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v3, Lcom/mp4parser/iso14496/part15/d$a;

    .line 56
    .line 57
    invoke-direct {v3}, Lcom/mp4parser/iso14496/part15/d$a;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-boolean v1, v3, Lcom/mp4parser/iso14496/part15/d$a;->a:Z

    .line 61
    .line 62
    const/16 v4, 0x21

    .line 63
    .line 64
    iput v4, v3, Lcom/mp4parser/iso14496/part15/d$a;->c:I

    .line 65
    .line 66
    new-instance v4, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v4, v3, Lcom/mp4parser/iso14496/part15/d$a;->d:Ljava/util/List;

    .line 72
    .line 73
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->l:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-nez v5, :cond_2

    .line 84
    .line 85
    new-instance v5, Lcom/mp4parser/iso14496/part15/d$a;

    .line 86
    .line 87
    invoke-direct {v5}, Lcom/mp4parser/iso14496/part15/d$a;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-boolean v1, v5, Lcom/mp4parser/iso14496/part15/d$a;->a:Z

    .line 91
    .line 92
    const/16 v6, 0x22

    .line 93
    .line 94
    iput v6, v5, Lcom/mp4parser/iso14496/part15/d$a;->c:I

    .line 95
    .line 96
    new-instance v4, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v4, v5, Lcom/mp4parser/iso14496/part15/d$a;->d:Ljava/util/List;

    .line 102
    .line 103
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->m:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-nez v4, :cond_1

    .line 114
    .line 115
    new-instance v4, Lcom/mp4parser/iso14496/part15/d$a;

    .line 116
    .line 117
    invoke-direct {v4}, Lcom/mp4parser/iso14496/part15/d$a;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-boolean v1, v4, Lcom/mp4parser/iso14496/part15/d$a;->a:Z

    .line 121
    .line 122
    iput v6, v4, Lcom/mp4parser/iso14496/part15/d$a;->c:I

    .line 123
    .line 124
    new-instance v6, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v6, v4, Lcom/mp4parser/iso14496/part15/d$a;->d:Ljava/util/List;

    .line 130
    .line 131
    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->n:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-nez v6, :cond_0

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/mp4parser/iso14496/part15/c;->t()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    const/4 v7, 0x3

    .line 148
    new-array v7, v7, [Lcom/mp4parser/iso14496/part15/d$a;

    .line 149
    .line 150
    const/4 v8, 0x0

    .line 151
    aput-object v3, v7, v8

    .line 152
    .line 153
    aput-object v4, v7, v1

    .line 154
    .line 155
    const/4 v1, 0x2

    .line 156
    aput-object v5, v7, v1

    .line 157
    .line 158
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->p:Lcom/coremedia/iso/boxes/s0;

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->p:Lcom/coremedia/iso/boxes/s0;

    .line 174
    .line 175
    return-object v0

    .line 176
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    check-cast v6, Ljava/nio/ByteBuffer;

    .line 181
    .line 182
    iget-object v7, v4, Lcom/mp4parser/iso14496/part15/d$a;->d:Ljava/util/List;

    .line 183
    .line 184
    invoke-static {v6}, Lcom/googlecode/mp4parser/authoring/tracks/c;->d(Ljava/nio/ByteBuffer;)[B

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 197
    .line 198
    iget-object v8, v5, Lcom/mp4parser/iso14496/part15/d$a;->d:Ljava/util/List;

    .line 199
    .line 200
    invoke-static {v4}, Lcom/googlecode/mp4parser/authoring/tracks/c;->d(Ljava/nio/ByteBuffer;)[B

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 213
    .line 214
    iget-object v6, v3, Lcom/mp4parser/iso14496/part15/d$a;->d:Ljava/util/List;

    .line 215
    .line 216
    invoke-static {v5}, Lcom/googlecode/mp4parser/authoring/tracks/c;->d(Ljava/nio/ByteBuffer;)[B

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    goto/16 :goto_0
.end method

.method public static h([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;

    .line 2
    .line 3
    new-instance v0, Lcom/googlecode/mp4parser/g;

    .line 4
    .line 5
    const-string v1, "c:\\content\\test-UHD-HEVC_01_FMV_Med_track1.hvc"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/g;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;-><init>(Lcom/googlecode/mp4parser/e;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/googlecode/mp4parser/authoring/d;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/d;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/googlecode/mp4parser/authoring/d;->a(Lcom/googlecode/mp4parser/authoring/h;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lcom/googlecode/mp4parser/authoring/builder/b;

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/builder/b;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/authoring/builder/b;->a(Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/j;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance v0, Ljava/io/FileOutputStream;

    .line 31
    .line 32
    const-string v1, "output.mp4"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {p0, v0}, Lcom/coremedia/iso/boxes/j;->h(Ljava/nio/channels/WritableByteChannel;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public F()Lcom/coremedia/iso/boxes/s0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public U()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->o:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public f(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/authoring/tracks/h265/b;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/h265/b;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/tracks/h265/b;-><init>()V

    .line 12
    .line 13
    .line 14
    const v1, 0x8000

    .line 15
    .line 16
    .line 17
    and-int/2addr v1, p1

    .line 18
    shr-int/lit8 v1, v1, 0xf

    .line 19
    .line 20
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/h265/b;->a:I

    .line 21
    .line 22
    and-int/lit16 v1, p1, 0x7e00

    .line 23
    .line 24
    shr-int/lit8 v1, v1, 0x9

    .line 25
    .line 26
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/h265/b;->b:I

    .line 27
    .line 28
    and-int/lit16 v1, p1, 0x1f8

    .line 29
    .line 30
    shr-int/lit8 v1, v1, 0x3

    .line 31
    .line 32
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/h265/b;->c:I

    .line 33
    .line 34
    and-int/lit8 p1, p1, 0x7

    .line 35
    .line 36
    iput p1, v0, Lcom/googlecode/mp4parser/authoring/tracks/h265/b;->d:I

    .line 37
    .line 38
    return-object v0
.end method

.method g(Lcom/googlecode/mp4parser/authoring/tracks/h265/b;)Z
    .locals 1

    .line 1
    iget p1, p1, Lcom/googlecode/mp4parser/authoring/tracks/h265/b;->b:I

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x1f

    .line 6
    .line 7
    if-gt p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string v0, "vide"

    return-object v0
.end method

.method public i(Ljava/util/List;[Z[Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;[Z[Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/a;->o:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/c;->b(Ljava/util/List;)Lcom/googlecode/mp4parser/authoring/f;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "Create AU from "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " NALs"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    aget-boolean v1, p3, v0

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 44
    .line 45
    const-string v2, "  IDR"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 54
    .line 55
    .line 56
    :goto_0
    aput-boolean v0, p2, v0

    .line 57
    .line 58
    const/4 p2, 0x1

    .line 59
    aput-boolean p2, p3, v0

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
