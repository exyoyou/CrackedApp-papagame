.class public Lcom/alibaba/fastjson/parser/deserializer/c1;
.super Lcom/alibaba/fastjson/parser/deserializer/v;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/k;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/v;-><init>(Lcom/alibaba/fastjson/parser/k;Ljava/lang/Class;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private p(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    array-length v0, p3

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    move-object v4, v1

    .line 9
    move-object v5, v4

    .line 10
    move-object v6, v5

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    const/4 v7, 0x2

    .line 13
    const/4 v8, 0x1

    .line 14
    if-ge v3, v0, :cond_3

    .line 15
    .line 16
    aget-object v9, p3, v3

    .line 17
    .line 18
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v10

    .line 22
    array-length v10, v10

    .line 23
    if-nez v10, :cond_0

    .line 24
    .line 25
    move-object v6, v9

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v10

    .line 31
    array-length v10, v10

    .line 32
    const-class v11, Ljava/lang/String;

    .line 33
    .line 34
    if-ne v10, v8, :cond_1

    .line 35
    .line 36
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    aget-object v10, v10, v2

    .line 41
    .line 42
    if-ne v10, v11, :cond_1

    .line 43
    .line 44
    move-object v5, v9

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    array-length v10, v10

    .line 51
    if-ne v10, v7, :cond_2

    .line 52
    .line 53
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    aget-object v7, v7, v2

    .line 58
    .line 59
    if-ne v7, v11, :cond_2

    .line 60
    .line 61
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    aget-object v7, v7, v8

    .line 66
    .line 67
    const-class v8, Ljava/lang/Throwable;

    .line 68
    .line 69
    if-ne v7, v8, :cond_2

    .line 70
    .line 71
    move-object v4, v9

    .line 72
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    if-eqz v4, :cond_4

    .line 76
    .line 77
    new-array p3, v7, [Ljava/lang/Object;

    .line 78
    .line 79
    aput-object p1, p3, v2

    .line 80
    .line 81
    aput-object p2, p3, v8

    .line 82
    .line 83
    invoke-virtual {v4, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Ljava/lang/Throwable;

    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_4
    if-eqz v5, :cond_5

    .line 91
    .line 92
    new-array p2, v8, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object p1, p2, v2

    .line 95
    .line 96
    invoke-virtual {v5, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Ljava/lang/Throwable;

    .line 101
    .line 102
    return-object p1

    .line 103
    :cond_5
    if-eqz v6, :cond_6

    .line 104
    .line 105
    new-array p1, v2, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Ljava/lang/Throwable;

    .line 112
    .line 113
    return-object p1

    .line 114
    :cond_6
    return-object v1
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    const/16 v0, 0xc

    return v0
.end method

.method public c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->J()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v3, 0x2

    .line 23
    const-string v4, "syntax error"

    .line 24
    .line 25
    if-ne v0, v3, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/c;->y0(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/16 v3, 0xc

    .line 37
    .line 38
    if-ne v0, v3, :cond_10

    .line 39
    .line 40
    :goto_0
    if-eqz p2, :cond_2

    .line 41
    .line 42
    instance-of v0, p2, Ljava/lang/Class;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    check-cast p2, Ljava/lang/Class;

    .line 47
    .line 48
    const-class v0, Ljava/lang/Throwable;

    .line 49
    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move-object p2, v1

    .line 58
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    move-object v3, v1

    .line 64
    move-object v5, v3

    .line 65
    move-object v6, v5

    .line 66
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->M()Lcom/alibaba/fastjson/parser/l;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-interface {p3, v7}, Lcom/alibaba/fastjson/parser/d;->c0(Lcom/alibaba/fastjson/parser/l;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    const/16 v8, 0xd

    .line 75
    .line 76
    const/16 v9, 0x10

    .line 77
    .line 78
    if-nez v7, :cond_5

    .line 79
    .line 80
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-ne v10, v8, :cond_4

    .line 85
    .line 86
    invoke-interface {p3, v9}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_5

    .line 90
    .line 91
    :cond_4
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-ne v10, v9, :cond_5

    .line 96
    .line 97
    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    .line 98
    .line 99
    invoke-interface {p3, v10}, Lcom/alibaba/fastjson/parser/d;->c(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-eqz v10, :cond_5

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    const/4 v10, 0x4

    .line 107
    invoke-interface {p3, v10}, Lcom/alibaba/fastjson/parser/d;->L(I)V

    .line 108
    .line 109
    .line 110
    sget-object v11, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    if-eqz v11, :cond_7

    .line 117
    .line 118
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-ne p2, v10, :cond_6

    .line 123
    .line 124
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-static {p2}, Lcom/alibaba/fastjson/util/k;->K(Ljava/lang/String;)Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-interface {p3, v9}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 137
    .line 138
    invoke-direct {p1, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p1

    .line 142
    :cond_7
    const-string v11, "message"

    .line 143
    .line 144
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    if-eqz v11, :cond_a

    .line 149
    .line 150
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-ne v5, v2, :cond_8

    .line 155
    .line 156
    move-object v5, v1

    .line 157
    goto :goto_3

    .line 158
    :cond_8
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-ne v5, v10, :cond_9

    .line 163
    .line 164
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    :goto_3
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 173
    .line 174
    invoke-direct {p1, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p1

    .line 178
    :cond_a
    const-string v10, "cause"

    .line 179
    .line 180
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    if-eqz v11, :cond_b

    .line 185
    .line 186
    invoke-virtual {p0, p1, v1, v10}, Lcom/alibaba/fastjson/parser/deserializer/c1;->c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    check-cast v3, Ljava/lang/Throwable;

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_b
    const-string v10, "stackTrace"

    .line 194
    .line 195
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    if-eqz v10, :cond_c

    .line 200
    .line 201
    const-class v6, [Ljava/lang/StackTraceElement;

    .line 202
    .line 203
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/c;->m0(Ljava/lang/Class;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    check-cast v6, [Ljava/lang/StackTraceElement;

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_c
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    :goto_4
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    if-ne v7, v8, :cond_3

    .line 222
    .line 223
    invoke-interface {p3, v9}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 224
    .line 225
    .line 226
    :goto_5
    if-nez p2, :cond_d

    .line 227
    .line 228
    new-instance p1, Ljava/lang/Exception;

    .line 229
    .line 230
    invoke-direct {p1, v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_d
    :try_start_0
    invoke-direct {p0, v5, v3, p2}, Lcom/alibaba/fastjson/parser/deserializer/c1;->p(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    if-nez p1, :cond_e

    .line 239
    .line 240
    new-instance p1, Ljava/lang/Exception;

    .line 241
    .line 242
    invoke-direct {p1, v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .line 244
    .line 245
    :cond_e
    :goto_6
    if-eqz v6, :cond_f

    .line 246
    .line 247
    invoke-virtual {p1, v6}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 248
    .line 249
    .line 250
    :cond_f
    return-object p1

    .line 251
    :catch_0
    move-exception p1

    .line 252
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 253
    .line 254
    const-string p3, "create instance error"

    .line 255
    .line 256
    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    .line 258
    .line 259
    throw p2

    .line 260
    :cond_10
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 261
    .line 262
    invoke-direct {p1, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw p1
.end method
