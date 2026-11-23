.class public Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$a;,
        Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$b;,
        Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$PARSE_STATE;
    }
.end annotation


# static fields
.field private static final A:I = 0x4

.field private static final B:I = 0x5

.field private static final C:I = 0x6

.field private static final D:I = 0x7

.field private static final E:I = 0x8

.field private static final F:I = 0x9

.field private static final G:I = 0x10

.field private static final H:I = 0x11

.field private static final I:I = 0x12

.field private static final J:I = 0x13

.field private static final K:I = 0x14

.field private static final L:I = 0x15

.field private static final M:J = 0x100000L

.field public static final f:I = 0x20

.field public static final g:I = 0x21

.field public static final h:I = 0x22

.field public static final i:I = 0x23

.field public static final j:I = 0x27

.field public static final k:I = 0x29

.field public static final l:I = 0x2a

.field public static final m:I = 0x2b

.field public static final n:I = 0x2c

.field public static final o:I = 0x30

.field public static final p:I = 0x31

.field public static final q:I = 0x32

.field public static final r:I = 0x33

.field public static final s:I = 0x34

.field public static final t:I = 0x35

.field public static final u:I = 0x36

.field public static final v:I = 0x37

.field private static final w:I = 0x0

.field private static final x:I = 0x1

.field private static final y:I = 0x2

.field private static final z:I = 0x3


# instance fields
.field a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/e;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->a:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->b:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->c:Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->d:Ljava/util/List;

    .line 33
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->e:Ljava/util/List;

    .line 40
    .line 41
    new-instance v1, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$a;

    .line 42
    .line 43
    move-object/from16 v2, p1

    .line 44
    .line 45
    invoke-direct {v1, v0, v2}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$a;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;Lcom/googlecode/mp4parser/e;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    const-wide/16 v3, 0x1

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    move-wide v6, v3

    .line 57
    const/4 v8, 0x0

    .line 58
    :cond_0
    :goto_0
    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->b(Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$a;)Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    if-nez v9, :cond_1

    .line 63
    .line 64
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 65
    .line 66
    const-string v2, ""

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lcom/mp4parser/iso14496/part15/d;

    .line 72
    .line 73
    invoke-direct {v1}, Lcom/mp4parser/iso14496/part15/d;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-direct/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->c()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Lcom/mp4parser/iso14496/part15/d;->y(Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v5}, Lcom/mp4parser/iso14496/part15/d;->z(I)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    invoke-virtual {v0, v9}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->e(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$b;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    iget v11, v10, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$b;->b:I

    .line 92
    .line 93
    packed-switch v11, :pswitch_data_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :pswitch_0
    iget-object v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->c:Ljava/util/LinkedHashMap;

    .line 98
    .line 99
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    invoke-virtual {v11, v12, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :pswitch_1
    iget-object v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->b:Ljava/util/LinkedHashMap;

    .line 108
    .line 109
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    invoke-virtual {v11, v12, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :pswitch_2
    iget-object v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->a:Ljava/util/LinkedHashMap;

    .line 118
    .line 119
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    invoke-virtual {v11, v12, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :goto_1
    iget v10, v10, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$b;->b:I

    .line 127
    .line 128
    const/16 v11, 0x20

    .line 129
    .line 130
    if-ge v10, v11, :cond_2

    .line 131
    .line 132
    move v8, v10

    .line 133
    :cond_2
    invoke-virtual {v0, v10, v9, v2}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->g(ILjava/nio/ByteBuffer;Ljava/util/List;)Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-eqz v10, :cond_4

    .line 138
    .line 139
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    if-nez v10, :cond_4

    .line 144
    .line 145
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 146
    .line 147
    const-string v11, "##########################"

    .line 148
    .line 149
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v11

    .line 160
    if-nez v11, :cond_3

    .line 161
    .line 162
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 163
    .line 164
    const-string v11, "                          ##########################"

    .line 165
    .line 166
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v10, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->e:Ljava/util/List;

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->a(Ljava/util/List;)Lcom/googlecode/mp4parser/authoring/f;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 179
    .line 180
    .line 181
    add-long/2addr v6, v3

    .line 182
    goto :goto_3

    .line 183
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v11

    .line 187
    check-cast v11, Ljava/nio/ByteBuffer;

    .line 188
    .line 189
    invoke-virtual {v0, v11}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->e(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$b;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 194
    .line 195
    const/4 v14, 0x4

    .line 196
    new-array v14, v14, [Ljava/lang/Object;

    .line 197
    .line 198
    iget v15, v12, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$b;->b:I

    .line 199
    .line 200
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v15

    .line 204
    aput-object v15, v14, v5

    .line 205
    .line 206
    iget v15, v12, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$b;->c:I

    .line 207
    .line 208
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v15

    .line 212
    const/16 v16, 0x1

    .line 213
    .line 214
    aput-object v15, v14, v16

    .line 215
    .line 216
    iget v12, v12, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$b;->d:I

    .line 217
    .line 218
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    const/4 v15, 0x2

    .line 223
    aput-object v12, v14, v15

    .line 224
    .line 225
    invoke-virtual {v11}, Ljava/nio/Buffer;->limit()I

    .line 226
    .line 227
    .line 228
    move-result v11

    .line 229
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v11

    .line 233
    const/4 v12, 0x3

    .line 234
    aput-object v11, v14, v12

    .line 235
    .line 236
    const-string v11, "type: %3d - layer: %3d - tempId: %3d - size: %3d"

    .line 237
    .line 238
    invoke-static {v11, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    invoke-virtual {v13, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_4
    :goto_3
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    const/16 v9, 0x10

    .line 250
    .line 251
    if-lt v8, v9, :cond_0

    .line 252
    .line 253
    const/16 v9, 0x15

    .line 254
    .line 255
    if-gt v8, v9, :cond_0

    .line 256
    .line 257
    iget-object v9, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->d:Ljava/util/List;

    .line 258
    .line 259
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    nop

    .line 269
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$a;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$a;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$a;->b()V

    .line 8
    .line 9
    .line 10
    :goto_1
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$a;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$a;->d()Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$a;->a()V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$a;->a()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method private c()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mp4parser/iso14496/part15/d$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/mp4parser/iso14496/part15/d$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/mp4parser/iso14496/part15/d$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/mp4parser/iso14496/part15/d$a;->a:Z

    .line 8
    .line 9
    const/16 v2, 0x20

    .line 10
    .line 11
    iput v2, v0, Lcom/mp4parser/iso14496/part15/d$a;->c:I

    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Lcom/mp4parser/iso14496/part15/d$a;->d:Ljava/util/List;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->a:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    new-instance v3, Lcom/mp4parser/iso14496/part15/d$a;

    .line 38
    .line 39
    invoke-direct {v3}, Lcom/mp4parser/iso14496/part15/d$a;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-boolean v1, v3, Lcom/mp4parser/iso14496/part15/d$a;->a:Z

    .line 43
    .line 44
    const/16 v5, 0x21

    .line 45
    .line 46
    iput v5, v3, Lcom/mp4parser/iso14496/part15/d$a;->c:I

    .line 47
    .line 48
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v2, v3, Lcom/mp4parser/iso14496/part15/d$a;->d:Ljava/util/List;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->b:Ljava/util/LinkedHashMap;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_1

    .line 70
    .line 71
    new-instance v2, Lcom/mp4parser/iso14496/part15/d$a;

    .line 72
    .line 73
    invoke-direct {v2}, Lcom/mp4parser/iso14496/part15/d$a;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-boolean v1, v2, Lcom/mp4parser/iso14496/part15/d$a;->a:Z

    .line 77
    .line 78
    iput v5, v2, Lcom/mp4parser/iso14496/part15/d$a;->c:I

    .line 79
    .line 80
    new-instance v5, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v5, v2, Lcom/mp4parser/iso14496/part15/d$a;->d:Ljava/util/List;

    .line 86
    .line 87
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->c:Ljava/util/LinkedHashMap;

    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-nez v5, :cond_0

    .line 102
    .line 103
    const/4 v5, 0x3

    .line 104
    new-array v5, v5, [Lcom/mp4parser/iso14496/part15/d$a;

    .line 105
    .line 106
    aput-object v0, v5, v4

    .line 107
    .line 108
    aput-object v3, v5, v1

    .line 109
    .line 110
    const/4 v0, 0x2

    .line 111
    aput-object v2, v5, v0

    .line 112
    .line 113
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0

    .line 118
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    new-array v6, v6, [B

    .line 129
    .line 130
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 134
    .line 135
    .line 136
    iget-object v5, v2, Lcom/mp4parser/iso14496/part15/d$a;->d:Ljava/util/List;

    .line 137
    .line 138
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    new-array v7, v7, [B

    .line 153
    .line 154
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 158
    .line 159
    .line 160
    iget-object v2, v3, Lcom/mp4parser/iso14496/part15/d$a;->d:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    new-array v5, v5, [B

    .line 177
    .line 178
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 182
    .line 183
    .line 184
    iget-object v3, v0, Lcom/mp4parser/iso14496/part15/d$a;->d:Ljava/util/List;

    .line 185
    .line 186
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    goto/16 :goto_0
.end method

.method private f(ZILcom/googlecode/mp4parser/h264/read/b;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    const-string p1, "nal_hrd_parameters_present_flag"

    .line 5
    .line 6
    invoke-virtual {p3, p1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const-string v1, "vcl_hrd_parameters_present_flag"

    .line 11
    .line 12
    invoke-virtual {p3, v1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    if-eqz v1, :cond_4

    .line 19
    .line 20
    :cond_0
    const-string v2, "sub_pic_hrd_params_present_flag"

    .line 21
    .line 22
    invoke-virtual {p3, v2}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x5

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const/16 v4, 0x8

    .line 30
    .line 31
    const-string v5, "tick_divisor_minus2"

    .line 32
    .line 33
    invoke-virtual {p3, v4, v5}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const-string v4, "du_cpb_removal_delay_increment_length_minus1"

    .line 37
    .line 38
    invoke-virtual {p3, v3, v4}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const-string v4, "sub_pic_cpb_params_in_pic_timing_sei_flag"

    .line 42
    .line 43
    invoke-virtual {p3, v4}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    const-string v4, "dpb_output_delay_du_length_minus1"

    .line 47
    .line 48
    invoke-virtual {p3, v3, v4}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_1
    const-string v4, "bit_rate_scale"

    .line 52
    .line 53
    const/4 v5, 0x4

    .line 54
    invoke-virtual {p3, v5, v4}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const-string v4, "cpb_size_scale"

    .line 58
    .line 59
    invoke-virtual {p3, v5, v4}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 60
    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    const-string v4, "cpb_size_du_scale"

    .line 65
    .line 66
    invoke-virtual {p3, v5, v4}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_2
    const-string v4, "initial_cpb_removal_delay_length_minus1"

    .line 70
    .line 71
    invoke-virtual {p3, v3, v4}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 72
    .line 73
    .line 74
    const-string v4, "au_cpb_removal_delay_length_minus1"

    .line 75
    .line 76
    invoke-virtual {p3, v3, v4}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 77
    .line 78
    .line 79
    const-string v4, "dpb_output_delay_length_minus1"

    .line 80
    .line 81
    invoke-virtual {p3, v3, v4}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const/4 p1, 0x0

    .line 86
    const/4 v1, 0x0

    .line 87
    :cond_4
    const/4 v2, 0x0

    .line 88
    :goto_0
    new-array v3, p2, [Z

    .line 89
    .line 90
    new-array v4, p2, [Z

    .line 91
    .line 92
    new-array v5, p2, [Z

    .line 93
    .line 94
    new-array v6, p2, [I

    .line 95
    .line 96
    new-array v7, p2, [I

    .line 97
    .line 98
    :goto_1
    if-le v0, p2, :cond_5

    .line 99
    .line 100
    return-void

    .line 101
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v9, "fixed_pic_rate_general_flag["

    .line 104
    .line 105
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v9, "]"

    .line 112
    .line 113
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-virtual {p3, v8}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    aput-boolean v8, v3, v0

    .line 125
    .line 126
    if-nez v8, :cond_6

    .line 127
    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v10, "fixed_pic_rate_within_cvs_flag["

    .line 131
    .line 132
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-virtual {p3, v8}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    aput-boolean v8, v4, v0

    .line 150
    .line 151
    :cond_6
    aget-boolean v8, v4, v0

    .line 152
    .line 153
    if-eqz v8, :cond_7

    .line 154
    .line 155
    new-instance v8, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v10, "elemental_duration_in_tc_minus1["

    .line 158
    .line 159
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-virtual {p3, v8}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    aput v8, v7, v0

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v10, "low_delay_hrd_flag["

    .line 182
    .line 183
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    invoke-virtual {p3, v8}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    aput-boolean v8, v5, v0

    .line 201
    .line 202
    :goto_2
    aget-boolean v8, v5, v0

    .line 203
    .line 204
    if-nez v8, :cond_8

    .line 205
    .line 206
    new-instance v8, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v10, "cpb_cnt_minus1["

    .line 209
    .line 210
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    invoke-virtual {p3, v8}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    aput v8, v6, v0

    .line 228
    .line 229
    :cond_8
    if-eqz p1, :cond_9

    .line 230
    .line 231
    aget v8, v6, v0

    .line 232
    .line 233
    invoke-virtual {p0, v0, v8, v2, p3}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->j(IIZLcom/googlecode/mp4parser/h264/read/b;)V

    .line 234
    .line 235
    .line 236
    :cond_9
    if-eqz v1, :cond_a

    .line 237
    .line 238
    aget v8, v6, v0

    .line 239
    .line 240
    invoke-virtual {p0, v0, v8, v2, p3}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->j(IIZLcom/googlecode/mp4parser/h264/read/b;)V

    .line 241
    .line 242
    .line 243
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 244
    .line 245
    goto/16 :goto_1
.end method

.method public static h([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;

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
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;-><init>(Lcom/googlecode/mp4parser/e;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)Lcom/googlecode/mp4parser/authoring/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lcom/googlecode/mp4parser/authoring/f;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    mul-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    mul-int/lit8 v2, v2, 0x2

    .line 29
    .line 30
    new-array v4, v2, [Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-lt v2, v3, :cond_0

    .line 38
    .line 39
    new-instance p1, Lcom/googlecode/mp4parser/authoring/g;

    .line 40
    .line 41
    invoke-direct {p1, v4}, Lcom/googlecode/mp4parser/authoring/g;-><init>([Ljava/nio/ByteBuffer;)V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_0
    mul-int/lit8 v3, v2, 0x2

    .line 46
    .line 47
    mul-int/lit8 v5, v2, 0x4

    .line 48
    .line 49
    invoke-static {v0, v5, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    aput-object v5, v4, v3

    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    aput-object v5, v4, v3

    .line 64
    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    .line 81
    goto :goto_0
.end method

.method public d(Ljava/nio/ByteBuffer;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/h264/read/b;

    .line 2
    .line 3
    new-instance v1, Lcom/googlecode/mp4parser/util/b;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/util/b;-><init>(Ljava/nio/ByteBuffer;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;-><init>(Ljava/io/InputStream;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x4

    .line 23
    const-string v1, "vps_parameter_set_id"

    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    const-string v1, "vps_reserved_three_2bits"

    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const-string p1, "vps_max_layers_minus1"

    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    invoke-virtual {v0, v1, p1}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x3

    .line 41
    const-string v3, "vps_max_sub_layers_minus1"

    .line 42
    .line 43
    invoke-virtual {v0, p1, v3}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const-string v3, "vps_temporal_id_nesting_flag"

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    const/16 v3, 0x10

    .line 53
    .line 54
    const-string v4, "vps_reserved_0xffff_16bits"

    .line 55
    .line 56
    invoke-virtual {v0, v3, v4}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->i(ILcom/googlecode/mp4parser/h264/read/b;)V

    .line 60
    .line 61
    .line 62
    const-string v3, "vps_sub_layer_ordering_info_present_flag"

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_0

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move v4, p1

    .line 73
    :goto_0
    new-array v4, v4, [I

    .line 74
    .line 75
    if-eqz v3, :cond_1

    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move v5, p1

    .line 80
    :goto_1
    new-array v5, v5, [I

    .line 81
    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    move v6, p1

    .line 87
    :goto_2
    new-array v6, v6, [I

    .line 88
    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    goto :goto_3

    .line 93
    :cond_3
    move v3, p1

    .line 94
    :goto_3
    const-string v7, "]"

    .line 95
    .line 96
    if-le v3, p1, :cond_c

    .line 97
    .line 98
    const-string v3, "vps_max_layer_id"

    .line 99
    .line 100
    invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    const-string v1, "vps_num_layer_sets_minus1"

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    filled-new-array {v9, v8}, [I

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 115
    .line 116
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    move-object v10, v1

    .line 121
    check-cast v10, [[Z

    .line 122
    .line 123
    const/4 v11, 0x1

    .line 124
    const/4 v12, 0x1

    .line 125
    :goto_4
    if-le v12, v9, :cond_a

    .line 126
    .line 127
    const-string v1, "vps_timing_info_present_flag"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_7

    .line 134
    .line 135
    const-string v1, "vps_num_units_in_tick"

    .line 136
    .line 137
    const/16 v3, 0x20

    .line 138
    .line 139
    invoke-virtual {v0, v3, v1}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 140
    .line 141
    .line 142
    const-string v1, "vps_time_scale"

    .line 143
    .line 144
    invoke-virtual {v0, v3, v1}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 145
    .line 146
    .line 147
    const-string v1, "vps_poc_proportional_to_timing_flag"

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_4

    .line 154
    .line 155
    const-string v1, "vps_num_ticks_poc_diff_one_minus1"

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    :cond_4
    const-string v1, "vps_num_hrd_parameters"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    new-array v3, v1, [I

    .line 167
    .line 168
    new-array v4, v1, [Z

    .line 169
    .line 170
    const/4 v5, 0x0

    .line 171
    :goto_5
    if-lt v5, v1, :cond_5

    .line 172
    .line 173
    goto :goto_7

    .line 174
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v8, "hrd_layer_set_idx["

    .line 177
    .line 178
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v0, v6}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    aput v6, v3, v5

    .line 196
    .line 197
    if-lez v5, :cond_6

    .line 198
    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v8, "cprms_present_flag["

    .line 202
    .line 203
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {v0, v6}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    aput-boolean v6, v4, v5

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_6
    aput-boolean v11, v4, v2

    .line 224
    .line 225
    :goto_6
    aget-boolean v6, v4, v5

    .line 226
    .line 227
    invoke-direct {p0, v6, p1, v0}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->f(ZILcom/googlecode/mp4parser/h264/read/b;)V

    .line 228
    .line 229
    .line 230
    add-int/lit8 v5, v5, 0x1

    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_7
    :goto_7
    const-string p1, "vps_extension_flag"

    .line 234
    .line 235
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-eqz p1, :cond_9

    .line 240
    .line 241
    :goto_8
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/h264/read/a;->f()Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-nez p1, :cond_8

    .line 246
    .line 247
    goto :goto_9

    .line 248
    :cond_8
    const-string p1, "vps_extension_data_flag"

    .line 249
    .line 250
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_9
    :goto_9
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/h264/read/b;->v()V

    .line 255
    .line 256
    .line 257
    return v2

    .line 258
    :cond_a
    const/4 v1, 0x0

    .line 259
    :goto_a
    if-le v1, v8, :cond_b

    .line 260
    .line 261
    add-int/lit8 v12, v12, 0x1

    .line 262
    .line 263
    goto/16 :goto_4

    .line 264
    .line 265
    :cond_b
    aget-object v3, v10, v12

    .line 266
    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v5, "layer_id_included_flag["

    .line 270
    .line 271
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v5, "]["

    .line 278
    .line 279
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    aput-boolean v4, v3, v1

    .line 297
    .line 298
    add-int/lit8 v1, v1, 0x1

    .line 299
    .line 300
    goto :goto_a

    .line 301
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    const-string v9, "vps_max_dec_pic_buffering_minus1["

    .line 304
    .line 305
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    invoke-virtual {v0, v8}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    move-result v8

    .line 322
    aput v8, v4, v3

    .line 323
    .line 324
    new-instance v8, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v8

    .line 339
    invoke-virtual {v0, v8}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    move-result v8

    .line 343
    aput v8, v5, v3

    .line 344
    .line 345
    new-instance v8, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    invoke-virtual {v0, v7}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    move-result v7

    .line 364
    aput v7, v6, v3

    .line 365
    .line 366
    add-int/lit8 v3, v3, 0x1

    .line 367
    .line 368
    goto/16 :goto_3
.end method

.method public e(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$b;
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
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$b;-><init>()V

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
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$b;->a:I

    .line 21
    .line 22
    and-int/lit16 v1, p1, 0x7e00

    .line 23
    .line 24
    shr-int/lit8 v1, v1, 0x9

    .line 25
    .line 26
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$b;->b:I

    .line 27
    .line 28
    and-int/lit16 v1, p1, 0x1f8

    .line 29
    .line 30
    shr-int/lit8 v1, v1, 0x3

    .line 31
    .line 32
    iput v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$b;->c:I

    .line 33
    .line 34
    and-int/lit8 p1, p1, 0x7

    .line 35
    .line 36
    iput p1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$b;->d:I

    .line 37
    .line 38
    return-object v0
.end method

.method g(ILjava/nio/ByteBuffer;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sub-int/2addr v0, v1

    .line 14
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    check-cast p3, Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    invoke-virtual {p0, p3}, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld;->e(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$b;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    iget p3, p3, Lcom/googlecode/mp4parser/authoring/tracks/H265TrackImplOld$b;->b:I

    .line 25
    .line 26
    const/16 v0, 0x1f

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-gt p3, v0, :cond_1

    .line 30
    .line 31
    const/4 p3, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p3, 0x0

    .line 34
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    :pswitch_0
    goto :goto_1

    .line 38
    :pswitch_1
    if-eqz p3, :cond_2

    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 42
    .line 43
    .line 44
    packed-switch p1, :pswitch_data_2

    .line 45
    .line 46
    .line 47
    return v2

    .line 48
    :pswitch_2
    const/16 p1, 0x32

    .line 49
    .line 50
    new-array p1, p1, [B

    .line 51
    .line 52
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x2

    .line 59
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 60
    .line 61
    .line 62
    invoke-static {p2}, Lcom/coremedia/iso/g;->p(Ljava/nio/ByteBuffer;)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p3, :cond_3

    .line 67
    .line 68
    and-int/lit16 p1, p1, 0x80

    .line 69
    .line 70
    if-lez p1, :cond_3

    .line 71
    .line 72
    return v1

    .line 73
    :cond_3
    return v2

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
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

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :pswitch_data_2
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public i(ILcom/googlecode/mp4parser/h264/read/b;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "general_profile_space "

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-virtual {v1, v3, v2}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const-string v2, "general_tier_flag"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    const-string v2, "general_profile_idc"

    .line 17
    .line 18
    const/4 v4, 0x5

    .line 19
    invoke-virtual {v1, v4, v2}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x20

    .line 23
    .line 24
    new-array v5, v2, [Z

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    :goto_0
    const-string v8, "]"

    .line 28
    .line 29
    if-lt v7, v2, :cond_7

    .line 30
    .line 31
    const-string v5, "general_progressive_source_flag"

    .line 32
    .line 33
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    const-string v5, "general_interlaced_source_flag"

    .line 37
    .line 38
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    const-string v5, "general_non_packed_constraint_flag"

    .line 42
    .line 43
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    const-string v5, "general_frame_only_constraint_flag"

    .line 47
    .line 48
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    const-string v5, "general_reserved_zero_44bits"

    .line 52
    .line 53
    const/16 v9, 0x2c

    .line 54
    .line 55
    invoke-virtual {v1, v9, v5}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 56
    .line 57
    .line 58
    const-string v5, "general_level_idc"

    .line 59
    .line 60
    const/16 v10, 0x8

    .line 61
    .line 62
    invoke-virtual {v1, v10, v5}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 63
    .line 64
    .line 65
    new-array v11, v0, [Z

    .line 66
    .line 67
    new-array v12, v0, [Z

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    :goto_1
    if-lt v5, v0, :cond_6

    .line 71
    .line 72
    if-lez v0, :cond_1

    .line 73
    .line 74
    move v5, v0

    .line 75
    :goto_2
    if-lt v5, v10, :cond_0

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_0
    const-string v7, "reserved_zero_2bits"

    .line 79
    .line 80
    invoke-virtual {v1, v3, v7}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 81
    .line 82
    .line 83
    add-int/lit8 v5, v5, 0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_1
    :goto_3
    new-array v7, v0, [I

    .line 87
    .line 88
    new-array v13, v0, [Z

    .line 89
    .line 90
    new-array v14, v0, [I

    .line 91
    .line 92
    filled-new-array {v0, v2}, [I

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 97
    .line 98
    invoke-static {v15, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    move-object v15, v5

    .line 103
    check-cast v15, [[Z

    .line 104
    .line 105
    new-array v5, v0, [Z

    .line 106
    .line 107
    new-array v6, v0, [Z

    .line 108
    .line 109
    new-array v10, v0, [Z

    .line 110
    .line 111
    new-array v9, v0, [Z

    .line 112
    .line 113
    new-array v2, v0, [I

    .line 114
    .line 115
    const/4 v4, 0x0

    .line 116
    :goto_4
    if-lt v4, v0, :cond_2

    .line 117
    .line 118
    return-void

    .line 119
    :cond_2
    aget-boolean v17, v11, v4

    .line 120
    .line 121
    if-eqz v17, :cond_4

    .line 122
    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v0, "sub_layer_profile_space["

    .line 126
    .line 127
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const/4 v3, 0x2

    .line 141
    invoke-virtual {v1, v3, v0}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    aput v0, v7, v4

    .line 146
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v3, "sub_layer_tier_flag["

    .line 150
    .line 151
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    aput-boolean v0, v13, v4

    .line 169
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v3, "sub_layer_profile_idc["

    .line 173
    .line 174
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const/4 v3, 0x5

    .line 188
    invoke-virtual {v1, v3, v0}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    aput v0, v14, v4

    .line 193
    .line 194
    const/4 v0, 0x0

    .line 195
    :goto_5
    const/16 v3, 0x20

    .line 196
    .line 197
    if-lt v0, v3, :cond_3

    .line 198
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v3, "sub_layer_progressive_source_flag["

    .line 202
    .line 203
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    aput-boolean v0, v5, v4

    .line 221
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v3, "sub_layer_interlaced_source_flag["

    .line 225
    .line 226
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    aput-boolean v0, v6, v4

    .line 244
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v3, "sub_layer_non_packed_constraint_flag["

    .line 248
    .line 249
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    aput-boolean v0, v10, v4

    .line 267
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string v3, "sub_layer_frame_only_constraint_flag["

    .line 271
    .line 272
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    aput-boolean v0, v9, v4

    .line 290
    .line 291
    const-string v0, "reserved"

    .line 292
    .line 293
    const/16 v3, 0x2c

    .line 294
    .line 295
    invoke-virtual {v1, v3, v0}, Lcom/googlecode/mp4parser/h264/read/b;->s(ILjava/lang/String;)J

    .line 296
    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_3
    const/16 v3, 0x2c

    .line 300
    .line 301
    aget-object v16, v15, v4

    .line 302
    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    move-object/from16 v18, v5

    .line 306
    .line 307
    const-string v5, "sub_layer_profile_compatibility_flag["

    .line 308
    .line 309
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v5, "]["

    .line 316
    .line 317
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    aput-boolean v3, v16, v0

    .line 335
    .line 336
    add-int/lit8 v0, v0, 0x1

    .line 337
    .line 338
    move-object/from16 v5, v18

    .line 339
    .line 340
    goto/16 :goto_5

    .line 341
    .line 342
    :cond_4
    :goto_6
    move-object/from16 v18, v5

    .line 343
    .line 344
    aget-boolean v0, v12, v4

    .line 345
    .line 346
    if-eqz v0, :cond_5

    .line 347
    .line 348
    const-string v0, "sub_layer_level_idc"

    .line 349
    .line 350
    const/16 v3, 0x8

    .line 351
    .line 352
    invoke-virtual {v1, v3, v0}, Lcom/googlecode/mp4parser/h264/read/b;->w(ILjava/lang/String;)I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    aput v0, v2, v4

    .line 357
    .line 358
    goto :goto_7

    .line 359
    :cond_5
    const/16 v3, 0x8

    .line 360
    .line 361
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 362
    .line 363
    move/from16 v0, p1

    .line 364
    .line 365
    move-object/from16 v5, v18

    .line 366
    .line 367
    const/4 v3, 0x2

    .line 368
    goto/16 :goto_4

    .line 369
    .line 370
    :cond_6
    const/16 v3, 0x8

    .line 371
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v2, "sub_layer_profile_present_flag["

    .line 375
    .line 376
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    aput-boolean v0, v11, v5

    .line 394
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    const-string v2, "sub_layer_level_present_flag["

    .line 398
    .line 399
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    aput-boolean v0, v12, v5

    .line 417
    .line 418
    add-int/lit8 v5, v5, 0x1

    .line 419
    .line 420
    move/from16 v0, p1

    .line 421
    .line 422
    const/16 v2, 0x20

    .line 423
    .line 424
    const/4 v3, 0x2

    .line 425
    const/4 v4, 0x5

    .line 426
    const/16 v9, 0x2c

    .line 427
    .line 428
    const/16 v10, 0x8

    .line 429
    .line 430
    goto/16 :goto_1

    .line 431
    .line 432
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    const-string v2, "general_profile_compatibility_flag["

    .line 435
    .line 436
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    aput-boolean v0, v5, v7

    .line 454
    .line 455
    add-int/lit8 v7, v7, 0x1

    .line 456
    .line 457
    move/from16 v0, p1

    .line 458
    .line 459
    const/16 v2, 0x20

    .line 460
    .line 461
    const/4 v3, 0x2

    .line 462
    const/4 v4, 0x5

    .line 463
    goto/16 :goto_0
.end method

.method j(IIZLcom/googlecode/mp4parser/h264/read/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-array p1, p2, [I

    .line 2
    .line 3
    new-array v0, p2, [I

    .line 4
    .line 5
    new-array v1, p2, [I

    .line 6
    .line 7
    new-array v2, p2, [I

    .line 8
    .line 9
    new-array v3, p2, [Z

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    :goto_0
    if-le v4, p2, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v6, "bit_rate_value_minus1["

    .line 18
    .line 19
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v6, "]"

    .line 26
    .line 27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {p4, v5}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    aput v5, p1, v4

    .line 39
    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v7, "cpb_size_value_minus1["

    .line 43
    .line 44
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {p4, v5}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    aput v5, v0, v4

    .line 62
    .line 63
    if-eqz p3, :cond_1

    .line 64
    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v7, "cpb_size_du_value_minus1["

    .line 68
    .line 69
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {p4, v5}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    aput v5, v1, v4

    .line 87
    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v7, "bit_rate_du_value_minus1["

    .line 91
    .line 92
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {p4, v5}, Lcom/googlecode/mp4parser/h264/read/b;->y(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    aput v5, v2, v4

    .line 110
    .line 111
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v7, "cbr_flag["

    .line 114
    .line 115
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {p4, v5}, Lcom/googlecode/mp4parser/h264/read/b;->p(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    aput-boolean v5, v3, v4

    .line 133
    .line 134
    add-int/lit8 v4, v4, 0x1

    .line 135
    .line 136
    goto :goto_0
.end method
