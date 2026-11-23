.class public Lcom/byazt/omf/ve$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x182
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/ve;->tt(Landroid/content/Context;JJJJLcom/byazt/omf/qy;ZLcom/byazt/dj/c;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/ogz/sp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic c:J

.field public final synthetic da:J

.field public final synthetic i:J

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic sl:J

.field public final synthetic sp:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

.field public final synthetic t:Lcom/byazt/omf/qy;

.field public final synthetic tt:Z

.field public final synthetic u:Lcom/byazt/omf/ve;

.field public final synthetic uj:Landroid/content/Context;

.field public final synthetic ve:Lcom/byazt/dj/c;

.field public final synthetic x:Lcom/byazt/ogz/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/ve;JZLcom/byazt/dj/c;Landroid/content/Context;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/ogz/sp;JJJLcom/byazt/omf/qy;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/byazt/omf/ve$6;->u:Lcom/byazt/omf/ve;

    .line 4
    .line 5
    move-wide v1, p2

    .line 6
    iput-wide v1, v0, Lcom/byazt/omf/ve$6;->c:J

    .line 7
    .line 8
    move v1, p4

    .line 9
    iput-boolean v1, v0, Lcom/byazt/omf/ve$6;->tt:Z

    .line 10
    .line 11
    move-object v1, p5

    .line 12
    iput-object v1, v0, Lcom/byazt/omf/ve$6;->ve:Lcom/byazt/dj/c;

    .line 13
    .line 14
    move-object v1, p6

    .line 15
    iput-object v1, v0, Lcom/byazt/omf/ve$6;->uj:Landroid/content/Context;

    .line 16
    .line 17
    move-object v1, p7

    .line 18
    iput-object v1, v0, Lcom/byazt/omf/ve$6;->n:Ljava/lang/String;

    .line 19
    .line 20
    move v1, p8

    .line 21
    iput v1, v0, Lcom/byazt/omf/ve$6;->a:I

    .line 22
    .line 23
    move-object v1, p9

    .line 24
    iput-object v1, v0, Lcom/byazt/omf/ve$6;->sp:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 25
    .line 26
    move-object v1, p10

    .line 27
    iput-object v1, v0, Lcom/byazt/omf/ve$6;->x:Lcom/byazt/ogz/sp;

    .line 28
    .line 29
    move-wide v1, p11

    .line 30
    iput-wide v1, v0, Lcom/byazt/omf/ve$6;->i:J

    .line 31
    .line 32
    move-wide/from16 v1, p13

    .line 33
    .line 34
    iput-wide v1, v0, Lcom/byazt/omf/ve$6;->da:J

    .line 35
    .line 36
    move-wide/from16 v1, p15

    .line 37
    .line 38
    iput-wide v1, v0, Lcom/byazt/omf/ve$6;->sl:J

    .line 39
    .line 40
    move-object/from16 v1, p17

    .line 41
    .line 42
    iput-object v1, v0, Lcom/byazt/omf/ve$6;->t:Lcom/byazt/omf/qy;

    .line 43
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qal/c;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "getSDKVersion"

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/byazt/omf/x;->gt()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-instance v2, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "duration"

    .line 17
    .line 18
    iget-wide v4, p0, Lcom/byazt/omf/ve$6;->c:J

    .line 19
    .line 20
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    const-string v3, "is_async"

    .line 24
    .line 25
    iget-boolean v4, p0, Lcom/byazt/omf/ve$6;->tt:Z

    .line 26
    .line 27
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/byazt/omf/ve$6;->ve:Lcom/byazt/dj/c;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/byazt/dj/c;->da()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const-string v4, "is_multi_process"

    .line 37
    .line 38
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/byazt/omf/ve$6;->ve:Lcom/byazt/dj/c;

    .line 42
    .line 43
    invoke-static {v3}, Lcom/byazt/omf/ve;->isDebug(Lcom/byazt/dj/c;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const-string v4, "is_debug"

    .line 48
    .line 49
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    const-string v3, "is_activate_init"

    .line 53
    .line 54
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    const-string v1, "is_plugin"

    .line 58
    .line 59
    invoke-static {}, Lcom/byazt/omf/p;->c()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    const-string v1, "has_kotlin"

    .line 67
    .line 68
    invoke-static {}, Lcom/byazt/omf/ve;->c()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/byazt/omf/ve$6;->ve:Lcom/byazt/dj/c;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/byazt/dj/c;->m()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const-string v3, "use_mediation"

    .line 82
    .line 83
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    const-string v1, "is_androidx"

    .line 87
    .line 88
    invoke-static {}, Lcom/byazt/omf/ve;->tt()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    const-string v1, "host_abi"

    .line 96
    .line 97
    invoke-static {}, Lcom/byazt/qya/tt;->c()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/byazt/omf/ve$6;->uj:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {v1}, Lcom/byazt/aas/nb;->ve(Landroid/content/Context;)J

    .line 107
    .line 108
    .line 109
    move-result-wide v3

    .line 110
    const-string v1, "minSdkVersion"

    .line 111
    .line 112
    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/byazt/omf/ve$6;->uj:Landroid/content/Context;

    .line 116
    .line 117
    invoke-static {v1}, Lcom/byazt/aas/nb;->tt(Landroid/content/Context;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    const-string v1, "targetSdkVersion"

    .line 122
    .line 123
    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    const-string v1, "ttvideo_plugin_config"

    .line 127
    .line 128
    const/4 v3, 0x1

    .line 129
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    const-string v1, "ttvideo_can_use"

    .line 133
    .line 134
    invoke-static {}, Lcom/byazt/omf/p;->n()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    const-string v1, "is_keva_init_success"

    .line 142
    .line 143
    invoke-static {}, Lcom/byazt/aas/eo;->tt()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    const-string v1, "thread_name"

    .line 151
    .line 152
    iget-object v3, p0, Lcom/byazt/omf/ve$6;->n:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    .line 156
    .line 157
    const-string v1, "m_d_s"

    .line 158
    .line 159
    invoke-static {v1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Lcom/byazt/dna/gu;

    .line 164
    .line 165
    if-eqz v1, :cond_0

    .line 166
    .line 167
    const/4 v3, 0x3

    .line 168
    invoke-interface {v1, v3}, Lcom/byazt/dna/gu;->getData(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    instance-of v3, v1, Ljava/lang/Integer;

    .line 173
    .line 174
    if-eqz v3, :cond_0

    .line 175
    .line 176
    check-cast v1, Ljava/lang/Integer;

    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    goto :goto_0

    .line 183
    :cond_0
    const/4 v1, -0x1

    .line 184
    :goto_0
    const-string v3, "layer_init_type"

    .line 185
    .line 186
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    .line 188
    .line 189
    const-string v1, "thread_priority"

    .line 190
    .line 191
    iget v3, p0, Lcom/byazt/omf/ve$6;->a:I

    .line 192
    .line 193
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 194
    .line 195
    .line 196
    const-string v1, "is_boost"

    .line 197
    .line 198
    invoke-static {}, Lcom/byazt/xo/c;->n()I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 203
    .line 204
    .line 205
    iget-object v1, p0, Lcom/byazt/omf/ve$6;->sp:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 206
    .line 207
    const/16 v3, 0x1a

    .line 208
    .line 209
    const/4 v4, 0x0

    .line 210
    invoke-interface {v1, v3, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->booleanValue(IZ)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    const-string v3, "single_arch_sdk"

    .line 215
    .line 216
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 217
    .line 218
    .line 219
    iget-object v1, p0, Lcom/byazt/omf/ve$6;->x:Lcom/byazt/ogz/sp;

    .line 220
    .line 221
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    const-string v3, "opt_config"

    .line 226
    .line 227
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    .line 229
    .line 230
    const-string v1, "page_size"

    .line 231
    .line 232
    invoke-static {}, Lcom/byazt/aas/zm;->my()I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 237
    .line 238
    .line 239
    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    const-string v3, "j_fun"

    .line 248
    .line 249
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    .line 251
    .line 252
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v1, v4}, Lcom/byazt/omf/x;->tt(Z)V

    .line 257
    .line 258
    .line 259
    iget-object v1, p0, Lcom/byazt/omf/ve$6;->sp:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 260
    .line 261
    const/16 v3, 0x9

    .line 262
    .line 263
    const-class v5, Ljava/lang/Object;

    .line 264
    .line 265
    invoke-interface {v1, v3, v5}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    new-instance v3, Lorg/json/JSONObject;

    .line 270
    .line 271
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 272
    .line 273
    .line 274
    const-string v5, "main_cost"

    .line 275
    .line 276
    iget-wide v6, p0, Lcom/byazt/omf/ve$6;->c:J

    .line 277
    .line 278
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 279
    .line 280
    .line 281
    const-string v5, "layer_real_cost_time"

    .line 282
    .line 283
    iget-wide v6, p0, Lcom/byazt/omf/ve$6;->i:J

    .line 284
    .line 285
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 286
    .line 287
    .line 288
    const-string v5, "callback_cost"

    .line 289
    .line 290
    iget-wide v6, p0, Lcom/byazt/omf/ve$6;->da:J

    .line 291
    .line 292
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 293
    .line 294
    .line 295
    const-string v5, "total_cost"

    .line 296
    .line 297
    iget-wide v6, p0, Lcom/byazt/omf/ve$6;->sl:J

    .line 298
    .line 299
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 300
    .line 301
    .line 302
    if-eqz v1, :cond_1

    .line 303
    .line 304
    const-string v5, "plugin"

    .line 305
    .line 306
    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    .line 308
    .line 309
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    .line 310
    .line 311
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 312
    .line 313
    .line 314
    iget-object v5, p0, Lcom/byazt/omf/ve$6;->t:Lcom/byazt/omf/qy;

    .line 315
    .line 316
    const-wide/16 v6, 0x14

    .line 317
    .line 318
    invoke-virtual {v5, v1, v6, v7}, Lcom/byazt/omf/qy;->c(Lorg/json/JSONObject;J)V

    .line 319
    .line 320
    .line 321
    const-string v5, "init"

    .line 322
    .line 323
    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    .line 325
    .line 326
    const-string v1, "cost"

    .line 327
    .line 328
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    .line 330
    .line 331
    iget-object v1, p0, Lcom/byazt/omf/ve$6;->ve:Lcom/byazt/dj/c;

    .line 332
    .line 333
    invoke-virtual {v1}, Lcom/byazt/dj/c;->m()Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-nez v1, :cond_4

    .line 338
    .line 339
    const/4 v1, 0x0

    .line 340
    :try_start_0
    const-class v3, Lcom/baidu/mobads/sdk/api/AdSettings;

    .line 341
    .line 342
    new-array v5, v4, [Ljava/lang/Class;

    .line 343
    .line 344
    invoke-virtual {v3, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    new-array v5, v4, [Ljava/lang/Object;

    .line 349
    .line 350
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    instance-of v5, v3, Ljava/lang/String;

    .line 355
    .line 356
    if-eqz v5, :cond_2

    .line 357
    .line 358
    const-string v5, "baidu_version"

    .line 359
    .line 360
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    .line 362
    .line 363
    :catchall_0
    :cond_2
    :try_start_1
    const-class v3, Lcom/qq/e/comm/managers/status/SDKStatus;

    .line 364
    .line 365
    const-string v5, "getIntegrationSDKVersion"

    .line 366
    .line 367
    new-array v6, v4, [Ljava/lang/Class;

    .line 368
    .line 369
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    new-array v5, v4, [Ljava/lang/Object;

    .line 374
    .line 375
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    instance-of v5, v3, Ljava/lang/String;

    .line 380
    .line 381
    if-eqz v5, :cond_3

    .line 382
    .line 383
    const-string v5, "gdt_version"

    .line 384
    .line 385
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 386
    .line 387
    .line 388
    :catchall_1
    :cond_3
    :try_start_2
    const-string v3, "com.kwad.sdk.api.KsAdSDK"

    .line 389
    .line 390
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    new-array v5, v4, [Ljava/lang/Class;

    .line 395
    .line 396
    invoke-virtual {v3, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    new-array v3, v4, [Ljava/lang/Object;

    .line 401
    .line 402
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    instance-of v1, v0, Ljava/lang/String;

    .line 407
    .line 408
    if-eqz v1, :cond_4

    .line 409
    .line 410
    const-string v1, "ks_version"

    .line 411
    .line 412
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 413
    .line 414
    .line 415
    goto :goto_1

    .line 416
    :catchall_2
    nop

    .line 417
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/byazt/omf/ve$6;->u:Lcom/byazt/omf/ve;

    .line 418
    .line 419
    invoke-static {v0}, Lcom/byazt/omf/ve;->tt(Lcom/byazt/omf/ve;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    if-eqz v0, :cond_5

    .line 424
    .line 425
    const-string v1, "develop_type"

    .line 426
    .line 427
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    .line 429
    .line 430
    :cond_5
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    const-string v1, "pangle_sdk_init"

    .line 435
    .line 436
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->tt(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .line 452
    .line 453
    iget-wide v2, p0, Lcom/byazt/omf/ve$6;->da:J

    .line 454
    .line 455
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->n(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    return-object v0
.end method
