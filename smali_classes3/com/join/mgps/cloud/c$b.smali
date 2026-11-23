.class public final Lcom/join/mgps/cloud/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/listener/MessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/cloud/c;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMMessageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMMessageManager.kt\ncom/join/mgps/cloud/HMMessageManager$init$messageHandler$1\n+ 2 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n*L\n1#1,177:1\n10#2:178\n10#2:179\n10#2:180\n10#2:181\n10#2:182\n10#2:183\n*S KotlinDebug\n*F\n+ 1 HMMessageManager.kt\ncom/join/mgps/cloud/HMMessageManager$init$messageHandler$1\n*L\n95#1:178\n101#1:179\n105#1:180\n109#1:181\n113#1:182\n118#1:183\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHMMessageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMMessageManager.kt\ncom/join/mgps/cloud/HMMessageManager$init$messageHandler$1\n+ 2 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n*L\n1#1,177:1\n10#2:178\n10#2:179\n10#2:180\n10#2:181\n10#2:182\n10#2:183\n*S KotlinDebug\n*F\n+ 1 HMMessageManager.kt\ncom/join/mgps/cloud/HMMessageManager$init$messageHandler$1\n*L\n95#1:178\n101#1:179\n105#1:180\n109#1:181\n113#1:182\n118#1:183\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/cloud/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/cloud/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/cloud/c$b;->a:Lcom/join/mgps/cloud/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic getSchedulerMessageHandlerObserveOn()Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;
    .locals 1

    .line 1
    invoke-static {p0}, Lw2/a;->a(Lcom/cloudplay/messagesdk/listener/MessageHandler;)Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    move-result-object v0

    return-object v0
.end method

.method public onBinaryMessage([B)V
    .locals 0

    return-void
.end method

.method public synthetic onReady()V
    .locals 0

    .line 1
    invoke-static {p0}, Lw2/a;->b(Lcom/cloudplay/messagesdk/listener/MessageHandler;)V

    return-void
.end method

.method public onTextMessage(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/cloud/c$b;->a:Lcom/join/mgps/cloud/c;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "onTextMessage: "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    filled-new-array {v2}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Lcom/join/mgps/cloud/c;->c(Lcom/join/mgps/cloud/c;[Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v3, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 43
    :goto_1
    if-eqz v3, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_3

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    const-string v4, ""

    .line 59
    .line 60
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/4 v3, 0x0

    .line 65
    if-eqz v0, :cond_a

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    sparse-switch v4, :sswitch_data_0

    .line 72
    .line 73
    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    :sswitch_0
    const-string v4, "uploadCloudArchive"

    .line 77
    .line 78
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_4

    .line 83
    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :cond_4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-class v3, Lcom/join/mgps/cloud/bean/HMMessage$UploadCloudArchive;

    .line 91
    .line 92
    invoke-virtual {v0, p1, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :sswitch_1
    const-string v4, "connect"

    .line 99
    .line 100
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_5

    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :cond_5
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-class v3, Lcom/join/mgps/cloud/bean/HMMessage$Connect;

    .line 113
    .line 114
    invoke-virtual {v0, p1, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    goto/16 :goto_2

    .line 119
    .line 120
    :sswitch_2
    const-string v4, "start"

    .line 121
    .line 122
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_6

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_6
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-class v3, Lcom/join/mgps/cloud/bean/HMMessage$Start;

    .line 134
    .line 135
    invoke-virtual {v0, p1, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    goto :goto_2

    .line 140
    :sswitch_3
    const-string v4, "userInfo"

    .line 141
    .line 142
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_7

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/cloud/c$b;->a:Lcom/join/mgps/cloud/c;

    .line 150
    .line 151
    new-array v3, v2, [Ljava/lang/String;

    .line 152
    .line 153
    const-string v4, "parse ACTION_USER_INFO"

    .line 154
    .line 155
    aput-object v4, v3, v1

    .line 156
    .line 157
    invoke-static {v0, v3}, Lcom/join/mgps/cloud/c;->c(Lcom/join/mgps/cloud/c;[Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-class v3, Lcom/join/mgps/cloud/bean/HMMessage$UserInfo;

    .line 165
    .line 166
    invoke-virtual {v0, p1, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    goto :goto_2

    .line 171
    :sswitch_4
    const-string v4, "downloadCloudArchive"

    .line 172
    .line 173
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_8

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_8
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    const-class v3, Lcom/join/mgps/cloud/bean/HMMessage$DownloadCloudArchive;

    .line 185
    .line 186
    invoke-virtual {v0, p1, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    goto :goto_2

    .line 191
    :sswitch_5
    const-string v4, "config"

    .line 192
    .line 193
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_9

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_9
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    const-class v4, Lcom/join/mgps/cloud/bean/HMMessage$Config;

    .line 205
    .line 206
    invoke-virtual {v0, p1, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    check-cast p1, Lcom/join/mgps/cloud/bean/HMMessage$Config;

    .line 211
    .line 212
    if-eqz p1, :cond_a

    .line 213
    .line 214
    iget-object v0, p0, Lcom/join/mgps/cloud/c$b;->a:Lcom/join/mgps/cloud/c;

    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/join/mgps/cloud/c;->d()Lkotlinx/coroutines/flow/j;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {p1}, Lcom/join/mgps/cloud/bean/HMMessage$Config;->getConfig()Lcom/join/mgps/cloud/bean/ConfigInfo;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-static {p1}, Ln6/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/i;->d(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    :cond_a
    :goto_2
    if-nez v3, :cond_b

    .line 237
    .line 238
    return-void

    .line 239
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/cloud/c$b;->a:Lcom/join/mgps/cloud/c;

    .line 240
    .line 241
    new-array v0, v2, [Ljava/lang/String;

    .line 242
    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v4, "post: "

    .line 249
    .line 250
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-static {v3}, Ln6/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    aput-object v2, v0, v1

    .line 265
    .line 266
    invoke-static {p1, v0}, Lcom/join/mgps/cloud/c;->c(Lcom/join/mgps/cloud/c;[Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {p1, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :catchall_0
    move-exception p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 279
    .line 280
    .line 281
    :goto_3
    return-void

    .line 282
    nop

    .line 283
    :sswitch_data_0
    .sparse-switch
        -0x50c07cbe -> :sswitch_5
        -0x21864a8b -> :sswitch_4
        -0xfe718e7 -> :sswitch_3
        0x68ac462 -> :sswitch_2
        0x38b478ea -> :sswitch_1
        0x4e918d6e -> :sswitch_0
    .end sparse-switch
.end method
