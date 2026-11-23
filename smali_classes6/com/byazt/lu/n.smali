.class public Lcom/byazt/lu/n;
.super Lcom/byazt/lu/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x304,
        0x2e
    }
.end annotation


# static fields
.field public static final tt:[J

.field public static final uj:[J

.field public static final ve:[J


# instance fields
.field public n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [J

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const-wide/32 v3, 0xe09c0

    .line 6
    .line 7
    .line 8
    aput-wide v3, v1, v2

    .line 9
    .line 10
    sput-object v1, Lcom/byazt/lu/n;->tt:[J

    .line 11
    .line 12
    new-array v0, v0, [J

    .line 13
    .line 14
    aput-wide v3, v0, v2

    .line 15
    .line 16
    sput-object v0, Lcom/byazt/lu/n;->ve:[J

    .line 17
    .line 18
    const/16 v0, 0xa

    .line 19
    .line 20
    new-array v0, v0, [J

    .line 21
    .line 22
    fill-array-data v0, :array_0

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/byazt/lu/n;->uj:[J

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        0x2710
        0x2710
        0x4e20
        0x4e20
        0xea60
        0x1770
        0x2bf20
        0x2bf20
        0x83d60
        0x83d60
    .end array-data
.end method

.method public constructor <init>(Lcom/byazt/lu/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/lu/tt;-><init>(Lcom/byazt/lu/uj;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/byazt/lu/n;->n:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public c()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/lu/tt;->c:Lcom/byazt/lu/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/lu/uj;->uj()Lcom/byazt/ds/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/ds/i;->u()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object v2, p0, Lcom/byazt/lu/tt;->c:Lcom/byazt/lu/uj;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/byazt/lu/uj;->a()Lcom/byazt/lu/sp;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/byazt/lu/sp;->ve()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const v2, 0x1499700

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const v2, 0x2932e00

    .line 28
    .line 29
    .line 30
    :goto_0
    int-to-long v2, v2

    .line 31
    add-long/2addr v0, v2

    .line 32
    return-wide v0
.end method

.method public tt()[J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lu/tt;->c:Lcom/byazt/lu/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/lu/uj;->uj()Lcom/byazt/ds/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/ds/i;->t()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/byazt/lu/n;->ve:[J

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lcom/byazt/lu/n;->tt:[J

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget-object v0, Lcom/byazt/lu/n;->ve:[J

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    sget-object v0, Lcom/byazt/lu/n;->uj:[J

    .line 33
    .line 34
    :goto_0
    return-object v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    const-string v0, "r"

    return-object v0
.end method

.method public ve()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/lu/tt;->c:Lcom/byazt/lu/uj;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/byazt/lu/uj;->uj()Lcom/byazt/ds/i;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/byazt/ds/i;->c()Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v2, :cond_4

    .line 19
    .line 20
    const-string v5, "magic_tag"

    .line 21
    .line 22
    const-string v6, "ss_app_log"

    .line 23
    .line 24
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    invoke-static {v2}, Lcom/byazt/yv/u;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    const-string v1, "header"

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    const-string v1, "_gen_time"

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    const-string v1, "device_id"

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_0

    .line 58
    .line 59
    invoke-static {}, Lcom/byazt/yv/u;->ve()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    iget-boolean v1, p0, Lcom/byazt/lu/n;->n:Z

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    iput-boolean v4, p0, Lcom/byazt/lu/n;->n:Z

    .line 70
    .line 71
    return v4

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/byazt/lu/tt;->c:Lcom/byazt/lu/uj;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/byazt/lu/uj;->uj()Lcom/byazt/ds/i;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/byazt/ds/i;->c()Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/byazt/lu/tt;->c:Lcom/byazt/lu/uj;

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/byazt/lu/uj;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object v5, p0, Lcom/byazt/lu/tt;->c:Lcom/byazt/lu/uj;

    .line 89
    .line 90
    invoke-virtual {v5}, Lcom/byazt/lu/uj;->sp()Lcom/byazt/yv/sl;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Lcom/byazt/yv/sl;->c()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    const/4 v6, 0x1

    .line 99
    invoke-static {}, Lcom/byazt/gj/c;->uj()Lcom/byazt/gj/tt;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-static {v2, v1, v5, v6, v7}, Lcom/byazt/mp/tt;->c(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLcom/byazt/gj/tt;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v2, v0}, Lcom/byazt/mp/c;->c(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/byazt/mp/ve;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_1

    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/byazt/mp/ve;->c()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    if-eqz v5, :cond_1

    .line 118
    .line 119
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/byazt/mp/ve;->c()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    .line 127
    .line 128
    move-object v3, v5

    .line 129
    goto :goto_0

    .line 130
    :catch_0
    move-exception v5

    .line 131
    invoke-static {v5}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 135
    .line 136
    const-string v4, "device_id"

    .line 137
    .line 138
    const-string v5, ""

    .line 139
    .line 140
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    const-string v5, "install_id"

    .line 145
    .line 146
    const-string v6, ""

    .line 147
    .line 148
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    const-string v6, "ssid"

    .line 153
    .line 154
    const-string v7, ""

    .line 155
    .line 156
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    iget-object v7, p0, Lcom/byazt/lu/tt;->c:Lcom/byazt/lu/uj;

    .line 161
    .line 162
    invoke-virtual {v7}, Lcom/byazt/lu/uj;->uj()Lcom/byazt/ds/i;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-virtual {v7, v3, v4, v5, v6}, Lcom/byazt/ds/i;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    new-instance v6, Lorg/json/JSONObject;

    .line 171
    .line 172
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v3, "headers"

    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/byazt/mp/ve;->tt()Lorg/json/JSONObject;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    .line 187
    .line 188
    invoke-static {v0, v6}, Lcom/byazt/yv/u;->tt(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 189
    .line 190
    .line 191
    const-string v0, "__kite"

    .line 192
    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v3, "start:"

    .line 196
    .line 197
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-static {}, Lcom/byazt/yv/u;->n()Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-static {v0, v2}, Lcom/byazt/tf/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :try_start_2
    invoke-static {}, Lcom/byazt/yv/u;->n()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_2

    .line 219
    .line 220
    new-instance v0, Lcom/byazt/az/tt;

    .line 221
    .line 222
    iget-object v2, p0, Lcom/byazt/lu/tt;->c:Lcom/byazt/lu/uj;

    .line 223
    .line 224
    invoke-virtual {v2}, Lcom/byazt/lu/uj;->getContext()Landroid/content/Context;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-direct {v0, v2}, Lcom/byazt/az/tt;-><init>(Landroid/content/Context;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1, v4}, Lcom/byazt/az/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :catchall_0
    move-exception v0

    .line 236
    const-string v1, "__kite"

    .line 237
    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v3, "error:"

    .line 241
    .line 242
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-static {}, Lcom/byazt/yv/u;->n()Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-static {v1, v2, v0}, Lcom/byazt/tf/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    .line 258
    .line 259
    :cond_2
    :goto_1
    return v5

    .line 260
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    .line 261
    .line 262
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 263
    .line 264
    .line 265
    const-string v3, "headers"

    .line 266
    .line 267
    invoke-virtual {v2}, Lcom/byazt/mp/ve;->tt()Lorg/json/JSONObject;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    .line 273
    .line 274
    invoke-static {v0, v1}, Lcom/byazt/yv/u;->tt(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 275
    .line 276
    .line 277
    goto :goto_2

    .line 278
    :catchall_1
    move-exception v0

    .line 279
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 280
    throw v0

    .line 281
    :cond_4
    invoke-static {v3}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    .line 282
    .line 283
    .line 284
    :goto_2
    return v4
.end method
