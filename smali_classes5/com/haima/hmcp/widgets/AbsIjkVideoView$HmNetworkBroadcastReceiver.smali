.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HmNetworkBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method private constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/widgets/AbsIjkVideoView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    const-string p1, "==networkReceiver-----"

    .line 2
    .line 3
    const-string v0, "AbsIjkVideoView"

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mAppName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGid:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const-string p1, "==networkReceiver appName && mGid isEmpty -----"

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 35
    .line 36
    iget-boolean v1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isBackground:Z

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCurrentNetType()I

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 46
    .line 47
    iget-boolean p2, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isNetworkOk:Z

    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    iget-object p2, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    iget-boolean p2, p2, Lcom/haima/hmcp/business/HmcpRequestManager;->isStopPlay:Z

    .line 56
    .line 57
    if-nez p2, :cond_2

    .line 58
    .line 59
    iget p2, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 60
    .line 61
    if-ne p2, v2, :cond_2

    .line 62
    .line 63
    iput v3, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->pauseDownloadTask()V

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_0
    return-void

    .line 70
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 75
    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_c

    .line 81
    .line 82
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string p2, "connectivity"

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v1, "==networkReceiver currentNetType = "

    .line 110
    .line 111
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 115
    .line 116
    iget v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentNetType:I

    .line 117
    .line 118
    const/4 v4, 0x1

    .line 119
    if-ne v1, v4, :cond_4

    .line 120
    .line 121
    const-string v1, "wifi"

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    const-string v1, "mobile"

    .line 125
    .line 126
    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-static {v0, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string p2, "msg"

    .line 137
    .line 138
    const-string v1, "0"

    .line 139
    .line 140
    const-string v5, "stopByApp"

    .line 141
    .line 142
    const-string v6, "13704"

    .line 143
    .line 144
    const-string v7, "stop"

    .line 145
    .line 146
    const-string v8, "status"

    .line 147
    .line 148
    if-eqz p1, :cond_a

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-eqz v9, :cond_a

    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    new-instance v9, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v10, "networkReceiver=>TYPE_WIFI== ok ===>"

    .line 166
    .line 167
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    invoke-static {v0, v9}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    if-ne p1, v4, :cond_5

    .line 181
    .line 182
    iget-object v9, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 183
    .line 184
    iget v9, v9, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentNetType:I

    .line 185
    .line 186
    if-nez v9, :cond_5

    .line 187
    .line 188
    new-instance v9, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string v10, "==networkReceiver networkReceiver=>mobile to wifif and isNetworkOk is "

    .line 194
    .line 195
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget-object v10, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 199
    .line 200
    iget-boolean v10, v10, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isNetworkOk:Z

    .line 201
    .line 202
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    invoke-static {v0, v9}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object v9, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 213
    .line 214
    const-string v10, ""

    .line 215
    .line 216
    invoke-virtual {v9, v2, v10}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v9, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const-string v2, "12018"

    .line 224
    .line 225
    invoke-static {v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 229
    .line 230
    iget-object v2, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 231
    .line 232
    sget-object v9, Lcom/haima/hmcp/enums/NetWorkState;->ISWIFI:Lcom/haima/hmcp/enums/NetWorkState;

    .line 233
    .line 234
    invoke-static {v2, v9}, Lcom/haima/hmcp/business/SendSceneState;->networkCuts(Lcom/haima/hmcp/listeners/HmcpPlayerListener;Lcom/haima/hmcp/enums/NetWorkState;)V

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_5
    if-nez p1, :cond_6

    .line 239
    .line 240
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 241
    .line 242
    iget v2, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentNetType:I

    .line 243
    .line 244
    if-ne v2, v4, :cond_6

    .line 245
    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v9, "==networkReceiver=>wifi to mobile and isNetworkOk is "

    .line 252
    .line 253
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    iget-object v9, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 257
    .line 258
    iget-boolean v9, v9, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isNetworkOk:Z

    .line 259
    .line 260
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 271
    .line 272
    const-string v9, "tips_change_wifi_to_4g"

    .line 273
    .line 274
    invoke-virtual {v2, v9}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getMetaInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    const/4 v10, 0x5

    .line 279
    invoke-virtual {v2, v10, v9}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    invoke-virtual {v2, v9}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string v2, "12017"

    .line 287
    .line 288
    invoke-static {v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 292
    .line 293
    iget-object v2, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 294
    .line 295
    sget-object v9, Lcom/haima/hmcp/enums/NetWorkState;->NOTWIFI:Lcom/haima/hmcp/enums/NetWorkState;

    .line 296
    .line 297
    invoke-static {v2, v9}, Lcom/haima/hmcp/business/SendSceneState;->networkCuts(Lcom/haima/hmcp/listeners/HmcpPlayerListener;Lcom/haima/hmcp/enums/NetWorkState;)V

    .line 298
    .line 299
    .line 300
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 301
    .line 302
    iget-boolean v2, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isNetworkOk:Z

    .line 303
    .line 304
    if-nez v2, :cond_7

    .line 305
    .line 306
    const-string v2, "==networkReceiver=>set replay is true"

    .line 307
    .line 308
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_7
    const/4 v4, 0x0

    .line 313
    :goto_3
    if-eqz v4, :cond_8

    .line 314
    .line 315
    const-string v2, "==networkReceiver=>to replay"

    .line 316
    .line 317
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 321
    .line 322
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpHandler:Landroid/os/Handler;

    .line 323
    .line 324
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 325
    .line 326
    .line 327
    :cond_8
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 328
    .line 329
    iget v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentNetType:I

    .line 330
    .line 331
    if-eq v2, p1, :cond_9

    .line 332
    .line 333
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mFileDownloadUtil:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 334
    .line 335
    if-eqz v0, :cond_9

    .line 336
    .line 337
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/FileDownloadUtil;->stopSpeedTest()V

    .line 338
    .line 339
    .line 340
    new-instance v0, Lorg/json/JSONObject;

    .line 341
    .line 342
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 343
    .line 344
    .line 345
    :try_start_0
    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    .line 350
    .line 351
    const-string v1, "network change"

    .line 352
    .line 353
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .line 355
    .line 356
    goto :goto_4

    .line 357
    :catch_0
    move-exception p2

    .line 358
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 359
    .line 360
    .line 361
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p2

    .line 365
    invoke-static {v6, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :cond_9
    iget-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 369
    .line 370
    iput p1, p2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentNetType:I

    .line 371
    .line 372
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-static {p1}, Lcom/haima/hmcp/utils/ConfigUtil;->updateNetInfo(Landroid/content/Context;)V

    .line 377
    .line 378
    .line 379
    goto :goto_6

    .line 380
    :cond_a
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 381
    .line 382
    iput-boolean v3, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isNetworkOk:Z

    .line 383
    .line 384
    new-instance p1, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    const-string v2, "==networkReceiver=>TYPE_WIFI==not ok and isNetworkOk:"

    .line 390
    .line 391
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 395
    .line 396
    iget-boolean v2, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isNetworkOk:Z

    .line 397
    .line 398
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 409
    .line 410
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->pauseDownloadTask()V

    .line 411
    .line 412
    .line 413
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 414
    .line 415
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->notifyNetworkChanged()V

    .line 416
    .line 417
    .line 418
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 419
    .line 420
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mFileDownloadUtil:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 421
    .line 422
    if-eqz p1, :cond_b

    .line 423
    .line 424
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/FileDownloadUtil;->stopSpeedTest()V

    .line 425
    .line 426
    .line 427
    new-instance p1, Lorg/json/JSONObject;

    .line 428
    .line 429
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 430
    .line 431
    .line 432
    :try_start_1
    invoke-virtual {p1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    .line 434
    .line 435
    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    .line 437
    .line 438
    const-string v0, "no network"

    .line 439
    .line 440
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 441
    .line 442
    .line 443
    goto :goto_5

    .line 444
    :catch_1
    move-exception p2

    .line 445
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 446
    .line 447
    .line 448
    :goto_5
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    invoke-static {v6, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    :cond_b
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$HmNetworkBroadcastReceiver;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 456
    .line 457
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 458
    .line 459
    sget-object p2, Lcom/haima/hmcp/enums/NetWorkState;->NO_NETWORK:Lcom/haima/hmcp/enums/NetWorkState;

    .line 460
    .line 461
    invoke-static {p1, p2}, Lcom/haima/hmcp/business/SendSceneState;->networkCuts(Lcom/haima/hmcp/listeners/HmcpPlayerListener;Lcom/haima/hmcp/enums/NetWorkState;)V

    .line 462
    .line 463
    .line 464
    :cond_c
    :goto_6
    return-void
.end method
