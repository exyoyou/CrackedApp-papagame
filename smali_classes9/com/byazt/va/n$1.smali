.class public Lcom/byazt/va/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gqp/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x74,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/va/n;->c(Lcom/byazt/mh/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/mh/c;

.field public final synthetic tt:Lcom/byazt/va/n;


# direct methods
.method public constructor <init>(Lcom/byazt/va/n;Lcom/byazt/mh/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/va/n$1;->tt:Lcom/byazt/va/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/va/n$1;->c:Lcom/byazt/mh/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Lcom/byazt/gqp/tt;Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/va/n$1;->c:Lcom/byazt/mh/c;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/va/n$1;->tt:Lcom/byazt/va/n;

    .line 6
    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/byazt/gqp/tt;Lcom/byazt/gqp/m;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string p1, "content-type"

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/va/n$1;->c:Lcom/byazt/mh/c;

    .line 4
    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/va/n$1;->tt:Lcom/byazt/va/n;

    .line 10
    .line 11
    new-instance p2, Ljava/io/IOException;

    .line 12
    .line 13
    const-string v1, "No response"

    .line 14
    .line 15
    invoke-direct {p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->sp()Lcom/byazt/gqp/a;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    invoke-virtual {v1}, Lcom/byazt/gqp/a;->c()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-ge v2, v3, :cond_3

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/byazt/gqp/a;->c(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v1, v2}, Lcom/byazt/gqp/a;->tt(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    if-nez v4, :cond_1

    .line 61
    .line 62
    const-string v3, ""

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    :goto_1
    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-static {v5}, Lcom/byazt/lf/c;->c(Ljava/util/Map;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/byazt/gqp/nu;->uj()[B

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance v11, Lcom/byazt/hm/tt;

    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->uj()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->ve()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->n()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    const/4 v6, 0x0

    .line 104
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->tt()J

    .line 105
    .line 106
    .line 107
    move-result-wide v7

    .line 108
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->c()J

    .line 109
    .line 110
    .line 111
    move-result-wide v9

    .line 112
    move-object v1, v11

    .line 113
    invoke-direct/range {v1 .. v10}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    .line 115
    .line 116
    :try_start_1
    invoke-virtual {v11, p1}, Lcom/byazt/hm/tt;->c([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    move-object v0, v11

    .line 122
    goto :goto_3

    .line 123
    :cond_4
    :try_start_2
    iget-object p1, p0, Lcom/byazt/va/n$1;->tt:Lcom/byazt/va/n;

    .line 124
    .line 125
    iget-boolean p1, p1, Lcom/byazt/va/uj;->sp:Z

    .line 126
    .line 127
    if-eqz p1, :cond_5

    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/byazt/gqp/nu;->uj()[B

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    new-instance v6, Ljava/lang/String;

    .line 138
    .line 139
    iget-object v1, p0, Lcom/byazt/va/n$1;->tt:Lcom/byazt/va/n;

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-static {v1, v2}, Lcom/byazt/va/n;->c(Lcom/byazt/va/n;Lcom/byazt/gqp/nu;)Lcom/byazt/gqp/da;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-static {v1, v2}, Lcom/byazt/va/n;->c(Lcom/byazt/va/n;Lcom/byazt/gqp/da;)Ljava/nio/charset/Charset;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-direct {v6, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 154
    .line 155
    .line 156
    new-instance v11, Lcom/byazt/hm/tt;

    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->uj()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->ve()I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->n()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->tt()J

    .line 171
    .line 172
    .line 173
    move-result-wide v7

    .line 174
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->c()J

    .line 175
    .line 176
    .line 177
    move-result-wide v9

    .line 178
    move-object v1, v11

    .line 179
    invoke-direct/range {v1 .. v10}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    .line 181
    .line 182
    :try_start_3
    invoke-virtual {v11, p1}, Lcom/byazt/hm/tt;->c([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_5
    :try_start_4
    new-instance v11, Lcom/byazt/hm/tt;

    .line 187
    .line 188
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->uj()Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->ve()I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->n()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->a()Lcom/byazt/gqp/nu;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Lcom/byazt/gqp/nu;->tt()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->tt()J

    .line 209
    .line 210
    .line 211
    move-result-wide v7

    .line 212
    invoke-virtual {p2}, Lcom/byazt/gqp/m;->c()J

    .line 213
    .line 214
    .line 215
    move-result-wide v9

    .line 216
    move-object v1, v11

    .line 217
    invoke-direct/range {v1 .. v10}, Lcom/byazt/hm/tt;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 218
    .line 219
    .line 220
    :goto_2
    :try_start_5
    iget-object p1, p0, Lcom/byazt/va/n$1;->tt:Lcom/byazt/va/n;

    .line 221
    .line 222
    invoke-static {p1, v11, p2}, Lcom/byazt/va/n;->c(Lcom/byazt/va/n;Lcom/byazt/hm/tt;Lcom/byazt/gqp/m;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :catchall_1
    move-exception p1

    .line 227
    :goto_3
    new-instance p2, Ljava/io/IOException;

    .line 228
    .line 229
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 230
    .line 231
    .line 232
    move-object v11, v0

    .line 233
    move-object v0, p2

    .line 234
    :goto_4
    if-eqz v11, :cond_6

    .line 235
    .line 236
    iget-object p1, p0, Lcom/byazt/va/n$1;->c:Lcom/byazt/mh/c;

    .line 237
    .line 238
    iget-object p2, p0, Lcom/byazt/va/n$1;->tt:Lcom/byazt/va/n;

    .line 239
    .line 240
    invoke-virtual {p1, p2, v11}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_6
    iget-object p1, p0, Lcom/byazt/va/n$1;->c:Lcom/byazt/mh/c;

    .line 245
    .line 246
    iget-object p2, p0, Lcom/byazt/va/n$1;->tt:Lcom/byazt/va/n;

    .line 247
    .line 248
    if-nez v0, :cond_7

    .line 249
    .line 250
    new-instance v0, Ljava/io/IOException;

    .line 251
    .line 252
    const-string v1, "Unexpected exception"

    .line 253
    .line 254
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :cond_7
    invoke-virtual {p1, p2, v0}, Lcom/byazt/mh/c;->c(Lcom/byazt/va/uj;Ljava/io/IOException;)V

    .line 258
    .line 259
    .line 260
    :cond_8
    return-void
.end method
