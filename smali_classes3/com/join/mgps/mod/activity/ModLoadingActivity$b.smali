.class Lcom/join/mgps/mod/activity/ModLoadingActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/snowdream/android/app/downloader/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/mod/activity/ModLoadingActivity;->initPreDownloadFactory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/mod/activity/ModLoadingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->startCopyFile()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onFinish onStart - "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/join/mgps/Util/h1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->o()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/github/snowdream/android/app/downloader/c;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/16 v2, 0xe

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->u(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 67
    .line 68
    invoke-static {v3}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->u(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const-class v4, Lcom/join/mgps/dto/ModInfoBean;

    .line 73
    .line 74
    invoke-virtual {v1, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/join/mgps/dto/ModInfoBean;

    .line 79
    .line 80
    if-eqz v1, :cond_0

    .line 81
    .line 82
    iget-object v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 83
    .line 84
    invoke-static {v3}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ModInfoBean;->setStatus(I)V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 99
    .line 100
    invoke-static {v2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 113
    .line 114
    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 119
    .line 120
    invoke-static {v2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->u(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 133
    .line 134
    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v1}, Lcom/join/android/app/common/utils/APKUtils;->O(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_3

    .line 143
    .line 144
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 145
    .line 146
    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->u(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_3

    .line 155
    .line 156
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iget-object v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 161
    .line 162
    invoke-static {v3}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->u(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    const-class v4, Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 167
    .line 168
    invoke-virtual {v1, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 173
    .line 174
    if-eqz v1, :cond_2

    .line 175
    .line 176
    iget-object v3, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 177
    .line 178
    invoke-static {v3}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/SingleGameModInfoBean;->setStatus(I)V

    .line 190
    .line 191
    .line 192
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 193
    .line 194
    invoke-static {v2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSingle_game_mod_info(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 207
    .line 208
    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    iget-object v2, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 213
    .line 214
    invoke-static {v2}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->u(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSingle_game_mod_info(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 226
    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->d()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->h()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iput-object v0, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->j:Ljava/lang/String;

    .line 251
    .line 252
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 253
    .line 254
    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 259
    .line 260
    iget-object v1, v1, Lcom/join/mgps/mod/activity/ModLoadingActivity;->j:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_path(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 270
    .line 271
    invoke-static {v1}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->t(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 279
    .line 280
    new-instance v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$c;

    .line 281
    .line 282
    invoke-direct {v1, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$c;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$b;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 286
    .line 287
    .line 288
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->startCopyFile()V

    .line 291
    .line 292
    .line 293
    invoke-static {}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->o()Ljava/util/Map;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "progress",
            "speed"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$b;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$b;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$b;Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PreDownloadPlug onStart - "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/join/mgps/Util/h1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 25
    .line 26
    new-instance v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$a;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$a;-><init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$b;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    return-void
.end method

.method public onWait(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    return-void
.end method

.method public updateSize(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "actualSize"
        }
    .end annotation

    return-void
.end method
