.class public Lcom/byazt/ete/kp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x29b
    }
.end annotation


# static fields
.field public static c:J = 0x6978L

.field public static tt:I

.field public static ve:I


# instance fields
.field public a:Z

.field public d:Z

.field public da:D

.field public eo:F

.field public gr:Z

.field public gt:I

.field public gu:Z

.field public h:I

.field public i:Z

.field public m:Z

.field public md:Z

.field public my:D

.field public n:I

.field public nu:D

.field public or:I

.field public p:Z

.field public qy:I

.field public rh:Z

.field public rl:I

.field public sl:Ljava/lang/String;

.field public sp:Z

.field public t:I

.field public u:I

.field public uj:Ljava/lang/String;

.field public x:D

.field public yp:I

.field public yv:Lcom/byazt/ete/b;

.field public z:I

.field public zb:I

.field public zm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/byazt/ete/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/ete/kp;->qy:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/byazt/ete/kp;->gu:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/byazt/ete/kp;->gr:Z

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/byazt/ete/kp;->zm:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    iput v1, p0, Lcom/byazt/ete/kp;->eo:F

    .line 21
    .line 22
    iput v0, p0, Lcom/byazt/ete/kp;->or:I

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string v1, "reward"

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    const-string v2, "retain_dialog_config"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    new-instance v3, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v3, p0, Lcom/byazt/ete/kp;->zm:Ljava/util/ArrayList;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-ge v3, v4, :cond_2

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    new-instance v5, Lcom/byazt/ete/g;

    .line 64
    .line 65
    invoke-direct {v5, v4}, Lcom/byazt/ete/g;-><init>(Lorg/json/JSONObject;)V

    .line 66
    .line 67
    .line 68
    iget-object v4, p0, Lcom/byazt/ete/kp;->zm:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    new-instance v2, Lcom/byazt/ete/b;

    .line 77
    .line 78
    invoke-direct {v2, v1}, Lcom/byazt/ete/b;-><init>(Lorg/json/JSONObject;)V

    .line 79
    .line 80
    .line 81
    iput-object v2, p0, Lcom/byazt/ete/kp;->yv:Lcom/byazt/ete/b;

    .line 82
    .line 83
    const-string v2, "endcard_transform_enabled"

    .line 84
    .line 85
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    iput-boolean v2, p0, Lcom/byazt/ete/kp;->md:Z

    .line 90
    .line 91
    const-string v2, "video_no_play_start"

    .line 92
    .line 93
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    iput v1, p0, Lcom/byazt/ete/kp;->or:I

    .line 98
    .line 99
    :cond_3
    const-string v1, "reward_data"

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_8

    .line 106
    .line 107
    const-string v2, "reward_amount"

    .line 108
    .line 109
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    iput v2, p0, Lcom/byazt/ete/kp;->n:I

    .line 114
    .line 115
    const-string v2, "reward_name"

    .line 116
    .line 117
    const-string v3, ""

    .line 118
    .line 119
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    iput-object v2, p0, Lcom/byazt/ete/kp;->uj:Ljava/lang/String;

    .line 124
    .line 125
    const-string v2, "reward_info_show"

    .line 126
    .line 127
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    iput-boolean v2, p0, Lcom/byazt/ete/kp;->a:Z

    .line 132
    .line 133
    const-string v2, "reward_back_type"

    .line 134
    .line 135
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    iput v2, p0, Lcom/byazt/ete/kp;->u:I

    .line 140
    .line 141
    const-string v2, "reward_backup_timing"

    .line 142
    .line 143
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    iput v2, p0, Lcom/byazt/ete/kp;->yp:I

    .line 148
    .line 149
    const-string v2, "reward_backup_duration"

    .line 150
    .line 151
    const v3, 0x7fffffff

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    iput v2, p0, Lcom/byazt/ete/kp;->z:I

    .line 159
    .line 160
    const-string v2, "reward_is_callback"

    .line 161
    .line 162
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    iput v2, p0, Lcom/byazt/ete/kp;->h:I

    .line 167
    .line 168
    const-string v2, "reward_need_click"

    .line 169
    .line 170
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    iput-boolean v2, p0, Lcom/byazt/ete/kp;->d:Z

    .line 175
    .line 176
    const-string v2, "reward_speed_time"

    .line 177
    .line 178
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 179
    .line 180
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 181
    .line 182
    .line 183
    move-result-wide v2

    .line 184
    double-to-float v2, v2

    .line 185
    iput v2, p0, Lcom/byazt/ete/kp;->eo:F

    .line 186
    .line 187
    const-string v2, "reward_advanced_config"

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    if-eqz v1, :cond_8

    .line 194
    .line 195
    const-string v2, "easy_playable"

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    const-string v3, "propose_reward"

    .line 202
    .line 203
    const-string v4, "enable"

    .line 204
    .line 205
    const-wide/16 v5, 0x0

    .line 206
    .line 207
    if-eqz v2, :cond_4

    .line 208
    .line 209
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    iput-boolean v7, p0, Lcom/byazt/ete/kp;->sp:Z

    .line 214
    .line 215
    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 216
    .line 217
    .line 218
    move-result-wide v7

    .line 219
    iput-wide v7, p0, Lcom/byazt/ete/kp;->x:D

    .line 220
    .line 221
    cmpg-double v2, v7, v5

    .line 222
    .line 223
    if-gez v2, :cond_4

    .line 224
    .line 225
    iput-wide v5, p0, Lcom/byazt/ete/kp;->x:D

    .line 226
    .line 227
    :cond_4
    const-string v2, "play_complete"

    .line 228
    .line 229
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    if-eqz v2, :cond_6

    .line 234
    .line 235
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    iput-boolean v7, p0, Lcom/byazt/ete/kp;->i:Z

    .line 240
    .line 241
    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 242
    .line 243
    .line 244
    move-result-wide v7

    .line 245
    iput-wide v7, p0, Lcom/byazt/ete/kp;->da:D

    .line 246
    .line 247
    cmpg-double v9, v7, v5

    .line 248
    .line 249
    if-gez v9, :cond_5

    .line 250
    .line 251
    iput-wide v5, p0, Lcom/byazt/ete/kp;->da:D

    .line 252
    .line 253
    :cond_5
    const-string v7, "tip_toast"

    .line 254
    .line 255
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    iput-object v7, p0, Lcom/byazt/ete/kp;->sl:Ljava/lang/String;

    .line 260
    .line 261
    const-string v7, "min_duration"

    .line 262
    .line 263
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    iput v2, p0, Lcom/byazt/ete/kp;->t:I

    .line 268
    .line 269
    :cond_6
    const-string v2, "playable_interactive"

    .line 270
    .line 271
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    if-eqz v2, :cond_7

    .line 276
    .line 277
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    iput-boolean v7, p0, Lcom/byazt/ete/kp;->m:Z

    .line 282
    .line 283
    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 284
    .line 285
    .line 286
    move-result-wide v7

    .line 287
    iput-wide v7, p0, Lcom/byazt/ete/kp;->nu:D

    .line 288
    .line 289
    :cond_7
    const-string v2, "click_landing"

    .line 290
    .line 291
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    if-eqz v1, :cond_8

    .line 296
    .line 297
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    iput-boolean v2, p0, Lcom/byazt/ete/kp;->rh:Z

    .line 302
    .line 303
    invoke-virtual {v1, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 304
    .line 305
    .line 306
    move-result-wide v2

    .line 307
    iput-wide v2, p0, Lcom/byazt/ete/kp;->my:D

    .line 308
    .line 309
    const-string v2, "landing_view_time"

    .line 310
    .line 311
    const/4 v3, 0x5

    .line 312
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    iput v1, p0, Lcom/byazt/ete/kp;->gt:I

    .line 317
    .line 318
    :cond_8
    const-string v1, "reward_full_play_time"

    .line 319
    .line 320
    const/16 v2, 0x1e

    .line 321
    .line 322
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    iput v1, p0, Lcom/byazt/ete/kp;->rl:I

    .line 327
    .line 328
    const-string v1, "reward_full_time_type"

    .line 329
    .line 330
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    iput v1, p0, Lcom/byazt/ete/kp;->qy:I

    .line 335
    .line 336
    const-string v1, "interstitial_bg_transparent"

    .line 337
    .line 338
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    iput-boolean v1, p0, Lcom/byazt/ete/kp;->p:Z

    .line 343
    .line 344
    const-string v1, "template_sign"

    .line 345
    .line 346
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    iput v1, p0, Lcom/byazt/ete/kp;->zb:I

    .line 351
    .line 352
    const-string v1, "__is_use_local_time"

    .line 353
    .line 354
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    iput-boolean v1, p0, Lcom/byazt/ete/kp;->gu:Z

    .line 359
    .line 360
    const-string v1, "__is_click_landing_reward"

    .line 361
    .line 362
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    iput-boolean p1, p0, Lcom/byazt/ete/kp;->gr:Z

    .line 367
    .line 368
    return-void
.end method

.method public static a(Lcom/byazt/ete/ic;)D
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/byazt/ete/kp;->x:D

    .line 11
    .line 12
    return-wide v0
.end method

.method public static c(Lcom/byazt/ete/ic;I)F
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/kp;->t(Lcom/byazt/ete/ic;)D

    move-result-wide p0

    :goto_0
    double-to-float p0, p0

    return p0

    .line 12
    :cond_1
    invoke-static {p0}, Lcom/byazt/ete/kp;->x(Lcom/byazt/ete/ic;)D

    move-result-wide p0

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {p0}, Lcom/byazt/ete/kp;->a(Lcom/byazt/ete/ic;)D

    move-result-wide p0

    goto :goto_0

    :cond_3
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static c()J
    .locals 2

    .line 10
    sget-wide v0, Lcom/byazt/ete/kp;->c:J

    return-wide v0
.end method

.method public static c(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 0

    .line 8
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/byazt/ete/kp;->uj:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Lcom/byazt/ete/ic;Z)V
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 15
    iput-boolean p1, p0, Lcom/byazt/ete/kp;->gu:Z

    :cond_0
    return-void
.end method

.method public static c(Lcom/byazt/it/n;)V
    .locals 3

    const-string v0, "reward_time_limited"

    .line 5
    sget-wide v1, Lcom/byazt/ete/kp;->c:J

    invoke-interface {p0, v0, v1, v2}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    const-string v0, "reward_force_close_max_count"

    .line 6
    sget v1, Lcom/byazt/ete/kp;->tt:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    const-string v0, "reward_local_countdown_close_style"

    .line 7
    sget v1, Lcom/byazt/ete/kp;->ve:I

    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public static c(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "app_common_config"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "reward_time_limited"

    const-wide/16 v1, 0x6978

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/byazt/ete/kp;->c:J

    const-string v0, "reward_force_close_max_count"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/kp;->tt:I

    const-string v0, "reward_local_countdown_close_style"

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/byazt/ete/kp;->ve:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static da(Lcom/byazt/ete/ic;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x7530

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    iget p0, p0, Lcom/byazt/ete/kp;->t:I

    .line 11
    .line 12
    const/16 v0, 0x1e

    .line 13
    .line 14
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/16 v1, 0x3c

    .line 19
    .line 20
    if-le p0, v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, p0

    .line 24
    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    .line 25
    .line 26
    return v0
.end method

.method public static gr(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean p0, p0, Lcom/byazt/ete/kp;->md:Z

    .line 10
    .line 11
    return p0
.end method

.method public static gt(Lcom/byazt/ete/ic;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/byazt/ete/g;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/byazt/ete/kp;->zm:Ljava/util/ArrayList;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public static gu(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/byazt/ete/kp;->p:Z

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method private static h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->xd()Lcom/byazt/ete/kp;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static i(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/ete/kp;->sl:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string p0, "\u522b\u6025\u7740\u8df3\u8fc7\uff0c\u7ee7\u7eed\u89c2\u770b\u5b8c\u6574\u89c6\u9891\uff0c\u53ef\u83b7\u5f97\u66f4\u591a\u989d\u5916\u5956\u52b1\uff5e"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    iget-object p0, p0, Lcom/byazt/ete/kp;->sl:Ljava/lang/String;

    .line 22
    .line 23
    return-object p0
.end method

.method public static m(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget p0, p0, Lcom/byazt/ete/kp;->qy:I

    .line 10
    .line 11
    return p0
.end method

.method public static md(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget p0, p0, Lcom/byazt/ete/kp;->zb:I

    .line 10
    .line 11
    return p0
.end method

.method public static my(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, v0, Lcom/byazt/ete/kp;->gr:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    invoke-static {p0}, Lcom/byazt/ete/kp;->u(Lcom/byazt/ete/ic;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static n(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean p0, p0, Lcom/byazt/ete/kp;->sp:Z

    .line 10
    .line 11
    return p0
.end method

.method public static nu(Lcom/byazt/ete/ic;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, v0, Lcom/byazt/ete/kp;->gu:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    invoke-static {p0}, Lcom/byazt/ete/my;->uj(Lcom/byazt/ete/ic;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    invoke-static {p0}, Lcom/byazt/ete/kp;->m(Lcom/byazt/ete/ic;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eq v0, v2, :cond_4

    .line 27
    .line 28
    invoke-static {p0}, Lcom/byazt/ete/kp;->m(Lcom/byazt/ete/ic;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    const/4 v0, 0x2

    .line 33
    if-ne p0, v0, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    return v1

    .line 37
    :cond_4
    :goto_0
    return v2
.end method

.method public static p(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean p0, p0, Lcom/byazt/ete/kp;->d:Z

    .line 10
    .line 11
    return p0
.end method

.method public static qy(Lcom/byazt/ete/ic;)Lcom/byazt/ete/b;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/byazt/ete/kp;->yv:Lcom/byazt/ete/b;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public static rh(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, v0, Lcom/byazt/ete/kp;->gu:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    invoke-static {p0}, Lcom/byazt/ete/kp;->m(Lcom/byazt/ete/ic;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p0, v0, :cond_2

    .line 20
    .line 21
    return v0

    .line 22
    :cond_2
    return v1
.end method

.method public static rl(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget p0, p0, Lcom/byazt/ete/kp;->yp:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p0, v1, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    return v0
.end method

.method public static sl(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean p0, p0, Lcom/byazt/ete/kp;->m:Z

    .line 10
    .line 11
    return p0
.end method

.method public static sp(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean p0, p0, Lcom/byazt/ete/kp;->i:Z

    .line 10
    .line 11
    return p0
.end method

.method public static t(Lcom/byazt/ete/ic;)D
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/byazt/ete/kp;->nu:D

    .line 11
    .line 12
    return-wide v0
.end method

.method public static tt(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 57
    :cond_0
    iget p0, p0, Lcom/byazt/ete/kp;->n:I

    return p0
.end method

.method public static tt(Lcom/byazt/ete/ic;I)I
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    move-result-object p0

    if-nez p0, :cond_0

    return p1

    .line 62
    :cond_0
    iget p0, p0, Lcom/byazt/ete/kp;->z:I

    if-gtz p0, :cond_1

    return p1

    .line 63
    :cond_1
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static tt()J
    .locals 2

    .line 58
    sget v0, Lcom/byazt/ete/kp;->tt:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public static tt(Lcom/byazt/ete/ic;Z)V
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 60
    iput-boolean p1, p0, Lcom/byazt/ete/kp;->gr:Z

    :cond_0
    return-void
.end method

.method public static tt(Lcom/byazt/it/n;)V
    .locals 3

    const-string v0, "reward_time_limited"

    const-wide/16 v1, 0x6978

    .line 1
    invoke-interface {p0, v0, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/byazt/ete/kp;->c:J

    const-string v0, "reward_force_close_max_count"

    const/4 v1, 0x0

    .line 2
    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->get(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byazt/ete/kp;->tt:I

    const-string v0, "reward_local_countdown_close_style"

    .line 3
    invoke-interface {p0, v0, v1}, Lcom/byazt/it/c;->get(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/byazt/ete/kp;->ve:I

    return-void
.end method

.method public static u(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean p0, p0, Lcom/byazt/ete/kp;->rh:Z

    .line 10
    .line 11
    return p0
.end method

.method public static uj(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget p0, p0, Lcom/byazt/ete/kp;->u:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p0, v1, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    return v0
.end method

.method public static ve()Z
    .locals 2

    .line 3
    sget v0, Lcom/byazt/ete/kp;->ve:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ve(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-boolean p0, p0, Lcom/byazt/ete/kp;->a:Z

    return p0
.end method

.method public static ve(Lcom/byazt/ete/ic;Z)Z
    .locals 1

    .line 4
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    .line 5
    :cond_1
    iget p0, p0, Lcom/byazt/ete/kp;->or:I

    if-eq p0, v0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static x(Lcom/byazt/ete/ic;)D
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/byazt/ete/kp;->da:D

    .line 11
    .line 12
    return-wide v0
.end method

.method public static yp(Lcom/byazt/ete/ic;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x5

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget p0, p0, Lcom/byazt/ete/kp;->gt:I

    .line 10
    .line 11
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static yv(Lcom/byazt/ete/ic;)F
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/high16 p0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    iget p0, p0, Lcom/byazt/ete/kp;->eo:F

    .line 11
    .line 12
    return p0
.end method

.method public static z(Lcom/byazt/ete/ic;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x1e

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget p0, p0, Lcom/byazt/ete/kp;->rl:I

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    if-lt p0, v1, :cond_2

    .line 15
    .line 16
    const/16 v1, 0x3c

    .line 17
    .line 18
    if-le p0, v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return p0

    .line 22
    :cond_2
    :goto_0
    return v0
.end method

.method public static zm(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/kp;->h(Lcom/byazt/ete/ic;)Lcom/byazt/ete/kp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget p0, p0, Lcom/byazt/ete/kp;->h:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p0, v1, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    return v0
.end method


# virtual methods
.method public tt(Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "propose_reward"

    const-string v1, "enable"

    .line 4
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 6
    iget-object v4, p0, Lcom/byazt/ete/kp;->zm:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    iget-object v4, p0, Lcom/byazt/ete/kp;->zm:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/ete/g;

    .line 8
    invoke-virtual {v5}, Lcom/byazt/ete/g;->c()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v4, "retain_dialog_config"

    .line 9
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object v3, p0, Lcom/byazt/ete/kp;->yv:Lcom/byazt/ete/b;

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v3, v2}, Lcom/byazt/ete/b;->c(Lorg/json/JSONObject;)V

    :cond_1
    const-string v3, "endcard_transform_enabled"

    .line 12
    iget-boolean v4, p0, Lcom/byazt/ete/kp;->md:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "video_no_play_start"

    .line 13
    iget v4, p0, Lcom/byazt/ete/kp;->or:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "reward"

    .line 14
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 15
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 16
    :goto_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "reward_name"

    .line 17
    iget-object v4, p0, Lcom/byazt/ete/kp;->uj:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "reward_amount"

    .line 18
    iget v4, p0, Lcom/byazt/ete/kp;->n:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "reward_info_show"

    .line 19
    iget-boolean v4, p0, Lcom/byazt/ete/kp;->a:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "reward_back_type"

    .line 20
    iget v4, p0, Lcom/byazt/ete/kp;->u:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "reward_backup_timing"

    .line 21
    iget v4, p0, Lcom/byazt/ete/kp;->yp:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "reward_backup_duration"

    .line 22
    iget v4, p0, Lcom/byazt/ete/kp;->z:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "reward_is_callback"

    .line 23
    iget v4, p0, Lcom/byazt/ete/kp;->h:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "reward_need_click"

    .line 24
    iget-boolean v4, p0, Lcom/byazt/ete/kp;->d:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "reward_speed_time"

    .line 25
    iget v4, p0, Lcom/byazt/ete/kp;->eo:F

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 26
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 27
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 28
    iget-boolean v5, p0, Lcom/byazt/ete/kp;->sp:Z

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 29
    iget-wide v5, p0, Lcom/byazt/ete/kp;->x:D

    invoke-virtual {v4, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "easy_playable"

    .line 30
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 32
    iget-boolean v5, p0, Lcom/byazt/ete/kp;->i:Z

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 33
    iget-wide v5, p0, Lcom/byazt/ete/kp;->da:D

    invoke-virtual {v4, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "tip_toast"

    .line 34
    iget-object v6, p0, Lcom/byazt/ete/kp;->sl:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "min_duration"

    .line 35
    iget v6, p0, Lcom/byazt/ete/kp;->t:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "play_complete"

    .line 36
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 38
    iget-boolean v5, p0, Lcom/byazt/ete/kp;->m:Z

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 39
    iget-wide v5, p0, Lcom/byazt/ete/kp;->nu:D

    invoke-virtual {v4, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "playable_interactive"

    .line 40
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 42
    iget-boolean v5, p0, Lcom/byazt/ete/kp;->rh:Z

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 43
    iget-wide v5, p0, Lcom/byazt/ete/kp;->my:D

    invoke-virtual {v4, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "landing_view_time"

    .line 44
    iget v1, p0, Lcom/byazt/ete/kp;->gt:I

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "click_landing"

    .line 45
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "reward_advanced_config"

    .line 46
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "reward_data"

    .line 47
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 48
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_2
    :try_start_2
    const-string v0, "reward_full_play_time"

    .line 49
    iget v1, p0, Lcom/byazt/ete/kp;->rl:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "reward_full_time_type"

    .line 50
    iget v1, p0, Lcom/byazt/ete/kp;->qy:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "interstitial_bg_transparent"

    .line 51
    iget-boolean v1, p0, Lcom/byazt/ete/kp;->p:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "template_sign"

    .line 52
    iget v1, p0, Lcom/byazt/ete/kp;->zb:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "__is_use_local_time"

    .line 53
    iget-boolean v1, p0, Lcom/byazt/ete/kp;->gu:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "__is_click_landing_reward"

    .line 54
    iget-boolean v1, p0, Lcom/byazt/ete/kp;->gr:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 55
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method
