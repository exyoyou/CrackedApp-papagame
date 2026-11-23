.class public Lcom/byazt/xyr/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x219,
        0x14
    }
.end annotation


# instance fields
.field public a:Lorg/json/JSONArray;

.field public c:Lorg/json/JSONArray;

.field public n:Lorg/json/JSONArray;

.field public final sp:Lcom/byazt/xj/ve;

.field public tt:Lorg/json/JSONArray;

.field public uj:Lorg/json/JSONArray;

.field public ve:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lcom/byazt/xj/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/xyr/c;->sp:Lcom/byazt/xj/ve;

    .line 5
    .line 6
    return-void
.end method

.method private c(Lcom/byazt/xj/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/c<",
            "*>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/byazt/xyr/c;->tt(Lcom/byazt/xj/ve;)V

    .line 25
    invoke-virtual {p1}, Lcom/byazt/xj/c;->sp()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/xj/ve;

    .line 28
    invoke-direct {p0, v0}, Lcom/byazt/xyr/c;->c(Lcom/byazt/xj/ve;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private c(Lcom/byazt/xj/ve;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 21
    :cond_0
    instance-of v0, p1, Lcom/byazt/xj/c;

    if-eqz v0, :cond_1

    .line 22
    check-cast p1, Lcom/byazt/xj/c;

    invoke-direct {p0, p1}, Lcom/byazt/xyr/c;->c(Lcom/byazt/xj/c;)V

    return-void

    .line 23
    :cond_1
    invoke-direct {p0, p1}, Lcom/byazt/xyr/c;->tt(Lcom/byazt/xj/ve;)V

    return-void
.end method

.method private c(Lorg/json/JSONArray;Lcom/byazt/xj/ve;)V
    .locals 5

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/byazt/xyr/c;->sp:Lcom/byazt/xj/ve;

    invoke-virtual {v1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 31
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v2, v2, [I

    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 33
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "id"

    .line 34
    invoke-virtual {p2}, Lcom/byazt/xj/ve;->eo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "width"

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, p2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "height"

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "x"

    const/4 v0, 0x0

    aget v4, v3, v0

    aget v0, v2, v0

    sub-int/2addr v4, v0

    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "y"

    const/4 v0, 0x1

    aget v3, v3, v0

    aget v0, v2, v0

    sub-int/2addr v3, v0

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 39
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 40
    :goto_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    :goto_1
    return-void
.end method

.method private tt(Lcom/byazt/xj/ve;)V
    .locals 14

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->kp()Lcom/byazt/pm/i;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->kp()Lcom/byazt/pm/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/pm/i;->x()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_12

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    check-cast v8, Ljava/util/List;

    .line 48
    .line 49
    if-eqz v8, :cond_3

    .line 50
    .line 51
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-nez v9, :cond_3

    .line 56
    .line 57
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_3

    .line 66
    .line 67
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    check-cast v9, Lcom/byazt/ji/tt;

    .line 72
    .line 73
    invoke-virtual {v9}, Lcom/byazt/ji/tt;->da()Lcom/byazt/pm/a;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    invoke-virtual {v9}, Lcom/byazt/pm/a;->tt()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    if-eqz v9, :cond_4

    .line 82
    .line 83
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    if-nez v10, :cond_4

    .line 88
    .line 89
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    :cond_5
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    if-eqz v10, :cond_4

    .line 98
    .line 99
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    check-cast v10, Lcom/byazt/pm/a$c;

    .line 104
    .line 105
    if-eqz v10, :cond_5

    .line 106
    .line 107
    invoke-virtual {v10}, Lcom/byazt/pm/a$c;->tt()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    if-nez v11, :cond_5

    .line 116
    .line 117
    invoke-virtual {v10}, Lcom/byazt/pm/a$c;->tt()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 122
    .line 123
    .line 124
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    const/4 v12, 0x1

    .line 129
    const/4 v13, -0x1

    .line 130
    sparse-switch v11, :sswitch_data_0

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :sswitch_0
    const-string v11, "dislike"

    .line 135
    .line 136
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v10

    .line 140
    if-nez v10, :cond_6

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_6
    const/4 v13, 0x5

    .line 144
    goto :goto_1

    .line 145
    :sswitch_1
    const-string v11, "muteVideo"

    .line 146
    .line 147
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    if-nez v10, :cond_7

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_7
    const/4 v13, 0x4

    .line 155
    goto :goto_1

    .line 156
    :sswitch_2
    const-string v11, "convert"

    .line 157
    .line 158
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    if-nez v10, :cond_8

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_8
    const/4 v13, 0x3

    .line 166
    goto :goto_1

    .line 167
    :sswitch_3
    const-string v11, "close"

    .line 168
    .line 169
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    if-nez v10, :cond_9

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_9
    const/4 v13, 0x2

    .line 177
    goto :goto_1

    .line 178
    :sswitch_4
    const-string v11, "skip"

    .line 179
    .line 180
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    if-nez v10, :cond_a

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_a
    const/4 v13, 0x1

    .line 188
    goto :goto_1

    .line 189
    :sswitch_5
    const-string v11, "openPrivacy"

    .line 190
    .line 191
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    if-nez v10, :cond_b

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_b
    const/4 v13, 0x0

    .line 199
    :goto_1
    packed-switch v13, :pswitch_data_0

    .line 200
    .line 201
    .line 202
    goto :goto_0

    .line 203
    :pswitch_0
    if-nez v4, :cond_c

    .line 204
    .line 205
    iget-object v4, p0, Lcom/byazt/xyr/c;->ve:Lorg/json/JSONArray;

    .line 206
    .line 207
    invoke-direct {p0, v4, p1}, Lcom/byazt/xyr/c;->c(Lorg/json/JSONArray;Lcom/byazt/xj/ve;)V

    .line 208
    .line 209
    .line 210
    :cond_c
    const/4 v4, 0x1

    .line 211
    goto :goto_0

    .line 212
    :pswitch_1
    if-nez v5, :cond_d

    .line 213
    .line 214
    iget-object v5, p0, Lcom/byazt/xyr/c;->uj:Lorg/json/JSONArray;

    .line 215
    .line 216
    invoke-direct {p0, v5, p1}, Lcom/byazt/xyr/c;->c(Lorg/json/JSONArray;Lcom/byazt/xj/ve;)V

    .line 217
    .line 218
    .line 219
    :cond_d
    const/4 v5, 0x1

    .line 220
    goto :goto_0

    .line 221
    :pswitch_2
    if-nez v3, :cond_e

    .line 222
    .line 223
    iget-object v3, p0, Lcom/byazt/xyr/c;->tt:Lorg/json/JSONArray;

    .line 224
    .line 225
    invoke-direct {p0, v3, p1}, Lcom/byazt/xyr/c;->c(Lorg/json/JSONArray;Lcom/byazt/xj/ve;)V

    .line 226
    .line 227
    .line 228
    :cond_e
    const/4 v3, 0x1

    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :pswitch_3
    if-nez v2, :cond_f

    .line 232
    .line 233
    iget-object v2, p0, Lcom/byazt/xyr/c;->c:Lorg/json/JSONArray;

    .line 234
    .line 235
    invoke-direct {p0, v2, p1}, Lcom/byazt/xyr/c;->c(Lorg/json/JSONArray;Lcom/byazt/xj/ve;)V

    .line 236
    .line 237
    .line 238
    :cond_f
    const/4 v2, 0x1

    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :pswitch_4
    if-nez v7, :cond_10

    .line 242
    .line 243
    iget-object v7, p0, Lcom/byazt/xyr/c;->a:Lorg/json/JSONArray;

    .line 244
    .line 245
    invoke-direct {p0, v7, p1}, Lcom/byazt/xyr/c;->c(Lorg/json/JSONArray;Lcom/byazt/xj/ve;)V

    .line 246
    .line 247
    .line 248
    :cond_10
    const/4 v7, 0x1

    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :pswitch_5
    if-nez v6, :cond_11

    .line 252
    .line 253
    iget-object v6, p0, Lcom/byazt/xyr/c;->n:Lorg/json/JSONArray;

    .line 254
    .line 255
    invoke-direct {p0, v6, p1}, Lcom/byazt/xyr/c;->c(Lorg/json/JSONArray;Lcom/byazt/xj/ve;)V

    .line 256
    .line 257
    .line 258
    :cond_11
    const/4 v6, 0x1

    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :cond_12
    return-void

    .line 262
    nop

    .line 263
    :sswitch_data_0
    .sparse-switch
        -0x1e7a3222 -> :sswitch_5
        0x35e57f -> :sswitch_4
        0x5a5ddf8 -> :sswitch_3
        0x38b81db3 -> :sswitch_2
        0x44a639e2 -> :sswitch_1
        0x63a33d25 -> :sswitch_0
    .end sparse-switch

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
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/byazt/xyr/c;->c:Lorg/json/JSONArray;

    .line 3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/byazt/xyr/c;->tt:Lorg/json/JSONArray;

    .line 4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/byazt/xyr/c;->ve:Lorg/json/JSONArray;

    .line 5
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/byazt/xyr/c;->uj:Lorg/json/JSONArray;

    .line 6
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/byazt/xyr/c;->n:Lorg/json/JSONArray;

    .line 7
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/byazt/xyr/c;->a:Lorg/json/JSONArray;

    .line 8
    iget-object v1, p0, Lcom/byazt/xyr/c;->sp:Lcom/byazt/xj/ve;

    invoke-direct {p0, v1}, Lcom/byazt/xyr/c;->c(Lcom/byazt/xj/ve;)V

    .line 9
    iget-object v1, p0, Lcom/byazt/xyr/c;->c:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "close"

    .line 10
    iget-object v2, p0, Lcom/byazt/xyr/c;->c:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/byazt/xyr/c;->tt:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "convert"

    .line 12
    iget-object v2, p0, Lcom/byazt/xyr/c;->tt:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/byazt/xyr/c;->ve:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "dislike"

    .line 14
    iget-object v2, p0, Lcom/byazt/xyr/c;->ve:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/byazt/xyr/c;->uj:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "muteVideo"

    .line 16
    iget-object v2, p0, Lcom/byazt/xyr/c;->uj:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/byazt/xyr/c;->n:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "openPrivacy"

    .line 18
    iget-object v2, p0, Lcom/byazt/xyr/c;->n:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/byazt/xyr/c;->a:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "skip"

    .line 20
    iget-object v2, p0, Lcom/byazt/xyr/c;->a:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    return-object v0
.end method
