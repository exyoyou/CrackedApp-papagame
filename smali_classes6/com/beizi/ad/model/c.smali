.class public final Lcom/beizi/ad/model/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/ad/model/c$g;,
        Lcom/beizi/ad/model/c$e;,
        Lcom/beizi/ad/model/c$f;,
        Lcom/beizi/ad/model/c$a;,
        Lcom/beizi/ad/model/c$c;,
        Lcom/beizi/ad/model/c$d;,
        Lcom/beizi/ad/model/c$j;,
        Lcom/beizi/ad/model/c$h;,
        Lcom/beizi/ad/model/c$b;,
        Lcom/beizi/ad/model/c$i;
    }
.end annotation


# direct methods
.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/beizi/ad/model/a/g;
    .locals 5

    const-string v0, "finals"

    const-string v1, "select"

    const-string v2, "normal"

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return-object v3

    .line 1
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    .line 2
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v3

    .line 3
    :cond_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v3

    .line 4
    :cond_3
    new-instance p1, Lcom/beizi/ad/model/a/g;

    invoke-direct {p1}, Lcom/beizi/ad/model/a/g;-><init>()V

    .line 5
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/beizi/ad/model/a/g;->a(Ljava/lang/String;)V

    .line 7
    :cond_4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/beizi/ad/model/a/g;->b(Ljava/lang/String;)V

    .line 9
    :cond_5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/beizi/ad/model/a/g;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-object p1

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v3
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/beizi/ad/model/d;
    .locals 4

    const-string v0, "version"

    const-string v1, "list"

    .line 12
    :try_start_0
    new-instance v2, Lcom/beizi/ad/model/d;

    invoke-direct {v2}, Lcom/beizi/ad/model/d;-><init>()V

    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/beizi/ad/model/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 16
    invoke-virtual {v2, v1}, Lcom/beizi/ad/model/d;->a(Ljava/util/List;)V

    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/beizi/ad/model/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lorg/json/JSONObject;)Lcom/beizi/ad/model/h;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/beizi/ad/model/c;->l(Lorg/json/JSONObject;)Lcom/beizi/ad/model/h;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic c(Lorg/json/JSONObject;)Lcom/beizi/ad/model/a/f;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/beizi/ad/model/c;->k(Lorg/json/JSONObject;)Lcom/beizi/ad/model/a/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic d(Lorg/json/JSONObject;)Lcom/beizi/ad/model/l;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/beizi/ad/model/c;->m(Lorg/json/JSONObject;)Lcom/beizi/ad/model/l;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic e(Lorg/json/JSONObject;)Lcom/beizi/ad/model/m;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/beizi/ad/model/c;->n(Lorg/json/JSONObject;)Lcom/beizi/ad/model/m;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic f(Lorg/json/JSONObject;)Lcom/beizi/ad/model/j;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/beizi/ad/model/c;->o(Lorg/json/JSONObject;)Lcom/beizi/ad/model/j;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic g(Lorg/json/JSONObject;)Lcom/beizi/ad/model/o;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/beizi/ad/model/c;->q(Lorg/json/JSONObject;)Lcom/beizi/ad/model/o;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic h(Lorg/json/JSONObject;)Lcom/beizi/ad/model/n;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/beizi/ad/model/c;->r(Lorg/json/JSONObject;)Lcom/beizi/ad/model/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic i(Lorg/json/JSONObject;)Lcom/beizi/ad/model/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/beizi/ad/model/c;->s(Lorg/json/JSONObject;)Lcom/beizi/ad/model/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic j(Lorg/json/JSONObject;)Lcom/beizi/ad/model/q;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/beizi/ad/model/c;->p(Lorg/json/JSONObject;)Lcom/beizi/ad/model/q;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static k(Lorg/json/JSONObject;)Lcom/beizi/ad/model/a/f;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "rewardedUrl"

    .line 4
    .line 5
    const-string v2, "scrollInterval"

    .line 6
    .line 7
    const-string v3, "loopClick"

    .line 8
    .line 9
    const-string v4, "cardModule"

    .line 10
    .line 11
    const-string v5, "detainmentModule"

    .line 12
    .line 13
    const-string v6, "privilegeModule"

    .line 14
    .line 15
    const-string v7, "cardCloseModule"

    .line 16
    .line 17
    const-string v8, "closeModule"

    .line 18
    .line 19
    const-string v9, "awardTime"

    .line 20
    .line 21
    const-string v10, "optimizeType"

    .line 22
    .line 23
    const-string v11, "showTime"

    .line 24
    .line 25
    const/4 v12, 0x0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    return-object v12

    .line 29
    :cond_0
    :try_start_0
    new-instance v13, Lcom/beizi/ad/model/a/f;

    .line 30
    .line 31
    invoke-direct {v13}, Lcom/beizi/ad/model/a/f;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v14

    .line 38
    invoke-virtual {v13, v14}, Lcom/beizi/ad/model/a/f;->a(I)V

    .line 39
    .line 40
    .line 41
    const-string v14, "optimizeTime"

    .line 42
    .line 43
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v14

    .line 47
    invoke-virtual {v13, v14}, Lcom/beizi/ad/model/a/f;->b(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v14

    .line 54
    invoke-virtual {v13, v14}, Lcom/beizi/ad/model/a/f;->c(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v14

    .line 61
    invoke-virtual {v13, v14}, Lcom/beizi/ad/model/a/f;->d(I)V

    .line 62
    .line 63
    .line 64
    const-string v14, "rewardType"

    .line 65
    .line 66
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v14

    .line 70
    invoke-virtual {v13, v14}, Lcom/beizi/ad/model/a/f;->e(I)V

    .line 71
    .line 72
    .line 73
    const-string v14, "minTime"

    .line 74
    .line 75
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v14

    .line 79
    invoke-virtual {v13, v14}, Lcom/beizi/ad/model/a/f;->f(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v14
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    const-string v15, "isHiddenClose"

    .line 87
    .line 88
    const-string v12, "event"

    .line 89
    .line 90
    move-object/from16 v16, v1

    .line 91
    .line 92
    const-string v1, "eventProbity"

    .line 93
    .line 94
    move-object/from16 v17, v2

    .line 95
    .line 96
    const-string v2, "closeTitle"

    .line 97
    .line 98
    move-object/from16 v18, v3

    .line 99
    .line 100
    const-string v3, "detail"

    .line 101
    .line 102
    if-eqz v14, :cond_3

    .line 103
    .line 104
    :try_start_1
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    if-eqz v8, :cond_3

    .line 109
    .line 110
    new-instance v14, Lcom/beizi/ad/model/a/b;

    .line 111
    .line 112
    invoke-direct {v14}, Lcom/beizi/ad/model/a/b;-><init>()V

    .line 113
    .line 114
    .line 115
    move-object/from16 v19, v4

    .line 116
    .line 117
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    invoke-virtual {v14, v4}, Lcom/beizi/ad/model/a/b;->a(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    invoke-virtual {v14, v4}, Lcom/beizi/ad/model/a/b;->b(I)V

    .line 129
    .line 130
    .line 131
    invoke-static {v8, v3}, Lcom/beizi/ad/model/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/beizi/ad/model/a/g;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    if-eqz v4, :cond_1

    .line 136
    .line 137
    invoke-virtual {v14, v4}, Lcom/beizi/ad/model/a/b;->a(Lcom/beizi/ad/model/a/g;)V

    .line 138
    .line 139
    .line 140
    :cond_1
    invoke-static {v8, v2}, Lcom/beizi/ad/model/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/beizi/ad/model/a/g;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    if-eqz v4, :cond_2

    .line 145
    .line 146
    invoke-virtual {v14, v4}, Lcom/beizi/ad/model/a/b;->b(Lcom/beizi/ad/model/a/g;)V

    .line 147
    .line 148
    .line 149
    :cond_2
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    invoke-virtual {v14, v4}, Lcom/beizi/ad/model/a/b;->c(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    invoke-virtual {v14, v4}, Lcom/beizi/ad/model/a/b;->d(I)V

    .line 161
    .line 162
    .line 163
    const-string v4, "forbidClose"

    .line 164
    .line 165
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    invoke-virtual {v14, v4}, Lcom/beizi/ad/model/a/b;->e(I)V

    .line 170
    .line 171
    .line 172
    const-string v4, "isJumpEndCard"

    .line 173
    .line 174
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    invoke-virtual {v14, v4}, Lcom/beizi/ad/model/a/b;->f(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v13, v14}, Lcom/beizi/ad/model/a/f;->a(Lcom/beizi/ad/model/a/b;)V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_3
    move-object/from16 v19, v4

    .line 186
    .line 187
    :goto_0
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-eqz v4, :cond_6

    .line 192
    .line 193
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    if-eqz v4, :cond_6

    .line 198
    .line 199
    new-instance v7, Lcom/beizi/ad/model/a/b;

    .line 200
    .line 201
    invoke-direct {v7}, Lcom/beizi/ad/model/a/b;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    invoke-virtual {v7, v8}, Lcom/beizi/ad/model/a/b;->a(I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    invoke-virtual {v7, v8}, Lcom/beizi/ad/model/a/b;->b(I)V

    .line 216
    .line 217
    .line 218
    invoke-static {v4, v3}, Lcom/beizi/ad/model/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/beizi/ad/model/a/g;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    if-eqz v8, :cond_4

    .line 223
    .line 224
    invoke-virtual {v7, v8}, Lcom/beizi/ad/model/a/b;->a(Lcom/beizi/ad/model/a/g;)V

    .line 225
    .line 226
    .line 227
    :cond_4
    invoke-static {v4, v2}, Lcom/beizi/ad/model/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/beizi/ad/model/a/g;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    if-eqz v8, :cond_5

    .line 232
    .line 233
    invoke-virtual {v7, v8}, Lcom/beizi/ad/model/a/b;->b(Lcom/beizi/ad/model/a/g;)V

    .line 234
    .line 235
    .line 236
    :cond_5
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    invoke-virtual {v7, v8}, Lcom/beizi/ad/model/a/b;->c(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    invoke-virtual {v7, v4}, Lcom/beizi/ad/model/a/b;->d(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v13, v7}, Lcom/beizi/ad/model/a/f;->b(Lcom/beizi/ad/model/a/b;)V

    .line 251
    .line 252
    .line 253
    :cond_6
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    const-string v7, "clickTitle"

    .line 258
    .line 259
    const-string v8, "title"

    .line 260
    .line 261
    if-eqz v4, :cond_d

    .line 262
    .line 263
    :try_start_2
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    if-eqz v4, :cond_d

    .line 268
    .line 269
    new-instance v6, Lcom/beizi/ad/model/a/d;

    .line 270
    .line 271
    invoke-direct {v6}, Lcom/beizi/ad/model/a/d;-><init>()V

    .line 272
    .line 273
    .line 274
    const-string v14, "adType"

    .line 275
    .line 276
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    move-result v14

    .line 280
    invoke-virtual {v6, v14}, Lcom/beizi/ad/model/a/d;->a(I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    move-result v10

    .line 287
    invoke-virtual {v6, v10}, Lcom/beizi/ad/model/a/d;->b(I)V

    .line 288
    .line 289
    .line 290
    invoke-static {v4, v8}, Lcom/beizi/ad/model/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/beizi/ad/model/a/g;

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    if-eqz v10, :cond_7

    .line 295
    .line 296
    invoke-virtual {v6, v10}, Lcom/beizi/ad/model/a/d;->a(Lcom/beizi/ad/model/a/g;)V

    .line 297
    .line 298
    .line 299
    :cond_7
    const-string v10, "sub"

    .line 300
    .line 301
    invoke-static {v4, v10}, Lcom/beizi/ad/model/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/beizi/ad/model/a/g;

    .line 302
    .line 303
    .line 304
    move-result-object v10

    .line 305
    if-eqz v10, :cond_8

    .line 306
    .line 307
    invoke-virtual {v6, v10}, Lcom/beizi/ad/model/a/d;->b(Lcom/beizi/ad/model/a/g;)V

    .line 308
    .line 309
    .line 310
    :cond_8
    invoke-static {v4, v3}, Lcom/beizi/ad/model/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/beizi/ad/model/a/g;

    .line 311
    .line 312
    .line 313
    move-result-object v10

    .line 314
    if-eqz v10, :cond_9

    .line 315
    .line 316
    invoke-virtual {v6, v10}, Lcom/beizi/ad/model/a/d;->c(Lcom/beizi/ad/model/a/g;)V

    .line 317
    .line 318
    .line 319
    :cond_9
    const-string v10, "awardTitle"

    .line 320
    .line 321
    invoke-static {v4, v10}, Lcom/beizi/ad/model/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/beizi/ad/model/a/g;

    .line 322
    .line 323
    .line 324
    move-result-object v10

    .line 325
    if-eqz v10, :cond_a

    .line 326
    .line 327
    invoke-virtual {v6, v10}, Lcom/beizi/ad/model/a/d;->e(Lcom/beizi/ad/model/a/g;)V

    .line 328
    .line 329
    .line 330
    :cond_a
    invoke-static {v4, v7}, Lcom/beizi/ad/model/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/beizi/ad/model/a/g;

    .line 331
    .line 332
    .line 333
    move-result-object v10

    .line 334
    if-eqz v10, :cond_b

    .line 335
    .line 336
    invoke-virtual {v6, v10}, Lcom/beizi/ad/model/a/d;->d(Lcom/beizi/ad/model/a/g;)V

    .line 337
    .line 338
    .line 339
    :cond_b
    invoke-static {v4, v2}, Lcom/beizi/ad/model/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/beizi/ad/model/a/g;

    .line 340
    .line 341
    .line 342
    move-result-object v10

    .line 343
    if-eqz v10, :cond_c

    .line 344
    .line 345
    invoke-virtual {v6, v10}, Lcom/beizi/ad/model/a/d;->f(Lcom/beizi/ad/model/a/g;)V

    .line 346
    .line 347
    .line 348
    :cond_c
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    move-result v9

    .line 352
    invoke-virtual {v6, v9}, Lcom/beizi/ad/model/a/d;->c(I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    move-result v9

    .line 359
    invoke-virtual {v6, v9}, Lcom/beizi/ad/model/a/d;->d(I)V

    .line 360
    .line 361
    .line 362
    const-string v9, "autoCloseTime"

    .line 363
    .line 364
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    move-result v9

    .line 368
    invoke-virtual {v6, v9}, Lcom/beizi/ad/model/a/d;->e(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    move-result v9

    .line 375
    invoke-virtual {v6, v9}, Lcom/beizi/ad/model/a/d;->f(I)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    move-result v9

    .line 382
    invoke-virtual {v6, v9}, Lcom/beizi/ad/model/a/d;->g(I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    move-result v9

    .line 389
    invoke-virtual {v6, v9}, Lcom/beizi/ad/model/a/d;->h(I)V

    .line 390
    .line 391
    .line 392
    const-string v9, "awardClickCount"

    .line 393
    .line 394
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    move-result v4

    .line 398
    invoke-virtual {v6, v4}, Lcom/beizi/ad/model/a/d;->i(I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v13, v6}, Lcom/beizi/ad/model/a/f;->a(Lcom/beizi/ad/model/a/d;)V

    .line 402
    .line 403
    .line 404
    :cond_d
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    if-eqz v4, :cond_12

    .line 409
    .line 410
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    if-eqz v4, :cond_12

    .line 415
    .line 416
    new-instance v5, Lcom/beizi/ad/model/a/c;

    .line 417
    .line 418
    invoke-direct {v5}, Lcom/beizi/ad/model/a/c;-><init>()V

    .line 419
    .line 420
    .line 421
    invoke-static {v4, v8}, Lcom/beizi/ad/model/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/beizi/ad/model/a/g;

    .line 422
    .line 423
    .line 424
    move-result-object v6

    .line 425
    if-eqz v6, :cond_e

    .line 426
    .line 427
    invoke-virtual {v5, v6}, Lcom/beizi/ad/model/a/c;->a(Lcom/beizi/ad/model/a/g;)V

    .line 428
    .line 429
    .line 430
    :cond_e
    invoke-static {v4, v3}, Lcom/beizi/ad/model/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/beizi/ad/model/a/g;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    if-eqz v3, :cond_f

    .line 435
    .line 436
    invoke-virtual {v5, v3}, Lcom/beizi/ad/model/a/c;->b(Lcom/beizi/ad/model/a/g;)V

    .line 437
    .line 438
    .line 439
    :cond_f
    invoke-static {v4, v7}, Lcom/beizi/ad/model/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/beizi/ad/model/a/g;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    if-eqz v3, :cond_10

    .line 444
    .line 445
    invoke-virtual {v5, v3}, Lcom/beizi/ad/model/a/c;->c(Lcom/beizi/ad/model/a/g;)V

    .line 446
    .line 447
    .line 448
    :cond_10
    invoke-static {v4, v2}, Lcom/beizi/ad/model/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/beizi/ad/model/a/g;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    if-eqz v2, :cond_11

    .line 453
    .line 454
    invoke-virtual {v5, v2}, Lcom/beizi/ad/model/a/c;->d(Lcom/beizi/ad/model/a/g;)V

    .line 455
    .line 456
    .line 457
    :cond_11
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    invoke-virtual {v5, v1}, Lcom/beizi/ad/model/a/c;->a(I)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    invoke-virtual {v5, v1}, Lcom/beizi/ad/model/a/c;->b(I)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v13, v5}, Lcom/beizi/ad/model/a/f;->a(Lcom/beizi/ad/model/a/c;)V

    .line 472
    .line 473
    .line 474
    :cond_12
    move-object/from16 v1, v19

    .line 475
    .line 476
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    if-eqz v2, :cond_13

    .line 481
    .line 482
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    if-eqz v1, :cond_13

    .line 487
    .line 488
    new-instance v2, Lcom/beizi/ad/model/a/a;

    .line 489
    .line 490
    invoke-direct {v2}, Lcom/beizi/ad/model/a/a;-><init>()V

    .line 491
    .line 492
    .line 493
    const-string v3, "cardType"

    .line 494
    .line 495
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    invoke-virtual {v2, v1}, Lcom/beizi/ad/model/a/a;->a(I)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v13, v2}, Lcom/beizi/ad/model/a/f;->a(Lcom/beizi/ad/model/a/a;)V

    .line 503
    .line 504
    .line 505
    :cond_13
    move-object/from16 v1, v18

    .line 506
    .line 507
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 508
    .line 509
    .line 510
    move-result v2

    .line 511
    if-eqz v2, :cond_14

    .line 512
    .line 513
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    invoke-virtual {v13, v1}, Lcom/beizi/ad/model/a/f;->g(I)V

    .line 518
    .line 519
    .line 520
    :cond_14
    move-object/from16 v1, v17

    .line 521
    .line 522
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    if-eqz v2, :cond_15

    .line 527
    .line 528
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 529
    .line 530
    .line 531
    move-result v1

    .line 532
    invoke-virtual {v13, v1}, Lcom/beizi/ad/model/a/f;->h(I)V

    .line 533
    .line 534
    .line 535
    :cond_15
    move-object/from16 v1, v16

    .line 536
    .line 537
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    if-eqz v2, :cond_16

    .line 542
    .line 543
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-virtual {v13, v0}, Lcom/beizi/ad/model/a/f;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 548
    .line 549
    .line 550
    :cond_16
    return-object v13

    .line 551
    :catch_0
    const/4 v0, 0x0

    .line 552
    goto :goto_1

    .line 553
    :catch_1
    move-object v0, v12

    .line 554
    :goto_1
    return-object v0
.end method

.method private static l(Lorg/json/JSONObject;)Lcom/beizi/ad/model/h;
    .locals 8

    .line 1
    const-string v0, "direction"

    .line 2
    .line 3
    const-string v1, "duration"

    .line 4
    .line 5
    const-string v2, "angle"

    .line 6
    .line 7
    const-string v3, "maxAcc"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-object v4

    .line 13
    :cond_0
    :try_start_0
    new-instance v5, Lcom/beizi/ad/model/h;

    .line 14
    .line 15
    invoke-direct {v5}, Lcom/beizi/ad/model/h;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-eqz v6, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    invoke-virtual {v5, v6, v7}, Lcom/beizi/ad/model/h;->a(D)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-virtual {v5, v2, v3}, Lcom/beizi/ad/model/h;->b(D)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    invoke-virtual {v5, v1, v2}, Lcom/beizi/ad/model/h;->c(D)V

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v5, p0}, Lcom/beizi/ad/model/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    :cond_4
    return-object v5

    .line 71
    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    return-object v4
.end method

.method private static m(Lorg/json/JSONObject;)Lcom/beizi/ad/model/l;
    .locals 4

    .line 1
    const-string v0, "position"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    new-instance v2, Lcom/beizi/ad/model/l;

    .line 8
    .line 9
    invoke-direct {v2}, Lcom/beizi/ad/model/l;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "showTime"

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v2, v3}, Lcom/beizi/ad/model/l;->a(I)V

    .line 19
    .line 20
    .line 21
    const-string v3, "duration"

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v2, v3}, Lcom/beizi/ad/model/l;->b(I)V

    .line 28
    .line 29
    .line 30
    const-string v3, "slide"

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v2, v3}, Lcom/beizi/ad/model/l;->c(I)V

    .line 37
    .line 38
    .line 39
    const-string v3, "animation"

    .line 40
    .line 41
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v2, v3}, Lcom/beizi/ad/model/l;->d(I)V

    .line 46
    .line 47
    .line 48
    const-string v3, "image"

    .line 49
    .line 50
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Lcom/beizi/ad/model/l;->a(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v3, "title"

    .line 58
    .line 59
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Lcom/beizi/ad/model/l;->b(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v3, "desc"

    .line 67
    .line 68
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Lcom/beizi/ad/model/l;->c(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v3, "btn"

    .line 76
    .line 77
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Lcom/beizi/ad/model/l;->d(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v3, "btnClick"

    .line 85
    .line 86
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-virtual {v2, v3}, Lcom/beizi/ad/model/l;->e(I)V

    .line 91
    .line 92
    .line 93
    const-string v3, "autoTime"

    .line 94
    .line 95
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {v2, v3}, Lcom/beizi/ad/model/l;->f(I)V

    .line 100
    .line 101
    .line 102
    const-string v3, "layer"

    .line 103
    .line 104
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-virtual {v2, v3}, Lcom/beizi/ad/model/l;->g(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_1

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {p0}, Lcom/beizi/ad/model/c;->r(Lorg/json/JSONObject;)Lcom/beizi/ad/model/n;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    if-eqz p0, :cond_1

    .line 126
    .line 127
    invoke-virtual {v2, p0}, Lcom/beizi/ad/model/l;->a(Lcom/beizi/ad/model/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    :cond_1
    return-object v2

    .line 131
    :catch_0
    move-exception p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    .line 134
    .line 135
    return-object v1
.end method

.method private static n(Lorg/json/JSONObject;)Lcom/beizi/ad/model/m;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Lcom/beizi/ad/model/m;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/beizi/ad/model/m;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "autoTime"

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/m;->a(I)V

    .line 17
    .line 18
    .line 19
    const-string v2, "multiDirection"

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/m;->b(I)V

    .line 26
    .line 27
    .line 28
    const-string v2, "isOpenSensor"

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/m;->c(I)V

    .line 35
    .line 36
    .line 37
    const-string v2, "isShowShakeView"

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-virtual {v1, p0}, Lcom/beizi/ad/model/m;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method private static o(Lorg/json/JSONObject;)Lcom/beizi/ad/model/j;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Lcom/beizi/ad/model/j;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/beizi/ad/model/j;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "random"

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/j;->a(I)V

    .line 17
    .line 18
    .line 19
    const-string v2, "url"

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/j;->a(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v2, "showMask"

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/j;->b(I)V

    .line 35
    .line 36
    .line 37
    const-string v2, "autoOpen"

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/j;->c(I)V

    .line 44
    .line 45
    .line 46
    const-string v2, "autoOpenType"

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/j;->d(I)V

    .line 53
    .line 54
    .line 55
    const-string v2, "repeatOpen"

    .line 56
    .line 57
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/j;->e(I)V

    .line 62
    .line 63
    .line 64
    const-string v2, "repeatOpenCount"

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/j;->f(I)V

    .line 71
    .line 72
    .line 73
    const-string v2, "againOpen"

    .line 74
    .line 75
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/j;->g(I)V

    .line 80
    .line 81
    .line 82
    const-string v2, "againOpenTime"

    .line 83
    .line 84
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    invoke-virtual {v1, p0}, Lcom/beizi/ad/model/j;->h(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    return-object v1

    .line 92
    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    return-object v0
.end method

.method private static p(Lorg/json/JSONObject;)Lcom/beizi/ad/model/q;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Lcom/beizi/ad/model/q;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/beizi/ad/model/q;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "interval"

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/q;->a(I)V

    .line 17
    .line 18
    .line 19
    const-string v2, "closeType"

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/q;->b(I)V

    .line 26
    .line 27
    .line 28
    const-string v2, "privilegeClick"

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/q;->c(I)V

    .line 35
    .line 36
    .line 37
    const-string v2, "isScrollClick"

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-virtual {v1, p0}, Lcom/beizi/ad/model/q;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method private static q(Lorg/json/JSONObject;)Lcom/beizi/ad/model/o;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Lcom/beizi/ad/model/o;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/beizi/ad/model/o;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "isShow"

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/o;->a(I)V

    .line 17
    .line 18
    .line 19
    const-string v2, "normalStart"

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/beizi/ad/model/o;->a(D)V

    .line 26
    .line 27
    .line 28
    const-string v2, "normalEnd"

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    invoke-virtual {v1, v2, v3}, Lcom/beizi/ad/model/o;->b(D)V

    .line 35
    .line 36
    .line 37
    const-string v2, "normalCount"

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/o;->b(I)V

    .line 44
    .line 45
    .line 46
    const-string v2, "normalAngle"

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/o;->c(I)V

    .line 53
    .line 54
    .line 55
    const-string v2, "isClickRemove"

    .line 56
    .line 57
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/o;->d(I)V

    .line 62
    .line 63
    .line 64
    const-string v2, "isClickCool"

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/o;->e(I)V

    .line 71
    .line 72
    .line 73
    const-string v2, "coolStart"

    .line 74
    .line 75
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    invoke-virtual {v1, v2, v3}, Lcom/beizi/ad/model/o;->c(D)V

    .line 80
    .line 81
    .line 82
    const-string v2, "coolEnd"

    .line 83
    .line 84
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    invoke-virtual {v1, v2, v3}, Lcom/beizi/ad/model/o;->d(D)V

    .line 89
    .line 90
    .line 91
    const-string v2, "coolCount"

    .line 92
    .line 93
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-virtual {v1, v2}, Lcom/beizi/ad/model/o;->f(I)V

    .line 98
    .line 99
    .line 100
    const-string v2, "coolAngle"

    .line 101
    .line 102
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    invoke-virtual {v1, p0}, Lcom/beizi/ad/model/o;->g(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    return-object v1

    .line 110
    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    return-object v0
.end method

.method private static r(Lorg/json/JSONObject;)Lcom/beizi/ad/model/n;
    .locals 8

    .line 1
    const-string v0, "height"

    .line 2
    .line 3
    const-string v1, "width"

    .line 4
    .line 5
    const-string v2, "top"

    .line 6
    .line 7
    const-string v3, "centerY"

    .line 8
    .line 9
    const-string v4, "centerX"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    return-object v5

    .line 15
    :cond_0
    :try_start_0
    new-instance v6, Lcom/beizi/ad/model/n;

    .line 16
    .line 17
    invoke-direct {v6}, Lcom/beizi/ad/model/n;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    if-eqz v7, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v6, v4}, Lcom/beizi/ad/model/n;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v6, v3}, Lcom/beizi/ad/model/n;->b(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v6, v2}, Lcom/beizi/ad/model/n;->c(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v6, v1}, Lcom/beizi/ad/model/n;->d(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v6, p0}, Lcom/beizi/ad/model/n;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    :cond_5
    return-object v6

    .line 86
    :catch_0
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    return-object v5
.end method

.method private static s(Lorg/json/JSONObject;)Lcom/beizi/ad/model/e;
    .locals 4

    .line 1
    const-string v0, "position"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    new-instance v2, Lcom/beizi/ad/model/e;

    .line 8
    .line 9
    invoke-direct {v2}, Lcom/beizi/ad/model/e;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "bgColor"

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Lcom/beizi/ad/model/e;->a(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v3, "imageUrl"

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Lcom/beizi/ad/model/e;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/beizi/ad/model/c;->r(Lorg/json/JSONObject;)Lcom/beizi/ad/model/n;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2, p0}, Lcom/beizi/ad/model/e;->a(Lcom/beizi/ad/model/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :cond_1
    return-object v2

    .line 50
    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    return-object v1
.end method
