.class public abstract Lcom/alibaba/fastjson/parser/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/parser/d;
.implements Ljava/io/Closeable;


# static fields
.field private static final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "[C>;>;"
        }
    .end annotation
.end field

.field protected static final q:[C

.field protected static final r:J = -0xcccccccccccccccL

.field protected static final s:J = -0xcccccccccccccccL

.field protected static final t:I = -0xccccccc

.field protected static final u:I = -0xccccccc

.field protected static final v:[I


# instance fields
.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:C

.field protected f:I

.field protected g:I

.field protected h:[C

.field protected i:I

.field protected j:I

.field protected k:Z

.field protected l:Ljava/util/Calendar;

.field public m:I

.field protected n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "null"

    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x9

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "new"

    .line 24
    .line 25
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x6

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "true"

    .line 34
    .line 35
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x7

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "false"

    .line 44
    .line 45
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const/16 v1, 0x17

    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "undefined"

    .line 55
    .line 56
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/alibaba/fastjson/parser/e;->o:Ljava/util/Map;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcom/alibaba/fastjson/parser/e;->p:Ljava/lang/ThreadLocal;

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v1, "\""

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    sget-object v1, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, "\":\""

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lcom/alibaba/fastjson/parser/e;->q:[C

    .line 97
    .line 98
    const/16 v0, 0x67

    .line 99
    .line 100
    new-array v0, v0, [I

    .line 101
    .line 102
    sput-object v0, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 103
    .line 104
    const/16 v0, 0x30

    .line 105
    .line 106
    :goto_0
    const/16 v1, 0x39

    .line 107
    .line 108
    if-gt v0, v1, :cond_0

    .line 109
    .line 110
    sget-object v1, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 111
    .line 112
    add-int/lit8 v2, v0, -0x30

    .line 113
    .line 114
    aput v2, v1, v0

    .line 115
    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    const/16 v0, 0x61

    .line 120
    .line 121
    :goto_1
    const/16 v1, 0x66

    .line 122
    .line 123
    if-gt v0, v1, :cond_1

    .line 124
    .line 125
    sget-object v1, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 126
    .line 127
    add-int/lit8 v2, v0, -0x61

    .line 128
    .line 129
    add-int/lit8 v2, v2, 0xa

    .line 130
    .line 131
    aput v2, v1, v0

    .line 132
    .line 133
    add-int/lit8 v0, v0, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_1
    const/16 v0, 0x41

    .line 137
    .line 138
    :goto_2
    const/16 v1, 0x46

    .line 139
    .line 140
    if-gt v0, v1, :cond_2

    .line 141
    .line 142
    sget-object v1, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 143
    .line 144
    add-int/lit8 v2, v0, -0x41

    .line 145
    .line 146
    add-int/lit8 v2, v2, 0xa

    .line 147
    .line 148
    aput v2, v1, v0

    .line 149
    .line 150
    add-int/lit8 v0, v0, 0x1

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    .line 5
    .line 6
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->d:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 13
    .line 14
    sget-object v1, Lcom/alibaba/fastjson/parser/e;->o:Ljava/util/Map;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/e;->n:Ljava/util/Map;

    .line 17
    .line 18
    sget-object v1, Lcom/alibaba/fastjson/parser/e;->p:Ljava/lang/ThreadLocal;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, [C

    .line 33
    .line 34
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    const/16 v0, 0x40

    .line 44
    .line 45
    new-array v0, v0, [C

    .line 46
    .line 47
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method private final L0()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 2
    .line 3
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/e;->k:Z

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x4

    .line 13
    const/16 v3, 0x27

    .line 14
    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/16 v4, 0x1a

    .line 24
    .line 25
    const-string v5, "unclosed single-quote string"

    .line 26
    .line 27
    if-eq v1, v4, :cond_e

    .line 28
    .line 29
    const/16 v4, 0x5c

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    if-ne v1, v4, :cond_b

    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/e;->k:Z

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/e;->k:Z

    .line 39
    .line 40
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 41
    .line 42
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 43
    .line 44
    array-length v8, v7

    .line 45
    if-le v1, v8, :cond_1

    .line 46
    .line 47
    mul-int/lit8 v1, v1, 0x2

    .line 48
    .line 49
    new-array v1, v1, [C

    .line 50
    .line 51
    array-length v8, v7

    .line 52
    invoke-static {v7, v0, v1, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 56
    .line 57
    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 58
    .line 59
    add-int/2addr v1, v6

    .line 60
    iget v7, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 61
    .line 62
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 63
    .line 64
    invoke-virtual {p0, v1, v7, v8}, Lcom/alibaba/fastjson/parser/e;->x(II[C)V

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/16 v7, 0x22

    .line 72
    .line 73
    if-eq v1, v7, :cond_a

    .line 74
    .line 75
    if-eq v1, v3, :cond_9

    .line 76
    .line 77
    const/16 v3, 0x46

    .line 78
    .line 79
    if-eq v1, v3, :cond_8

    .line 80
    .line 81
    if-eq v1, v4, :cond_7

    .line 82
    .line 83
    const/16 v3, 0x62

    .line 84
    .line 85
    if-eq v1, v3, :cond_6

    .line 86
    .line 87
    const/16 v3, 0x66

    .line 88
    .line 89
    if-eq v1, v3, :cond_8

    .line 90
    .line 91
    const/16 v3, 0x6e

    .line 92
    .line 93
    if-eq v1, v3, :cond_5

    .line 94
    .line 95
    const/16 v3, 0x72

    .line 96
    .line 97
    if-eq v1, v3, :cond_4

    .line 98
    .line 99
    const/16 v3, 0x78

    .line 100
    .line 101
    const/16 v4, 0x10

    .line 102
    .line 103
    if-eq v1, v3, :cond_3

    .line 104
    .line 105
    const/4 v3, 0x3

    .line 106
    const/4 v7, 0x2

    .line 107
    packed-switch v1, :pswitch_data_0

    .line 108
    .line 109
    .line 110
    packed-switch v1, :pswitch_data_1

    .line 111
    .line 112
    .line 113
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 114
    .line 115
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 116
    .line 117
    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :pswitch_0
    const/16 v1, 0xb

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    new-instance v10, Ljava/lang/String;

    .line 144
    .line 145
    new-array v2, v2, [C

    .line 146
    .line 147
    aput-char v1, v2, v0

    .line 148
    .line 149
    aput-char v5, v2, v6

    .line 150
    .line 151
    aput-char v8, v2, v7

    .line 152
    .line 153
    aput-char v9, v2, v3

    .line 154
    .line 155
    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([C)V

    .line 156
    .line 157
    .line 158
    invoke-static {v10, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    int-to-char v1, v1

    .line 163
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :pswitch_2
    const/16 v1, 0x9

    .line 169
    .line 170
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :pswitch_3
    const/4 v1, 0x7

    .line 176
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :pswitch_4
    const/4 v1, 0x6

    .line 182
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :pswitch_5
    const/4 v1, 0x5

    .line 188
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :pswitch_9
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :pswitch_a
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :pswitch_b
    const/16 v1, 0x2f

    .line 219
    .line 220
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    sget-object v3, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 234
    .line 235
    aget v1, v3, v1

    .line 236
    .line 237
    mul-int/lit8 v1, v1, 0x10

    .line 238
    .line 239
    aget v2, v3, v2

    .line 240
    .line 241
    add-int/2addr v1, v2

    .line 242
    int-to-char v1, v1

    .line 243
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_4
    const/16 v1, 0xd

    .line 249
    .line 250
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_5
    const/16 v1, 0xa

    .line 256
    .line 257
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_6
    const/16 v1, 0x8

    .line 263
    .line 264
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_7
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :cond_8
    const/16 v1, 0xc

    .line 275
    .line 276
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_9
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_a
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_b
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/e;->k:Z

    .line 292
    .line 293
    if-nez v2, :cond_c

    .line 294
    .line 295
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 296
    .line 297
    add-int/2addr v1, v6

    .line 298
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 299
    .line 300
    goto/16 :goto_0

    .line 301
    .line 302
    :cond_c
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 303
    .line 304
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 305
    .line 306
    array-length v4, v3

    .line 307
    if-ne v2, v4, :cond_d

    .line 308
    .line 309
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_0

    .line 313
    .line 314
    :cond_d
    add-int/lit8 v4, v2, 0x1

    .line 315
    .line 316
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 317
    .line 318
    aput-char v1, v3, v2

    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 323
    .line 324
    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw v0

    .line 328
    nop

    .line 329
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final m0(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

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


# virtual methods
.method public final A0([C)D
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->n([C)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p1, -0x2

    .line 13
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 14
    .line 15
    return-wide v1

    .line 16
    :cond_0
    array-length v0, p1

    .line 17
    iget v3, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 18
    .line 19
    add-int/lit8 v4, v0, 0x1

    .line 20
    .line 21
    add-int/2addr v3, v0

    .line 22
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v3, -0x1

    .line 27
    const/16 v5, 0x30

    .line 28
    .line 29
    if-lt v0, v5, :cond_e

    .line 30
    .line 31
    const/16 v6, 0x39

    .line 32
    .line 33
    if-gt v0, v6, :cond_e

    .line 34
    .line 35
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 36
    .line 37
    add-int/lit8 v7, v4, 0x1

    .line 38
    .line 39
    add-int/2addr v0, v4

    .line 40
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-lt v0, v5, :cond_1

    .line 45
    .line 46
    if-gt v0, v6, :cond_1

    .line 47
    .line 48
    move v4, v7

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/16 v4, 0x2e

    .line 51
    .line 52
    if-ne v0, v4, :cond_3

    .line 53
    .line 54
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 55
    .line 56
    add-int/lit8 v4, v7, 0x1

    .line 57
    .line 58
    add-int/2addr v0, v7

    .line 59
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-lt v0, v5, :cond_2

    .line 64
    .line 65
    if-gt v0, v6, :cond_2

    .line 66
    .line 67
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 68
    .line 69
    add-int/lit8 v7, v4, 0x1

    .line 70
    .line 71
    add-int/2addr v0, v4

    .line 72
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-lt v0, v5, :cond_3

    .line 77
    .line 78
    if-gt v0, v6, :cond_3

    .line 79
    .line 80
    move v4, v7

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 83
    .line 84
    return-wide v1

    .line 85
    :cond_3
    const/16 v4, 0x65

    .line 86
    .line 87
    if-eq v0, v4, :cond_4

    .line 88
    .line 89
    const/16 v4, 0x45

    .line 90
    .line 91
    if-ne v0, v4, :cond_7

    .line 92
    .line 93
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 94
    .line 95
    add-int/lit8 v4, v7, 0x1

    .line 96
    .line 97
    add-int/2addr v0, v7

    .line 98
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    const/16 v7, 0x2b

    .line 103
    .line 104
    if-eq v0, v7, :cond_6

    .line 105
    .line 106
    const/16 v7, 0x2d

    .line 107
    .line 108
    if-ne v0, v7, :cond_5

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    :goto_2
    move v7, v4

    .line 112
    goto :goto_4

    .line 113
    :cond_6
    :goto_3
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 114
    .line 115
    add-int/lit8 v7, v4, 0x1

    .line 116
    .line 117
    add-int/2addr v0, v4

    .line 118
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    :goto_4
    if-lt v0, v5, :cond_7

    .line 123
    .line 124
    if-gt v0, v6, :cond_7

    .line 125
    .line 126
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 127
    .line 128
    add-int/lit8 v4, v7, 0x1

    .line 129
    .line 130
    add-int/2addr v0, v7

    .line 131
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    goto :goto_2

    .line 136
    :cond_7
    iget v4, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 137
    .line 138
    array-length p1, p1

    .line 139
    add-int/2addr p1, v4

    .line 140
    add-int/2addr v4, v7

    .line 141
    sub-int/2addr v4, p1

    .line 142
    add-int/lit8 v4, v4, -0x1

    .line 143
    .line 144
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson/parser/e;->R0(II)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 149
    .line 150
    .line 151
    move-result-wide v4

    .line 152
    const/16 p1, 0x10

    .line 153
    .line 154
    const/16 v6, 0x2c

    .line 155
    .line 156
    if-ne v0, v6, :cond_8

    .line 157
    .line 158
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 159
    .line 160
    add-int/lit8 v7, v7, -0x1

    .line 161
    .line 162
    add-int/2addr v0, v7

    .line 163
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 166
    .line 167
    .line 168
    const/4 v0, 0x3

    .line 169
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 170
    .line 171
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 172
    .line 173
    return-wide v4

    .line 174
    :cond_8
    const/16 v8, 0x7d

    .line 175
    .line 176
    if-ne v0, v8, :cond_d

    .line 177
    .line 178
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 179
    .line 180
    add-int/lit8 v9, v7, 0x1

    .line 181
    .line 182
    add-int/2addr v0, v7

    .line 183
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-ne v0, v6, :cond_9

    .line 188
    .line 189
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 190
    .line 191
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 192
    .line 193
    add-int/lit8 v9, v9, -0x1

    .line 194
    .line 195
    add-int/2addr p1, v9

    .line 196
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 199
    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_9
    const/16 p1, 0x5d

    .line 203
    .line 204
    if-ne v0, p1, :cond_a

    .line 205
    .line 206
    const/16 p1, 0xf

    .line 207
    .line 208
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 209
    .line 210
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 211
    .line 212
    add-int/lit8 v9, v9, -0x1

    .line 213
    .line 214
    add-int/2addr p1, v9

    .line 215
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_a
    if-ne v0, v8, :cond_b

    .line 222
    .line 223
    const/16 p1, 0xd

    .line 224
    .line 225
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 226
    .line 227
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 228
    .line 229
    add-int/lit8 v9, v9, -0x1

    .line 230
    .line 231
    add-int/2addr p1, v9

    .line 232
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 235
    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_b
    const/16 p1, 0x1a

    .line 239
    .line 240
    if-ne v0, p1, :cond_c

    .line 241
    .line 242
    const/16 v0, 0x14

    .line 243
    .line 244
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 245
    .line 246
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 247
    .line 248
    add-int/lit8 v9, v9, -0x1

    .line 249
    .line 250
    add-int/2addr v0, v9

    .line 251
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 252
    .line 253
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 254
    .line 255
    :goto_5
    const/4 p1, 0x4

    .line 256
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 257
    .line 258
    return-wide v4

    .line 259
    :cond_c
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 260
    .line 261
    return-wide v1

    .line 262
    :cond_d
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 263
    .line 264
    return-wide v1

    .line 265
    :cond_e
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 266
    .line 267
    return-wide v1
.end method

.method public final B0([C)F
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->n([C)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, -0x2

    .line 12
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    array-length v0, p1

    .line 16
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 17
    .line 18
    add-int/lit8 v3, v0, 0x1

    .line 19
    .line 20
    add-int/2addr v2, v0

    .line 21
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, -0x1

    .line 26
    const/16 v4, 0x30

    .line 27
    .line 28
    if-lt v0, v4, :cond_a

    .line 29
    .line 30
    const/16 v5, 0x39

    .line 31
    .line 32
    if-gt v0, v5, :cond_a

    .line 33
    .line 34
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 35
    .line 36
    add-int/lit8 v6, v3, 0x1

    .line 37
    .line 38
    add-int/2addr v0, v3

    .line 39
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-lt v0, v4, :cond_1

    .line 44
    .line 45
    if-gt v0, v5, :cond_1

    .line 46
    .line 47
    move v3, v6

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/16 v3, 0x2e

    .line 50
    .line 51
    if-ne v0, v3, :cond_3

    .line 52
    .line 53
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 54
    .line 55
    add-int/lit8 v3, v6, 0x1

    .line 56
    .line 57
    add-int/2addr v0, v6

    .line 58
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-lt v0, v4, :cond_2

    .line 63
    .line 64
    if-gt v0, v5, :cond_2

    .line 65
    .line 66
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 67
    .line 68
    add-int/lit8 v6, v3, 0x1

    .line 69
    .line 70
    add-int/2addr v0, v3

    .line 71
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-lt v0, v4, :cond_3

    .line 76
    .line 77
    if-gt v0, v5, :cond_3

    .line 78
    .line 79
    move v3, v6

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 82
    .line 83
    return v1

    .line 84
    :cond_3
    iget v3, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 85
    .line 86
    array-length p1, p1

    .line 87
    add-int/2addr p1, v3

    .line 88
    add-int/2addr v3, v6

    .line 89
    sub-int/2addr v3, p1

    .line 90
    add-int/lit8 v3, v3, -0x1

    .line 91
    .line 92
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/fastjson/parser/e;->R0(II)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    const/16 v3, 0x10

    .line 101
    .line 102
    const/16 v4, 0x2c

    .line 103
    .line 104
    if-ne v0, v4, :cond_4

    .line 105
    .line 106
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 107
    .line 108
    add-int/lit8 v6, v6, -0x1

    .line 109
    .line 110
    add-int/2addr v0, v6

    .line 111
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 114
    .line 115
    .line 116
    const/4 v0, 0x3

    .line 117
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 118
    .line 119
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 120
    .line 121
    return p1

    .line 122
    :cond_4
    const/16 v5, 0x7d

    .line 123
    .line 124
    if-ne v0, v5, :cond_9

    .line 125
    .line 126
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 127
    .line 128
    add-int/lit8 v7, v6, 0x1

    .line 129
    .line 130
    add-int/2addr v0, v6

    .line 131
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-ne v0, v4, :cond_5

    .line 136
    .line 137
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 138
    .line 139
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 140
    .line 141
    add-int/lit8 v7, v7, -0x1

    .line 142
    .line 143
    add-int/2addr v0, v7

    .line 144
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_5
    const/16 v3, 0x5d

    .line 151
    .line 152
    if-ne v0, v3, :cond_6

    .line 153
    .line 154
    const/16 v0, 0xf

    .line 155
    .line 156
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 157
    .line 158
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 159
    .line 160
    add-int/lit8 v7, v7, -0x1

    .line 161
    .line 162
    add-int/2addr v0, v7

    .line 163
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_6
    if-ne v0, v5, :cond_7

    .line 170
    .line 171
    const/16 v0, 0xd

    .line 172
    .line 173
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 174
    .line 175
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 176
    .line 177
    add-int/lit8 v7, v7, -0x1

    .line 178
    .line 179
    add-int/2addr v0, v7

    .line 180
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_7
    const/16 v3, 0x1a

    .line 187
    .line 188
    if-ne v0, v3, :cond_8

    .line 189
    .line 190
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 191
    .line 192
    add-int/lit8 v7, v7, -0x1

    .line 193
    .line 194
    add-int/2addr v0, v7

    .line 195
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 196
    .line 197
    const/16 v0, 0x14

    .line 198
    .line 199
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 200
    .line 201
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 202
    .line 203
    :goto_2
    const/4 v0, 0x4

    .line 204
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 205
    .line 206
    return p1

    .line 207
    :cond_8
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 208
    .line 209
    return v1

    .line 210
    :cond_9
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 211
    .line 212
    return v1

    .line 213
    :cond_a
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 214
    .line 215
    return v1
.end method

.method public C0([C)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->n([C)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 p1, -0x2

    .line 11
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    array-length p1, p1

    .line 15
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 16
    .line 17
    add-int/lit8 v2, p1, 0x1

    .line 18
    .line 19
    add-int/2addr v1, p1

    .line 20
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/16 v1, 0x30

    .line 25
    .line 26
    const/4 v3, -0x1

    .line 27
    if-lt p1, v1, :cond_a

    .line 28
    .line 29
    const/16 v4, 0x39

    .line 30
    .line 31
    if-gt p1, v4, :cond_a

    .line 32
    .line 33
    sget-object v5, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 34
    .line 35
    aget p1, v5, p1

    .line 36
    .line 37
    :goto_0
    iget v5, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 38
    .line 39
    add-int/lit8 v6, v2, 0x1

    .line 40
    .line 41
    add-int/2addr v5, v2

    .line 42
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-lt v2, v1, :cond_1

    .line 47
    .line 48
    if-gt v2, v4, :cond_1

    .line 49
    .line 50
    mul-int/lit8 p1, p1, 0xa

    .line 51
    .line 52
    sget-object v5, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 53
    .line 54
    aget v2, v5, v2

    .line 55
    .line 56
    add-int/2addr p1, v2

    .line 57
    move v2, v6

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/16 v1, 0x2e

    .line 60
    .line 61
    if-ne v2, v1, :cond_2

    .line 62
    .line 63
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 64
    .line 65
    return v0

    .line 66
    :cond_2
    if-gez p1, :cond_3

    .line 67
    .line 68
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 69
    .line 70
    return v0

    .line 71
    :cond_3
    const/16 v1, 0x10

    .line 72
    .line 73
    const/16 v4, 0x2c

    .line 74
    .line 75
    if-ne v2, v4, :cond_4

    .line 76
    .line 77
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 78
    .line 79
    add-int/lit8 v6, v6, -0x1

    .line 80
    .line 81
    add-int/2addr v0, v6

    .line 82
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 85
    .line 86
    .line 87
    const/4 v0, 0x3

    .line 88
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 89
    .line 90
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 91
    .line 92
    return p1

    .line 93
    :cond_4
    const/16 v5, 0x7d

    .line 94
    .line 95
    if-ne v2, v5, :cond_9

    .line 96
    .line 97
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 98
    .line 99
    add-int/lit8 v7, v6, 0x1

    .line 100
    .line 101
    add-int/2addr v2, v6

    .line 102
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-ne v2, v4, :cond_5

    .line 107
    .line 108
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 109
    .line 110
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 111
    .line 112
    add-int/lit8 v7, v7, -0x1

    .line 113
    .line 114
    add-int/2addr v0, v7

    .line 115
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    const/16 v1, 0x5d

    .line 122
    .line 123
    if-ne v2, v1, :cond_6

    .line 124
    .line 125
    const/16 v0, 0xf

    .line 126
    .line 127
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 128
    .line 129
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 130
    .line 131
    add-int/lit8 v7, v7, -0x1

    .line 132
    .line 133
    add-int/2addr v0, v7

    .line 134
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    if-ne v2, v5, :cond_7

    .line 141
    .line 142
    const/16 v0, 0xd

    .line 143
    .line 144
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 145
    .line 146
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 147
    .line 148
    add-int/lit8 v7, v7, -0x1

    .line 149
    .line 150
    add-int/2addr v0, v7

    .line 151
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_7
    const/16 v1, 0x1a

    .line 158
    .line 159
    if-ne v2, v1, :cond_8

    .line 160
    .line 161
    const/16 v0, 0x14

    .line 162
    .line 163
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 164
    .line 165
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 166
    .line 167
    add-int/lit8 v7, v7, -0x1

    .line 168
    .line 169
    add-int/2addr v0, v7

    .line 170
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 171
    .line 172
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 173
    .line 174
    :goto_1
    const/4 v0, 0x4

    .line 175
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 176
    .line 177
    return p1

    .line 178
    :cond_8
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 179
    .line 180
    return v0

    .line 181
    :cond_9
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 182
    .line 183
    return v0

    .line 184
    :cond_a
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 185
    .line 186
    return v0
.end method

.method public D0([C)J
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->n([C)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p1, -0x2

    .line 13
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 14
    .line 15
    return-wide v1

    .line 16
    :cond_0
    array-length p1, p1

    .line 17
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 18
    .line 19
    add-int/lit8 v3, p1, 0x1

    .line 20
    .line 21
    add-int/2addr v0, p1

    .line 22
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/16 v0, 0x30

    .line 27
    .line 28
    const/4 v4, -0x1

    .line 29
    if-lt p1, v0, :cond_a

    .line 30
    .line 31
    const/16 v5, 0x39

    .line 32
    .line 33
    if-gt p1, v5, :cond_a

    .line 34
    .line 35
    sget-object v6, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 36
    .line 37
    aget p1, v6, p1

    .line 38
    .line 39
    int-to-long v6, p1

    .line 40
    :goto_0
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 41
    .line 42
    add-int/lit8 v8, v3, 0x1

    .line 43
    .line 44
    add-int/2addr p1, v3

    .line 45
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-lt p1, v0, :cond_1

    .line 50
    .line 51
    if-gt p1, v5, :cond_1

    .line 52
    .line 53
    const-wide/16 v9, 0xa

    .line 54
    .line 55
    mul-long v6, v6, v9

    .line 56
    .line 57
    sget-object v3, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 58
    .line 59
    aget p1, v3, p1

    .line 60
    .line 61
    int-to-long v9, p1

    .line 62
    add-long/2addr v6, v9

    .line 63
    move v3, v8

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/16 v0, 0x2e

    .line 66
    .line 67
    if-ne p1, v0, :cond_2

    .line 68
    .line 69
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 70
    .line 71
    return-wide v1

    .line 72
    :cond_2
    cmp-long v0, v6, v1

    .line 73
    .line 74
    if-gez v0, :cond_3

    .line 75
    .line 76
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 77
    .line 78
    return-wide v1

    .line 79
    :cond_3
    const/16 v0, 0x10

    .line 80
    .line 81
    const/16 v3, 0x2c

    .line 82
    .line 83
    if-ne p1, v3, :cond_4

    .line 84
    .line 85
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 86
    .line 87
    add-int/lit8 v8, v8, -0x1

    .line 88
    .line 89
    add-int/2addr p1, v8

    .line 90
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 93
    .line 94
    .line 95
    const/4 p1, 0x3

    .line 96
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 97
    .line 98
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 99
    .line 100
    return-wide v6

    .line 101
    :cond_4
    const/16 v5, 0x7d

    .line 102
    .line 103
    if-ne p1, v5, :cond_9

    .line 104
    .line 105
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 106
    .line 107
    add-int/lit8 v9, v8, 0x1

    .line 108
    .line 109
    add-int/2addr p1, v8

    .line 110
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-ne p1, v3, :cond_5

    .line 115
    .line 116
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 117
    .line 118
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 119
    .line 120
    add-int/lit8 v9, v9, -0x1

    .line 121
    .line 122
    add-int/2addr p1, v9

    .line 123
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    const/16 v0, 0x5d

    .line 130
    .line 131
    if-ne p1, v0, :cond_6

    .line 132
    .line 133
    const/16 p1, 0xf

    .line 134
    .line 135
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 136
    .line 137
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 138
    .line 139
    add-int/lit8 v9, v9, -0x1

    .line 140
    .line 141
    add-int/2addr p1, v9

    .line 142
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_6
    if-ne p1, v5, :cond_7

    .line 149
    .line 150
    const/16 p1, 0xd

    .line 151
    .line 152
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 153
    .line 154
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 155
    .line 156
    add-int/lit8 v9, v9, -0x1

    .line 157
    .line 158
    add-int/2addr p1, v9

    .line 159
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_7
    const/16 v0, 0x1a

    .line 166
    .line 167
    if-ne p1, v0, :cond_8

    .line 168
    .line 169
    const/16 p1, 0x14

    .line 170
    .line 171
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 172
    .line 173
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 174
    .line 175
    add-int/lit8 v9, v9, -0x1

    .line 176
    .line 177
    add-int/2addr p1, v9

    .line 178
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 179
    .line 180
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 181
    .line 182
    :goto_1
    const/4 p1, 0x4

    .line 183
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 184
    .line 185
    return-wide v6

    .line 186
    :cond_8
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 187
    .line 188
    return-wide v1

    .line 189
    :cond_9
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 190
    .line 191
    return-wide v1

    .line 192
    :cond_a
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 193
    .line 194
    return-wide v1
.end method

.method public E0([C)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->n([C)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 p1, -0x2

    .line 11
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->Q0()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    array-length v1, p1

    .line 19
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 20
    .line 21
    add-int/lit8 v3, v1, 0x1

    .line 22
    .line 23
    add-int/2addr v2, v1

    .line 24
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, 0x22

    .line 29
    .line 30
    const/4 v4, -0x1

    .line 31
    if-eq v1, v2, :cond_1

    .line 32
    .line 33
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->Q0()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 41
    .line 42
    array-length v5, p1

    .line 43
    add-int/2addr v1, v5

    .line 44
    const/4 v5, 0x1

    .line 45
    add-int/2addr v1, v5

    .line 46
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/e;->k0(CI)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eq v1, v4, :cond_b

    .line 51
    .line 52
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 53
    .line 54
    array-length v6, p1

    .line 55
    add-int/2addr v2, v6

    .line 56
    add-int/2addr v2, v5

    .line 57
    sub-int v6, v1, v2

    .line 58
    .line 59
    invoke-virtual {p0, v2, v6}, Lcom/alibaba/fastjson/parser/e;->R0(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget v6, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 64
    .line 65
    array-length v7, p1

    .line 66
    add-int/2addr v6, v7

    .line 67
    add-int/2addr v6, v5

    .line 68
    :goto_0
    if-ge v6, v1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    const/16 v8, 0x5c

    .line 75
    .line 76
    if-ne v7, v8, :cond_2

    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 84
    .line 85
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->Q0()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    return-object p1

    .line 92
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 93
    .line 94
    array-length p1, p1

    .line 95
    add-int/2addr p1, v0

    .line 96
    add-int/2addr p1, v5

    .line 97
    sub-int/2addr v1, p1

    .line 98
    add-int/2addr v1, v5

    .line 99
    add-int/2addr v3, v1

    .line 100
    add-int/lit8 p1, v3, 0x1

    .line 101
    .line 102
    add-int/2addr v0, v3

    .line 103
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/16 v1, 0x2c

    .line 108
    .line 109
    if-ne v0, v1, :cond_5

    .line 110
    .line 111
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 112
    .line 113
    sub-int/2addr p1, v5

    .line 114
    add-int/2addr v0, p1

    .line 115
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 118
    .line 119
    .line 120
    const/4 p1, 0x3

    .line 121
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 122
    .line 123
    return-object v2

    .line 124
    :cond_5
    const/16 v3, 0x7d

    .line 125
    .line 126
    if-ne v0, v3, :cond_a

    .line 127
    .line 128
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 129
    .line 130
    add-int/lit8 v6, p1, 0x1

    .line 131
    .line 132
    add-int/2addr v0, p1

    .line 133
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-ne p1, v1, :cond_6

    .line 138
    .line 139
    const/16 p1, 0x10

    .line 140
    .line 141
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 142
    .line 143
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 144
    .line 145
    sub-int/2addr v6, v5

    .line 146
    add-int/2addr p1, v6

    .line 147
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_6
    const/16 v0, 0x5d

    .line 154
    .line 155
    if-ne p1, v0, :cond_7

    .line 156
    .line 157
    const/16 p1, 0xf

    .line 158
    .line 159
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 160
    .line 161
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 162
    .line 163
    sub-int/2addr v6, v5

    .line 164
    add-int/2addr p1, v6

    .line 165
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_7
    if-ne p1, v3, :cond_8

    .line 172
    .line 173
    const/16 p1, 0xd

    .line 174
    .line 175
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 176
    .line 177
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 178
    .line 179
    sub-int/2addr v6, v5

    .line 180
    add-int/2addr p1, v6

    .line 181
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_8
    const/16 v0, 0x1a

    .line 188
    .line 189
    if-ne p1, v0, :cond_9

    .line 190
    .line 191
    const/16 p1, 0x14

    .line 192
    .line 193
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 194
    .line 195
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 196
    .line 197
    sub-int/2addr v6, v5

    .line 198
    add-int/2addr p1, v6

    .line 199
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 200
    .line 201
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 202
    .line 203
    :goto_2
    const/4 p1, 0x4

    .line 204
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 205
    .line 206
    return-object v2

    .line 207
    :cond_9
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->Q0()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    return-object p1

    .line 214
    :cond_a
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->Q0()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    return-object p1

    .line 221
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 222
    .line 223
    const-string v0, "unclosed str"

    .line 224
    .line 225
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p1
.end method

.method public F0([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->n([C)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, -0x2

    .line 12
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    const-class v0, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance p2, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-class v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    new-instance p2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    :goto_0
    array-length p1, p1

    .line 50
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 51
    .line 52
    add-int/lit8 v2, p1, 0x1

    .line 53
    .line 54
    add-int/2addr v0, p1

    .line 55
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const/16 v0, 0x5b

    .line 60
    .line 61
    const/4 v3, -0x1

    .line 62
    if-eq p1, v0, :cond_3

    .line 63
    .line 64
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_3
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 68
    .line 69
    add-int/lit8 v0, v2, 0x1

    .line 70
    .line 71
    add-int/2addr p1, v2

    .line 72
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    :goto_1
    const/16 v2, 0x22

    .line 77
    .line 78
    if-eq p1, v2, :cond_4

    .line 79
    .line 80
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_4
    move p1, v0

    .line 84
    :goto_2
    iget v4, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 85
    .line 86
    add-int/lit8 v5, p1, 0x1

    .line 87
    .line 88
    add-int/2addr v4, p1

    .line 89
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-ne p1, v2, :cond_d

    .line 94
    .line 95
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 96
    .line 97
    add-int/2addr v0, p1

    .line 98
    add-int/2addr p1, v5

    .line 99
    sub-int/2addr p1, v0

    .line 100
    add-int/lit8 p1, p1, -0x1

    .line 101
    .line 102
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/e;->R0(II)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 110
    .line 111
    add-int/lit8 v0, v5, 0x1

    .line 112
    .line 113
    add-int/2addr p1, v5

    .line 114
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    const/16 v2, 0x2c

    .line 119
    .line 120
    if-ne p1, v2, :cond_5

    .line 121
    .line 122
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 123
    .line 124
    add-int/lit8 v2, v0, 0x1

    .line 125
    .line 126
    add-int/2addr p1, v0

    .line 127
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    move v0, v2

    .line 132
    goto :goto_1

    .line 133
    :cond_5
    const/16 v4, 0x5d

    .line 134
    .line 135
    if-ne p1, v4, :cond_c

    .line 136
    .line 137
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 138
    .line 139
    add-int/lit8 v5, v0, 0x1

    .line 140
    .line 141
    add-int/2addr p1, v0

    .line 142
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-ne p1, v2, :cond_6

    .line 147
    .line 148
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 149
    .line 150
    add-int/lit8 v5, v5, -0x1

    .line 151
    .line 152
    add-int/2addr p1, v5

    .line 153
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 156
    .line 157
    .line 158
    const/4 p1, 0x3

    .line 159
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 160
    .line 161
    return-object p2

    .line 162
    :cond_6
    const/16 v0, 0x7d

    .line 163
    .line 164
    if-ne p1, v0, :cond_b

    .line 165
    .line 166
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 167
    .line 168
    add-int/lit8 v6, v5, 0x1

    .line 169
    .line 170
    add-int/2addr p1, v5

    .line 171
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-ne p1, v2, :cond_7

    .line 176
    .line 177
    const/16 p1, 0x10

    .line 178
    .line 179
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 180
    .line 181
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 182
    .line 183
    add-int/lit8 v6, v6, -0x1

    .line 184
    .line 185
    add-int/2addr p1, v6

    .line 186
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_7
    if-ne p1, v4, :cond_8

    .line 193
    .line 194
    const/16 p1, 0xf

    .line 195
    .line 196
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 197
    .line 198
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 199
    .line 200
    add-int/lit8 v6, v6, -0x1

    .line 201
    .line 202
    add-int/2addr p1, v6

    .line 203
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_8
    if-ne p1, v0, :cond_9

    .line 210
    .line 211
    const/16 p1, 0xd

    .line 212
    .line 213
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 214
    .line 215
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 216
    .line 217
    add-int/lit8 v6, v6, -0x1

    .line 218
    .line 219
    add-int/2addr p1, v6

    .line 220
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_9
    const/16 v0, 0x1a

    .line 227
    .line 228
    if-ne p1, v0, :cond_a

    .line 229
    .line 230
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 231
    .line 232
    add-int/lit8 v6, v6, -0x1

    .line 233
    .line 234
    add-int/2addr p1, v6

    .line 235
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 236
    .line 237
    const/16 p1, 0x14

    .line 238
    .line 239
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 240
    .line 241
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 242
    .line 243
    :goto_3
    const/4 p1, 0x4

    .line 244
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 245
    .line 246
    return-object p2

    .line 247
    :cond_a
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 248
    .line 249
    return-object v1

    .line 250
    :cond_b
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 251
    .line 252
    return-object v1

    .line 253
    :cond_c
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 254
    .line 255
    return-object v1

    .line 256
    :cond_d
    const/16 v4, 0x5c

    .line 257
    .line 258
    if-ne p1, v4, :cond_e

    .line 259
    .line 260
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 261
    .line 262
    return-object v1

    .line 263
    :cond_e
    move p1, v5

    .line 264
    goto/16 :goto_2

    .line 265
    .line 266
    :catch_0
    move-exception p1

    .line 267
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 268
    .line 269
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    .line 275
    .line 276
    throw p2
.end method

.method public G0([CLcom/alibaba/fastjson/parser/l;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->n([C)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 p1, -0x2

    .line 12
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 13
    .line 14
    return-object v2

    .line 15
    :cond_0
    array-length v1, p1

    .line 16
    iget v3, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 17
    .line 18
    add-int/lit8 v4, v1, 0x1

    .line 19
    .line 20
    add-int/2addr v3, v1

    .line 21
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v3, 0x22

    .line 26
    .line 27
    const/4 v5, -0x1

    .line 28
    if-eq v1, v3, :cond_1

    .line 29
    .line 30
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_1
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 34
    .line 35
    add-int/lit8 v6, v4, 0x1

    .line 36
    .line 37
    add-int/2addr v1, v4

    .line 38
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-ne v1, v3, :cond_8

    .line 43
    .line 44
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 45
    .line 46
    array-length p1, p1

    .line 47
    add-int/2addr p1, v1

    .line 48
    add-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    add-int/2addr v1, v6

    .line 51
    sub-int/2addr v1, p1

    .line 52
    add-int/lit8 v1, v1, -0x1

    .line 53
    .line 54
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/alibaba/fastjson/parser/e;->a(IIILcom/alibaba/fastjson/parser/l;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 59
    .line 60
    add-int/lit8 v0, v6, 0x1

    .line 61
    .line 62
    add-int/2addr p2, v6

    .line 63
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    const/16 v1, 0x2c

    .line 68
    .line 69
    if-ne p2, v1, :cond_2

    .line 70
    .line 71
    iget p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 72
    .line 73
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    add-int/2addr p2, v0

    .line 76
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 79
    .line 80
    .line 81
    const/4 p2, 0x3

    .line 82
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_2
    const/16 v3, 0x7d

    .line 86
    .line 87
    if-ne p2, v3, :cond_7

    .line 88
    .line 89
    iget p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 90
    .line 91
    add-int/lit8 v4, v0, 0x1

    .line 92
    .line 93
    add-int/2addr p2, v0

    .line 94
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-ne p2, v1, :cond_3

    .line 99
    .line 100
    const/16 p2, 0x10

    .line 101
    .line 102
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 103
    .line 104
    iget p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 105
    .line 106
    add-int/lit8 v4, v4, -0x1

    .line 107
    .line 108
    add-int/2addr p2, v4

    .line 109
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    const/16 v0, 0x5d

    .line 116
    .line 117
    if-ne p2, v0, :cond_4

    .line 118
    .line 119
    const/16 p2, 0xf

    .line 120
    .line 121
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 122
    .line 123
    iget p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 124
    .line 125
    add-int/lit8 v4, v4, -0x1

    .line 126
    .line 127
    add-int/2addr p2, v4

    .line 128
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    if-ne p2, v3, :cond_5

    .line 135
    .line 136
    const/16 p2, 0xd

    .line 137
    .line 138
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 139
    .line 140
    iget p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 141
    .line 142
    add-int/lit8 v4, v4, -0x1

    .line 143
    .line 144
    add-int/2addr p2, v4

    .line 145
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_5
    const/16 v0, 0x1a

    .line 152
    .line 153
    if-ne p2, v0, :cond_6

    .line 154
    .line 155
    const/16 p2, 0x14

    .line 156
    .line 157
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 158
    .line 159
    iget p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 160
    .line 161
    add-int/lit8 v4, v4, -0x1

    .line 162
    .line 163
    add-int/2addr p2, v4

    .line 164
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 165
    .line 166
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 167
    .line 168
    :goto_1
    const/4 p2, 0x4

    .line 169
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 170
    .line 171
    return-object p1

    .line 172
    :cond_6
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 173
    .line 174
    return-object v2

    .line 175
    :cond_7
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 176
    .line 177
    return-object v2

    .line 178
    :cond_8
    mul-int/lit8 v0, v0, 0x1f

    .line 179
    .line 180
    add-int/2addr v0, v1

    .line 181
    const/16 v4, 0x5c

    .line 182
    .line 183
    if-ne v1, v4, :cond_9

    .line 184
    .line 185
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 186
    .line 187
    return-object v2

    .line 188
    :cond_9
    move v4, v6

    .line 189
    goto/16 :goto_0
.end method

.method public final H0(C)F
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 5
    .line 6
    add-int/2addr v1, v0

    .line 7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, -0x1

    .line 13
    const/16 v3, 0x30

    .line 14
    .line 15
    if-lt v0, v3, :cond_4

    .line 16
    .line 17
    const/16 v4, 0x39

    .line 18
    .line 19
    if-gt v0, v4, :cond_4

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    const/4 v5, 0x1

    .line 23
    :goto_0
    iget v6, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 24
    .line 25
    add-int/lit8 v7, v5, 0x1

    .line 26
    .line 27
    add-int/2addr v6, v5

    .line 28
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-lt v5, v3, :cond_0

    .line 33
    .line 34
    if-gt v5, v4, :cond_0

    .line 35
    .line 36
    move v5, v7

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/16 v6, 0x2e

    .line 39
    .line 40
    if-ne v5, v6, :cond_2

    .line 41
    .line 42
    iget v5, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 43
    .line 44
    add-int/lit8 v6, v7, 0x1

    .line 45
    .line 46
    add-int/2addr v5, v7

    .line 47
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-lt v5, v3, :cond_1

    .line 52
    .line 53
    if-gt v5, v4, :cond_1

    .line 54
    .line 55
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 56
    .line 57
    add-int/lit8 v7, v6, 0x1

    .line 58
    .line 59
    add-int/2addr v1, v6

    .line 60
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-lt v5, v3, :cond_2

    .line 65
    .line 66
    if-gt v5, v4, :cond_2

    .line 67
    .line 68
    move v6, v7

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 71
    .line 72
    return v1

    .line 73
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 74
    .line 75
    add-int v3, v1, v7

    .line 76
    .line 77
    sub-int/2addr v3, v1

    .line 78
    sub-int/2addr v3, v0

    .line 79
    invoke-virtual {p0, v1, v3}, Lcom/alibaba/fastjson/parser/e;->R0(II)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-ne v5, p1, :cond_3

    .line 88
    .line 89
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 90
    .line 91
    sub-int/2addr v7, v0

    .line 92
    add-int/2addr p1, v7

    .line 93
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 96
    .line 97
    .line 98
    const/4 p1, 0x3

    .line 99
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 100
    .line 101
    const/16 p1, 0x10

    .line 102
    .line 103
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 104
    .line 105
    return v1

    .line 106
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 107
    .line 108
    return v1

    .line 109
    :cond_4
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 110
    .line 111
    return v1
.end method

.method public final I()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 10
    .line 11
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v4, 0x2d

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    if-ne v3, v4, :cond_1

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    const/high16 v3, -0x80000000

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const v3, -0x7fffffff

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    :goto_0
    if-ge v0, v1, :cond_2

    .line 34
    .line 35
    sget-object v2, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 36
    .line 37
    add-int/lit8 v6, v0, 0x1

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    aget v0, v2, v0

    .line 44
    .line 45
    neg-int v2, v0

    .line 46
    :goto_1
    move v0, v6

    .line 47
    :cond_2
    if-ge v0, v1, :cond_7

    .line 48
    .line 49
    add-int/lit8 v6, v0, 0x1

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/16 v7, 0x4c

    .line 56
    .line 57
    if-eq v0, v7, :cond_6

    .line 58
    .line 59
    const/16 v7, 0x53

    .line 60
    .line 61
    if-eq v0, v7, :cond_6

    .line 62
    .line 63
    const/16 v7, 0x42

    .line 64
    .line 65
    if-ne v0, v7, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    sget-object v7, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 69
    .line 70
    aget v0, v7, v0

    .line 71
    .line 72
    const v7, -0xccccccc

    .line 73
    .line 74
    .line 75
    if-lt v2, v7, :cond_5

    .line 76
    .line 77
    mul-int/lit8 v2, v2, 0xa

    .line 78
    .line 79
    add-int v7, v3, v0

    .line 80
    .line 81
    if-lt v2, v7, :cond_4

    .line 82
    .line 83
    sub-int/2addr v2, v0

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->g0()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->g0()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_6
    :goto_2
    move v0, v6

    .line 106
    :cond_7
    if-eqz v4, :cond_9

    .line 107
    .line 108
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 109
    .line 110
    add-int/2addr v1, v5

    .line 111
    if-le v0, v1, :cond_8

    .line 112
    .line 113
    return v2

    .line 114
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->g0()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0

    .line 124
    :cond_9
    neg-int v0, v2

    .line 125
    return v0
.end method

.method public final I0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/e;->k:Z

    .line 9
    .line 10
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 17
    .line 18
    .line 19
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->R()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/e;->n:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Integer;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/16 v0, 0x12

    .line 50
    .line 51
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 52
    .line 53
    :goto_1
    return-void
.end method

.method public final J()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 2
    .line 3
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 4
    .line 5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/16 v2, 0x2d

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 21
    .line 22
    const/16 v3, 0x39

    .line 23
    .line 24
    const/16 v4, 0x30

    .line 25
    .line 26
    if-lt v0, v4, :cond_1

    .line 27
    .line 28
    if-gt v0, v3, :cond_1

    .line 29
    .line 30
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 31
    .line 32
    add-int/2addr v0, v1

    .line 33
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/16 v5, 0x2e

    .line 40
    .line 41
    if-ne v0, v5, :cond_3

    .line 42
    .line 43
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 44
    .line 45
    add-int/2addr v0, v1

    .line 46
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 49
    .line 50
    .line 51
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 52
    .line 53
    if-lt v0, v4, :cond_2

    .line 54
    .line 55
    if-gt v0, v3, :cond_2

    .line 56
    .line 57
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 58
    .line 59
    add-int/2addr v0, v1

    .line 60
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v0, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    const/4 v0, 0x0

    .line 69
    :goto_2
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 70
    .line 71
    const/16 v6, 0x4c

    .line 72
    .line 73
    if-ne v5, v6, :cond_4

    .line 74
    .line 75
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 76
    .line 77
    add-int/2addr v2, v1

    .line 78
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    const/16 v6, 0x53

    .line 85
    .line 86
    if-ne v5, v6, :cond_5

    .line 87
    .line 88
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 89
    .line 90
    add-int/2addr v2, v1

    .line 91
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    const/16 v6, 0x42

    .line 98
    .line 99
    if-ne v5, v6, :cond_6

    .line 100
    .line 101
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 102
    .line 103
    add-int/2addr v2, v1

    .line 104
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    const/16 v6, 0x46

    .line 111
    .line 112
    if-ne v5, v6, :cond_7

    .line 113
    .line 114
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 115
    .line 116
    add-int/2addr v0, v1

    .line 117
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 120
    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_7
    const/16 v7, 0x44

    .line 124
    .line 125
    if-ne v5, v7, :cond_8

    .line 126
    .line 127
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 128
    .line 129
    add-int/2addr v0, v1

    .line 130
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 133
    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_8
    const/16 v8, 0x65

    .line 137
    .line 138
    if-eq v5, v8, :cond_a

    .line 139
    .line 140
    const/16 v8, 0x45

    .line 141
    .line 142
    if-ne v5, v8, :cond_9

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_9
    :goto_3
    move v1, v0

    .line 146
    goto :goto_6

    .line 147
    :cond_a
    :goto_4
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 148
    .line 149
    add-int/2addr v0, v1

    .line 150
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 153
    .line 154
    .line 155
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 156
    .line 157
    const/16 v5, 0x2b

    .line 158
    .line 159
    if-eq v0, v5, :cond_b

    .line 160
    .line 161
    if-ne v0, v2, :cond_c

    .line 162
    .line 163
    :cond_b
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 164
    .line 165
    add-int/2addr v0, v1

    .line 166
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 169
    .line 170
    .line 171
    :cond_c
    :goto_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 172
    .line 173
    if-lt v0, v4, :cond_d

    .line 174
    .line 175
    if-gt v0, v3, :cond_d

    .line 176
    .line 177
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 178
    .line 179
    add-int/2addr v0, v1

    .line 180
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 183
    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_d
    if-eq v0, v7, :cond_e

    .line 187
    .line 188
    if-ne v0, v6, :cond_f

    .line 189
    .line 190
    :cond_e
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 191
    .line 192
    add-int/2addr v0, v1

    .line 193
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 196
    .line 197
    .line 198
    :cond_f
    :goto_6
    if-eqz v1, :cond_10

    .line 199
    .line 200
    const/4 v0, 0x3

    .line 201
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_10
    const/4 v0, 0x2

    .line 205
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 206
    .line 207
    :goto_7
    return-void
.end method

.method public final J0()V
    .locals 14

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 2
    .line 3
    const/16 v1, 0x6e

    .line 4
    .line 5
    if-ne v0, v1, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 8
    .line 9
    .line 10
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 11
    .line 12
    const/16 v1, 0x75

    .line 13
    .line 14
    const-string v2, "scan true error"

    .line 15
    .line 16
    const/16 v3, 0xc

    .line 17
    .line 18
    const/16 v4, 0x1a

    .line 19
    .line 20
    const/16 v5, 0xd

    .line 21
    .line 22
    const/16 v6, 0xa

    .line 23
    .line 24
    const/16 v7, 0x5d

    .line 25
    .line 26
    const/16 v8, 0x7d

    .line 27
    .line 28
    const/16 v9, 0x2c

    .line 29
    .line 30
    const/16 v10, 0x20

    .line 31
    .line 32
    const/16 v11, 0x8

    .line 33
    .line 34
    const/16 v12, 0x9

    .line 35
    .line 36
    if-ne v0, v1, :cond_4

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 39
    .line 40
    .line 41
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 42
    .line 43
    const-string v1, "error parse true"

    .line 44
    .line 45
    const/16 v13, 0x6c

    .line 46
    .line 47
    if-ne v0, v13, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 50
    .line 51
    .line 52
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 53
    .line 54
    if-ne v0, v13, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 57
    .line 58
    .line 59
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 60
    .line 61
    if-eq v0, v10, :cond_1

    .line 62
    .line 63
    if-eq v0, v9, :cond_1

    .line 64
    .line 65
    if-eq v0, v8, :cond_1

    .line 66
    .line 67
    if-eq v0, v7, :cond_1

    .line 68
    .line 69
    if-eq v0, v6, :cond_1

    .line 70
    .line 71
    if-eq v0, v5, :cond_1

    .line 72
    .line 73
    if-eq v0, v12, :cond_1

    .line 74
    .line 75
    if-eq v0, v4, :cond_1

    .line 76
    .line 77
    if-eq v0, v3, :cond_1

    .line 78
    .line 79
    if-ne v0, v11, :cond_0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 83
    .line 84
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_1
    :goto_0
    iput v11, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 92
    .line 93
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 98
    .line 99
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :cond_4
    const/16 v1, 0x65

    .line 104
    .line 105
    if-ne v0, v1, :cond_8

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 108
    .line 109
    .line 110
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 111
    .line 112
    const/16 v1, 0x77

    .line 113
    .line 114
    if-ne v0, v1, :cond_7

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 117
    .line 118
    .line 119
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 120
    .line 121
    if-eq v0, v10, :cond_6

    .line 122
    .line 123
    if-eq v0, v9, :cond_6

    .line 124
    .line 125
    if-eq v0, v8, :cond_6

    .line 126
    .line 127
    if-eq v0, v7, :cond_6

    .line 128
    .line 129
    if-eq v0, v6, :cond_6

    .line 130
    .line 131
    if-eq v0, v5, :cond_6

    .line 132
    .line 133
    if-eq v0, v12, :cond_6

    .line 134
    .line 135
    if-eq v0, v4, :cond_6

    .line 136
    .line 137
    if-eq v0, v3, :cond_6

    .line 138
    .line 139
    if-ne v0, v11, :cond_5

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 143
    .line 144
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :cond_6
    :goto_1
    iput v12, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 149
    .line 150
    return-void

    .line 151
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 152
    .line 153
    const-string v1, "error parse w"

    .line 154
    .line 155
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 160
    .line 161
    const-string v1, "error parse e"

    .line 162
    .line 163
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 168
    .line 169
    const-string v1, "error parse null or new"

    .line 170
    .line 171
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v0
.end method

.method public final K(Lcom/alibaba/fastjson/parser/l;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/util/f;->b:[Z

    .line 2
    .line 3
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    aget-boolean v0, v0, v1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    if-eqz v0, :cond_4

    .line 18
    .line 19
    sget-object v0, Lcom/alibaba/fastjson/util/f;->c:[Z

    .line 20
    .line 21
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 22
    .line 23
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 24
    .line 25
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 26
    .line 27
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    array-length v4, v0

    .line 32
    if-ge v2, v4, :cond_3

    .line 33
    .line 34
    aget-boolean v4, v0, v2

    .line 35
    .line 36
    if-nez v4, :cond_3

    .line 37
    .line 38
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 45
    .line 46
    const/16 v0, 0x12

    .line 47
    .line 48
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 49
    .line 50
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 51
    .line 52
    const/4 v2, 0x4

    .line 53
    if-ne v0, v2, :cond_2

    .line 54
    .line 55
    const v0, 0x33c587

    .line 56
    .line 57
    .line 58
    if-ne v1, v0, :cond_2

    .line 59
    .line 60
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/16 v2, 0x6e

    .line 67
    .line 68
    if-ne v0, v2, :cond_2

    .line 69
    .line 70
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 71
    .line 72
    add-int/2addr v0, v3

    .line 73
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/16 v2, 0x75

    .line 78
    .line 79
    if-ne v0, v2, :cond_2

    .line 80
    .line 81
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 82
    .line 83
    add-int/lit8 v0, v0, 0x2

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/16 v2, 0x6c

    .line 90
    .line 91
    if-ne v0, v2, :cond_2

    .line 92
    .line 93
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 94
    .line 95
    add-int/lit8 v0, v0, 0x3

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-ne v0, v2, :cond_2

    .line 102
    .line 103
    const/4 p1, 0x0

    .line 104
    return-object p1

    .line 105
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 106
    .line 107
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 108
    .line 109
    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/alibaba/fastjson/parser/e;->a(IIILcom/alibaba/fastjson/parser/l;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    return-object p1

    .line 114
    :cond_3
    mul-int/lit8 v1, v1, 0x1f

    .line 115
    .line 116
    add-int/2addr v1, v2

    .line 117
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 118
    .line 119
    add-int/2addr v2, v3

    .line 120
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v1, "illegal identifier : "

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p1
.end method

.method public final K0()V
    .locals 3

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 2
    .line 3
    const/16 v1, 0x53

    .line 4
    .line 5
    const-string v2, "error parse true"

    .line 6
    .line 7
    if-ne v0, v1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 10
    .line 11
    .line 12
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 13
    .line 14
    const/16 v1, 0x65

    .line 15
    .line 16
    if-ne v0, v1, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 19
    .line 20
    .line 21
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 22
    .line 23
    const/16 v1, 0x74

    .line 24
    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 28
    .line 29
    .line 30
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 31
    .line 32
    const/16 v1, 0x20

    .line 33
    .line 34
    if-eq v0, v1, :cond_1

    .line 35
    .line 36
    const/16 v1, 0xa

    .line 37
    .line 38
    if-eq v0, v1, :cond_1

    .line 39
    .line 40
    const/16 v1, 0xd

    .line 41
    .line 42
    if-eq v0, v1, :cond_1

    .line 43
    .line 44
    const/16 v1, 0x9

    .line 45
    .line 46
    if-eq v0, v1, :cond_1

    .line 47
    .line 48
    const/16 v1, 0xc

    .line 49
    .line 50
    if-eq v0, v1, :cond_1

    .line 51
    .line 52
    const/16 v1, 0x8

    .line 53
    .line 54
    if-eq v0, v1, :cond_1

    .line 55
    .line 56
    const/16 v1, 0x5b

    .line 57
    .line 58
    if-eq v0, v1, :cond_1

    .line 59
    .line 60
    const/16 v1, 0x28

    .line 61
    .line 62
    if-ne v0, v1, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 66
    .line 67
    const-string v1, "scan set error"

    .line 68
    .line 69
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_1
    :goto_0
    const/16 v0, 0x15

    .line 74
    .line 75
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 79
    .line 80
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 85
    .line 86
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 91
    .line 92
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0
.end method

.method public final L(I)V
    .locals 0

    .line 1
    const/16 p1, 0x3a

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->r0(C)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final M()V
    .locals 1

    .line 1
    const/16 v0, 0x3a

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->r0(C)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final M0()V
    .locals 4

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 2
    .line 3
    const/16 v1, 0x54

    .line 4
    .line 5
    const-string v2, "error parse true"

    .line 6
    .line 7
    if-ne v0, v1, :cond_8

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 10
    .line 11
    .line 12
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 13
    .line 14
    const/16 v1, 0x72

    .line 15
    .line 16
    if-ne v0, v1, :cond_7

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 19
    .line 20
    .line 21
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 22
    .line 23
    const/16 v1, 0x65

    .line 24
    .line 25
    if-ne v0, v1, :cond_6

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 28
    .line 29
    .line 30
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 31
    .line 32
    if-ne v0, v1, :cond_5

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 35
    .line 36
    .line 37
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 38
    .line 39
    const/16 v3, 0x53

    .line 40
    .line 41
    if-ne v0, v3, :cond_4

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 44
    .line 45
    .line 46
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 47
    .line 48
    if-ne v0, v1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 51
    .line 52
    .line 53
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 54
    .line 55
    const/16 v1, 0x74

    .line 56
    .line 57
    if-ne v0, v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 60
    .line 61
    .line 62
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 63
    .line 64
    const/16 v1, 0x20

    .line 65
    .line 66
    if-eq v0, v1, :cond_1

    .line 67
    .line 68
    const/16 v1, 0xa

    .line 69
    .line 70
    if-eq v0, v1, :cond_1

    .line 71
    .line 72
    const/16 v1, 0xd

    .line 73
    .line 74
    if-eq v0, v1, :cond_1

    .line 75
    .line 76
    const/16 v1, 0x9

    .line 77
    .line 78
    if-eq v0, v1, :cond_1

    .line 79
    .line 80
    const/16 v1, 0xc

    .line 81
    .line 82
    if-eq v0, v1, :cond_1

    .line 83
    .line 84
    const/16 v1, 0x8

    .line 85
    .line 86
    if-eq v0, v1, :cond_1

    .line 87
    .line 88
    const/16 v1, 0x5b

    .line 89
    .line 90
    if-eq v0, v1, :cond_1

    .line 91
    .line 92
    const/16 v1, 0x28

    .line 93
    .line 94
    if-ne v0, v1, :cond_0

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 98
    .line 99
    const-string v1, "scan set error"

    .line 100
    .line 101
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_1
    :goto_0
    const/16 v0, 0x16

    .line 106
    .line 107
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 111
    .line 112
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 117
    .line 118
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 123
    .line 124
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 129
    .line 130
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v0

    .line 134
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 135
    .line 136
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 141
    .line 142
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 147
    .line 148
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0
.end method

.method public final N0()V
    .locals 3

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 2
    .line 3
    const/16 v1, 0x74

    .line 4
    .line 5
    const-string v2, "error parse true"

    .line 6
    .line 7
    if-ne v0, v1, :cond_5

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 10
    .line 11
    .line 12
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 13
    .line 14
    const/16 v1, 0x72

    .line 15
    .line 16
    if-ne v0, v1, :cond_4

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 19
    .line 20
    .line 21
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 22
    .line 23
    const/16 v1, 0x75

    .line 24
    .line 25
    if-ne v0, v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 28
    .line 29
    .line 30
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 31
    .line 32
    const/16 v1, 0x65

    .line 33
    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 37
    .line 38
    .line 39
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 40
    .line 41
    const/16 v1, 0x20

    .line 42
    .line 43
    if-eq v0, v1, :cond_1

    .line 44
    .line 45
    const/16 v1, 0x2c

    .line 46
    .line 47
    if-eq v0, v1, :cond_1

    .line 48
    .line 49
    const/16 v1, 0x7d

    .line 50
    .line 51
    if-eq v0, v1, :cond_1

    .line 52
    .line 53
    const/16 v1, 0x5d

    .line 54
    .line 55
    if-eq v0, v1, :cond_1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    if-eq v0, v1, :cond_1

    .line 60
    .line 61
    const/16 v1, 0xd

    .line 62
    .line 63
    if-eq v0, v1, :cond_1

    .line 64
    .line 65
    const/16 v1, 0x9

    .line 66
    .line 67
    if-eq v0, v1, :cond_1

    .line 68
    .line 69
    const/16 v1, 0x1a

    .line 70
    .line 71
    if-eq v0, v1, :cond_1

    .line 72
    .line 73
    const/16 v1, 0xc

    .line 74
    .line 75
    if-eq v0, v1, :cond_1

    .line 76
    .line 77
    const/16 v1, 0x8

    .line 78
    .line 79
    if-ne v0, v1, :cond_0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 83
    .line 84
    const-string v1, "scan true error"

    .line 85
    .line 86
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_1
    :goto_0
    const/4 v0, 0x6

    .line 91
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 95
    .line 96
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 101
    .line 102
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 107
    .line 108
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0

    .line 112
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 113
    .line 114
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0
.end method

.method public final O()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    if-eq v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    add-int/2addr v0, v3

    .line 12
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v4, 0x24

    .line 17
    .line 18
    if-ne v0, v4, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/16 v4, 0x72

    .line 29
    .line 30
    if-ne v0, v4, :cond_1

    .line 31
    .line 32
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x3

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/16 v4, 0x65

    .line 41
    .line 42
    if-ne v0, v4, :cond_1

    .line 43
    .line 44
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 45
    .line 46
    add-int/2addr v0, v2

    .line 47
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/16 v2, 0x66

    .line 52
    .line 53
    if-ne v0, v2, :cond_1

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    :cond_1
    return v1
.end method

.method public O0(Ljava/lang/String;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    sget-object v1, Lcom/alibaba/fastjson/parser/e;->q:[C

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->n([C)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const/4 p1, -0x2

    .line 13
    return p1

    .line 14
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 15
    .line 16
    array-length v1, v1

    .line 17
    add-int/2addr v2, v1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :goto_0
    const/4 v3, -0x1

    .line 23
    if-ge v0, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    add-int v5, v2, v0

    .line 30
    .line 31
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eq v4, v5, :cond_1

    .line 36
    .line 37
    return v3

    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    add-int/2addr v2, v1

    .line 42
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/16 v0, 0x22

    .line 47
    .line 48
    if-eq p1, v0, :cond_3

    .line 49
    .line 50
    return v3

    .line 51
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 58
    .line 59
    const/16 v0, 0x10

    .line 60
    .line 61
    const/16 v1, 0x2c

    .line 62
    .line 63
    if-ne p1, v1, :cond_4

    .line 64
    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 72
    .line 73
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 74
    .line 75
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 76
    .line 77
    const/4 p1, 0x3

    .line 78
    return p1

    .line 79
    :cond_4
    const/16 v4, 0x7d

    .line 80
    .line 81
    if-ne p1, v4, :cond_9

    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 90
    .line 91
    if-ne p1, v1, :cond_5

    .line 92
    .line 93
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    const/16 v0, 0x5d

    .line 105
    .line 106
    if-ne p1, v0, :cond_6

    .line 107
    .line 108
    const/16 p1, 0xf

    .line 109
    .line 110
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 111
    .line 112
    add-int/lit8 v2, v2, 0x1

    .line 113
    .line 114
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    if-ne p1, v4, :cond_7

    .line 122
    .line 123
    const/16 p1, 0xd

    .line 124
    .line 125
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 126
    .line 127
    add-int/lit8 v2, v2, 0x1

    .line 128
    .line 129
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_7
    const/16 v0, 0x1a

    .line 137
    .line 138
    if-ne p1, v0, :cond_8

    .line 139
    .line 140
    const/16 p1, 0x14

    .line 141
    .line 142
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 143
    .line 144
    :goto_1
    const/4 p1, 0x4

    .line 145
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_8
    return v3

    .line 149
    :cond_9
    :goto_2
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 150
    .line 151
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 152
    .line 153
    return p1
.end method

.method public final P()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/16 v3, 0x1a

    .line 8
    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/e;->m0(C)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0
.end method

.method public final P0()V
    .locals 6

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 2
    .line 3
    const/16 v1, 0x75

    .line 4
    .line 5
    const-string v2, "error parse false"

    .line 6
    .line 7
    if-ne v0, v1, :cond_a

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 10
    .line 11
    .line 12
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 13
    .line 14
    const/16 v1, 0x6e

    .line 15
    .line 16
    if-ne v0, v1, :cond_9

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 19
    .line 20
    .line 21
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 22
    .line 23
    const/16 v3, 0x64

    .line 24
    .line 25
    if-ne v0, v3, :cond_8

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 28
    .line 29
    .line 30
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 31
    .line 32
    const/16 v4, 0x65

    .line 33
    .line 34
    if-ne v0, v4, :cond_7

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 37
    .line 38
    .line 39
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 40
    .line 41
    const/16 v5, 0x66

    .line 42
    .line 43
    if-ne v0, v5, :cond_6

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 46
    .line 47
    .line 48
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 49
    .line 50
    const/16 v5, 0x69

    .line 51
    .line 52
    if-ne v0, v5, :cond_5

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 55
    .line 56
    .line 57
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 58
    .line 59
    if-ne v0, v1, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 62
    .line 63
    .line 64
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 65
    .line 66
    if-ne v0, v4, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 69
    .line 70
    .line 71
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 72
    .line 73
    if-ne v0, v3, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 76
    .line 77
    .line 78
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 79
    .line 80
    const/16 v1, 0x20

    .line 81
    .line 82
    if-eq v0, v1, :cond_1

    .line 83
    .line 84
    const/16 v1, 0x2c

    .line 85
    .line 86
    if-eq v0, v1, :cond_1

    .line 87
    .line 88
    const/16 v1, 0x7d

    .line 89
    .line 90
    if-eq v0, v1, :cond_1

    .line 91
    .line 92
    const/16 v1, 0x5d

    .line 93
    .line 94
    if-eq v0, v1, :cond_1

    .line 95
    .line 96
    const/16 v1, 0xa

    .line 97
    .line 98
    if-eq v0, v1, :cond_1

    .line 99
    .line 100
    const/16 v1, 0xd

    .line 101
    .line 102
    if-eq v0, v1, :cond_1

    .line 103
    .line 104
    const/16 v1, 0x9

    .line 105
    .line 106
    if-eq v0, v1, :cond_1

    .line 107
    .line 108
    const/16 v1, 0x1a

    .line 109
    .line 110
    if-eq v0, v1, :cond_1

    .line 111
    .line 112
    const/16 v1, 0xc

    .line 113
    .line 114
    if-eq v0, v1, :cond_1

    .line 115
    .line 116
    const/16 v1, 0x8

    .line 117
    .line 118
    if-ne v0, v1, :cond_0

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 122
    .line 123
    const-string v1, "scan false error"

    .line 124
    .line 125
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :cond_1
    :goto_0
    const/16 v0, 0x17

    .line 130
    .line 131
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 132
    .line 133
    return-void

    .line 134
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 135
    .line 136
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 141
    .line 142
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 147
    .line 148
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0

    .line 152
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 153
    .line 154
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 159
    .line 160
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v0

    .line 164
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 165
    .line 166
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 171
    .line 172
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v0

    .line 176
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 177
    .line 178
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 183
    .line 184
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v0
.end method

.method public final Q()Ljava/math/BigDecimal;
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->g0()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final Q0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->c(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public abstract R()Ljava/lang/String;
.end method

.method public abstract R0(II)Ljava/lang/String;
.end method

.method public abstract a(IIILcom/alibaba/fastjson/parser/l;)Ljava/lang/String;
.end method

.method public final a0()Ljava/lang/Number;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    iput v3, v0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 10
    .line 11
    :cond_0
    iget v1, v0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 12
    .line 13
    iget v2, v0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 14
    .line 15
    add-int/2addr v2, v1

    .line 16
    add-int/lit8 v4, v2, -0x1

    .line 17
    .line 18
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/16 v5, 0x53

    .line 23
    .line 24
    const/16 v6, 0x4c

    .line 25
    .line 26
    const/16 v7, 0x42

    .line 27
    .line 28
    if-eq v4, v7, :cond_3

    .line 29
    .line 30
    if-eq v4, v6, :cond_2

    .line 31
    .line 32
    if-eq v4, v5, :cond_1

    .line 33
    .line 34
    const/16 v4, 0x20

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 38
    .line 39
    const/16 v4, 0x53

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 43
    .line 44
    const/16 v4, 0x4c

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 48
    .line 49
    const/16 v4, 0x42

    .line 50
    .line 51
    :goto_0
    iget v8, v0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 52
    .line 53
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const/16 v9, 0x2d

    .line 58
    .line 59
    const/4 v10, 0x1

    .line 60
    if-ne v8, v9, :cond_4

    .line 61
    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    const-wide/high16 v8, -0x8000000000000000L

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :goto_1
    if-ge v1, v2, :cond_5

    .line 74
    .line 75
    sget-object v11, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 76
    .line 77
    add-int/lit8 v12, v1, 0x1

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    aget v1, v11, v1

    .line 84
    .line 85
    neg-int v1, v1

    .line 86
    int-to-long v13, v1

    .line 87
    move v1, v12

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    const-wide/16 v13, 0x0

    .line 90
    .line 91
    :goto_2
    if-ge v1, v2, :cond_8

    .line 92
    .line 93
    sget-object v11, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 94
    .line 95
    add-int/lit8 v12, v1, 0x1

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    aget v1, v11, v1

    .line 102
    .line 103
    const-wide v15, -0xcccccccccccccccL

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    cmp-long v11, v13, v15

    .line 109
    .line 110
    if-gez v11, :cond_6

    .line 111
    .line 112
    new-instance v1, Ljava/math/BigInteger;

    .line 113
    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/e;->g0()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-object v1

    .line 122
    :cond_6
    const-wide/16 v15, 0xa

    .line 123
    .line 124
    mul-long v13, v13, v15

    .line 125
    .line 126
    int-to-long v5, v1

    .line 127
    add-long v16, v8, v5

    .line 128
    .line 129
    cmp-long v1, v13, v16

    .line 130
    .line 131
    if-gez v1, :cond_7

    .line 132
    .line 133
    new-instance v1, Ljava/math/BigInteger;

    .line 134
    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/e;->g0()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-object v1

    .line 143
    :cond_7
    sub-long/2addr v13, v5

    .line 144
    move v1, v12

    .line 145
    const/16 v5, 0x53

    .line 146
    .line 147
    const/16 v6, 0x4c

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_8
    if-eqz v3, :cond_d

    .line 151
    .line 152
    iget v2, v0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 153
    .line 154
    add-int/2addr v2, v10

    .line 155
    if-le v1, v2, :cond_c

    .line 156
    .line 157
    const-wide/32 v1, -0x80000000

    .line 158
    .line 159
    .line 160
    cmp-long v3, v13, v1

    .line 161
    .line 162
    if-ltz v3, :cond_b

    .line 163
    .line 164
    const/16 v1, 0x4c

    .line 165
    .line 166
    if-eq v4, v1, :cond_b

    .line 167
    .line 168
    const/16 v1, 0x53

    .line 169
    .line 170
    if-ne v4, v1, :cond_9

    .line 171
    .line 172
    long-to-int v1, v13

    .line 173
    int-to-short v1, v1

    .line 174
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    return-object v1

    .line 179
    :cond_9
    if-ne v4, v7, :cond_a

    .line 180
    .line 181
    long-to-int v1, v13

    .line 182
    int-to-byte v1, v1

    .line 183
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    return-object v1

    .line 188
    :cond_a
    long-to-int v1, v13

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    return-object v1

    .line 194
    :cond_b
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    return-object v1

    .line 199
    :cond_c
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 200
    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/e;->g0()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v1

    .line 209
    :cond_d
    neg-long v1, v13

    .line 210
    const-wide/32 v5, 0x7fffffff

    .line 211
    .line 212
    .line 213
    cmp-long v3, v1, v5

    .line 214
    .line 215
    if-gtz v3, :cond_10

    .line 216
    .line 217
    const/16 v3, 0x4c

    .line 218
    .line 219
    if-eq v4, v3, :cond_10

    .line 220
    .line 221
    const/16 v3, 0x53

    .line 222
    .line 223
    if-ne v4, v3, :cond_e

    .line 224
    .line 225
    long-to-int v2, v1

    .line 226
    int-to-short v1, v2

    .line 227
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    return-object v1

    .line 232
    :cond_e
    if-ne v4, v7, :cond_f

    .line 233
    .line 234
    long-to-int v2, v1

    .line 235
    int-to-byte v1, v2

    .line 236
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    return-object v1

    .line 241
    :cond_f
    long-to-int v2, v1

    .line 242
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    return-object v1

    .line 247
    :cond_10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    return-object v1
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final c(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->d:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/alibaba/fastjson/parser/Feature;->isEnabled(ILcom/alibaba/fastjson/parser/Feature;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final c0(Lcom/alibaba/fastjson/parser/l;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->s()V

    .line 2
    .line 3
    .line 4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 5
    .line 6
    const/16 v1, 0x22

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/parser/e;->d(Lcom/alibaba/fastjson/parser/l;C)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    const-string v1, "syntax error"

    .line 16
    .line 17
    const/16 v2, 0x27

    .line 18
    .line 19
    if-ne v0, v2, :cond_2

    .line 20
    .line 21
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->c(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/e;->d(Lcom/alibaba/fastjson/parser/l;C)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 35
    .line 36
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_2
    const/16 v2, 0x7d

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    if-ne v0, v2, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 46
    .line 47
    .line 48
    const/16 p1, 0xd

    .line 49
    .line 50
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 51
    .line 52
    return-object v3

    .line 53
    :cond_3
    const/16 v2, 0x2c

    .line 54
    .line 55
    if-ne v0, v2, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 58
    .line 59
    .line 60
    const/16 p1, 0x10

    .line 61
    .line 62
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 63
    .line 64
    return-object v3

    .line 65
    :cond_4
    const/16 v2, 0x1a

    .line 66
    .line 67
    if-ne v0, v2, :cond_5

    .line 68
    .line 69
    const/16 p1, 0x14

    .line 70
    .line 71
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 72
    .line 73
    return-object v3

    .line 74
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->c(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->K(Lcom/alibaba/fastjson/parser/l;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 88
    .line 89
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/16 v1, 0x2000

    .line 5
    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/alibaba/fastjson/parser/e;->p:Ljava/lang/ThreadLocal;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/ref/SoftReference;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 22
    .line 23
    return-void
.end method

.method public final d(Lcom/alibaba/fastjson/parser/l;C)Ljava/lang/String;
    .locals 13

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 2
    .line 3
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x4

    .line 15
    const/4 v5, 0x1

    .line 16
    if-ne v3, p2, :cond_2

    .line 17
    .line 18
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget p2, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    if-ne p2, v1, :cond_0

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/2addr p2, v5

    .line 30
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 31
    .line 32
    invoke-virtual {p0, p2, v1, v2, p1}, Lcom/alibaba/fastjson/parser/e;->a(IIILcom/alibaba/fastjson/parser/l;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 38
    .line 39
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 40
    .line 41
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/alibaba/fastjson/parser/l;->c([CIII)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 48
    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_2
    const/16 v6, 0x1a

    .line 52
    .line 53
    if-eq v3, v6, :cond_11

    .line 54
    .line 55
    const/16 v6, 0x5c

    .line 56
    .line 57
    if-ne v3, v6, :cond_e

    .line 58
    .line 59
    const/4 v3, 0x2

    .line 60
    if-nez v1, :cond_5

    .line 61
    .line 62
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 63
    .line 64
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 65
    .line 66
    array-length v8, v7

    .line 67
    if-lt v1, v8, :cond_4

    .line 68
    .line 69
    array-length v8, v7

    .line 70
    mul-int/lit8 v8, v8, 0x2

    .line 71
    .line 72
    if-le v1, v8, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    move v1, v8

    .line 76
    :goto_3
    new-array v1, v1, [C

    .line 77
    .line 78
    array-length v8, v7

    .line 79
    invoke-static {v7, v0, v1, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 83
    .line 84
    :cond_4
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 85
    .line 86
    add-int/2addr v1, v5

    .line 87
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 88
    .line 89
    iget v8, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 90
    .line 91
    invoke-virtual {p0, v1, v7, v0, v8}, Lcom/alibaba/fastjson/parser/e;->i(I[CII)V

    .line 92
    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    const/16 v8, 0x22

    .line 100
    .line 101
    if-eq v7, v8, :cond_d

    .line 102
    .line 103
    const/16 v8, 0x27

    .line 104
    .line 105
    if-eq v7, v8, :cond_c

    .line 106
    .line 107
    const/16 v8, 0x46

    .line 108
    .line 109
    if-eq v7, v8, :cond_b

    .line 110
    .line 111
    if-eq v7, v6, :cond_a

    .line 112
    .line 113
    const/16 v6, 0x62

    .line 114
    .line 115
    if-eq v7, v6, :cond_9

    .line 116
    .line 117
    const/16 v6, 0x66

    .line 118
    .line 119
    if-eq v7, v6, :cond_b

    .line 120
    .line 121
    const/16 v6, 0x6e

    .line 122
    .line 123
    if-eq v7, v6, :cond_8

    .line 124
    .line 125
    const/16 v6, 0x72

    .line 126
    .line 127
    if-eq v7, v6, :cond_7

    .line 128
    .line 129
    const/16 v6, 0x78

    .line 130
    .line 131
    const/16 v8, 0x10

    .line 132
    .line 133
    if-eq v7, v6, :cond_6

    .line 134
    .line 135
    const/4 v6, 0x3

    .line 136
    packed-switch v7, :pswitch_data_0

    .line 137
    .line 138
    .line 139
    packed-switch v7, :pswitch_data_1

    .line 140
    .line 141
    .line 142
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 143
    .line 144
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 145
    .line 146
    const-string p2, "unclosed.str.lit"

    .line 147
    .line 148
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :pswitch_0
    mul-int/lit8 v2, v2, 0x1f

    .line 153
    .line 154
    const/16 v3, 0xb

    .line 155
    .line 156
    add-int/2addr v2, v3

    .line 157
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    new-instance v12, Ljava/lang/String;

    .line 179
    .line 180
    new-array v4, v4, [C

    .line 181
    .line 182
    aput-char v7, v4, v0

    .line 183
    .line 184
    aput-char v9, v4, v5

    .line 185
    .line 186
    aput-char v10, v4, v3

    .line 187
    .line 188
    aput-char v11, v4, v6

    .line 189
    .line 190
    invoke-direct {v12, v4}, Ljava/lang/String;-><init>([C)V

    .line 191
    .line 192
    .line 193
    invoke-static {v12, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    mul-int/lit8 v2, v2, 0x1f

    .line 198
    .line 199
    add-int/2addr v2, v3

    .line 200
    int-to-char v3, v3

    .line 201
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :pswitch_2
    mul-int/lit8 v2, v2, 0x1f

    .line 207
    .line 208
    const/16 v3, 0x9

    .line 209
    .line 210
    add-int/2addr v2, v3

    .line 211
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :pswitch_3
    mul-int/lit8 v2, v2, 0x1f

    .line 217
    .line 218
    add-int/2addr v2, v7

    .line 219
    const/4 v3, 0x7

    .line 220
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :pswitch_4
    mul-int/lit8 v2, v2, 0x1f

    .line 226
    .line 227
    add-int/2addr v2, v7

    .line 228
    const/4 v3, 0x6

    .line 229
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :pswitch_5
    mul-int/lit8 v2, v2, 0x1f

    .line 235
    .line 236
    add-int/2addr v2, v7

    .line 237
    const/4 v3, 0x5

    .line 238
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :pswitch_6
    mul-int/lit8 v2, v2, 0x1f

    .line 244
    .line 245
    add-int/2addr v2, v7

    .line 246
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :pswitch_7
    mul-int/lit8 v2, v2, 0x1f

    .line 252
    .line 253
    add-int/2addr v2, v7

    .line 254
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :pswitch_8
    mul-int/lit8 v2, v2, 0x1f

    .line 260
    .line 261
    add-int/2addr v2, v7

    .line 262
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :pswitch_9
    mul-int/lit8 v2, v2, 0x1f

    .line 268
    .line 269
    add-int/2addr v2, v7

    .line 270
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :pswitch_a
    mul-int/lit8 v2, v2, 0x1f

    .line 276
    .line 277
    add-int/2addr v2, v7

    .line 278
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :pswitch_b
    mul-int/lit8 v2, v2, 0x1f

    .line 284
    .line 285
    const/16 v3, 0x2f

    .line 286
    .line 287
    add-int/2addr v2, v3

    .line 288
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 298
    .line 299
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 304
    .line 305
    sget-object v5, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 306
    .line 307
    aget v3, v5, v3

    .line 308
    .line 309
    mul-int/lit8 v3, v3, 0x10

    .line 310
    .line 311
    aget v4, v5, v4

    .line 312
    .line 313
    add-int/2addr v3, v4

    .line 314
    int-to-char v3, v3

    .line 315
    mul-int/lit8 v2, v2, 0x1f

    .line 316
    .line 317
    add-int/2addr v2, v3

    .line 318
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_0

    .line 322
    .line 323
    :cond_7
    mul-int/lit8 v2, v2, 0x1f

    .line 324
    .line 325
    const/16 v3, 0xd

    .line 326
    .line 327
    add-int/2addr v2, v3

    .line 328
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_0

    .line 332
    .line 333
    :cond_8
    mul-int/lit8 v2, v2, 0x1f

    .line 334
    .line 335
    const/16 v3, 0xa

    .line 336
    .line 337
    add-int/2addr v2, v3

    .line 338
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_0

    .line 342
    .line 343
    :cond_9
    mul-int/lit8 v2, v2, 0x1f

    .line 344
    .line 345
    const/16 v3, 0x8

    .line 346
    .line 347
    add-int/2addr v2, v3

    .line 348
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :cond_a
    mul-int/lit8 v2, v2, 0x1f

    .line 354
    .line 355
    add-int/2addr v2, v6

    .line 356
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_0

    .line 360
    .line 361
    :cond_b
    mul-int/lit8 v2, v2, 0x1f

    .line 362
    .line 363
    const/16 v3, 0xc

    .line 364
    .line 365
    add-int/2addr v2, v3

    .line 366
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_0

    .line 370
    .line 371
    :cond_c
    mul-int/lit8 v2, v2, 0x1f

    .line 372
    .line 373
    add-int/2addr v2, v8

    .line 374
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_0

    .line 378
    .line 379
    :cond_d
    mul-int/lit8 v2, v2, 0x1f

    .line 380
    .line 381
    add-int/2addr v2, v8

    .line 382
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_0

    .line 386
    .line 387
    :cond_e
    mul-int/lit8 v2, v2, 0x1f

    .line 388
    .line 389
    add-int/2addr v2, v3

    .line 390
    if-nez v1, :cond_f

    .line 391
    .line 392
    iget v3, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 393
    .line 394
    add-int/2addr v3, v5

    .line 395
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 396
    .line 397
    goto/16 :goto_0

    .line 398
    .line 399
    :cond_f
    iget v4, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 400
    .line 401
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 402
    .line 403
    array-length v6, v5

    .line 404
    if-ne v4, v6, :cond_10

    .line 405
    .line 406
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_0

    .line 410
    .line 411
    :cond_10
    add-int/lit8 v6, v4, 0x1

    .line 412
    .line 413
    iput v6, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 414
    .line 415
    aput-char v3, v5, v4

    .line 416
    .line 417
    goto/16 :goto_0

    .line 418
    .line 419
    :cond_11
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 420
    .line 421
    const-string p2, "unclosed.str"

    .line 422
    .line 423
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    throw p1

    .line 427
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 3
    .line 4
    return-void
.end method

.method public e(Lcom/alibaba/fastjson/parser/l;C)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 5
    .line 6
    add-int/2addr v1, v0

    .line 7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x6e

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, -0x1

    .line 16
    const/4 v6, 0x1

    .line 17
    if-ne v1, v2, :cond_2

    .line 18
    .line 19
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 20
    .line 21
    add-int/2addr p1, v6

    .line 22
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/16 v0, 0x75

    .line 27
    .line 28
    if-ne p1, v0, :cond_1

    .line 29
    .line 30
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 31
    .line 32
    add-int/2addr p1, v6

    .line 33
    add-int/2addr p1, v6

    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/16 v0, 0x6c

    .line 39
    .line 40
    if-ne p1, v0, :cond_1

    .line 41
    .line 42
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 43
    .line 44
    add-int/2addr p1, v6

    .line 45
    add-int/lit8 p1, p1, 0x2

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-ne p1, v0, :cond_1

    .line 52
    .line 53
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 54
    .line 55
    add-int/lit8 p1, p1, 0x4

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-ne p1, p2, :cond_0

    .line 62
    .line 63
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 64
    .line 65
    add-int/lit8 p1, p1, 0x4

    .line 66
    .line 67
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 70
    .line 71
    .line 72
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 73
    .line 74
    return-object v4

    .line 75
    :cond_0
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 76
    .line 77
    return-object v4

    .line 78
    :cond_1
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 79
    .line 80
    return-object v4

    .line 81
    :cond_2
    const/16 v2, 0x22

    .line 82
    .line 83
    if-eq v1, v2, :cond_3

    .line 84
    .line 85
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 86
    .line 87
    return-object v4

    .line 88
    :cond_3
    const/4 v1, 0x1

    .line 89
    :goto_0
    iget v7, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 90
    .line 91
    add-int/lit8 v8, v1, 0x1

    .line 92
    .line 93
    add-int/2addr v7, v1

    .line 94
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-ne v1, v2, :cond_5

    .line 99
    .line 100
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 101
    .line 102
    add-int/lit8 v2, v1, 0x0

    .line 103
    .line 104
    add-int/2addr v2, v6

    .line 105
    add-int/2addr v1, v8

    .line 106
    sub-int/2addr v1, v2

    .line 107
    sub-int/2addr v1, v6

    .line 108
    invoke-virtual {p0, v2, v1, v0, p1}, Lcom/alibaba/fastjson/parser/e;->a(IIILcom/alibaba/fastjson/parser/l;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 113
    .line 114
    add-int/lit8 v1, v8, 0x1

    .line 115
    .line 116
    add-int/2addr v0, v8

    .line 117
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-ne v0, p2, :cond_4

    .line 122
    .line 123
    iget p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 124
    .line 125
    sub-int/2addr v1, v6

    .line 126
    add-int/2addr p2, v1

    .line 127
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 130
    .line 131
    .line 132
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 133
    .line 134
    return-object p1

    .line 135
    :cond_4
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 136
    .line 137
    return-object p1

    .line 138
    :cond_5
    mul-int/lit8 v0, v0, 0x1f

    .line 139
    .line 140
    add-int/2addr v0, v1

    .line 141
    const/16 v7, 0x5c

    .line 142
    .line 143
    if-ne v1, v7, :cond_6

    .line 144
    .line 145
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 146
    .line 147
    return-object v4

    .line 148
    :cond_6
    move v1, v8

    .line 149
    goto :goto_0
.end method

.method public final e0(Z)Ljava/lang/Number;
    .locals 2

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 2
    .line 3
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x46

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->g0()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_0
    const/16 v1, 0x44

    .line 30
    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->g0()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_1
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->Q()Ljava/math/BigDecimal;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->i0()D

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1
.end method

.method public f(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->d:I

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->d:I

    .line 8
    .line 9
    return-void
.end method

.method public final f0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public g(Ljava/lang/Class;C)Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;C)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    const-class v1, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance p1, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-class v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    new-instance p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 39
    .line 40
    add-int/2addr v1, v0

    .line 41
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/16 v1, 0x75

    .line 46
    .line 47
    const/16 v2, 0x6e

    .line 48
    .line 49
    const/4 v3, 0x3

    .line 50
    const/4 v4, 0x2

    .line 51
    const/16 v5, 0x6c

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, -0x1

    .line 55
    if-ne v0, v2, :cond_4

    .line 56
    .line 57
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 58
    .line 59
    add-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-ne p1, v1, :cond_3

    .line 66
    .line 67
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 68
    .line 69
    add-int/lit8 p1, p1, 0x1

    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-ne p1, v5, :cond_3

    .line 78
    .line 79
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 80
    .line 81
    add-int/lit8 p1, p1, 0x1

    .line 82
    .line 83
    add-int/2addr p1, v4

    .line 84
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-ne p1, v5, :cond_3

    .line 89
    .line 90
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 91
    .line 92
    add-int/lit8 p1, p1, 0x4

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-ne p1, p2, :cond_2

    .line 99
    .line 100
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 101
    .line 102
    add-int/lit8 p1, p1, 0x4

    .line 103
    .line 104
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 107
    .line 108
    .line 109
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 110
    .line 111
    return-object v6

    .line 112
    :cond_2
    iput v7, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 113
    .line 114
    return-object v6

    .line 115
    :cond_3
    iput v7, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 116
    .line 117
    return-object v6

    .line 118
    :cond_4
    const/16 v8, 0x5b

    .line 119
    .line 120
    if-eq v0, v8, :cond_5

    .line 121
    .line 122
    iput v7, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 123
    .line 124
    return-object v6

    .line 125
    :cond_5
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 126
    .line 127
    add-int/lit8 v0, v0, 0x1

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    const/4 v8, 0x2

    .line 134
    :goto_1
    if-ne v0, v2, :cond_6

    .line 135
    .line 136
    iget v9, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 137
    .line 138
    add-int/2addr v9, v8

    .line 139
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-ne v9, v1, :cond_6

    .line 144
    .line 145
    iget v9, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 146
    .line 147
    add-int/2addr v9, v8

    .line 148
    add-int/lit8 v9, v9, 0x1

    .line 149
    .line 150
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-ne v9, v5, :cond_6

    .line 155
    .line 156
    iget v9, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 157
    .line 158
    add-int/2addr v9, v8

    .line 159
    add-int/2addr v9, v4

    .line 160
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-ne v9, v5, :cond_6

    .line 165
    .line 166
    add-int/lit8 v8, v8, 0x3

    .line 167
    .line 168
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 169
    .line 170
    add-int/lit8 v9, v8, 0x1

    .line 171
    .line 172
    add-int/2addr v0, v8

    .line 173
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    goto :goto_3

    .line 178
    :cond_6
    const/16 v9, 0x22

    .line 179
    .line 180
    if-eq v0, v9, :cond_7

    .line 181
    .line 182
    iput v7, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 183
    .line 184
    return-object v6

    .line 185
    :cond_7
    move v0, v8

    .line 186
    :goto_2
    iget v10, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 187
    .line 188
    add-int/lit8 v11, v0, 0x1

    .line 189
    .line 190
    add-int/2addr v10, v0

    .line 191
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-ne v0, v9, :cond_b

    .line 196
    .line 197
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 198
    .line 199
    add-int/2addr v8, v0

    .line 200
    add-int/2addr v0, v11

    .line 201
    sub-int/2addr v0, v8

    .line 202
    add-int/lit8 v0, v0, -0x1

    .line 203
    .line 204
    invoke-virtual {p0, v8, v0}, Lcom/alibaba/fastjson/parser/e;->R0(II)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 212
    .line 213
    add-int/lit8 v9, v11, 0x1

    .line 214
    .line 215
    add-int/2addr v0, v11

    .line 216
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    :goto_3
    const/16 v8, 0x2c

    .line 221
    .line 222
    if-ne v0, v8, :cond_8

    .line 223
    .line 224
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 225
    .line 226
    add-int/lit8 v8, v9, 0x1

    .line 227
    .line 228
    add-int/2addr v0, v9

    .line 229
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    goto :goto_1

    .line 234
    :cond_8
    const/16 v1, 0x5d

    .line 235
    .line 236
    if-ne v0, v1, :cond_a

    .line 237
    .line 238
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 239
    .line 240
    add-int/lit8 v1, v9, 0x1

    .line 241
    .line 242
    add-int/2addr v0, v9

    .line 243
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-ne v0, p2, :cond_9

    .line 248
    .line 249
    iget p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 250
    .line 251
    add-int/lit8 v1, v1, -0x1

    .line 252
    .line 253
    add-int/2addr p2, v1

    .line 254
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 255
    .line 256
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 257
    .line 258
    .line 259
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 260
    .line 261
    return-object p1

    .line 262
    :cond_9
    iput v7, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 263
    .line 264
    return-object p1

    .line 265
    :cond_a
    iput v7, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 266
    .line 267
    return-object v6

    .line 268
    :cond_b
    const/16 v10, 0x5c

    .line 269
    .line 270
    if-ne v0, v10, :cond_c

    .line 271
    .line 272
    iput v7, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 273
    .line 274
    return-object v6

    .line 275
    :cond_c
    move v0, v11

    .line 276
    goto :goto_2

    .line 277
    :catch_0
    move-exception p1

    .line 278
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 279
    .line 280
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    .line 286
    .line 287
    throw p2
.end method

.method public abstract g0()Ljava/lang/String;
.end method

.method public final getCurrent()C
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 2
    .line 3
    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/h;->a(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected abstract i(I[CII)V
.end method

.method public i0()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->g0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final j()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 3
    .line 4
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 5
    .line 6
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->c:I

    .line 7
    .line 8
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 9
    .line 10
    const/16 v2, 0x22

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->k()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/16 v2, 0x2c

    .line 19
    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x10

    .line 26
    .line 27
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/16 v2, 0x30

    .line 31
    .line 32
    if-lt v1, v2, :cond_2

    .line 33
    .line 34
    const/16 v2, 0x39

    .line 35
    .line 36
    if-gt v1, v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->J()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    const/16 v2, 0x2d

    .line 43
    .line 44
    if-ne v1, v2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->J()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    const/16 v2, 0xc

    .line 51
    .line 52
    if-eq v1, v2, :cond_12

    .line 53
    .line 54
    const/16 v3, 0xd

    .line 55
    .line 56
    if-eq v1, v3, :cond_12

    .line 57
    .line 58
    const/16 v4, 0x20

    .line 59
    .line 60
    if-eq v1, v4, :cond_12

    .line 61
    .line 62
    const/16 v4, 0x3a

    .line 63
    .line 64
    if-eq v1, v4, :cond_11

    .line 65
    .line 66
    const/16 v4, 0x5b

    .line 67
    .line 68
    if-eq v1, v4, :cond_10

    .line 69
    .line 70
    const/16 v4, 0x5d

    .line 71
    .line 72
    if-eq v1, v4, :cond_f

    .line 73
    .line 74
    const/16 v4, 0x66

    .line 75
    .line 76
    if-eq v1, v4, :cond_e

    .line 77
    .line 78
    const/16 v4, 0x6e

    .line 79
    .line 80
    if-eq v1, v4, :cond_d

    .line 81
    .line 82
    const/16 v4, 0x7b

    .line 83
    .line 84
    if-eq v1, v4, :cond_c

    .line 85
    .line 86
    const/16 v2, 0x7d

    .line 87
    .line 88
    if-eq v1, v2, :cond_b

    .line 89
    .line 90
    const/16 v2, 0x53

    .line 91
    .line 92
    if-eq v1, v2, :cond_a

    .line 93
    .line 94
    const/16 v2, 0x54

    .line 95
    .line 96
    if-eq v1, v2, :cond_9

    .line 97
    .line 98
    const/16 v2, 0x74

    .line 99
    .line 100
    if-eq v1, v2, :cond_8

    .line 101
    .line 102
    const/16 v2, 0x75

    .line 103
    .line 104
    if-eq v1, v2, :cond_7

    .line 105
    .line 106
    packed-switch v1, :pswitch_data_0

    .line 107
    .line 108
    .line 109
    packed-switch v1, :pswitch_data_1

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->l0()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 119
    .line 120
    const/16 v1, 0x14

    .line 121
    .line 122
    if-eq v0, v1, :cond_4

    .line 123
    .line 124
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 125
    .line 126
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->g:I

    .line 127
    .line 128
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 129
    .line 130
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->c:I

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 134
    .line 135
    const-string v1, "EOF error"

    .line 136
    .line 137
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_5
    const/4 v1, 0x1

    .line 142
    new-array v1, v1, [Ljava/lang/Object;

    .line 143
    .line 144
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 145
    .line 146
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    aput-object v2, v1, v0

    .line 151
    .line 152
    const-string v0, "illegal.char"

    .line 153
    .line 154
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/e;->n0(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 158
    .line 159
    .line 160
    :goto_1
    return-void

    .line 161
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 162
    .line 163
    .line 164
    const/16 v0, 0xb

    .line 165
    .line 166
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 167
    .line 168
    return-void

    .line 169
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 170
    .line 171
    .line 172
    const/16 v0, 0xa

    .line 173
    .line 174
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_2
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    .line 178
    .line 179
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->c(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_6

    .line 184
    .line 185
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/e;->L0()V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 190
    .line 191
    const-string v1, "Feature.AllowSingleQuotes is false"

    .line 192
    .line 193
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw v0

    .line 197
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->P0()V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->N0()V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->M0()V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->K0()V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 214
    .line 215
    .line 216
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 217
    .line 218
    return-void

    .line 219
    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 220
    .line 221
    .line 222
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 223
    .line 224
    return-void

    .line 225
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->J0()V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->x0()V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 234
    .line 235
    .line 236
    const/16 v0, 0xf

    .line 237
    .line 238
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 239
    .line 240
    return-void

    .line 241
    :cond_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 242
    .line 243
    .line 244
    const/16 v0, 0xe

    .line 245
    .line 246
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 247
    .line 248
    return-void

    .line 249
    :cond_11
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 250
    .line 251
    .line 252
    const/16 v0, 0x11

    .line 253
    .line 254
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 255
    .line 256
    return-void

    .line 257
    :cond_12
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 258
    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    nop

    .line 263
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j0()Ljava/util/Calendar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 2
    .line 3
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/e;->k:Z

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x4

    .line 13
    const/16 v3, 0x22

    .line 14
    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const/16 v4, 0x1a

    .line 27
    .line 28
    const-string v5, "unclosed string : "

    .line 29
    .line 30
    if-eq v1, v4, :cond_f

    .line 31
    .line 32
    const/16 v4, 0x5c

    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    if-ne v1, v4, :cond_c

    .line 36
    .line 37
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/e;->k:Z

    .line 38
    .line 39
    const/4 v7, 0x2

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/e;->k:Z

    .line 43
    .line 44
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 45
    .line 46
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 47
    .line 48
    array-length v9, v8

    .line 49
    if-lt v1, v9, :cond_2

    .line 50
    .line 51
    array-length v9, v8

    .line 52
    mul-int/lit8 v9, v9, 0x2

    .line 53
    .line 54
    if-le v1, v9, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move v1, v9

    .line 58
    :goto_1
    new-array v1, v1, [C

    .line 59
    .line 60
    array-length v9, v8

    .line 61
    invoke-static {v8, v0, v1, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 65
    .line 66
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 67
    .line 68
    add-int/2addr v1, v6

    .line 69
    iget v8, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 70
    .line 71
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 72
    .line 73
    invoke-virtual {p0, v1, v8, v9}, Lcom/alibaba/fastjson/parser/e;->x(II[C)V

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eq v1, v3, :cond_b

    .line 81
    .line 82
    const/16 v3, 0x27

    .line 83
    .line 84
    if-eq v1, v3, :cond_a

    .line 85
    .line 86
    const/16 v3, 0x46

    .line 87
    .line 88
    if-eq v1, v3, :cond_9

    .line 89
    .line 90
    if-eq v1, v4, :cond_8

    .line 91
    .line 92
    const/16 v3, 0x62

    .line 93
    .line 94
    if-eq v1, v3, :cond_7

    .line 95
    .line 96
    const/16 v3, 0x66

    .line 97
    .line 98
    if-eq v1, v3, :cond_9

    .line 99
    .line 100
    const/16 v3, 0x6e

    .line 101
    .line 102
    if-eq v1, v3, :cond_6

    .line 103
    .line 104
    const/16 v3, 0x72

    .line 105
    .line 106
    if-eq v1, v3, :cond_5

    .line 107
    .line 108
    const/16 v3, 0x78

    .line 109
    .line 110
    const/16 v4, 0x10

    .line 111
    .line 112
    if-eq v1, v3, :cond_4

    .line 113
    .line 114
    const/4 v3, 0x3

    .line 115
    packed-switch v1, :pswitch_data_0

    .line 116
    .line 117
    .line 118
    packed-switch v1, :pswitch_data_1

    .line 119
    .line 120
    .line 121
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 122
    .line 123
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 124
    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :pswitch_0
    const/16 v1, 0xb

    .line 145
    .line 146
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    new-instance v10, Ljava/lang/String;

    .line 168
    .line 169
    new-array v2, v2, [C

    .line 170
    .line 171
    aput-char v1, v2, v0

    .line 172
    .line 173
    aput-char v5, v2, v6

    .line 174
    .line 175
    aput-char v8, v2, v7

    .line 176
    .line 177
    aput-char v9, v2, v3

    .line 178
    .line 179
    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([C)V

    .line 180
    .line 181
    .line 182
    invoke-static {v10, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    int-to-char v1, v1

    .line 187
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :pswitch_2
    const/16 v1, 0x9

    .line 193
    .line 194
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :pswitch_3
    const/4 v1, 0x7

    .line 200
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :pswitch_4
    const/4 v1, 0x6

    .line 206
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :pswitch_5
    const/4 v1, 0x5

    .line 212
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :pswitch_9
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :pswitch_a
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :pswitch_b
    const/16 v1, 0x2f

    .line 243
    .line 244
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    sget-object v3, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 258
    .line 259
    aget v1, v3, v1

    .line 260
    .line 261
    mul-int/lit8 v1, v1, 0x10

    .line 262
    .line 263
    aget v2, v3, v2

    .line 264
    .line 265
    add-int/2addr v1, v2

    .line 266
    int-to-char v1, v1

    .line 267
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_5
    const/16 v1, 0xd

    .line 273
    .line 274
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_6
    const/16 v1, 0xa

    .line 280
    .line 281
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_7
    const/16 v1, 0x8

    .line 287
    .line 288
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :cond_8
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :cond_9
    const/16 v1, 0xc

    .line 299
    .line 300
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_a
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :cond_b
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :cond_c
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/e;->k:Z

    .line 316
    .line 317
    if-nez v2, :cond_d

    .line 318
    .line 319
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 320
    .line 321
    add-int/2addr v1, v6

    .line 322
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 323
    .line 324
    goto/16 :goto_0

    .line 325
    .line 326
    :cond_d
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 327
    .line 328
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 329
    .line 330
    array-length v4, v3

    .line 331
    if-ne v2, v4, :cond_e

    .line 332
    .line 333
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->v0(C)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :cond_e
    add-int/lit8 v4, v2, 0x1

    .line 339
    .line 340
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 341
    .line 342
    aput-char v1, v3, v2

    .line 343
    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :cond_f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 347
    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw v0

    .line 367
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract k0(CI)I
.end method

.method public final l(I)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 3
    .line 4
    :goto_0
    const/4 v0, 0x2

    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    const/16 v2, 0x39

    .line 8
    .line 9
    const/16 v3, 0x22

    .line 10
    .line 11
    const/16 v4, 0x30

    .line 12
    .line 13
    const/16 v5, 0xe

    .line 14
    .line 15
    const/16 v6, 0x5b

    .line 16
    .line 17
    const/16 v7, 0x7b

    .line 18
    .line 19
    const/16 v8, 0xc

    .line 20
    .line 21
    if-eq p1, v0, :cond_c

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    if-eq p1, v0, :cond_8

    .line 25
    .line 26
    if-eq p1, v8, :cond_6

    .line 27
    .line 28
    const/16 v0, 0x12

    .line 29
    .line 30
    if-eq p1, v0, :cond_5

    .line 31
    .line 32
    const/16 v0, 0x1a

    .line 33
    .line 34
    const/16 v2, 0x14

    .line 35
    .line 36
    if-eq p1, v2, :cond_4

    .line 37
    .line 38
    const/16 v3, 0xf

    .line 39
    .line 40
    const/16 v4, 0x5d

    .line 41
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :pswitch_0
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 48
    .line 49
    const/16 v6, 0x2c

    .line 50
    .line 51
    if-ne v5, v6, :cond_0

    .line 52
    .line 53
    const/16 p1, 0x10

    .line 54
    .line 55
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    const/16 v6, 0x7d

    .line 62
    .line 63
    if-ne v5, v6, :cond_1

    .line 64
    .line 65
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    if-ne v5, v4, :cond_2

    .line 72
    .line 73
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    if-ne v5, v0, :cond_10

    .line 80
    .line 81
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_1
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 85
    .line 86
    if-ne v5, v4, :cond_4

    .line 87
    .line 88
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 95
    .line 96
    if-ne v0, v6, :cond_3

    .line 97
    .line 98
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    if-ne v0, v7, :cond_10

    .line 105
    .line 106
    iput v8, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_4
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 113
    .line 114
    if-ne v3, v0, :cond_10

    .line 115
    .line 116
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 117
    .line 118
    return-void

    .line 119
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->q0()V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 124
    .line 125
    if-ne v0, v7, :cond_7

    .line 126
    .line 127
    iput v8, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_7
    if-ne v0, v6, :cond_10

    .line 134
    .line 135
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 142
    .line 143
    if-ne v0, v3, :cond_9

    .line 144
    .line 145
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 146
    .line 147
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->c:I

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->k()V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_9
    if-lt v0, v4, :cond_a

    .line 154
    .line 155
    if-gt v0, v2, :cond_a

    .line 156
    .line 157
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 158
    .line 159
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->c:I

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->J()V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_a
    if-ne v0, v6, :cond_b

    .line 166
    .line 167
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_b
    if-ne v0, v7, :cond_10

    .line 174
    .line 175
    iput v8, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_c
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 182
    .line 183
    if-lt v0, v4, :cond_d

    .line 184
    .line 185
    if-gt v0, v2, :cond_d

    .line 186
    .line 187
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 188
    .line 189
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->c:I

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->J()V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_d
    if-ne v0, v3, :cond_e

    .line 196
    .line 197
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 198
    .line 199
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->c:I

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->k()V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_e
    if-ne v0, v6, :cond_f

    .line 206
    .line 207
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_f
    if-ne v0, v7, :cond_10

    .line 214
    .line 215
    iput v8, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_10
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 222
    .line 223
    const/16 v2, 0x20

    .line 224
    .line 225
    if-eq v0, v2, :cond_12

    .line 226
    .line 227
    const/16 v2, 0xa

    .line 228
    .line 229
    if-eq v0, v2, :cond_12

    .line 230
    .line 231
    if-eq v0, v1, :cond_12

    .line 232
    .line 233
    const/16 v1, 0x9

    .line 234
    .line 235
    if-eq v0, v1, :cond_12

    .line 236
    .line 237
    if-eq v0, v8, :cond_12

    .line 238
    .line 239
    const/16 v1, 0x8

    .line 240
    .line 241
    if-ne v0, v1, :cond_11

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_11
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->j()V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :cond_12
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 249
    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract l0()Z
.end method

.method public m(C)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 5
    .line 6
    add-int/2addr v1, v0

    .line 7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    const/16 v3, 0x30

    .line 13
    .line 14
    if-lt v1, v3, :cond_4

    .line 15
    .line 16
    const/16 v4, 0x39

    .line 17
    .line 18
    if-gt v1, v4, :cond_4

    .line 19
    .line 20
    sget-object v5, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 21
    .line 22
    aget v1, v5, v1

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    const/4 v6, 0x1

    .line 26
    :goto_0
    iget v7, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 27
    .line 28
    add-int/lit8 v8, v6, 0x1

    .line 29
    .line 30
    add-int/2addr v7, v6

    .line 31
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-lt v6, v3, :cond_0

    .line 36
    .line 37
    if-gt v6, v4, :cond_0

    .line 38
    .line 39
    mul-int/lit8 v1, v1, 0xa

    .line 40
    .line 41
    sget-object v7, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 42
    .line 43
    aget v6, v7, v6

    .line 44
    .line 45
    add-int/2addr v1, v6

    .line 46
    move v6, v8

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/16 v3, 0x2e

    .line 49
    .line 50
    if-ne v6, v3, :cond_1

    .line 51
    .line 52
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 53
    .line 54
    return v0

    .line 55
    :cond_1
    if-gez v1, :cond_2

    .line 56
    .line 57
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 58
    .line 59
    return v0

    .line 60
    :cond_2
    if-ne v6, p1, :cond_3

    .line 61
    .line 62
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 63
    .line 64
    sub-int/2addr v8, v5

    .line 65
    add-int/2addr p1, v8

    .line 66
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x3

    .line 72
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 73
    .line 74
    const/16 p1, 0x10

    .line 75
    .line 76
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 77
    .line 78
    return v1

    .line 79
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 80
    .line 81
    return v1

    .line 82
    :cond_4
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 83
    .line 84
    return v0
.end method

.method protected abstract n([C)Z
.end method

.method protected varargs n0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 3
    .line 4
    return-void
.end method

.method public abstract next()C
.end method

.method public abstract o()[B
.end method

.method public final o0([C)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->n([C)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 10
    .line 11
    array-length p1, p1

    .line 12
    add-int/2addr v0, p1

    .line 13
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 20
    .line 21
    const/16 v0, 0x7b

    .line 22
    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 26
    .line 27
    .line 28
    const/16 p1, 0xc

    .line 29
    .line 30
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/16 v0, 0x5b

    .line 34
    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 38
    .line 39
    .line 40
    const/16 p1, 0xe

    .line 41
    .line 42
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->j()V

    .line 46
    .line 47
    .line 48
    :goto_0
    const/4 p1, 0x1

    .line 49
    return p1
.end method

.method public p()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->g0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final p0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public q(C)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 5
    .line 6
    add-int/2addr v1, v0

    .line 7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x6e

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    const/4 v4, -0x1

    .line 15
    const/4 v5, 0x1

    .line 16
    if-ne v1, v2, :cond_2

    .line 17
    .line 18
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 19
    .line 20
    add-int/2addr v0, v5

    .line 21
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/16 v1, 0x75

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 31
    .line 32
    add-int/2addr v0, v5

    .line 33
    add-int/2addr v0, v5

    .line 34
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/16 v1, 0x6c

    .line 39
    .line 40
    if-ne v0, v1, :cond_1

    .line 41
    .line 42
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 43
    .line 44
    add-int/2addr v0, v5

    .line 45
    add-int/lit8 v0, v0, 0x2

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ne v0, v1, :cond_1

    .line 52
    .line 53
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 54
    .line 55
    add-int/lit8 v0, v0, 0x4

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-ne v0, p1, :cond_0

    .line 62
    .line 63
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 64
    .line 65
    add-int/lit8 p1, p1, 0x4

    .line 66
    .line 67
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 70
    .line 71
    .line 72
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 73
    .line 74
    return-object v2

    .line 75
    :cond_0
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 76
    .line 77
    return-object v2

    .line 78
    :cond_1
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 79
    .line 80
    return-object v2

    .line 81
    :cond_2
    const/16 v2, 0x22

    .line 82
    .line 83
    if-eq v1, v2, :cond_3

    .line 84
    .line 85
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->Q0()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    return-object p1

    .line 92
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 93
    .line 94
    add-int/2addr v1, v5

    .line 95
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/e;->k0(CI)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eq v2, v4, :cond_8

    .line 100
    .line 101
    iget v6, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 102
    .line 103
    add-int/2addr v6, v5

    .line 104
    sub-int v1, v2, v1

    .line 105
    .line 106
    invoke-virtual {p0, v6, v1}, Lcom/alibaba/fastjson/parser/e;->R0(II)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iget v6, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 111
    .line 112
    add-int/2addr v6, v5

    .line 113
    :goto_0
    if-ge v6, v2, :cond_5

    .line 114
    .line 115
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    const/16 v8, 0x5c

    .line 120
    .line 121
    if-ne v7, v8, :cond_4

    .line 122
    .line 123
    const/4 v0, 0x1

    .line 124
    goto :goto_1

    .line 125
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 129
    .line 130
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->Q0()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    return-object p1

    .line 137
    :cond_6
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 138
    .line 139
    add-int/lit8 v6, v0, 0x1

    .line 140
    .line 141
    sub-int/2addr v2, v6

    .line 142
    add-int/2addr v2, v5

    .line 143
    add-int/2addr v2, v5

    .line 144
    add-int/lit8 v6, v2, 0x1

    .line 145
    .line 146
    add-int/2addr v0, v2

    .line 147
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-ne v0, p1, :cond_7

    .line 152
    .line 153
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 154
    .line 155
    sub-int/2addr v6, v5

    .line 156
    add-int/2addr p1, v6

    .line 157
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 160
    .line 161
    .line 162
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 163
    .line 164
    return-object v1

    .line 165
    :cond_7
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 166
    .line 167
    return-object v1

    .line 168
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 169
    .line 170
    const-string v0, "unclosed str"

    .line 171
    .line 172
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p1
.end method

.method public final q0()V
    .locals 2

    .line 1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/e;->m0(C)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 14
    .line 15
    const/16 v1, 0x5f

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->j()V

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->I0()V

    .line 31
    .line 32
    .line 33
    :goto_2
    return-void
.end method

.method public final r0(C)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 3
    .line 4
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->j()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/16 v1, 0x20

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    const/16 v1, 0xd

    .line 24
    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    const/16 v1, 0x9

    .line 28
    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    const/16 v1, 0xc

    .line 32
    .line 33
    if-eq v0, v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    if-ne v0, v1, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "not match "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, " - "

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 74
    .line 75
    .line 76
    goto :goto_0
.end method

.method public final s()V
    .locals 3

    .line 1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 2
    .line 3
    sget-object v1, Lcom/alibaba/fastjson/util/f;->l:[Z

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ge v0, v2, :cond_0

    .line 7
    .line 8
    aget-boolean v0, v1, v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public final s0(CI)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 3
    .line 4
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 5
    .line 6
    if-ne v0, p1, :cond_9

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 9
    .line 10
    .line 11
    :goto_1
    const/4 p1, 0x2

    .line 12
    const/16 v0, 0x39

    .line 13
    .line 14
    const/16 v1, 0x22

    .line 15
    .line 16
    const/16 v2, 0x30

    .line 17
    .line 18
    if-ne p2, p1, :cond_1

    .line 19
    .line 20
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 21
    .line 22
    if-lt p1, v2, :cond_0

    .line 23
    .line 24
    if-gt p1, v0, :cond_0

    .line 25
    .line 26
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 27
    .line 28
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->c:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->J()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    if-ne p1, v1, :cond_7

    .line 35
    .line 36
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 37
    .line 38
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->c:I

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->k()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const/4 p1, 0x4

    .line 45
    if-ne p2, p1, :cond_3

    .line 46
    .line 47
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 48
    .line 49
    if-ne p1, v1, :cond_2

    .line 50
    .line 51
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 52
    .line 53
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->c:I

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->k()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    if-lt p1, v2, :cond_7

    .line 60
    .line 61
    if-gt p1, v0, :cond_7

    .line 62
    .line 63
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 64
    .line 65
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->c:I

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->J()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    const/16 p1, 0x5b

    .line 72
    .line 73
    const/16 v0, 0x7b

    .line 74
    .line 75
    const/16 v1, 0xe

    .line 76
    .line 77
    const/16 v2, 0xc

    .line 78
    .line 79
    if-ne p2, v2, :cond_5

    .line 80
    .line 81
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 82
    .line 83
    if-ne v3, v0, :cond_4

    .line 84
    .line 85
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_4
    if-ne v3, p1, :cond_7

    .line 92
    .line 93
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_5
    if-ne p2, v1, :cond_7

    .line 100
    .line 101
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 102
    .line 103
    if-ne v3, p1, :cond_6

    .line 104
    .line 105
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_6
    if-ne v3, v0, :cond_7

    .line 112
    .line 113
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_7
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 120
    .line 121
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/e;->m0(C)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_8

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->j()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_9
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/e;->m0(C)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_a

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 142
    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_a
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 147
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v1, "not match "

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string p2, " - "

    .line 162
    .line 163
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-char p2, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 167
    .line 168
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p1
.end method

.method public t(C)J
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 5
    .line 6
    add-int/2addr v1, v0

    .line 7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    const/4 v3, -0x1

    .line 14
    const/16 v4, 0x30

    .line 15
    .line 16
    if-lt v0, v4, :cond_4

    .line 17
    .line 18
    const/16 v5, 0x39

    .line 19
    .line 20
    if-gt v0, v5, :cond_4

    .line 21
    .line 22
    sget-object v6, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 23
    .line 24
    aget v0, v6, v0

    .line 25
    .line 26
    int-to-long v6, v0

    .line 27
    const/4 v0, 0x1

    .line 28
    const/4 v8, 0x1

    .line 29
    :goto_0
    iget v9, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 30
    .line 31
    add-int/lit8 v10, v8, 0x1

    .line 32
    .line 33
    add-int/2addr v9, v8

    .line 34
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-lt v8, v4, :cond_0

    .line 39
    .line 40
    if-gt v8, v5, :cond_0

    .line 41
    .line 42
    const-wide/16 v11, 0xa

    .line 43
    .line 44
    mul-long v6, v6, v11

    .line 45
    .line 46
    sget-object v9, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 47
    .line 48
    aget v8, v9, v8

    .line 49
    .line 50
    int-to-long v8, v8

    .line 51
    add-long/2addr v6, v8

    .line 52
    move v8, v10

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/16 v4, 0x2e

    .line 55
    .line 56
    if-ne v8, v4, :cond_1

    .line 57
    .line 58
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 59
    .line 60
    return-wide v1

    .line 61
    :cond_1
    cmp-long v4, v6, v1

    .line 62
    .line 63
    if-gez v4, :cond_2

    .line 64
    .line 65
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 66
    .line 67
    return-wide v1

    .line 68
    :cond_2
    if-ne v8, p1, :cond_3

    .line 69
    .line 70
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 71
    .line 72
    sub-int/2addr v10, v0

    .line 73
    add-int/2addr p1, v10

    .line 74
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 77
    .line 78
    .line 79
    const/4 p1, 0x3

    .line 80
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 81
    .line 82
    const/16 p1, 0x10

    .line 83
    .line 84
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 85
    .line 86
    return-wide v6

    .line 87
    :cond_3
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 88
    .line 89
    return-wide v6

    .line 90
    :cond_4
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 91
    .line 92
    return-wide v1
.end method

.method public final t0()V
    .locals 1

    .line 1
    const/16 v0, 0x3a

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->r0(C)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public abstract u(I)C
.end method

.method public final u0(I)V
    .locals 0

    .line 1
    const/16 p1, 0x2c

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->r0(C)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final v()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->c:I

    .line 2
    .line 3
    return v0
.end method

.method protected final v0(C)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    .line 8
    array-length v0, v1

    .line 9
    mul-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    new-array v0, v0, [C

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 21
    .line 22
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 23
    .line 24
    add-int/lit8 v2, v1, 0x1

    .line 25
    .line 26
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 27
    .line 28
    aput-char p1, v0, v1

    .line 29
    .line 30
    return-void
.end method

.method public w0(C)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 5
    .line 6
    add-int/2addr v1, v0

    .line 7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x74

    .line 12
    .line 13
    const/4 v3, 0x5

    .line 14
    const/16 v4, 0x65

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, -0x1

    .line 18
    const/4 v7, 0x1

    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 22
    .line 23
    add-int/2addr v1, v7

    .line 24
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, 0x72

    .line 29
    .line 30
    if-ne v1, v2, :cond_0

    .line 31
    .line 32
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 33
    .line 34
    add-int/2addr v1, v7

    .line 35
    add-int/2addr v1, v7

    .line 36
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/16 v2, 0x75

    .line 41
    .line 42
    if-ne v1, v2, :cond_0

    .line 43
    .line 44
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 45
    .line 46
    add-int/2addr v1, v7

    .line 47
    add-int/lit8 v1, v1, 0x2

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ne v1, v4, :cond_0

    .line 54
    .line 55
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 56
    .line 57
    add-int/lit8 v0, v0, 0x4

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/4 v0, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iput v6, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 66
    .line 67
    return v0

    .line 68
    :cond_1
    const/16 v2, 0x66

    .line 69
    .line 70
    if-ne v1, v2, :cond_3

    .line 71
    .line 72
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 73
    .line 74
    add-int/2addr v1, v7

    .line 75
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const/16 v2, 0x61

    .line 80
    .line 81
    if-ne v1, v2, :cond_2

    .line 82
    .line 83
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 84
    .line 85
    add-int/2addr v1, v7

    .line 86
    add-int/2addr v1, v7

    .line 87
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const/16 v2, 0x6c

    .line 92
    .line 93
    if-ne v1, v2, :cond_2

    .line 94
    .line 95
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 96
    .line 97
    add-int/2addr v1, v7

    .line 98
    add-int/lit8 v1, v1, 0x2

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const/16 v2, 0x73

    .line 105
    .line 106
    if-ne v1, v2, :cond_2

    .line 107
    .line 108
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 109
    .line 110
    add-int/2addr v1, v7

    .line 111
    add-int/2addr v1, v5

    .line 112
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-ne v1, v4, :cond_2

    .line 117
    .line 118
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 119
    .line 120
    add-int/2addr v1, v3

    .line 121
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    const/4 v3, 0x6

    .line 126
    goto :goto_0

    .line 127
    :cond_2
    iput v6, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 128
    .line 129
    return v0

    .line 130
    :cond_3
    const/4 v3, 0x1

    .line 131
    :goto_0
    if-ne v1, p1, :cond_4

    .line 132
    .line 133
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 134
    .line 135
    sub-int/2addr v3, v7

    .line 136
    add-int/2addr p1, v3

    .line 137
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 140
    .line 141
    .line 142
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 143
    .line 144
    return v0

    .line 145
    :cond_4
    iput v6, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 146
    .line 147
    return v0
.end method

.method protected abstract x(II[C)V
.end method

.method public final x0()V
    .locals 3

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 2
    .line 3
    const/16 v1, 0x66

    .line 4
    .line 5
    const-string v2, "error parse false"

    .line 6
    .line 7
    if-ne v0, v1, :cond_6

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 10
    .line 11
    .line 12
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 13
    .line 14
    const/16 v1, 0x61

    .line 15
    .line 16
    if-ne v0, v1, :cond_5

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 19
    .line 20
    .line 21
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 22
    .line 23
    const/16 v1, 0x6c

    .line 24
    .line 25
    if-ne v0, v1, :cond_4

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 28
    .line 29
    .line 30
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 31
    .line 32
    const/16 v1, 0x73

    .line 33
    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 37
    .line 38
    .line 39
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 40
    .line 41
    const/16 v1, 0x65

    .line 42
    .line 43
    if-ne v0, v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 46
    .line 47
    .line 48
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 49
    .line 50
    const/16 v1, 0x20

    .line 51
    .line 52
    if-eq v0, v1, :cond_1

    .line 53
    .line 54
    const/16 v1, 0x2c

    .line 55
    .line 56
    if-eq v0, v1, :cond_1

    .line 57
    .line 58
    const/16 v1, 0x7d

    .line 59
    .line 60
    if-eq v0, v1, :cond_1

    .line 61
    .line 62
    const/16 v1, 0x5d

    .line 63
    .line 64
    if-eq v0, v1, :cond_1

    .line 65
    .line 66
    const/16 v1, 0xa

    .line 67
    .line 68
    if-eq v0, v1, :cond_1

    .line 69
    .line 70
    const/16 v1, 0xd

    .line 71
    .line 72
    if-eq v0, v1, :cond_1

    .line 73
    .line 74
    const/16 v1, 0x9

    .line 75
    .line 76
    if-eq v0, v1, :cond_1

    .line 77
    .line 78
    const/16 v1, 0x1a

    .line 79
    .line 80
    if-eq v0, v1, :cond_1

    .line 81
    .line 82
    const/16 v1, 0xc

    .line 83
    .line 84
    if-eq v0, v1, :cond_1

    .line 85
    .line 86
    const/16 v1, 0x8

    .line 87
    .line 88
    if-ne v0, v1, :cond_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 92
    .line 93
    const-string v1, "scan false error"

    .line 94
    .line 95
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v0

    .line 99
    :cond_1
    :goto_0
    const/4 v0, 0x7

    .line 100
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 101
    .line 102
    return-void

    .line 103
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 104
    .line 105
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 110
    .line 111
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 116
    .line 117
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 122
    .line 123
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 128
    .line 129
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0
.end method

.method public final y()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 2
    .line 3
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 4
    .line 5
    add-int/2addr v1, v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/16 v3, 0x2d

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    const-wide/high16 v2, -0x8000000000000000L

    .line 18
    .line 19
    move-wide v5, v2

    .line 20
    const/4 v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    :goto_0
    if-ge v0, v1, :cond_1

    .line 29
    .line 30
    sget-object v3, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 31
    .line 32
    add-int/lit8 v7, v0, 0x1

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    aget v0, v3, v0

    .line 39
    .line 40
    neg-int v0, v0

    .line 41
    int-to-long v8, v0

    .line 42
    move v0, v7

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-wide/16 v8, 0x0

    .line 45
    .line 46
    :goto_1
    if-ge v0, v1, :cond_6

    .line 47
    .line 48
    add-int/lit8 v3, v0, 0x1

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/16 v7, 0x4c

    .line 55
    .line 56
    if-eq v0, v7, :cond_5

    .line 57
    .line 58
    const/16 v7, 0x53

    .line 59
    .line 60
    if-eq v0, v7, :cond_5

    .line 61
    .line 62
    const/16 v7, 0x42

    .line 63
    .line 64
    if-ne v0, v7, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    sget-object v7, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 68
    .line 69
    aget v0, v7, v0

    .line 70
    .line 71
    const-wide v10, -0xcccccccccccccccL

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    cmp-long v7, v8, v10

    .line 77
    .line 78
    if-ltz v7, :cond_4

    .line 79
    .line 80
    const-wide/16 v10, 0xa

    .line 81
    .line 82
    mul-long v8, v8, v10

    .line 83
    .line 84
    int-to-long v10, v0

    .line 85
    add-long v12, v5, v10

    .line 86
    .line 87
    cmp-long v0, v8, v12

    .line 88
    .line 89
    if-ltz v0, :cond_3

    .line 90
    .line 91
    sub-long/2addr v8, v10

    .line 92
    move v0, v3

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->g0()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->g0()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_5
    :goto_2
    move v0, v3

    .line 115
    :cond_6
    if-eqz v2, :cond_8

    .line 116
    .line 117
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 118
    .line 119
    add-int/2addr v1, v4

    .line 120
    if-le v0, v1, :cond_7

    .line 121
    .line 122
    return-wide v8

    .line 123
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->g0()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_8
    neg-long v0, v8

    .line 134
    return-wide v0
.end method

.method public y0([C)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->n([C)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 p1, -0x2

    .line 11
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    array-length p1, p1

    .line 15
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 16
    .line 17
    add-int/lit8 v2, p1, 0x1

    .line 18
    .line 19
    add-int/2addr v1, p1

    .line 20
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/16 v1, 0x74

    .line 25
    .line 26
    const/16 v3, 0x65

    .line 27
    .line 28
    const/4 v4, -0x1

    .line 29
    const/4 v5, 0x1

    .line 30
    if-ne p1, v1, :cond_4

    .line 31
    .line 32
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 33
    .line 34
    add-int/lit8 v1, v2, 0x1

    .line 35
    .line 36
    add-int/2addr p1, v2

    .line 37
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/16 v2, 0x72

    .line 42
    .line 43
    if-eq p1, v2, :cond_1

    .line 44
    .line 45
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 46
    .line 47
    return v0

    .line 48
    :cond_1
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 49
    .line 50
    add-int/lit8 v2, v1, 0x1

    .line 51
    .line 52
    add-int/2addr p1, v1

    .line 53
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/16 v1, 0x75

    .line 58
    .line 59
    if-eq p1, v1, :cond_2

    .line 60
    .line 61
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 62
    .line 63
    return v0

    .line 64
    :cond_2
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 65
    .line 66
    add-int/lit8 v1, v2, 0x1

    .line 67
    .line 68
    add-int/2addr p1, v2

    .line 69
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eq p1, v3, :cond_3

    .line 74
    .line 75
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 76
    .line 77
    return v0

    .line 78
    :cond_3
    const/4 p1, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_4
    const/16 v1, 0x66

    .line 81
    .line 82
    if-ne p1, v1, :cond_f

    .line 83
    .line 84
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 85
    .line 86
    add-int/lit8 v1, v2, 0x1

    .line 87
    .line 88
    add-int/2addr p1, v2

    .line 89
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    const/16 v2, 0x61

    .line 94
    .line 95
    if-eq p1, v2, :cond_5

    .line 96
    .line 97
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 98
    .line 99
    return v0

    .line 100
    :cond_5
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 101
    .line 102
    add-int/lit8 v2, v1, 0x1

    .line 103
    .line 104
    add-int/2addr p1, v1

    .line 105
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    const/16 v1, 0x6c

    .line 110
    .line 111
    if-eq p1, v1, :cond_6

    .line 112
    .line 113
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 114
    .line 115
    return v0

    .line 116
    :cond_6
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 117
    .line 118
    add-int/lit8 v1, v2, 0x1

    .line 119
    .line 120
    add-int/2addr p1, v2

    .line 121
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    const/16 v2, 0x73

    .line 126
    .line 127
    if-eq p1, v2, :cond_7

    .line 128
    .line 129
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 130
    .line 131
    return v0

    .line 132
    :cond_7
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 133
    .line 134
    add-int/lit8 v2, v1, 0x1

    .line 135
    .line 136
    add-int/2addr p1, v1

    .line 137
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eq p1, v3, :cond_8

    .line 142
    .line 143
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 144
    .line 145
    return v0

    .line 146
    :cond_8
    move v1, v2

    .line 147
    const/4 p1, 0x0

    .line 148
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 149
    .line 150
    add-int/lit8 v3, v1, 0x1

    .line 151
    .line 152
    add-int/2addr v2, v1

    .line 153
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    const/16 v2, 0x10

    .line 158
    .line 159
    const/16 v6, 0x2c

    .line 160
    .line 161
    if-ne v1, v6, :cond_9

    .line 162
    .line 163
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 164
    .line 165
    sub-int/2addr v3, v5

    .line 166
    add-int/2addr v0, v3

    .line 167
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 170
    .line 171
    .line 172
    const/4 v0, 0x3

    .line 173
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 174
    .line 175
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 176
    .line 177
    return p1

    .line 178
    :cond_9
    const/16 v7, 0x7d

    .line 179
    .line 180
    if-ne v1, v7, :cond_e

    .line 181
    .line 182
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 183
    .line 184
    add-int/lit8 v8, v3, 0x1

    .line 185
    .line 186
    add-int/2addr v1, v3

    .line 187
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-ne v1, v6, :cond_a

    .line 192
    .line 193
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 194
    .line 195
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 196
    .line 197
    sub-int/2addr v8, v5

    .line 198
    add-int/2addr v0, v8

    .line 199
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_a
    const/16 v2, 0x5d

    .line 206
    .line 207
    if-ne v1, v2, :cond_b

    .line 208
    .line 209
    const/16 v0, 0xf

    .line 210
    .line 211
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 212
    .line 213
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 214
    .line 215
    sub-int/2addr v8, v5

    .line 216
    add-int/2addr v0, v8

    .line 217
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_b
    if-ne v1, v7, :cond_c

    .line 224
    .line 225
    const/16 v0, 0xd

    .line 226
    .line 227
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 228
    .line 229
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 230
    .line 231
    sub-int/2addr v8, v5

    .line 232
    add-int/2addr v0, v8

    .line 233
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_c
    const/16 v2, 0x1a

    .line 240
    .line 241
    if-ne v1, v2, :cond_d

    .line 242
    .line 243
    const/16 v0, 0x14

    .line 244
    .line 245
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 246
    .line 247
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 248
    .line 249
    sub-int/2addr v8, v5

    .line 250
    add-int/2addr v0, v8

    .line 251
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 252
    .line 253
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 254
    .line 255
    :goto_1
    const/4 v0, 0x4

    .line 256
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 257
    .line 258
    return p1

    .line 259
    :cond_d
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 260
    .line 261
    return v0

    .line 262
    :cond_e
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 263
    .line 264
    return v0

    .line 265
    :cond_f
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 266
    .line 267
    return v0
.end method

.method public z(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/l;C)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/parser/l;",
            "C)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/e;->e(Lcom/alibaba/fastjson/parser/l;C)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final z0(C)D
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 5
    .line 6
    add-int/2addr v1, v0

    .line 7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    const/4 v3, -0x1

    .line 14
    const/16 v4, 0x30

    .line 15
    .line 16
    if-lt v0, v4, :cond_8

    .line 17
    .line 18
    const/16 v5, 0x39

    .line 19
    .line 20
    if-gt v0, v5, :cond_8

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    const/4 v6, 0x1

    .line 24
    :goto_0
    iget v7, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 25
    .line 26
    add-int/lit8 v8, v6, 0x1

    .line 27
    .line 28
    add-int/2addr v7, v6

    .line 29
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-lt v6, v4, :cond_0

    .line 34
    .line 35
    if-gt v6, v5, :cond_0

    .line 36
    .line 37
    move v6, v8

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 v7, 0x2e

    .line 40
    .line 41
    if-ne v6, v7, :cond_2

    .line 42
    .line 43
    iget v6, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 44
    .line 45
    add-int/lit8 v7, v8, 0x1

    .line 46
    .line 47
    add-int/2addr v6, v8

    .line 48
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-lt v6, v4, :cond_1

    .line 53
    .line 54
    if-gt v6, v5, :cond_1

    .line 55
    .line 56
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 57
    .line 58
    add-int/lit8 v8, v7, 0x1

    .line 59
    .line 60
    add-int/2addr v1, v7

    .line 61
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-lt v6, v4, :cond_2

    .line 66
    .line 67
    if-gt v6, v5, :cond_2

    .line 68
    .line 69
    move v7, v8

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 72
    .line 73
    return-wide v1

    .line 74
    :cond_2
    const/16 v1, 0x65

    .line 75
    .line 76
    if-eq v6, v1, :cond_3

    .line 77
    .line 78
    const/16 v1, 0x45

    .line 79
    .line 80
    if-ne v6, v1, :cond_6

    .line 81
    .line 82
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 83
    .line 84
    add-int/lit8 v2, v8, 0x1

    .line 85
    .line 86
    add-int/2addr v1, v8

    .line 87
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const/16 v6, 0x2b

    .line 92
    .line 93
    if-eq v1, v6, :cond_5

    .line 94
    .line 95
    const/16 v6, 0x2d

    .line 96
    .line 97
    if-ne v1, v6, :cond_4

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    move v6, v1

    .line 101
    :goto_2
    move v8, v2

    .line 102
    goto :goto_4

    .line 103
    :cond_5
    :goto_3
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 104
    .line 105
    add-int/lit8 v6, v2, 0x1

    .line 106
    .line 107
    add-int/2addr v1, v2

    .line 108
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    move v8, v6

    .line 113
    move v6, v1

    .line 114
    :goto_4
    if-lt v6, v4, :cond_6

    .line 115
    .line 116
    if-gt v6, v5, :cond_6

    .line 117
    .line 118
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 119
    .line 120
    add-int/lit8 v2, v8, 0x1

    .line 121
    .line 122
    add-int/2addr v1, v8

    .line 123
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/e;->u(I)C

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    goto :goto_2

    .line 128
    :cond_6
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 129
    .line 130
    add-int v2, v1, v8

    .line 131
    .line 132
    sub-int/2addr v2, v1

    .line 133
    sub-int/2addr v2, v0

    .line 134
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/parser/e;->R0(II)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 139
    .line 140
    .line 141
    move-result-wide v1

    .line 142
    if-ne v6, p1, :cond_7

    .line 143
    .line 144
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 145
    .line 146
    sub-int/2addr v8, v0

    .line 147
    add-int/2addr p1, v8

    .line 148
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->next()C

    .line 151
    .line 152
    .line 153
    const/4 p1, 0x3

    .line 154
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 155
    .line 156
    const/16 p1, 0x10

    .line 157
    .line 158
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 159
    .line 160
    return-wide v1

    .line 161
    :cond_7
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 162
    .line 163
    return-wide v1

    .line 164
    :cond_8
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 165
    .line 166
    return-wide v1
.end method
