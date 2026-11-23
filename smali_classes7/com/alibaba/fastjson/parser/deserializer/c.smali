.class public abstract Lcom/alibaba/fastjson/parser/deserializer/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/x0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
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
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x10

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->y()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v4, 0x4

    .line 32
    if-ne v1, v4, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 39
    .line 40
    .line 41
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    .line 42
    .line 43
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/d;->c(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_c

    .line 48
    .line 49
    new-instance v0, Lcom/alibaba/fastjson/parser/g;

    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/g;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/g;->V0()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/e;->j0()Ljava/util/Calendar;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/e;->close()V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    const/16 v5, 0x8

    .line 78
    .line 79
    if-ne v1, v5, :cond_3

    .line 80
    .line 81
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 82
    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :cond_3
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const/16 v5, 0xc

    .line 92
    .line 93
    const/16 v6, 0xd

    .line 94
    .line 95
    const/16 v7, 0x11

    .line 96
    .line 97
    const-string v8, "syntax error"

    .line 98
    .line 99
    if-ne v1, v5, :cond_8

    .line 100
    .line 101
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 102
    .line 103
    .line 104
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-ne v1, v4, :cond_7

    .line 109
    .line 110
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    sget-object v5, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_5

    .line 121
    .line 122
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/c;->a(I)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v1}, Lcom/alibaba/fastjson/util/k;->K(Ljava/lang/String;)Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    move-object p2, v1

    .line 139
    :cond_4
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/c;->a(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/c;->a(I)V

    .line 143
    .line 144
    .line 145
    :cond_5
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/d;->L(I)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-ne v1, v3, :cond_6

    .line 153
    .line 154
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->y()J

    .line 155
    .line 156
    .line 157
    move-result-wide v1

    .line 158
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 159
    .line 160
    .line 161
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/c;->a(I)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 170
    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string p3, "syntax error : "

    .line 177
    .line 178
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->h()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p1

    .line 196
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 197
    .line 198
    invoke-direct {p1, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p1

    .line 202
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->J()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-ne v1, v3, :cond_b

    .line 207
    .line 208
    const/4 v1, 0x0

    .line 209
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/c;->y0(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/c;->a(I)V

    .line 213
    .line 214
    .line 215
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-ne v1, v4, :cond_a

    .line 220
    .line 221
    const-string v1, "val"

    .line 222
    .line 223
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-eqz v1, :cond_9

    .line 232
    .line 233
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/c;->a(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/c;->a(I)V

    .line 244
    .line 245
    .line 246
    goto :goto_0

    .line 247
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 248
    .line 249
    invoke-direct {p1, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p1

    .line 253
    :cond_a
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 254
    .line 255
    invoke-direct {p1, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw p1

    .line 259
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->Q()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    :cond_c
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/alibaba/fastjson/parser/deserializer/c;->d(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    return-object p1
.end method

.method protected abstract d(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method
