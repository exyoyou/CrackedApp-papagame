.class Lcom/join/mgps/activity/MiniGameLoadingActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/snowdream/android/app/downloader/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MiniGameLoadingActivity;->initPreDownloadFactory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MiniGameLoadingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MiniGameLoadingActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->startCopyFile()V

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
    invoke-static {}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->access$400()Ljava/util/Map;

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
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/16 v2, 0xe

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->access$500(Lcom/join/mgps/activity/MiniGameLoadingActivity;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v3, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 65
    .line 66
    invoke-static {v3}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->access$500(Lcom/join/mgps/activity/MiniGameLoadingActivity;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const-class v4, Lcom/join/mgps/dto/ModInfoBean;

    .line 71
    .line 72
    invoke-virtual {v1, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lcom/join/mgps/dto/ModInfoBean;

    .line 77
    .line 78
    if-eqz v1, :cond_0

    .line 79
    .line 80
    iget-object v3, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 81
    .line 82
    iget-object v3, v3, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ModInfoBean;->setStatus(I)V

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 95
    .line 96
    iget-object v2, v2, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 107
    .line 108
    iget-object v2, v1, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 109
    .line 110
    invoke-static {v1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->access$500(Lcom/join/mgps/activity/MiniGameLoadingActivity;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 123
    .line 124
    iget-object v1, v1, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 125
    .line 126
    invoke-static {v1}, Lcom/join/android/app/common/utils/APKUtils;->O(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 133
    .line 134
    invoke-static {v1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->access$500(Lcom/join/mgps/activity/MiniGameLoadingActivity;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_3

    .line 143
    .line 144
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-object v3, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 149
    .line 150
    invoke-static {v3}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->access$500(Lcom/join/mgps/activity/MiniGameLoadingActivity;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    const-class v4, Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 155
    .line 156
    invoke-virtual {v1, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 161
    .line 162
    if-eqz v1, :cond_2

    .line 163
    .line 164
    iget-object v3, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 165
    .line 166
    iget-object v3, v3, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 167
    .line 168
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/SingleGameModInfoBean;->setStatus(I)V

    .line 176
    .line 177
    .line 178
    iget-object v2, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 179
    .line 180
    iget-object v2, v2, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 181
    .line 182
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSingle_game_mod_info(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 191
    .line 192
    iget-object v2, v1, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 193
    .line 194
    invoke-static {v1}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->access$500(Lcom/join/mgps/activity/MiniGameLoadingActivity;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

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
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 206
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->d()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->h()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    iput-object v0, v1, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modPath:Ljava/lang/String;

    .line 231
    .line 232
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 233
    .line 234
    iget-object v1, v0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 235
    .line 236
    iget-object v0, v0, Lcom/join/mgps/activity/MiniGameLoadingActivity;->modPath:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_path(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 246
    .line 247
    iget-object v1, v1, Lcom/join/mgps/activity/MiniGameLoadingActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 253
    .line 254
    new-instance v1, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$c;

    .line 255
    .line 256
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$c;-><init>(Lcom/join/mgps/activity/MiniGameLoadingActivity$c;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->startCopyFile()V

    .line 265
    .line 266
    .line 267
    invoke-static {}, Lcom/join/mgps/activity/MiniGameLoadingActivity;->access$400()Ljava/util/Map;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
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
    iget-object v0, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$b;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$b;-><init>(Lcom/join/mgps/activity/MiniGameLoadingActivity$c;Ljava/lang/String;ILjava/lang/String;)V

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
    iget-object p1, p0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c;->a:Lcom/join/mgps/activity/MiniGameLoadingActivity;

    .line 25
    .line 26
    new-instance v0, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$a;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MiniGameLoadingActivity$c$a;-><init>(Lcom/join/mgps/activity/MiniGameLoadingActivity$c;)V

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
