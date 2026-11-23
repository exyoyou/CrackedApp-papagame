.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_e

    .line 5
    .line 6
    if-eq v0, v1, :cond_d

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    if-eq v0, v2, :cond_c

    .line 10
    .line 11
    const/4 v3, 0x5

    .line 12
    if-eq v0, v3, :cond_a

    .line 13
    .line 14
    const/4 v3, 0x7

    .line 15
    const-string v4, "AbsIjkVideoView"

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-eq v0, v3, :cond_8

    .line 19
    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    if-eq v0, v3, :cond_7

    .line 23
    .line 24
    const/16 v3, 0xa

    .line 25
    .line 26
    if-eq v0, v3, :cond_6

    .line 27
    .line 28
    const/16 v3, 0xb

    .line 29
    .line 30
    if-eq v0, v3, :cond_1

    .line 31
    .line 32
    const/16 v1, 0x16

    .line 33
    .line 34
    if-eq v0, v1, :cond_5

    .line 35
    .line 36
    const/16 v1, 0xde

    .line 37
    .line 38
    if-eq v0, v1, :cond_0

    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 43
    .line 44
    iget-boolean v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isGetCloudServiceSuccess:Z

    .line 45
    .line 46
    if-eqz v1, :cond_11

    .line 47
    .line 48
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->release(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 58
    .line 59
    iput v2, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isAudioMute()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->turnOnSound()V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->turnOnVideo()V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 82
    .line 83
    iget-boolean v0, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isReconnectStream:Z

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iput-boolean v5, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isReconnectStream:Z

    .line 88
    .line 89
    :cond_3
    sget-object p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 90
    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    iput-boolean v1, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isTurnOnVideoSuccess:Z

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    const-string p1, "cloudPlayInfo == null,can\'t set cloudPlayInfo.isTurnOnVideoSuccess = true"

    .line 97
    .line 98
    invoke-static {v4, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    const-string p1, "13063"

    .line 102
    .line 103
    const-string v0, "op5 reconnect, turn on video"

    .line 104
    .line 105
    invoke-static {p1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v0, "volume change:"

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mAppContext:Landroid/content/Context;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/haima/hmcp/utils/VolumeUtils;->getCurrentMediaVolume(Landroid/content/Context;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const-string v0, "13425"

    .line 134
    .line 135
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_1

    .line 139
    .line 140
    :cond_6
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->hideScreenShot()V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_1

    .line 146
    .line 147
    :cond_7
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 148
    .line 149
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p1, Ljava/lang/Float;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setScreenBrightness(F)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_8
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 162
    .line 163
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 167
    .line 168
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 172
    .line 173
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 179
    .line 180
    .line 181
    const-string p1, "\u7b2c\u4e00\u5e27\u5230\u8fbe:\u5224\u65ad\u952e\u76d8\u72b6\u6001"

    .line 182
    .line 183
    invoke-static {v4, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 187
    .line 188
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->localKeyboardModel:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->isShowInput()Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_9

    .line 195
    .line 196
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 197
    .line 198
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->localKeyboardModel:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->requestFocus()V

    .line 201
    .line 202
    .line 203
    :cond_9
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->correctRenderRotation()Z

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_a
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 210
    .line 211
    iget-object v0, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mVideoDelayCallback:Lcom/haima/hmcp/listeners/IVideoDelayCallback;

    .line 212
    .line 213
    if-eqz v0, :cond_11

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getClockDiffVideoLatencyInfo()Lcom/haima/hmcp/beans/VideoDelayInfo;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    if-eqz p1, :cond_b

    .line 220
    .line 221
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 222
    .line 223
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mVideoDelayCallback:Lcom/haima/hmcp/listeners/IVideoDelayCallback;

    .line 224
    .line 225
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/IVideoDelayCallback;->onVideoDelayCallback(Lcom/haima/hmcp/beans/VideoDelayInfo;)V

    .line 226
    .line 227
    .line 228
    :cond_b
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 229
    .line 230
    iget-object v0, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpHandler:Landroid/os/Handler;

    .line 231
    .line 232
    iget-wide v1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mIntervalMillis:J

    .line 233
    .line 234
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_c
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->reconnection()V

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_d
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doPlayerRelease()V

    .line 247
    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_e
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 251
    .line 252
    iget v0, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 253
    .line 254
    const/4 v2, 0x3

    .line 255
    if-le v0, v2, :cond_f

    .line 256
    .line 257
    iget-boolean v0, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isNetworkOk:Z

    .line 258
    .line 259
    if-nez v0, :cond_10

    .line 260
    .line 261
    :cond_f
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->rePlay()V

    .line 262
    .line 263
    .line 264
    :cond_10
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$33;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 265
    .line 266
    iput-boolean v1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isNetworkOk:Z

    .line 267
    .line 268
    :cond_11
    :goto_1
    return-void
.end method
