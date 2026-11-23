.class Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/haima/ijk/media/player/IMediaPlayer;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$902(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;J)J

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurrentState(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const-string v2, "videoUrl"

    .line 27
    .line 28
    const-string v3, "success"

    .line 29
    .line 30
    const-string v4, ""

    .line 31
    .line 32
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1100(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    invoke-virtual/range {v1 .. v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/4 v1, 0x1

    .line 71
    iput-boolean v1, v0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isVideoConnectSuccess:Z

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "cloudPlayInfo == null,can\'t set ijkVideoView.getCloudPlayInfo().isVideoConnectSuccess = true"

    .line 79
    .line 80
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    const-string v0, "12034"

    .line 84
    .line 85
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$400()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v1, "OnPreparedListener===onPrepared()==SUCCESS "

    .line 93
    .line 94
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1200(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1200(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 112
    .line 113
    iget-object v1, v1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 114
    .line 115
    invoke-interface {v0, v1}, Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/haima/ijk/media/player/IMediaPlayer;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 119
    .line 120
    invoke-interface {p1}, Ltv/haima/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-static {v0, v1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$502(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 128
    .line 129
    invoke-interface {p1}, Ltv/haima/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    invoke-static {v0, p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$602(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 137
    .line 138
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1300(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_4

    .line 143
    .line 144
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->seekTo(I)V

    .line 147
    .line 148
    .line 149
    :cond_4
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 150
    .line 151
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$500(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    const/4 v1, 0x3

    .line 156
    if-eqz v0, :cond_8

    .line 157
    .line 158
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 159
    .line 160
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$600(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_8

    .line 165
    .line 166
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 167
    .line 168
    iget-object v0, v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 169
    .line 170
    if-eqz v0, :cond_9

    .line 171
    .line 172
    invoke-interface {v0}, Lcom/haima/hmcp/rtmp/widgets/IRenderView;->shouldWaitForResize()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_6

    .line 177
    .line 178
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 179
    .line 180
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1400(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 185
    .line 186
    invoke-static {v2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$500(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-ne v0, v2, :cond_5

    .line 191
    .line 192
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 193
    .line 194
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1500(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 199
    .line 200
    invoke-static {v2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$600(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-ne v0, v2, :cond_5

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_5
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 208
    .line 209
    iget-object v0, p1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 210
    .line 211
    instance-of v0, v0, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;

    .line 212
    .line 213
    if-eqz v0, :cond_9

    .line 214
    .line 215
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmTargetState()I

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-ne p1, v1, :cond_9

    .line 224
    .line 225
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->start()V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 232
    .line 233
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmTargetState()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-ne v0, v1, :cond_7

    .line 242
    .line 243
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 244
    .line 245
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->start()V

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_7
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 250
    .line 251
    invoke-virtual {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->isPlaying()Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-nez v0, :cond_9

    .line 256
    .line 257
    if-nez p1, :cond_9

    .line 258
    .line 259
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 260
    .line 261
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getCurrentPosition()I

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_8
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 266
    .line 267
    invoke-static {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmTargetState()I

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    if-ne p1, v1, :cond_9

    .line 276
    .line 277
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;->this$0:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 278
    .line 279
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->start()V

    .line 280
    .line 281
    .line 282
    :cond_9
    :goto_2
    return-void
.end method
