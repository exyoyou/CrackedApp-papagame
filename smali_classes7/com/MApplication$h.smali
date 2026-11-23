.class Lcom/MApplication$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/CContext$IVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MApplication;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lcom/join/mgps/dto/PlayCfgBean;

.field b:Lcom/join/mgps/dto/PlayCfgBean;

.field c:Landroid/content/SharedPreferences;

.field d:J

.field e:Lcom/join/mgps/dialog/StickAdDialog;

.field f:I

.field g:I

.field h:J

.field i:Z

.field j:Z

.field final synthetic k:Lcom/MApplication;


# direct methods
.method constructor <init>(Lcom/MApplication;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "PrefDef"

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/MApplication$h;->c:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/MApplication$h;->d:J

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/MApplication$h;->f:I

    .line 21
    .line 22
    iput p1, p0, Lcom/MApplication$h;->g:I

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/MApplication$h;->h:J

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/MApplication$h;->i:Z

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/MApplication$h;->j:Z

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public loadAd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "scene"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 3
    .line 4
    const-string v1, "FC"

    .line 5
    .line 6
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const-string v3, "GBA"

    .line 11
    .line 12
    const-string v4, "PSP"

    .line 13
    .line 14
    const-string v5, "FBA"

    .line 15
    .line 16
    const-string v6, ""

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/MApplication$h;->c:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    const-string v7, "simulator_fc_cfg"

    .line 23
    .line 24
    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/MApplication$h;->c:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    const-string v7, "simulator_jj_cfg"

    .line 38
    .line 39
    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Lcom/MApplication$h;->c:Landroid/content/SharedPreferences;

    .line 51
    .line 52
    const-string v7, "simulator_psp_cfg"

    .line 53
    .line 54
    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    iget-object v2, p0, Lcom/MApplication$h;->c:Landroid/content/SharedPreferences;

    .line 66
    .line 67
    const-string v7, "simulator_gba_cfg"

    .line 68
    .line 69
    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    move-object v2, v6

    .line 75
    :goto_0
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_4

    .line 80
    .line 81
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    const-class v8, Lcom/join/mgps/dto/SimulatorAdCfgBean;

    .line 86
    .line 87
    invoke-virtual {v7, v2, v8}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Lcom/join/mgps/dto/SimulatorAdCfgBean;

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    move-object v2, v0

    .line 95
    :goto_1
    if-eqz v2, :cond_11

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getSwitch_state()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    const/4 v8, 0x1

    .line 102
    if-ne v7, v8, :cond_11

    .line 103
    .line 104
    iget-object v7, p0, Lcom/MApplication$h;->c:Landroid/content/SharedPreferences;

    .line 105
    .line 106
    const-string v9, "simulator_play_records"

    .line 107
    .line 108
    invoke-interface {v7, v9, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-static {v7}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    if-eqz v10, :cond_5

    .line 117
    .line 118
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    const-class v11, Lcom/join/mgps/dto/SimulatorAdPlayConfig;

    .line 123
    .line 124
    invoke-virtual {v10, v7, v11}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    check-cast v7, Lcom/join/mgps/dto/SimulatorAdPlayConfig;

    .line 129
    .line 130
    if-eqz v7, :cond_6

    .line 131
    .line 132
    invoke-virtual {v7}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getRecord_time()J

    .line 133
    .line 134
    .line 135
    move-result-wide v10

    .line 136
    iput-wide v10, p0, Lcom/MApplication$h;->d:J

    .line 137
    .line 138
    invoke-static {v10, v11}, Lcom/join/mgps/Util/e0;->z(J)Z

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    if-nez v10, :cond_6

    .line 143
    .line 144
    iget-object v7, p0, Lcom/MApplication$h;->c:Landroid/content/SharedPreferences;

    .line 145
    .line 146
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-interface {v7, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    .line 156
    .line 157
    :cond_5
    move-object v7, v0

    .line 158
    :cond_6
    if-nez v7, :cond_7

    .line 159
    .line 160
    new-instance v7, Lcom/join/mgps/dto/SimulatorAdPlayConfig;

    .line 161
    .line 162
    invoke-direct {v7}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;-><init>()V

    .line 163
    .line 164
    .line 165
    :cond_7
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-nez v6, :cond_8

    .line 170
    .line 171
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    if-nez v6, :cond_8

    .line 176
    .line 177
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    if-nez v6, :cond_8

    .line 182
    .line 183
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-eqz v6, :cond_11

    .line 188
    .line 189
    :cond_8
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_9

    .line 194
    .line 195
    invoke-virtual {v7}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_fc_cfg()Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v7, v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getPlayConfig(Ljava/util/List;)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    :goto_2
    move-object v12, v0

    .line 204
    move-object v0, p2

    .line 205
    move-object p2, v12

    .line 206
    goto :goto_3

    .line 207
    :cond_9
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_a

    .line 212
    .line 213
    invoke-virtual {v7}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_jj_cfg()Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v7, v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getPlayConfig(Ljava/util/List;)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    goto :goto_2

    .line 222
    :cond_a
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_b

    .line 227
    .line 228
    invoke-virtual {v7}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_gba_cfg()Ljava/util/List;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v7, v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getPlayConfig(Ljava/util/List;)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    goto :goto_2

    .line 237
    :cond_b
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    if-eqz p2, :cond_c

    .line 242
    .line 243
    invoke-virtual {v7}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_psp_cfg()Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v7, v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getPlayConfig(Ljava/util/List;)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    goto :goto_2

    .line 252
    :cond_c
    move-object p2, v0

    .line 253
    :goto_3
    if-eqz v0, :cond_d

    .line 254
    .line 255
    invoke-virtual {v2}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getPlay_cfg()Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object p2

    .line 259
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->getAdType()I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    invoke-virtual {v2, p2, v0}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getPlayCfgBean(Ljava/util/List;I)Lcom/join/mgps/dto/PlayCfgBean;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    iput-object p2, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 268
    .line 269
    if-nez p2, :cond_e

    .line 270
    .line 271
    invoke-virtual {v2}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getPlay_cfg()Ljava/util/List;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getPlayCfgBean(Ljava/util/List;)Lcom/join/mgps/dto/PlayCfgBean;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    iput-object p2, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_d
    invoke-virtual {v2}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getPlay_cfg()Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v2, v0, p2}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getPlayCfgBean(Ljava/util/List;Ljava/util/List;)Lcom/join/mgps/dto/PlayCfgBean;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    iput-object p2, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 291
    .line 292
    :cond_e
    :goto_4
    iget-object p2, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 293
    .line 294
    if-eqz p2, :cond_11

    .line 295
    .line 296
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 297
    .line 298
    .line 299
    move-result p2

    .line 300
    if-ne p2, v8, :cond_f

    .line 301
    .line 302
    new-instance p1, Landroid/content/Intent;

    .line 303
    .line 304
    const-string p2, "com.tools.AdBroadcast"

    .line 305
    .line 306
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const-string p2, "playCfg"

    .line 310
    .line 311
    iget-object v0, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 312
    .line 313
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 314
    .line 315
    .line 316
    const-string p2, "action"

    .line 317
    .line 318
    const/16 v0, 0x3e9

    .line 319
    .line 320
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    .line 322
    .line 323
    iget-object p2, p0, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 324
    .line 325
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 326
    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_f
    iget-object p2, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 330
    .line 331
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 332
    .line 333
    .line 334
    move-result p2

    .line 335
    const/4 v0, 0x2

    .line 336
    if-ne p2, v0, :cond_10

    .line 337
    .line 338
    iget-object p2, p0, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 339
    .line 340
    iget-object v0, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 341
    .line 342
    invoke-virtual {p2, p1, v0}, Lcom/MApplication;->F(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V

    .line 343
    .line 344
    .line 345
    goto :goto_5

    .line 346
    :cond_10
    iget-object p2, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 347
    .line 348
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 349
    .line 350
    .line 351
    move-result p2

    .line 352
    const/4 v0, 0x7

    .line 353
    if-ne p2, v0, :cond_11

    .line 354
    .line 355
    iget-object p2, p0, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 356
    .line 357
    iget-object v0, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 358
    .line 359
    invoke-virtual {p2, p1, v0}, Lcom/MApplication;->H(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V

    .line 360
    .line 361
    .line 362
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 363
    .line 364
    const-string p2, "AD_LOG_TAG \u52a0\u8f7d\u878d\u5408\u5e7f\u544a"

    .line 365
    .line 366
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    :cond_11
    :goto_5
    return-void
.end method

.method public loadEndAd(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sdkType",
            "adId",
            "sdkKey"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/PlayCfgBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/PlayCfgBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/PlayCfgBean;->setSdk_type(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/PlayCfgBean;->setAd_id(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/PlayCfgBean;->setSdk_key(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    new-instance p1, Landroid/content/Intent;

    .line 19
    .line 20
    const-string p2, "com.tools.AdBroadcast"

    .line 21
    .line 22
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p2, "playCfg"

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const-string p2, "action"

    .line 31
    .line 32
    const/16 p3, 0x44d

    .line 33
    .line 34
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p2, 0x2

    .line 44
    if-ne p1, p2, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/MApplication;->h(Lcom/MApplication;)Landroid/app/Activity;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2, v0}, Lcom/MApplication;->G(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public showAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "gameId",
            "scene"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/MApplication$h;->c:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "simulator_play_records"

    .line 6
    .line 7
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-class v4, Lcom/join/mgps/dto/SimulatorAdPlayConfig;

    .line 23
    .line 24
    invoke-virtual {v1, v0, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/join/mgps/dto/SimulatorAdPlayConfig;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v0, v3

    .line 32
    :goto_0
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Lcom/join/mgps/dto/SimulatorAdPlayConfig;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    invoke-virtual {v0, v4, v5}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->setRecord_time(J)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v1, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 47
    .line 48
    if-eqz v1, :cond_d

    .line 49
    .line 50
    const-string v1, "FC"

    .line 51
    .line 52
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_fc_cfg()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    iget-object v1, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0, p3, v1}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getPlayConfig(Ljava/util/List;I)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_fc_cfg()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    if-nez p3, :cond_2

    .line 77
    .line 78
    new-instance p3, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->setSimulator_fc_cfg(Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_fc_cfg()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_3
    const-string v1, "FBA"

    .line 93
    .line 94
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_5

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_jj_cfg()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    iget-object v1, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {v0, p3, v1}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getPlayConfig(Ljava/util/List;I)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_jj_cfg()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    if-nez p3, :cond_4

    .line 119
    .line 120
    new-instance p3, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->setSimulator_jj_cfg(Ljava/util/List;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_jj_cfg()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    goto :goto_1

    .line 133
    :cond_5
    const-string v1, "GBA"

    .line 134
    .line 135
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_7

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_gba_cfg()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    iget-object v1, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-virtual {v0, p3, v1}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getPlayConfig(Ljava/util/List;I)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_gba_cfg()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    if-nez p3, :cond_6

    .line 160
    .line 161
    new-instance p3, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->setSimulator_gba_cfg(Ljava/util/List;)V

    .line 167
    .line 168
    .line 169
    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_gba_cfg()Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    goto :goto_1

    .line 174
    :cond_7
    const-string v1, "PSP"

    .line 175
    .line 176
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p3

    .line 180
    if-eqz p3, :cond_9

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_psp_cfg()Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    iget-object v1, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-virtual {v0, p3, v1}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getPlayConfig(Ljava/util/List;I)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_psp_cfg()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object p3

    .line 200
    if-nez p3, :cond_8

    .line 201
    .line 202
    new-instance p3, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->setSimulator_psp_cfg(Ljava/util/List;)V

    .line 208
    .line 209
    .line 210
    :cond_8
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_psp_cfg()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    goto :goto_1

    .line 215
    :cond_9
    move-object p3, v3

    .line 216
    :goto_1
    const/4 v1, 0x1

    .line 217
    if-nez v3, :cond_a

    .line 218
    .line 219
    new-instance v3, Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    .line 220
    .line 221
    iget-object v4, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 222
    .line 223
    invoke-virtual {v4}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    iget-object v5, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 228
    .line 229
    invoke-virtual {v5}, Lcom/join/mgps/dto/PlayCfgBean;->getProbability()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 234
    .line 235
    .line 236
    move-result-wide v5

    .line 237
    double-to-int v5, v5

    .line 238
    invoke-direct {v3, v4, v1, v5}, Lcom/join/mgps/dto/SimulatorAdPlayRecord;-><init>(III)V

    .line 239
    .line 240
    .line 241
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_a
    invoke-virtual {v3}, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->add()V

    .line 246
    .line 247
    .line 248
    :goto_2
    iget-object p3, p0, Lcom/MApplication$h;->c:Landroid/content/SharedPreferences;

    .line 249
    .line 250
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 251
    .line 252
    .line 253
    move-result-object p3

    .line 254
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-interface {p3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    .line 260
    .line 261
    move-result-object p3

    .line 262
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 263
    .line 264
    .line 265
    iget-object p3, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 266
    .line 267
    invoke-virtual {p3}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    if-ne p3, v1, :cond_b

    .line 272
    .line 273
    new-instance p1, Landroid/content/Intent;

    .line 274
    .line 275
    const-string p3, "com.tools.AdBroadcast"

    .line 276
    .line 277
    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    const-string p3, "gameId"

    .line 281
    .line 282
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    .line 284
    .line 285
    const-string p2, "action"

    .line 286
    .line 287
    const/16 p3, 0x3ea

    .line 288
    .line 289
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    .line 291
    .line 292
    iget-object p2, p0, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 293
    .line 294
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 295
    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_b
    iget-object p3, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 299
    .line 300
    invoke-virtual {p3}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 301
    .line 302
    .line 303
    move-result p3

    .line 304
    const/4 v0, 0x2

    .line 305
    if-ne p3, v0, :cond_c

    .line 306
    .line 307
    iget-object p3, p0, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 308
    .line 309
    iget-object p3, p3, Lcom/MApplication;->v:Lcom/join/mgps/ad/f;

    .line 310
    .line 311
    if-eqz p3, :cond_d

    .line 312
    .line 313
    invoke-virtual {p3, p1, p2}, Lcom/join/mgps/ad/d;->q(Landroid/app/Activity;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_c
    iget-object p3, p0, Lcom/MApplication$h;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 318
    .line 319
    invoke-virtual {p3}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 320
    .line 321
    .line 322
    move-result p3

    .line 323
    const/4 v0, 0x7

    .line 324
    if-ne p3, v0, :cond_d

    .line 325
    .line 326
    iget-object p3, p0, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 327
    .line 328
    invoke-virtual {p3, p1, p2}, Lcom/MApplication;->P(Landroid/app/Activity;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 332
    .line 333
    const-string p2, "AD_LOG_TAG \u663e\u793a\u878d\u5408\u5e7f\u544a"

    .line 334
    .line 335
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    :cond_d
    :goto_3
    return-void
.end method

.method public showEndAd(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sdkType",
            "gameId"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    new-instance p1, Landroid/content/Intent;

    .line 5
    .line 6
    const-string v0, "com.tools.AdBroadcast"

    .line 7
    .line 8
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "gameId"

    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string p2, "action"

    .line 17
    .line 18
    const/16 v0, 0x44e

    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x2

    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 33
    .line 34
    iget-object v0, p1, Lcom/MApplication;->v:Lcom/join/mgps/ad/f;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lcom/MApplication;->h(Lcom/MApplication;)Landroid/app/Activity;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/ad/d;->q(Landroid/app/Activity;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method public showGoldAdDialog(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "gameId",
            "state"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    const-string v0, "adCount"

    .line 6
    .line 7
    const-string v3, "howTimes"

    .line 8
    .line 9
    const-string v4, "lastTime"

    .line 10
    .line 11
    iget-object v5, v1, Lcom/MApplication$h;->c:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    const-string v6, "simulator_gold_finger_cfg"

    .line 14
    .line 15
    const-string v7, ""

    .line 16
    .line 17
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    const-string v8, "extras"

    .line 26
    .line 27
    const-string v9, "close"

    .line 28
    .line 29
    const-string v10, "state"

    .line 30
    .line 31
    const-string v12, "adAction"

    .line 32
    .line 33
    const-string v13, "com.emu.ad.result"

    .line 34
    .line 35
    if-eqz v6, :cond_11

    .line 36
    .line 37
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_0

    .line 42
    .line 43
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const-class v14, Lcom/join/mgps/dto/SimulatorAdCfgBean;

    .line 48
    .line 49
    invoke-virtual {v6, v5, v14}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lcom/join/mgps/dto/SimulatorAdCfgBean;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v5, 0x0

    .line 57
    :goto_0
    if-eqz v5, :cond_10

    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getSwitch_state()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    const/4 v14, 0x1

    .line 64
    if-ne v6, v14, :cond_10

    .line 65
    .line 66
    new-instance v6, Lcom/papa91/wrapper/UserPrefs;

    .line 67
    .line 68
    sget-object v15, Lcom/MApplication;->z:Lcom/MApplication;

    .line 69
    .line 70
    invoke-direct {v6, v15}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    sget-object v15, Lcom/MApplication;->z:Lcom/MApplication;

    .line 74
    .line 75
    invoke-static {v15}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 76
    .line 77
    .line 78
    move-result-object v15

    .line 79
    invoke-virtual {v15}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v15

    .line 83
    new-instance v11, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v15}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 89
    .line 90
    .line 91
    move-result v14

    .line 92
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    invoke-virtual {v6, v2, v11}, Lcom/papa91/wrapper/UserPrefs;->getGoldFingerAdGamesConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    invoke-static {v11}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    move-object/from16 v16, v6

    .line 111
    .line 112
    if-eqz v14, :cond_4

    .line 113
    .line 114
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    .line 115
    .line 116
    invoke-direct {v14, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    if-eqz v11, :cond_1

    .line 124
    .line 125
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    move-object v11, v7

    .line 134
    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v6

    .line 138
    iput-wide v6, v1, Lcom/MApplication$h;->h:J

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_1
    move-object v11, v7

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide v6

    .line 146
    iput-wide v6, v1, Lcom/MApplication$h;->h:J

    .line 147
    .line 148
    :goto_1
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_2

    .line 153
    .line 154
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    iput v3, v1, Lcom/MApplication$h;->g:I

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_2
    const/4 v3, 0x0

    .line 170
    iput v3, v1, Lcom/MApplication$h;->g:I

    .line 171
    .line 172
    :goto_2
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_3

    .line 177
    .line 178
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    iput v0, v1, Lcom/MApplication$h;->f:I

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_3
    const/4 v3, 0x0

    .line 194
    iput v3, v1, Lcom/MApplication$h;->f:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :catch_0
    move-exception v0

    .line 198
    goto :goto_3

    .line 199
    :catch_1
    move-exception v0

    .line 200
    move-object v11, v7

    .line 201
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_4
    move-object v11, v7

    .line 206
    :goto_4
    iget-wide v3, v1, Lcom/MApplication$h;->h:J

    .line 207
    .line 208
    invoke-static {v3, v4}, Lcom/join/mgps/Util/e0;->z(J)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-nez v0, :cond_5

    .line 213
    .line 214
    const/4 v3, 0x0

    .line 215
    iput v3, v1, Lcom/MApplication$h;->f:I

    .line 216
    .line 217
    iput v3, v1, Lcom/MApplication$h;->g:I

    .line 218
    .line 219
    :cond_5
    iget v0, v1, Lcom/MApplication$h;->f:I

    .line 220
    .line 221
    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getDaily_times()I

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-ge v0, v3, :cond_8

    .line 226
    .line 227
    iget v0, v1, Lcom/MApplication$h;->g:I

    .line 228
    .line 229
    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getShow_times()I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    const/4 v4, 0x1

    .line 234
    sub-int/2addr v3, v4

    .line 235
    if-lt v0, v3, :cond_6

    .line 236
    .line 237
    invoke-static {v15}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-nez v0, :cond_6

    .line 242
    .line 243
    iget v0, v1, Lcom/MApplication$h;->g:I

    .line 244
    .line 245
    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getShow_times()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    add-int/2addr v0, v3

    .line 250
    add-int/2addr v0, v4

    .line 251
    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getInterval_times()I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    rem-int/2addr v0, v3

    .line 256
    if-nez v0, :cond_6

    .line 257
    .line 258
    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getShow_times()I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-gtz v0, :cond_7

    .line 263
    .line 264
    :cond_6
    iget v0, v1, Lcom/MApplication$h;->g:I

    .line 265
    .line 266
    const/4 v3, 0x1

    .line 267
    add-int/2addr v0, v3

    .line 268
    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getShow_times()I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-lt v0, v3, :cond_8

    .line 273
    .line 274
    iget v0, v1, Lcom/MApplication$h;->f:I

    .line 275
    .line 276
    if-gtz v0, :cond_8

    .line 277
    .line 278
    :cond_7
    const/4 v0, 0x1

    .line 279
    goto :goto_5

    .line 280
    :cond_8
    const/4 v0, 0x0

    .line 281
    :goto_5
    iput-boolean v0, v1, Lcom/MApplication$h;->i:Z

    .line 282
    .line 283
    if-eqz v0, :cond_f

    .line 284
    .line 285
    iget v0, v1, Lcom/MApplication$h;->f:I

    .line 286
    .line 287
    if-nez v0, :cond_b

    .line 288
    .line 289
    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getPlay_cfg()Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    if-eqz v0, :cond_a

    .line 294
    .line 295
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-lez v3, :cond_a

    .line 300
    .line 301
    new-instance v3, Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    if-eqz v6, :cond_9

    .line 315
    .line 316
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    check-cast v6, Lcom/join/mgps/dto/PlayCfgBean;

    .line 321
    .line 322
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getProbability()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    goto :goto_6

    .line 334
    :cond_9
    invoke-static {v3}, Lcom/join/mgps/ad/p;->b(Ljava/util/List;)I

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    goto :goto_7

    .line 339
    :cond_a
    const/4 v3, 0x0

    .line 340
    :goto_7
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    check-cast v0, Lcom/join/mgps/dto/PlayCfgBean;

    .line 345
    .line 346
    iput-object v0, v1, Lcom/MApplication$h;->b:Lcom/join/mgps/dto/PlayCfgBean;

    .line 347
    .line 348
    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getOpen_cfg()Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    const/4 v3, 0x0

    .line 353
    iput-boolean v3, v1, Lcom/MApplication$h;->j:Z

    .line 354
    .line 355
    goto :goto_a

    .line 356
    :cond_b
    const/4 v3, 0x0

    .line 357
    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getUn_play_cfg()Ljava/util/List;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    if-eqz v0, :cond_d

    .line 362
    .line 363
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    if-lez v4, :cond_d

    .line 368
    .line 369
    new-instance v3, Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    if-eqz v6, :cond_c

    .line 383
    .line 384
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    check-cast v6, Lcom/join/mgps/dto/PlayCfgBean;

    .line 389
    .line 390
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getProbability()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    goto :goto_8

    .line 402
    :cond_c
    invoke-static {v3}, Lcom/join/mgps/ad/p;->b(Ljava/util/List;)I

    .line 403
    .line 404
    .line 405
    move-result v6

    .line 406
    goto :goto_9

    .line 407
    :cond_d
    const/4 v6, 0x0

    .line 408
    :goto_9
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    check-cast v0, Lcom/join/mgps/dto/PlayCfgBean;

    .line 413
    .line 414
    iput-object v0, v1, Lcom/MApplication$h;->b:Lcom/join/mgps/dto/PlayCfgBean;

    .line 415
    .line 416
    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getUn_open_cfg()Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    const/4 v3, 0x1

    .line 421
    iput-boolean v3, v1, Lcom/MApplication$h;->j:Z

    .line 422
    .line 423
    :goto_a
    iget-object v3, v1, Lcom/MApplication$h;->e:Lcom/join/mgps/dialog/StickAdDialog;

    .line 424
    .line 425
    if-eqz v3, :cond_e

    .line 426
    .line 427
    invoke-virtual {v3}, Lcom/join/mgps/dialog/StickAdDialog;->dismiss()V

    .line 428
    .line 429
    .line 430
    :cond_e
    new-instance v3, Lcom/join/mgps/dialog/StickAdDialog;

    .line 431
    .line 432
    iget-boolean v4, v1, Lcom/MApplication$h;->j:Z

    .line 433
    .line 434
    move-object/from16 v5, p1

    .line 435
    .line 436
    invoke-direct {v3, v5, v0, v4}, Lcom/join/mgps/dialog/StickAdDialog;-><init>(Landroid/content/Context;Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;Z)V

    .line 437
    .line 438
    .line 439
    iput-object v3, v1, Lcom/MApplication$h;->e:Lcom/join/mgps/dialog/StickAdDialog;

    .line 440
    .line 441
    new-instance v0, Lcom/MApplication$h$a;

    .line 442
    .line 443
    move/from16 v4, p3

    .line 444
    .line 445
    invoke-direct {v0, v1, v2, v4, v15}, Lcom/MApplication$h$a;-><init>(Lcom/MApplication$h;Ljava/lang/String;ILcom/wufan/user/service/protobuf/UserInfo;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v3, v0}, Lcom/join/mgps/dialog/StickAdDialog;->d(Lcom/join/mgps/dialog/StickAdDialog$a;)V

    .line 449
    .line 450
    .line 451
    iget-object v0, v1, Lcom/MApplication$h;->e:Lcom/join/mgps/dialog/StickAdDialog;

    .line 452
    .line 453
    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/StickAdDialog;->c(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    iget-object v0, v1, Lcom/MApplication$h;->e:Lcom/join/mgps/dialog/StickAdDialog;

    .line 457
    .line 458
    invoke-virtual {v0}, Lcom/join/mgps/dialog/StickAdDialog;->show()V

    .line 459
    .line 460
    .line 461
    goto/16 :goto_b

    .line 462
    .line 463
    :cond_f
    move/from16 v4, p3

    .line 464
    .line 465
    new-instance v0, Landroid/content/Intent;

    .line 466
    .line 467
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    .line 472
    .line 473
    const/16 v3, 0x3ef

    .line 474
    .line 475
    invoke-virtual {v0, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    .line 477
    .line 478
    new-instance v3, Ljava/util/HashMap;

    .line 479
    .line 480
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 481
    .line 482
    .line 483
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    invoke-interface {v3, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    iget-boolean v4, v1, Lcom/MApplication$h;->j:Z

    .line 491
    .line 492
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    invoke-interface {v3, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    invoke-static {v3}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    .line 505
    .line 506
    iget-object v3, v1, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 507
    .line 508
    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 509
    .line 510
    .line 511
    iget v0, v1, Lcom/MApplication$h;->f:I

    .line 512
    .line 513
    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getDaily_times()I

    .line 514
    .line 515
    .line 516
    move-result v3

    .line 517
    if-ge v0, v3, :cond_12

    .line 518
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v15}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    iget v3, v1, Lcom/MApplication$h;->g:I

    .line 539
    .line 540
    const/4 v4, 0x1

    .line 541
    add-int/2addr v3, v4

    .line 542
    iget v4, v1, Lcom/MApplication$h;->f:I

    .line 543
    .line 544
    move-object/from16 v5, v16

    .line 545
    .line 546
    invoke-virtual {v5, v2, v0, v3, v4}, Lcom/papa91/wrapper/UserPrefs;->setGoldFingerAdGamesConfig(Ljava/lang/String;Ljava/lang/String;II)V

    .line 547
    .line 548
    .line 549
    goto :goto_b

    .line 550
    :cond_10
    move/from16 v4, p3

    .line 551
    .line 552
    new-instance v0, Landroid/content/Intent;

    .line 553
    .line 554
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    .line 559
    .line 560
    const/16 v2, 0x3ef

    .line 561
    .line 562
    invoke-virtual {v0, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 563
    .line 564
    .line 565
    new-instance v2, Ljava/util/HashMap;

    .line 566
    .line 567
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 568
    .line 569
    .line 570
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 578
    .line 579
    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    .line 588
    .line 589
    iget-object v2, v1, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 590
    .line 591
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 592
    .line 593
    .line 594
    goto :goto_b

    .line 595
    :cond_11
    move/from16 v4, p3

    .line 596
    .line 597
    new-instance v0, Landroid/content/Intent;

    .line 598
    .line 599
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    .line 604
    .line 605
    const/16 v2, 0x3ef

    .line 606
    .line 607
    invoke-virtual {v0, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 608
    .line 609
    .line 610
    new-instance v2, Ljava/util/HashMap;

    .line 611
    .line 612
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 613
    .line 614
    .line 615
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 623
    .line 624
    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    .line 633
    .line 634
    iget-object v2, v1, Lcom/MApplication$h;->k:Lcom/MApplication;

    .line 635
    .line 636
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 637
    .line 638
    .line 639
    :cond_12
    :goto_b
    return-void
.end method
