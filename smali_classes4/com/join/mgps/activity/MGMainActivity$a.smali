.class Lcom/join/mgps/activity/MGMainActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->loadIpAddress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/mgps/dto/ConfigData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ConfigData;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ConfigData;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/ConfigData;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_c

    .line 2
    .line 3
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_c

    .line 8
    .line 9
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/join/mgps/dto/ConfigData;

    .line 20
    .line 21
    if-eqz p1, :cond_c

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getClient_ip()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->launch_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->isLaunch_game_switch()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->download_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->isDownload_game_switch()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->non_online_user_switch()Lorg/androidannotations/api/sharedpreferences/d;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->isNon_online_user_switch()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->androidIdNullsKey()Lorg/androidannotations/api/sharedpreferences/p;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getReal_name_black_list()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->wx_open_appid()Lorg/androidannotations/api/sharedpreferences/p;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getWx_open_appid()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isHomepagePlayVideo()Lorg/androidannotations/api/sharedpreferences/d;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->isHome_page_video_switch()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->net_game_count_down()Lorg/androidannotations/api/sharedpreferences/i;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getNet_game_count_down()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 161
    .line 162
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->show_unknown_source()Lorg/androidannotations/api/sharedpreferences/d;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->isUnknown_source_state()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 180
    .line 181
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->homeTopTypeEntrance()Lorg/androidannotations/api/sharedpreferences/p;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getTop_type_entrance()Ljava/util/ArrayList;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 199
    .line 200
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sch_feed_back_switch()Lorg/androidannotations/api/sharedpreferences/d;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->isSch_feed_back_switch()Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 218
    .line 219
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sdkInit()Lorg/androidannotations/api/sharedpreferences/d;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->isSdk_init()Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 237
    .line 238
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->sdkInitReady()Lorg/androidannotations/api/sharedpreferences/d;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 250
    .line 251
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->isSdk_init()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->applyQuarkAssocLaunchAfterSdkInit(Z)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->isSdk_init()Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    const/4 v1, 0x1

    .line 263
    if-eqz v0, :cond_0

    .line 264
    .line 265
    sput-boolean v1, LXI/XI/K0/XI;->XI:Z

    .line 266
    .line 267
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getFirst_screen_ad_interaction()Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    if-eqz v0, :cond_1

    .line 272
    .line 273
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 274
    .line 275
    invoke-static {v0}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getFirst_screen_ad_interaction()Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/pref/b;->y(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :cond_1
    const-string v0, "UTF-8"

    .line 291
    .line 292
    invoke-static {p2, v0}, Lcom/join/mgps/Util/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p2

    .line 296
    sget-object v0, Lcom/MApplication;->D:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-nez v0, :cond_2

    .line 303
    .line 304
    sput-object p2, Lcom/MApplication;->D:Ljava/lang/String;

    .line 305
    .line 306
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 307
    .line 308
    iget-object p2, p2, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 309
    .line 310
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->w_channel_info_switch()Lorg/androidannotations/api/sharedpreferences/d;

    .line 311
    .line 312
    .line 313
    move-result-object p2

    .line 314
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->isW_channel_info_switch()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {p2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getPd_ad_cfg()Lcom/join/mgps/dto/PdAdCfgBean;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    if-eqz p2, :cond_5

    .line 330
    .line 331
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 332
    .line 333
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 334
    .line 335
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->pd_ad_config()Lorg/androidannotations/api/sharedpreferences/p;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    check-cast v0, Ljava/lang/String;

    .line 344
    .line 345
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 349
    if-eqz v2, :cond_4

    .line 350
    .line 351
    :try_start_1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    const-class v3, Lcom/join/mgps/dto/PdAdCfgBean;

    .line 356
    .line 357
    invoke-virtual {v2, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    check-cast v0, Lcom/join/mgps/dto/PdAdCfgBean;

    .line 362
    .line 363
    if-eqz v0, :cond_3

    .line 364
    .line 365
    invoke-virtual {v0}, Lcom/join/mgps/dto/PdAdCfgBean;->getLastUpdateConfigTime()J

    .line 366
    .line 367
    .line 368
    move-result-wide v2

    .line 369
    invoke-static {v2, v3}, Lcom/join/mgps/Util/e0;->z(J)Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-nez v0, :cond_6

    .line 374
    .line 375
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 376
    .line 377
    .line 378
    move-result-wide v2

    .line 379
    invoke-virtual {p2, v2, v3}, Lcom/join/mgps/dto/PdAdCfgBean;->setLastUpdateConfigTime(J)V

    .line 380
    .line 381
    .line 382
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 383
    .line 384
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 385
    .line 386
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->pd_ad_config()Lorg/androidannotations/api/sharedpreferences/p;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-static {p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 395
    .line 396
    .line 397
    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 400
    .line 401
    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 403
    .line 404
    .line 405
    move-result-wide v2

    .line 406
    invoke-virtual {p2, v2, v3}, Lcom/join/mgps/dto/PdAdCfgBean;->setLastUpdateConfigTime(J)V

    .line 407
    .line 408
    .line 409
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 410
    .line 411
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 412
    .line 413
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->pd_ad_config()Lorg/androidannotations/api/sharedpreferences/p;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-static {p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object p2

    .line 421
    invoke-virtual {v0, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    goto :goto_0

    .line 425
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 426
    .line 427
    .line 428
    move-result-wide v2

    .line 429
    invoke-virtual {p2, v2, v3}, Lcom/join/mgps/dto/PdAdCfgBean;->setLastUpdateConfigTime(J)V

    .line 430
    .line 431
    .line 432
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 433
    .line 434
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 435
    .line 436
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->pd_ad_config()Lorg/androidannotations/api/sharedpreferences/p;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-static {p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p2

    .line 444
    invoke-virtual {v0, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    goto :goto_0

    .line 448
    :cond_5
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 449
    .line 450
    iget-object p2, p2, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 451
    .line 452
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->pd_ad_config()Lorg/androidannotations/api/sharedpreferences/p;

    .line 453
    .line 454
    .line 455
    move-result-object p2

    .line 456
    const-string v0, ""

    .line 457
    .line 458
    invoke-virtual {p2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    :cond_6
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getFound_game_tab()Lcom/join/mgps/dto/FoundGameTabBean;

    .line 462
    .line 463
    .line 464
    move-result-object p2

    .line 465
    if-eqz p2, :cond_7

    .line 466
    .line 467
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 468
    .line 469
    iget-object p2, p2, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 470
    .line 471
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->found_game_tab()Lorg/androidannotations/api/sharedpreferences/p;

    .line 472
    .line 473
    .line 474
    move-result-object p2

    .line 475
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getFound_game_tab()Lcom/join/mgps/dto/FoundGameTabBean;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {p2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getFound_game_tab()Lcom/join/mgps/dto/FoundGameTabBean;

    .line 487
    .line 488
    .line 489
    move-result-object p2

    .line 490
    invoke-virtual {p2}, Lcom/join/mgps/dto/FoundGameTabBean;->getTips_info()Lcom/join/mgps/dto/TipsInfoBean;

    .line 491
    .line 492
    .line 493
    move-result-object p2

    .line 494
    if-eqz p2, :cond_7

    .line 495
    .line 496
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 497
    .line 498
    invoke-virtual {v0, p2}, Lcom/join/mgps/activity/MGMainActivity;->updateFindGameRetHot(Lcom/join/mgps/dto/TipsInfoBean;)V

    .line 499
    .line 500
    .line 501
    :cond_7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getWeb_disk_cfg()Lcom/join/mgps/dto/WebDiskCfg;

    .line 502
    .line 503
    .line 504
    move-result-object p2

    .line 505
    if-eqz p2, :cond_9

    .line 506
    .line 507
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 508
    .line 509
    iget-object p2, p2, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 510
    .line 511
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->ab_side()Lorg/androidannotations/api/sharedpreferences/i;

    .line 512
    .line 513
    .line 514
    move-result-object p2

    .line 515
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getWeb_disk_cfg()Lcom/join/mgps/dto/WebDiskCfg;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-virtual {v0}, Lcom/join/mgps/dto/WebDiskCfg;->getAb_side()I

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-virtual {p2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 531
    .line 532
    iget-object p2, p2, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 533
    .line 534
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->isBsideInt()Lorg/androidannotations/api/sharedpreferences/i;

    .line 535
    .line 536
    .line 537
    move-result-object p2

    .line 538
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->isB_side()Z

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    if-eqz v0, :cond_8

    .line 543
    .line 544
    const/4 v1, 0x2

    .line 545
    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-virtual {p2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 553
    .line 554
    iget-object p2, p2, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 555
    .line 556
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->web_disk_cfg()Lorg/androidannotations/api/sharedpreferences/p;

    .line 557
    .line 558
    .line 559
    move-result-object p2

    .line 560
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getWeb_disk_cfg()Lcom/join/mgps/dto/WebDiskCfg;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    invoke-virtual {p2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 576
    .line 577
    iget-object p2, p2, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 578
    .line 579
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->quark_display_mode()Lorg/androidannotations/api/sharedpreferences/i;

    .line 580
    .line 581
    .line 582
    move-result-object p2

    .line 583
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getWeb_disk_cfg()Lcom/join/mgps/dto/WebDiskCfg;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    invoke-virtual {v0}, Lcom/join/mgps/dto/WebDiskCfg;->getKk_ico_display()I

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    invoke-virtual {p2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 596
    .line 597
    .line 598
    :cond_9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getWeb_disk_position()Lcom/join/mgps/dto/WebDiskPositionBean;

    .line 599
    .line 600
    .line 601
    move-result-object p2

    .line 602
    if-eqz p2, :cond_a

    .line 603
    .line 604
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 605
    .line 606
    iget-object p2, p2, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 607
    .line 608
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->web_disk_position()Lorg/androidannotations/api/sharedpreferences/p;

    .line 609
    .line 610
    .line 611
    move-result-object p2

    .line 612
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getWeb_disk_position()Lcom/join/mgps/dto/WebDiskPositionBean;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    invoke-virtual {p2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 621
    .line 622
    .line 623
    :cond_a
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getExclude_simulator_type()Lcom/join/mgps/dto/ExcludeSimulatorType;

    .line 624
    .line 625
    .line 626
    move-result-object p2

    .line 627
    if-eqz p2, :cond_b

    .line 628
    .line 629
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 630
    .line 631
    iget-object p2, p2, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 632
    .line 633
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->exclude_simulator_type()Lorg/androidannotations/api/sharedpreferences/p;

    .line 634
    .line 635
    .line 636
    move-result-object p2

    .line 637
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getExclude_simulator_type()Lcom/join/mgps/dto/ExcludeSimulatorType;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-virtual {p2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 646
    .line 647
    .line 648
    :cond_b
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 649
    .line 650
    iget-object p2, p2, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 651
    .line 652
    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->cloudGameConfig()Lorg/androidannotations/api/sharedpreferences/p;

    .line 653
    .line 654
    .line 655
    move-result-object p2

    .line 656
    invoke-virtual {p1}, Lcom/join/mgps/dto/ConfigData;->getCloud_gaming()Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 657
    .line 658
    .line 659
    move-result-object p1

    .line 660
    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object p1

    .line 664
    invoke-virtual {p2, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 665
    .line 666
    .line 667
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$a;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 668
    .line 669
    invoke-virtual {p1}, Lcom/join/mgps/activity/MGMainActivity;->addShortCuts()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 670
    .line 671
    .line 672
    goto :goto_1

    .line 673
    :catch_1
    move-exception p1

    .line 674
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 675
    .line 676
    .line 677
    :cond_c
    :goto_1
    return-void
.end method
