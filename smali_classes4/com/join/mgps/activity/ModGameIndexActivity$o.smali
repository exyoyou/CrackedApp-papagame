.class Lcom/join/mgps/activity/ModGameIndexActivity$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/h1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->showDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/h1;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$2202(Lcom/join/mgps/activity/ModGameIndexActivity;I)I

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->downloadDialog:Lcom/join/mgps/dialog/h1;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$2200(Lcom/join/mgps/activity/ModGameIndexActivity;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 16
    .line 17
    invoke-static {v3}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$2100(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-object v4, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 22
    .line 23
    iget-boolean v4, v4, Lcom/join/mgps/activity/ModGameIndexActivity;->hasVersion:Z

    .line 24
    .line 25
    invoke-virtual {v2, v0, v3, v4}, Lcom/join/mgps/dialog/h1;->C(IZZ)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$2100(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/16 v2, 0x2a

    .line 35
    .line 36
    const/16 v3, 0x9

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eq p1, v3, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-ne p1, v2, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->startDownload(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 89
    .line 90
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->startUpdate(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eq v0, v3, :cond_6

    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-ne v0, v2, :cond_3

    .line 118
    .line 119
    goto/16 :goto_1

    .line 120
    .line 121
    :cond_3
    :try_start_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 122
    .line 123
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 124
    .line 125
    invoke-direct {v0, v2}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->androidIdNullsKey()Lorg/androidannotations/api/sharedpreferences/p;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_4

    .line 143
    .line 144
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    const-class v3, Ljava/util/List;

    .line 149
    .line 150
    invoke-virtual {v2, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Ljava/util/List;

    .line 155
    .line 156
    sget-object v2, Lcom/MApplication;->K:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_4

    .line 163
    .line 164
    sget-object v2, Lcom/MApplication;->K:Ljava/lang/String;

    .line 165
    .line 166
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_4

    .line 171
    .line 172
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 177
    .line 178
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 179
    .line 180
    .line 181
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    if-eqz v0, :cond_4

    .line 183
    .line 184
    return-void

    .line 185
    :catch_0
    nop

    .line 186
    :cond_4
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 187
    .line 188
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 189
    .line 190
    invoke-direct {v0, v2}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->download_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Ljava/lang/Boolean;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_5

    .line 208
    .line 209
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 210
    .line 211
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    new-instance v3, Lcom/join/mgps/activity/ModGameIndexActivity$o$a;

    .line 220
    .line 221
    invoke-direct {v3, p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity$o$a;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity$o;Lcom/join/mgps/dialog/h1;)V

    .line 222
    .line 223
    .line 224
    const-string v4, "VIRTUAL_SINGLE"

    .line 225
    .line 226
    invoke-static {v0, v1, v2, v4, v3}, Lcom/join/mgps/Util/UtilsMy;->A0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 231
    .line 232
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 237
    .line 238
    iget-object v2, v2, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 239
    .line 240
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/ModGameIndexActivity;->startDownload(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 245
    .line 246
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 251
    .line 252
    iget-object v2, v2, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 253
    .line 254
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/ModGameIndexActivity;->startUpdate(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 255
    .line 256
    .line 257
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 258
    .line 259
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    if-eqz v0, :cond_7

    .line 264
    .line 265
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 266
    .line 267
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-nez v0, :cond_7

    .line 276
    .line 277
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 278
    .line 279
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    sget-object v1, Lcom/papa/sim/statistic/Event;->modDownloadTip_install:Lcom/papa/sim/statistic/Event;

    .line 284
    .line 285
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 286
    .line 287
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 288
    .line 289
    .line 290
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 291
    .line 292
    iget-object v3, v3, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Lcom/join/mgps/dialog/h1;->o()I

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string p1, ""

    .line 311
    .line 312
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 324
    .line 325
    .line 326
    :cond_7
    :goto_3
    return-void
.end method

.method public b(Lcom/join/mgps/dialog/h1;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dialog/p;->dismiss()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$2100(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x5

    .line 19
    const/16 v2, 0x2a

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-ne p1, v2, :cond_3

    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 53
    .line 54
    iget-object v0, p1, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->startDownload(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-ne v0, v2, :cond_2

    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 106
    .line 107
    iget-object v2, v2, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/ModGameIndexActivity;->startDownload(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_3

    .line 131
    .line 132
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    sget-object v1, Lcom/papa/sim/statistic/Event;->modDownloadTip_exit:Lcom/papa/sim/statistic/Event;

    .line 139
    .line 140
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 141
    .line 142
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 143
    .line 144
    .line 145
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$o;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 146
    .line 147
    iget-object v3, v3, Lcom/join/mgps/activity/ModGameIndexActivity;->gameId:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/join/mgps/dialog/h1;->o()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string p1, ""

    .line 166
    .line 167
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 179
    .line 180
    .line 181
    :cond_3
    :goto_0
    return-void
.end method
