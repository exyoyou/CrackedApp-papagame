.class public Lcom/beizi/ad/internal/e/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static i:Lcom/beizi/ad/internal/e/q;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field private f:Lcom/beizi/ad/model/i$d;

.field private g:Lcom/beizi/ad/model/i$c;

.field private h:I

.field private j:Lcom/beizi/fusion/model/EnvInfo;

.field private k:Landroid/content/Context;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:J

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/beizi/ad/model/i$d;->f:Lcom/beizi/ad/model/i$d;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->f:Lcom/beizi/ad/model/i$d;

    .line 7
    .line 8
    sget-object v0, Lcom/beizi/ad/model/i$c;->e:Lcom/beizi/ad/model/i$c;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->g:Lcom/beizi/ad/model/i$c;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/beizi/ad/internal/e/q;->a:Z

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/beizi/ad/internal/e/q;->h:I

    .line 17
    .line 18
    const-string v0, "WGS84"

    .line 19
    .line 20
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->d:Ljava/lang/String;

    .line 21
    .line 22
    const-wide/32 v0, 0x5265c00

    .line 23
    .line 24
    .line 25
    iput-wide v0, p0, Lcom/beizi/ad/internal/e/q;->o:J

    .line 26
    .line 27
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->e()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->k:Landroid/content/Context;

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-static {v0}, Lcom/beizi/fusion/model/RequestInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/RequestInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget-boolean v1, v0, Lcom/beizi/fusion/model/RequestInfo;->isInit:Z

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/beizi/fusion/model/RequestInfo;->init()Lcom/beizi/fusion/model/RequestInfo;

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/beizi/fusion/c/b;->u()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput-boolean v1, p0, Lcom/beizi/ad/internal/e/q;->m:Z

    .line 63
    .line 64
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/beizi/fusion/c/b;->v()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iput-boolean v1, p0, Lcom/beizi/ad/internal/e/q;->n:Z

    .line 73
    .line 74
    iget-boolean v1, p0, Lcom/beizi/ad/internal/e/q;->m:Z

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    iget-object v1, p0, Lcom/beizi/ad/internal/e/q;->k:Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {v1}, Lcom/beizi/fusion/model/ResponseInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/ResponseInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/beizi/fusion/model/ResponseInfo;->getLocationFrequency()J

    .line 85
    .line 86
    .line 87
    move-result-wide v1

    .line 88
    const-wide/16 v3, 0x0

    .line 89
    .line 90
    cmp-long v5, v1, v3

    .line 91
    .line 92
    if-lez v5, :cond_3

    .line 93
    .line 94
    iput-wide v1, p0, Lcom/beizi/ad/internal/e/q;->o:J

    .line 95
    .line 96
    :cond_3
    invoke-virtual {v0}, Lcom/beizi/fusion/model/RequestInfo;->getEnvInfo()Lcom/beizi/fusion/model/EnvInfo;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->j:Lcom/beizi/fusion/model/EnvInfo;

    .line 101
    .line 102
    return-void
.end method

.method public static declared-synchronized a()Lcom/beizi/ad/internal/e/q;
    .locals 3

    .line 1
    const-class v0, Lcom/beizi/ad/internal/e/q;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/beizi/ad/internal/e/q;->i:Lcom/beizi/ad/internal/e/q;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const-class v1, Lcom/beizi/ad/internal/e/q;

    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    sget-object v2, Lcom/beizi/ad/internal/e/q;->i:Lcom/beizi/ad/internal/e/q;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    new-instance v2, Lcom/beizi/ad/internal/e/q;

    .line 16
    .line 17
    invoke-direct {v2}, Lcom/beizi/ad/internal/e/q;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lcom/beizi/ad/internal/e/q;->i:Lcom/beizi/ad/internal/e/q;

    .line 21
    .line 22
    :cond_0
    monitor-exit v1

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v2

    .line 25
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    throw v2

    .line 27
    :cond_1
    :goto_0
    sget-object v1, Lcom/beizi/ad/internal/e/q;->i:Lcom/beizi/ad/internal/e/q;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-object v1

    .line 31
    :catchall_1
    move-exception v1

    .line 32
    monitor-exit v0

    .line 33
    throw v1
.end method

.method private declared-synchronized e()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/beizi/ad/internal/e/q;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_b

    .line 10
    .line 11
    iget-object v1, p0, Lcom/beizi/ad/internal/e/q;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    iget-boolean v1, p0, Lcom/beizi/ad/internal/e/q;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_1
    const/4 v1, 0x1

    .line 28
    :try_start_1
    iput-boolean v1, p0, Lcom/beizi/ad/internal/e/q;->l:Z

    .line 29
    .line 30
    invoke-static {}, Lcom/beizi/ad/b;->a()Lcom/beizi/ad/c;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    invoke-static {}, Lcom/beizi/ad/b;->a()Lcom/beizi/ad/c;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/beizi/ad/c;->a()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-direct {p0}, Lcom/beizi/ad/internal/e/q;->f()V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :cond_3
    :goto_0
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/beizi/ad/internal/c;->c()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_5

    .line 67
    .line 68
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-direct {p0}, Lcom/beizi/ad/internal/e/q;->f()V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :cond_5
    :goto_1
    iget-wide v3, p0, Lcom/beizi/ad/internal/e/q;->p:J

    .line 83
    .line 84
    const-wide/16 v5, 0x0

    .line 85
    .line 86
    cmp-long v7, v3, v5

    .line 87
    .line 88
    if-nez v7, :cond_6

    .line 89
    .line 90
    iget-object v3, p0, Lcom/beizi/ad/internal/e/q;->k:Landroid/content/Context;

    .line 91
    .line 92
    const-string v4, "LOCATION_TIME"

    .line 93
    .line 94
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-static {v3, v4, v7}, Lcom/beizi/fusion/tool/as;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Ljava/lang/Long;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide v3

    .line 108
    iput-wide v3, p0, Lcom/beizi/ad/internal/e/q;->p:J

    .line 109
    .line 110
    :cond_6
    iget-wide v3, p0, Lcom/beizi/ad/internal/e/q;->p:J

    .line 111
    .line 112
    cmp-long v7, v3, v5

    .line 113
    .line 114
    if-lez v7, :cond_7

    .line 115
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    iget-wide v7, p0, Lcom/beizi/ad/internal/e/q;->p:J

    .line 121
    .line 122
    sub-long/2addr v3, v7

    .line 123
    iget-wide v7, p0, Lcom/beizi/ad/internal/e/q;->o:J

    .line 124
    .line 125
    cmp-long v9, v3, v7

    .line 126
    .line 127
    if-gez v9, :cond_7

    .line 128
    .line 129
    iget-object v1, p0, Lcom/beizi/ad/internal/e/q;->k:Landroid/content/Context;

    .line 130
    .line 131
    const-string v2, "LOCATION_LONGITUDE"

    .line 132
    .line 133
    const-string v3, ""

    .line 134
    .line 135
    invoke-static {v1, v2, v3}, Lcom/beizi/fusion/tool/as;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Ljava/lang/String;

    .line 140
    .line 141
    iput-object v1, p0, Lcom/beizi/ad/internal/e/q;->b:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/beizi/ad/internal/e/q;->k:Landroid/content/Context;

    .line 144
    .line 145
    const-string v2, "LOCATION_LATITUDE"

    .line 146
    .line 147
    const-string v3, ""

    .line 148
    .line 149
    invoke-static {v1, v2, v3}, Lcom/beizi/fusion/tool/as;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Ljava/lang/String;

    .line 154
    .line 155
    iput-object v1, p0, Lcom/beizi/ad/internal/e/q;->c:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/beizi/ad/internal/e/q;->k:Landroid/content/Context;

    .line 158
    .line 159
    const-string v2, "LOCATION_TIMESTAMP"

    .line 160
    .line 161
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-static {v1, v2, v3}, Lcom/beizi/fusion/tool/as;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Ljava/lang/Long;

    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 172
    .line 173
    .line 174
    move-result-wide v1

    .line 175
    iput-wide v1, p0, Lcom/beizi/ad/internal/e/q;->e:J

    .line 176
    .line 177
    iput-boolean v0, p0, Lcom/beizi/ad/internal/e/q;->l:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .line 179
    monitor-exit p0

    .line 180
    return-void

    .line 181
    :cond_7
    :try_start_2
    const-string v3, "location"

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Landroid/location/LocationManager;

    .line 188
    .line 189
    if-nez v2, :cond_8

    .line 190
    .line 191
    invoke-direct {p0}, Lcom/beizi/ad/internal/e/q;->f()V

    .line 192
    .line 193
    .line 194
    iput-boolean v0, p0, Lcom/beizi/ad/internal/e/q;->l:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    .line 196
    monitor-exit p0

    .line 197
    return-void

    .line 198
    :cond_8
    :try_start_3
    new-instance v3, Landroid/location/Criteria;

    .line 199
    .line 200
    invoke-direct {v3}, Landroid/location/Criteria;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v3, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-eqz v3, :cond_9

    .line 212
    .line 213
    invoke-direct {p0}, Lcom/beizi/ad/internal/e/q;->f()V

    .line 214
    .line 215
    .line 216
    iput-boolean v0, p0, Lcom/beizi/ad/internal/e/q;->l:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 217
    .line 218
    monitor-exit p0

    .line 219
    return-void

    .line 220
    :cond_9
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 221
    .line 222
    .line 223
    move-result-wide v3

    .line 224
    iput-wide v3, p0, Lcom/beizi/ad/internal/e/q;->p:J

    .line 225
    .line 226
    iget-object v5, p0, Lcom/beizi/ad/internal/e/q;->k:Landroid/content/Context;

    .line 227
    .line 228
    const-string v6, "LOCATION_TIME"

    .line 229
    .line 230
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-static {v5, v6, v3}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    if-eqz v1, :cond_a

    .line 242
    .line 243
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    .line 244
    .line 245
    .line 246
    move-result-wide v2

    .line 247
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    iput-object v2, p0, Lcom/beizi/ad/internal/e/q;->b:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    .line 254
    .line 255
    .line 256
    move-result-wide v2

    .line 257
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    iput-object v2, p0, Lcom/beizi/ad/internal/e/q;->c:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    .line 264
    .line 265
    .line 266
    move-result-wide v1

    .line 267
    iput-wide v1, p0, Lcom/beizi/ad/internal/e/q;->e:J

    .line 268
    .line 269
    iget-object v1, p0, Lcom/beizi/ad/internal/e/q;->k:Landroid/content/Context;

    .line 270
    .line 271
    const-string v2, "LOCATION_LONGITUDE"

    .line 272
    .line 273
    iget-object v3, p0, Lcom/beizi/ad/internal/e/q;->b:Ljava/lang/String;

    .line 274
    .line 275
    invoke-static {v1, v2, v3}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    iget-object v1, p0, Lcom/beizi/ad/internal/e/q;->k:Landroid/content/Context;

    .line 279
    .line 280
    const-string v2, "LOCATION_LATITUDE"

    .line 281
    .line 282
    iget-object v3, p0, Lcom/beizi/ad/internal/e/q;->c:Ljava/lang/String;

    .line 283
    .line 284
    invoke-static {v1, v2, v3}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    iget-object v1, p0, Lcom/beizi/ad/internal/e/q;->k:Landroid/content/Context;

    .line 288
    .line 289
    const-string v2, "LOCATION_TIMESTAMP"

    .line 290
    .line 291
    iget-wide v3, p0, Lcom/beizi/ad/internal/e/q;->e:J

    .line 292
    .line 293
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-static {v1, v2, v3}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_a
    invoke-direct {p0}, Lcom/beizi/ad/internal/e/q;->f()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 302
    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_b
    :goto_2
    monitor-exit p0

    .line 306
    return-void

    .line 307
    :catchall_0
    move-exception v0

    .line 308
    goto :goto_4

    .line 309
    :catch_0
    move-exception v1

    .line 310
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 311
    .line 312
    .line 313
    :goto_3
    iput-boolean v0, p0, Lcom/beizi/ad/internal/e/q;->l:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 314
    .line 315
    monitor-exit p0

    .line 316
    return-void

    .line 317
    :goto_4
    monitor-exit p0

    .line 318
    throw v0
.end method

.method private f()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/beizi/ad/b;->a()Lcom/beizi/ad/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/beizi/ad/b;->a()Lcom/beizi/ad/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/beizi/ad/c;->b()Lcom/beizi/ad/model/BeiZiLocation;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/model/BeiZiLocation;->getLongitude()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/beizi/ad/internal/e/q;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/beizi/ad/model/BeiZiLocation;->getLatitude()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/beizi/ad/internal/e/q;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/beizi/ad/model/BeiZiLocation;->getType()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Lcom/beizi/ad/internal/e/q;->d:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/beizi/ad/model/BeiZiLocation;->getTime()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Lcom/beizi/ad/internal/e/q;->e:J

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public b()Lcom/beizi/ad/model/i$d;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/internal/e/q;->f:Lcom/beizi/ad/model/i$d;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/ad/model/i$d;->f:Lcom/beizi/ad/model/i$d;

    .line 4
    .line 5
    if-ne v0, v1, :cond_6

    .line 6
    .line 7
    iget-object v0, p0, Lcom/beizi/ad/internal/e/q;->j:Lcom/beizi/fusion/model/EnvInfo;

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/beizi/fusion/model/EnvInfo;->getNet()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "1"

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    sget-object v0, Lcom/beizi/ad/model/i$d;->b:Lcom/beizi/ad/model/i$d;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->f:Lcom/beizi/ad/model/i$d;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v2, "2"

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    sget-object v0, Lcom/beizi/ad/model/i$d;->c:Lcom/beizi/ad/model/i$d;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->f:Lcom/beizi/ad/model/i$d;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string v2, "3"

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    sget-object v0, Lcom/beizi/ad/model/i$d;->d:Lcom/beizi/ad/model/i$d;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->f:Lcom/beizi/ad/model/i$d;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-string v2, "4"

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    sget-object v0, Lcom/beizi/ad/model/i$d;->e:Lcom/beizi/ad/model/i$d;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->f:Lcom/beizi/ad/model/i$d;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const-string v2, "5"

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    iput-object v1, p0, Lcom/beizi/ad/internal/e/q;->f:Lcom/beizi/ad/model/i$d;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const-string v1, "6"

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    sget-object v0, Lcom/beizi/ad/model/i$d;->g:Lcom/beizi/ad/model/i$d;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->f:Lcom/beizi/ad/model/i$d;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v0, v0, Lcom/beizi/ad/internal/c;->j:Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/beizi/ad/internal/e/r;->a(Landroid/content/Context;)Lcom/beizi/ad/model/i$d;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->f:Lcom/beizi/ad/model/i$d;

    .line 102
    .line 103
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/internal/e/q;->f:Lcom/beizi/ad/model/i$d;

    .line 104
    .line 105
    return-object v0
.end method

.method public c()Lcom/beizi/ad/model/i$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/internal/e/q;->g:Lcom/beizi/ad/model/i$c;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/ad/model/i$c;->e:Lcom/beizi/ad/model/i$c;

    .line 4
    .line 5
    if-ne v0, v1, :cond_8

    .line 6
    .line 7
    iget-object v2, p0, Lcom/beizi/ad/internal/e/q;->j:Lcom/beizi/fusion/model/EnvInfo;

    .line 8
    .line 9
    if-eqz v2, :cond_3

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/beizi/fusion/model/EnvInfo;->getIsp()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "0"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    sget-object v0, Lcom/beizi/ad/model/i$c;->a:Lcom/beizi/ad/model/i$c;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->g:Lcom/beizi/ad/model/i$c;

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_0
    const-string v1, "1"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    sget-object v0, Lcom/beizi/ad/model/i$c;->b:Lcom/beizi/ad/model/i$c;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->g:Lcom/beizi/ad/model/i$c;

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_1
    const-string v1, "2"

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    sget-object v0, Lcom/beizi/ad/model/i$c;->c:Lcom/beizi/ad/model/i$c;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->g:Lcom/beizi/ad/model/i$c;

    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_2
    const-string v1, "3"

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_8

    .line 64
    .line 65
    sget-object v0, Lcom/beizi/ad/model/i$c;->d:Lcom/beizi/ad/model/i$c;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->g:Lcom/beizi/ad/model/i$c;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    if-ne v0, v1, :cond_8

    .line 71
    .line 72
    :try_start_0
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v0, v0, Lcom/beizi/ad/internal/c;->j:Landroid/content/Context;

    .line 77
    .line 78
    const-string v1, "phone"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 85
    .line 86
    if-eqz v0, :cond_8

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const/4 v2, 0x5

    .line 93
    if-ne v2, v1, :cond_8

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    const-string v1, "46000"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_6

    .line 108
    .line 109
    const-string v1, "46002"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_6

    .line 116
    .line 117
    const-string v1, "46007"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_4

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    const-string v1, "46001"

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_5

    .line 133
    .line 134
    sget-object v0, Lcom/beizi/ad/model/i$c;->c:Lcom/beizi/ad/model/i$c;

    .line 135
    .line 136
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->g:Lcom/beizi/ad/model/i$c;

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    const-string v1, "46003"

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_8

    .line 146
    .line 147
    sget-object v0, Lcom/beizi/ad/model/i$c;->d:Lcom/beizi/ad/model/i$c;

    .line 148
    .line 149
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->g:Lcom/beizi/ad/model/i$c;

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_6
    :goto_0
    sget-object v0, Lcom/beizi/ad/model/i$c;->b:Lcom/beizi/ad/model/i$c;

    .line 153
    .line 154
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->g:Lcom/beizi/ad/model/i$c;

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_7
    sget-object v0, Lcom/beizi/ad/model/i$c;->a:Lcom/beizi/ad/model/i$c;

    .line 158
    .line 159
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->g:Lcom/beizi/ad/model/i$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    .line 165
    .line 166
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/beizi/ad/internal/e/q;->g:Lcom/beizi/ad/model/i$c;

    .line 167
    .line 168
    return-object v0
.end method

.method public d()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/internal/e/q;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_13

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/ad/internal/e/q;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_7

    .line 18
    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/ad/internal/e/q;->l:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-boolean v0, p0, Lcom/beizi/ad/internal/e/q;->m:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/beizi/ad/internal/e/q;->e()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/beizi/ad/internal/e/q;->l:Z

    .line 34
    .line 35
    invoke-static {}, Lcom/beizi/ad/b;->a()Lcom/beizi/ad/c;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-static {}, Lcom/beizi/ad/b;->a()Lcom/beizi/ad/c;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/beizi/ad/c;->a()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-direct {p0}, Lcom/beizi/ad/internal/e/q;->f()V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_8

    .line 56
    .line 57
    :cond_4
    :goto_0
    invoke-static {}, Lcom/beizi/ad/internal/c;->a()Lcom/beizi/ad/internal/c;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/beizi/ad/internal/c;->c()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const/4 v3, 0x0

    .line 72
    if-nez v2, :cond_5

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_5
    const/4 v2, 0x0

    .line 77
    :goto_1
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 78
    .line 79
    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_6

    .line 84
    .line 85
    const/4 v4, 0x1

    .line 86
    goto :goto_2

    .line 87
    :cond_6
    const/4 v4, 0x0

    .line 88
    :goto_2
    if-nez v2, :cond_8

    .line 89
    .line 90
    if-eqz v4, :cond_7

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_7
    invoke-direct {p0}, Lcom/beizi/ad/internal/e/q;->f()V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_8

    .line 97
    .line 98
    :cond_8
    :goto_3
    const-string v5, "location"

    .line 99
    .line 100
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Landroid/location/LocationManager;

    .line 105
    .line 106
    if-nez v1, :cond_9

    .line 107
    .line 108
    iput-boolean v3, p0, Lcom/beizi/ad/internal/e/q;->l:Z

    .line 109
    .line 110
    invoke-direct {p0}, Lcom/beizi/ad/internal/e/q;->f()V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_9
    iget-boolean v5, p0, Lcom/beizi/ad/internal/e/q;->n:Z

    .line 115
    .line 116
    const/4 v6, 0x0

    .line 117
    if-nez v5, :cond_e

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_d

    .line 132
    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    if-nez v2, :cond_b

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_b
    if-nez v6, :cond_c

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_c
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    .line 150
    .line 151
    .line 152
    move-result-wide v4

    .line 153
    const-wide/16 v7, 0x0

    .line 154
    .line 155
    cmp-long v9, v4, v7

    .line 156
    .line 157
    if-lez v9, :cond_a

    .line 158
    .line 159
    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    .line 160
    .line 161
    .line 162
    move-result-wide v4

    .line 163
    cmp-long v9, v4, v7

    .line 164
    .line 165
    if-lez v9, :cond_a

    .line 166
    .line 167
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    .line 168
    .line 169
    .line 170
    move-result-wide v4

    .line 171
    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    .line 172
    .line 173
    .line 174
    move-result-wide v7

    .line 175
    cmp-long v9, v4, v7

    .line 176
    .line 177
    if-lez v9, :cond_a

    .line 178
    .line 179
    :goto_5
    move-object v6, v2

    .line 180
    goto :goto_4

    .line 181
    :cond_d
    iput-boolean v3, p0, Lcom/beizi/ad/internal/e/q;->l:Z

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_e
    new-instance v3, Landroid/location/Criteria;

    .line 185
    .line 186
    invoke-direct {v3}, Landroid/location/Criteria;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v3, v0}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-nez v3, :cond_f

    .line 198
    .line 199
    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    goto :goto_6

    .line 204
    :cond_f
    if-eqz v2, :cond_10

    .line 205
    .line 206
    const-string v0, "gps"

    .line 207
    .line 208
    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    goto :goto_6

    .line 213
    :cond_10
    if-eqz v4, :cond_11

    .line 214
    .line 215
    const-string v0, "network"

    .line 216
    .line 217
    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    :cond_11
    :goto_6
    if-eqz v6, :cond_12

    .line 222
    .line 223
    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    .line 224
    .line 225
    .line 226
    move-result-wide v0

    .line 227
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->b:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    .line 234
    .line 235
    .line 236
    move-result-wide v0

    .line 237
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    iput-object v0, p0, Lcom/beizi/ad/internal/e/q;->c:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    .line 244
    .line 245
    .line 246
    move-result-wide v0

    .line 247
    iput-wide v0, p0, Lcom/beizi/ad/internal/e/q;->e:J

    .line 248
    .line 249
    goto :goto_8

    .line 250
    :cond_12
    invoke-direct {p0}, Lcom/beizi/ad/internal/e/q;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_13
    :goto_7
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 257
    .line 258
    .line 259
    :goto_8
    return-void
.end method
