.class public Lcom/byazt/f/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3b9,
        0xf
    }
.end annotation


# instance fields
.field public a:Z

.field public final c:Lcom/byazt/f/ve;

.field public final n:J

.field public tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public uj:Ljava/lang/Long;

.field public ve:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/byazt/f/ve;JLjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/f/ve;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    iput-wide p2, p0, Lcom/byazt/f/uj;->n:J

    .line 4
    iput-object p1, p0, Lcom/byazt/f/uj;->c:Lcom/byazt/f/ve;

    .line 5
    iput-object p4, p0, Lcom/byazt/f/uj;->tt:Ljava/util/List;

    if-eqz p5, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/byazt/f/uj;->c()V

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "message cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/byazt/f/ve;JZ)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/byazt/f/uj;-><init>(Lcom/byazt/f/ve;JLjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/byazt/f/uj;->a:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/byazt/f/uj;->a:Z

    .line 10
    .line 11
    iget-object v1, v0, Lcom/byazt/f/uj;->tt:Ljava/util/List;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Lcom/byazt/f/uj;->tt:Ljava/util/List;

    .line 21
    .line 22
    :cond_1
    iget-object v1, v0, Lcom/byazt/f/uj;->c:Lcom/byazt/f/ve;

    .line 23
    .line 24
    invoke-interface {v1}, Lcom/byazt/f/ve;->t()Lcom/byazt/f/n;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/byazt/f/n;->tt()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    iget-object v4, v0, Lcom/byazt/f/uj;->c:Lcom/byazt/f/ve;

    .line 33
    .line 34
    invoke-interface {v4}, Lcom/byazt/f/ve;->u()Lcom/byazt/f/n;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Lcom/byazt/f/n;->tt()J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    iget-object v7, v0, Lcom/byazt/f/uj;->c:Lcom/byazt/f/ve;

    .line 43
    .line 44
    invoke-interface {v7}, Lcom/byazt/f/ve;->sl()Lcom/byazt/f/n;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v7}, Lcom/byazt/f/n;->tt()J

    .line 49
    .line 50
    .line 51
    move-result-wide v8

    .line 52
    invoke-virtual {v1}, Lcom/byazt/f/n;->c()J

    .line 53
    .line 54
    .line 55
    move-result-wide v10

    .line 56
    const-wide/16 v12, 0x0

    .line 57
    .line 58
    cmp-long v1, v10, v12

    .line 59
    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {v7}, Lcom/byazt/f/n;->c()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    cmp-long v3, v1, v12

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    iget-wide v1, v0, Lcom/byazt/f/uj;->n:J

    .line 71
    .line 72
    sub-long/2addr v8, v1

    .line 73
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iput-object v1, v0, Lcom/byazt/f/uj;->uj:Ljava/lang/Long;

    .line 78
    .line 79
    iget-object v1, v0, Lcom/byazt/f/uj;->tt:Ljava/util/List;

    .line 80
    .line 81
    const-string v2, "Error: zero orig time -- cannot compute delay"

    .line 82
    .line 83
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    iget-object v1, v0, Lcom/byazt/f/uj;->tt:Ljava/util/List;

    .line 88
    .line 89
    const-string v2, "Error: zero orig time -- cannot compute delay/offset"

    .line 90
    .line 91
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_3
    invoke-virtual {v4}, Lcom/byazt/f/n;->c()J

    .line 96
    .line 97
    .line 98
    move-result-wide v10

    .line 99
    const-string v1, "Error: OrigTime > DestRcvTime"

    .line 100
    .line 101
    cmp-long v14, v10, v12

    .line 102
    .line 103
    if-eqz v14, :cond_a

    .line 104
    .line 105
    invoke-virtual {v7}, Lcom/byazt/f/n;->c()J

    .line 106
    .line 107
    .line 108
    move-result-wide v10

    .line 109
    cmp-long v14, v10, v12

    .line 110
    .line 111
    if-nez v14, :cond_4

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    iget-wide v10, v0, Lcom/byazt/f/uj;->n:J

    .line 115
    .line 116
    sub-long/2addr v10, v2

    .line 117
    cmp-long v4, v8, v5

    .line 118
    .line 119
    if-gez v4, :cond_5

    .line 120
    .line 121
    iget-object v4, v0, Lcom/byazt/f/uj;->tt:Ljava/util/List;

    .line 122
    .line 123
    const-string v7, "Error: xmitTime < rcvTime"

    .line 124
    .line 125
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_5
    sub-long v14, v8, v5

    .line 130
    .line 131
    cmp-long v4, v14, v10

    .line 132
    .line 133
    if-gtz v4, :cond_6

    .line 134
    .line 135
    sub-long v12, v10, v14

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_6
    sub-long/2addr v14, v10

    .line 139
    const-wide/16 v16, 0x1

    .line 140
    .line 141
    cmp-long v4, v14, v16

    .line 142
    .line 143
    if-nez v4, :cond_7

    .line 144
    .line 145
    cmp-long v4, v10, v12

    .line 146
    .line 147
    if-eqz v4, :cond_8

    .line 148
    .line 149
    iget-object v4, v0, Lcom/byazt/f/uj;->tt:Ljava/util/List;

    .line 150
    .line 151
    const-string v7, "Info: processing time > total network time by 1 ms -> assume zero delay"

    .line 152
    .line 153
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_7
    iget-object v4, v0, Lcom/byazt/f/uj;->tt:Ljava/util/List;

    .line 158
    .line 159
    const-string v7, "Warning: processing time > total network time"

    .line 160
    .line 161
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    :cond_8
    :goto_0
    move-wide v12, v10

    .line 165
    :goto_1
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    iput-object v4, v0, Lcom/byazt/f/uj;->ve:Ljava/lang/Long;

    .line 170
    .line 171
    iget-wide v10, v0, Lcom/byazt/f/uj;->n:J

    .line 172
    .line 173
    cmp-long v4, v2, v10

    .line 174
    .line 175
    if-lez v4, :cond_9

    .line 176
    .line 177
    iget-object v4, v0, Lcom/byazt/f/uj;->tt:Ljava/util/List;

    .line 178
    .line 179
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    :cond_9
    sub-long/2addr v5, v2

    .line 183
    iget-wide v1, v0, Lcom/byazt/f/uj;->n:J

    .line 184
    .line 185
    sub-long/2addr v8, v1

    .line 186
    add-long/2addr v5, v8

    .line 187
    const-wide/16 v1, 0x2

    .line 188
    .line 189
    div-long/2addr v5, v1

    .line 190
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    iput-object v1, v0, Lcom/byazt/f/uj;->uj:Ljava/lang/Long;

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_a
    :goto_2
    iget-object v10, v0, Lcom/byazt/f/uj;->tt:Ljava/util/List;

    .line 198
    .line 199
    const-string v11, "Warning: zero rcvNtpTime or xmitNtpTime"

    .line 200
    .line 201
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    iget-wide v10, v0, Lcom/byazt/f/uj;->n:J

    .line 205
    .line 206
    cmp-long v14, v2, v10

    .line 207
    .line 208
    if-lez v14, :cond_b

    .line 209
    .line 210
    iget-object v10, v0, Lcom/byazt/f/uj;->tt:Ljava/util/List;

    .line 211
    .line 212
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_b
    sub-long/2addr v10, v2

    .line 217
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    iput-object v1, v0, Lcom/byazt/f/uj;->ve:Ljava/lang/Long;

    .line 222
    .line 223
    :goto_3
    invoke-virtual {v4}, Lcom/byazt/f/n;->c()J

    .line 224
    .line 225
    .line 226
    move-result-wide v10

    .line 227
    cmp-long v1, v10, v12

    .line 228
    .line 229
    if-eqz v1, :cond_c

    .line 230
    .line 231
    sub-long/2addr v5, v2

    .line 232
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    iput-object v1, v0, Lcom/byazt/f/uj;->uj:Ljava/lang/Long;

    .line 237
    .line 238
    return-void

    .line 239
    :cond_c
    invoke-virtual {v7}, Lcom/byazt/f/n;->c()J

    .line 240
    .line 241
    .line 242
    move-result-wide v1

    .line 243
    cmp-long v3, v1, v12

    .line 244
    .line 245
    if-eqz v3, :cond_d

    .line 246
    .line 247
    iget-wide v1, v0, Lcom/byazt/f/uj;->n:J

    .line 248
    .line 249
    sub-long/2addr v8, v1

    .line 250
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    iput-object v1, v0, Lcom/byazt/f/uj;->uj:Ljava/lang/Long;

    .line 255
    .line 256
    :cond_d
    :goto_4
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    check-cast p1, Lcom/byazt/f/uj;

    .line 20
    .line 21
    iget-wide v2, p0, Lcom/byazt/f/uj;->n:J

    .line 22
    .line 23
    iget-wide v4, p1, Lcom/byazt/f/uj;->n:J

    .line 24
    .line 25
    cmp-long v6, v2, v4

    .line 26
    .line 27
    if-nez v6, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lcom/byazt/f/uj;->c:Lcom/byazt/f/ve;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/byazt/f/uj;->c:Lcom/byazt/f/ve;

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    return v0

    .line 40
    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/f/uj;->n:J

    .line 2
    .line 3
    long-to-int v1, v0

    .line 4
    mul-int/lit8 v1, v1, 0x1f

    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/f/uj;->c:Lcom/byazt/f/ve;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    add-int/2addr v1, v0

    .line 13
    return v1
.end method

.method public tt()Lcom/byazt/f/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/f/uj;->c:Lcom/byazt/f/ve;

    .line 2
    .line 3
    return-object v0
.end method
