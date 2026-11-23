.class public Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;
.super Lcom/haima/hmcp/beans/VideoDelayInfo;
.source "SourceFile"


# instance fields
.field private final B_2_b:I

.field private final SERVER_ENCODE_DELAY_MAX:I

.field private final SERVER_ENCODE_DELAY_MIN:I

.field private audioChannel:I

.field private audioDeviceState:Ljava/lang/String;

.field private audioEncodeMode:Ljava/lang/String;

.field private audioLevel:I

.field private bitrateAudio:J

.field private boardType:Ljava/lang/String;

.field private final bps_2_kbps:I

.field private codecImplementationName:Ljava/lang/String;

.field private codecName:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private currentRoundTripTime:J

.field private decodeVariance:I

.field private fecPacketsPercent:I

.field private fecRecoveredPercent:I

.field private frameDelay:J

.field private frameHeightReceived:J

.field private frameRateDecode:J

.field private frameRateOutput:J

.field private frameWidthReceived:J

.field private freezeCount:I

.field private jankCount:I

.field private jitterBuffer:J

.field private lastBitRate:J

.field private lastBitRateAudio:J

.field private nacksSent:J

.field private final netLevel:D

.field private final originVideoInfo:Ljava/lang/String;

.field private packetsLost:J

.field private packetsLostRate:Ljava/lang/String;

.field private pliSent:J

.field private realFrameRateDecode:J

.field private remoteToLocalClockTimeOffset:I

.field private renderVariance:I

.field private reportString:Ljava/lang/String;

.field private targetDelay:J

.field private totalBitrate:J

.field private videoInputFps:J

.field private videoSendFps:J

.field private videoSendKbps:J


# direct methods
.method public constructor <init>(Lorg/webrtc/haima/HmFrameDelayInfo;IZ)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/beans/VideoDelayInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x12

    .line 5
    .line 6
    iput v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->SERVER_ENCODE_DELAY_MIN:I

    .line 7
    .line 8
    const/16 v1, 0x16

    .line 9
    .line 10
    iput v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->SERVER_ENCODE_DELAY_MAX:I

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    iput v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->B_2_b:I

    .line 15
    .line 16
    const/16 v1, 0x3e8

    .line 17
    .line 18
    iput v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->bps_2_kbps:I

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    iput v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->audioChannel:I

    .line 22
    .line 23
    const-string v1, "opus"

    .line 24
    .line 25
    iput-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->audioEncodeMode:Ljava/lang/String;

    .line 26
    .line 27
    const-wide/16 v1, -0x1

    .line 28
    .line 29
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->videoInputFps:J

    .line 30
    .line 31
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->videoSendFps:J

    .line 32
    .line 33
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->videoSendKbps:J

    .line 34
    .line 35
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getOriginVideoInfo()Lorg/webrtc/haima/HmOriginVideoInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lorg/webrtc/haima/HmOriginVideoInfo;->getReportString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->originVideoInfo:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getBitrateAudio()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->bitrateAudio:J

    .line 50
    .line 51
    const-wide/16 v3, 0x0

    .line 52
    .line 53
    cmp-long v5, v1, v3

    .line 54
    .line 55
    if-lez v5, :cond_0

    .line 56
    .line 57
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->lastBitRateAudio:J

    .line 58
    .line 59
    :cond_0
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getAudioLevel()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iput v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->audioLevel:I

    .line 64
    .line 65
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getAudioDeviceState()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->audioDeviceState:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    iput-wide v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->timeStamp:J

    .line 76
    .line 77
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getCurrentRoundTripTime()J

    .line 78
    .line 79
    .line 80
    move-result-wide v1

    .line 81
    long-to-int v2, v1

    .line 82
    iput v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->netDelay:I

    .line 83
    .line 84
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getDecodeTime()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iput v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->decodeDelay:I

    .line 89
    .line 90
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getVideoRenderDelay()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iput v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->renderDelay:I

    .line 95
    .line 96
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getDelayTime()J

    .line 97
    .line 98
    .line 99
    move-result-wide v1

    .line 100
    cmp-long v5, v1, v3

    .line 101
    .line 102
    if-lez v5, :cond_1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    move-wide v1, v3

    .line 106
    :goto_0
    iput-wide v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->delayTime:J

    .line 107
    .line 108
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getNowDelayTime()J

    .line 109
    .line 110
    .line 111
    move-result-wide v1

    .line 112
    cmp-long v5, v1, v3

    .line 113
    .line 114
    if-lez v5, :cond_2

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    move-wide v1, v3

    .line 118
    :goto_1
    iput-wide v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->nowDelayTime:J

    .line 119
    .line 120
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getReceiveFrameSize()J

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    long-to-int v2, v1

    .line 125
    iput v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->frameSize:I

    .line 126
    .line 127
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getReceiveFrameSize()J

    .line 128
    .line 129
    .line 130
    move-result-wide v1

    .line 131
    iput-wide v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->receiveFrameSize:J

    .line 132
    .line 133
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getReciveFrameCount()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    iput v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->receiveFrameCount:I

    .line 138
    .line 139
    int-to-long v1, p2

    .line 140
    iput-wide v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->clockDiffUse:J

    .line 141
    .line 142
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getGameFps()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    iput v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->gameFps:I

    .line 147
    .line 148
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getGameRealFps()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    iput v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->gameRealFps:I

    .line 153
    .line 154
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getRealFrameRateDecode()J

    .line 155
    .line 156
    .line 157
    move-result-wide v1

    .line 158
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->realFrameRateDecode:J

    .line 159
    .line 160
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getRealFrameRateOutput()J

    .line 161
    .line 162
    .line 163
    move-result-wide v1

    .line 164
    iput-wide v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->realFrameRateOutput:J

    .line 165
    .line 166
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getFrameRateEglRender()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    iput v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->frameRateEglRender:I

    .line 171
    .line 172
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getPacketsLost()J

    .line 173
    .line 174
    .line 175
    move-result-wide v1

    .line 176
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->packetsLost:J

    .line 177
    .line 178
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getPacketsLostRate()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    iput-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->packetsLostRate:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getContentType()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->contentType:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getFrameHeightReceived()J

    .line 191
    .line 192
    .line 193
    move-result-wide v1

    .line 194
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->frameHeightReceived:J

    .line 195
    .line 196
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getFrameWidthReceived()J

    .line 197
    .line 198
    .line 199
    move-result-wide v1

    .line 200
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->frameWidthReceived:J

    .line 201
    .line 202
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getFrameRateDecode()J

    .line 203
    .line 204
    .line 205
    move-result-wide v1

    .line 206
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->frameRateDecode:J

    .line 207
    .line 208
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getFrameRateOutput()J

    .line 209
    .line 210
    .line 211
    move-result-wide v1

    .line 212
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->frameRateOutput:J

    .line 213
    .line 214
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getJitterBuffer()J

    .line 215
    .line 216
    .line 217
    move-result-wide v1

    .line 218
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->jitterBuffer:J

    .line 219
    .line 220
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getNacksSent()J

    .line 221
    .line 222
    .line 223
    move-result-wide v1

    .line 224
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->nacksSent:J

    .line 225
    .line 226
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getPliSent()J

    .line 227
    .line 228
    .line 229
    move-result-wide v1

    .line 230
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->pliSent:J

    .line 231
    .line 232
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getFreezeCount()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    iput v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->freezeCount:I

    .line 237
    .line 238
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getJankCount()I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    iput v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->jankCount:I

    .line 243
    .line 244
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getJankDuration()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getFreezeDuration()I

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    add-int/2addr v1, v2

    .line 253
    iput v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->jankAndFreezeDuration:I

    .line 254
    .line 255
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getDecodeVariance()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    iput v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->decodeVariance:I

    .line 260
    .line 261
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getRenderVariance()I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    iput v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->renderVariance:I

    .line 266
    .line 267
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getTargetDelay()J

    .line 268
    .line 269
    .line 270
    move-result-wide v1

    .line 271
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->targetDelay:J

    .line 272
    .line 273
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->frameDelay:J

    .line 274
    .line 275
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getCurrentRoundTripTime()J

    .line 276
    .line 277
    .line 278
    move-result-wide v1

    .line 279
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->currentRoundTripTime:J

    .line 280
    .line 281
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getVideoBitrate()J

    .line 282
    .line 283
    .line 284
    move-result-wide v1

    .line 285
    iput-wide v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->bitRate:J

    .line 286
    .line 287
    cmp-long v5, v1, v3

    .line 288
    .line 289
    if-lez v5, :cond_3

    .line 290
    .line 291
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->lastBitRate:J

    .line 292
    .line 293
    :cond_3
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getCodecName()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    iput-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->codecName:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getCodecImplementationName()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    iput-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->codecImplementationName:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getFecPacketsPercent()I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    iput v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->fecPacketsPercent:I

    .line 310
    .line 311
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getFecRecoveredPercent()I

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    iput v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->fecRecoveredPercent:I

    .line 316
    .line 317
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getRemoteToLocalClockOffset()I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    iput v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->remoteToLocalClockTimeOffset:I

    .line 322
    .line 323
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getTotalBitrate()J

    .line 324
    .line 325
    .line 326
    move-result-wide v1

    .line 327
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->totalBitrate:J

    .line 328
    .line 329
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 330
    .line 331
    .line 332
    move-result-wide v1

    .line 333
    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    .line 334
    .line 335
    mul-double v1, v1, v5

    .line 336
    .line 337
    double-to-int v1, v1

    .line 338
    add-int/2addr v1, v0

    .line 339
    iput v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->serverEncodeDelay:I

    .line 340
    .line 341
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->estimateNetLevel()I

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    int-to-double v0, v0

    .line 346
    iput-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->netLevel:D

    .line 347
    .line 348
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getStreamerInputFps()J

    .line 349
    .line 350
    .line 351
    move-result-wide v0

    .line 352
    iput-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->videoInputFps:J

    .line 353
    .line 354
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getStreamerSendFps()J

    .line 355
    .line 356
    .line 357
    move-result-wide v0

    .line 358
    iput-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->videoSendFps:J

    .line 359
    .line 360
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getStreamerSendKbps()J

    .line 361
    .line 362
    .line 363
    move-result-wide v0

    .line 364
    iput-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->videoSendKbps:J

    .line 365
    .line 366
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getVideoCaptureDelay()I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/beans/VideoDelayInfo;->setVideoCaptureDelay(I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getVideoEncodeDelay()I

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/beans/VideoDelayInfo;->setVideoEncodeDelay(I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getVideoDecodeDelay()I

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/beans/VideoDelayInfo;->setVideoDecodeDelay(I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getVideoRenderDelay()I

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/beans/VideoDelayInfo;->setVideoRenderDelay(I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getAudioCaptureDelay()I

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/beans/VideoDelayInfo;->setAudioCaptureDelay(I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getAudioEncodeDelay()I

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/beans/VideoDelayInfo;->setAudioEncodeDelay(I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getAudioDecodeDelay()I

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/beans/VideoDelayInfo;->setAudioDecodeDelay(I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getAudioRenderDelay()I

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/beans/VideoDelayInfo;->setAudioRenderDelay(I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getNetJitterDelay()I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/beans/VideoDelayInfo;->setJitterDelay(I)V

    .line 427
    .line 428
    .line 429
    if-eqz p3, :cond_6

    .line 430
    .line 431
    new-instance p3, Ljava/lang/StringBuffer;

    .line 432
    .line 433
    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-static {}, Lcom/haima/hmcp/utils/ping/PingManager;->getInstance()Lcom/haima/hmcp/utils/ping/PingManager;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ping/PingManager;->getPingResult()Lcom/haima/hmcp/utils/ping/PingResult;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    const-string v1, "|"

    .line 445
    .line 446
    if-eqz v0, :cond_4

    .line 447
    .line 448
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ping/PingResult;->isTimeout()Z

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    if-nez v2, :cond_4

    .line 453
    .line 454
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ping/PingResult;->isValidate()Z

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    if-eqz v2, :cond_4

    .line 459
    .line 460
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ping/PingResult;->toReportString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    .line 469
    .line 470
    goto :goto_2

    .line 471
    :cond_4
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    .line 473
    .line 474
    const-string v0, "0-0-0-0"

    .line 475
    .line 476
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    .line 478
    .line 479
    :goto_2
    iget-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoFps:J

    .line 480
    .line 481
    cmp-long v2, v0, v3

    .line 482
    .line 483
    if-nez v2, :cond_5

    .line 484
    .line 485
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->gameRealFps:I

    .line 486
    .line 487
    int-to-long v0, v0

    .line 488
    iput-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoFps:J

    .line 489
    .line 490
    :cond_5
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object p3

    .line 494
    invoke-virtual {p1, p2, p3}, Lorg/webrtc/haima/HmFrameDelayInfo;->toReportString(ILjava/lang/String;)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->reportString:Ljava/lang/String;

    .line 499
    .line 500
    :cond_6
    return-void
.end method


# virtual methods
.method public getAudioBitrate()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->bitrateAudio:J

    .line 2
    .line 3
    const-wide/16 v2, 0x8

    .line 4
    .line 5
    mul-long v0, v0, v2

    .line 6
    .line 7
    const-wide/16 v2, 0x3e8

    .line 8
    .line 9
    div-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public getAudioCaptureDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->audioCaptureDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getAudioEncodeDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->audioEncodeDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getCodecImplementationName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->codecImplementationName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCodecName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->codecName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrameRateDecode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->frameRateDecode:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFrameRateOutput()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->frameRateOutput:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getJitterBuffer()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->jitterBuffer:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPacketsLostRate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->packetsLostRate:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReceivedBitrate()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->totalBitrate:J

    .line 2
    .line 3
    const-wide/16 v2, 0x8

    .line 4
    .line 5
    mul-long v0, v0, v2

    .line 6
    .line 7
    const-wide/16 v2, 0x3e8

    .line 8
    .line 9
    div-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public getRoundTrip()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->currentRoundTripTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVideoCaptureDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoCaptureDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoEncodeDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoEncodeDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoInputFps()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->videoInputFps:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVideoSendBitrate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->videoSendKbps:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVideoSendFps()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->videoSendFps:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setBoardType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->boardType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGameRealFps(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->gameRealFps:I

    .line 2
    .line 3
    return-void
.end method

.method public setRealFrameRateDecode(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->realFrameRateDecode:J

    .line 2
    .line 3
    return-void
.end method

.method public setRealFrameRateOutput(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->realFrameRateOutput:J

    .line 2
    .line 3
    return-void
.end method

.method public toReportString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->reportString:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ""

    .line 7
    .line 8
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "BitrateAudio \uff1a"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->bitrateAudio:J

    .line 12
    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    cmp-long v5, v1, v3

    .line 16
    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    iget-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->lastBitRateAudio:J

    .line 20
    .line 21
    :cond_0
    invoke-static {v1, v2}, Lcom/haima/hmcp/beans/VideoDelayInfo;->formatedSize(J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    const-string v1, " | "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    const-string v2, "audioChannel \uff1a"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->audioChannel:I

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    const-string v2, "\n"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    const-string v5, "audioEncodeMode \uff1a"

    .line 49
    .line 50
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    iget-object v5, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->audioEncodeMode:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    .line 60
    .line 61
    const-string v5, "audioLevel \uff1a"

    .line 62
    .line 63
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    .line 65
    .line 66
    iget v5, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->audioLevel:I

    .line 67
    .line 68
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    .line 73
    .line 74
    const-string v5, "BitRate : "

    .line 75
    .line 76
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    .line 78
    .line 79
    iget-wide v6, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->bitRate:J

    .line 80
    .line 81
    cmp-long v8, v6, v3

    .line 82
    .line 83
    if-nez v8, :cond_1

    .line 84
    .line 85
    iget-wide v6, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->lastBitRate:J

    .line 86
    .line 87
    :cond_1
    invoke-static {v6, v7}, Lcom/haima/hmcp/beans/VideoDelayInfo;->formatedSize(J)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    .line 96
    .line 97
    const-string v6, "Resolution \uff1a"

    .line 98
    .line 99
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    .line 101
    .line 102
    iget-wide v6, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->frameWidthReceived:J

    .line 103
    .line 104
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 105
    .line 106
    .line 107
    const-string v6, " * "

    .line 108
    .line 109
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    .line 111
    .line 112
    iget-wide v6, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->frameHeightReceived:J

    .line 113
    .line 114
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    .line 119
    .line 120
    const-string v6, "CodecName : "

    .line 121
    .line 122
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    .line 124
    .line 125
    iget-object v6, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->codecName:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    .line 132
    .line 133
    const-string v6, "CodecImp : "

    .line 134
    .line 135
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    .line 137
    .line 138
    iget-object v6, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->codecImplementationName:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    .line 145
    .line 146
    const-string v6, "packetsLost : "

    .line 147
    .line 148
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    .line 150
    .line 151
    iget-wide v6, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->packetsLost:J

    .line 152
    .line 153
    cmp-long v8, v6, v3

    .line 154
    .line 155
    if-gez v8, :cond_2

    .line 156
    .line 157
    move-wide v6, v3

    .line 158
    :cond_2
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    .line 163
    .line 164
    const-string v6, "ContentType : "

    .line 165
    .line 166
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    .line 168
    .line 169
    iget-object v6, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->contentType:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    .line 176
    .line 177
    const-string v6, "CurDelay : "

    .line 178
    .line 179
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    .line 181
    .line 182
    iget-wide v6, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->delayTime:J

    .line 183
    .line 184
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 185
    .line 186
    .line 187
    const-string v6, "ms\n"

    .line 188
    .line 189
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    .line 191
    .line 192
    const-string v7, "Decode : "

    .line 193
    .line 194
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    .line 196
    .line 197
    iget v7, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->decodeDelay:I

    .line 198
    .line 199
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    .line 204
    .line 205
    const-string v7, "RateDecoded : "

    .line 206
    .line 207
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    .line 209
    .line 210
    iget-wide v7, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->frameRateDecode:J

    .line 211
    .line 212
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    .line 217
    .line 218
    const-string v1, "RateOutput : "

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    .line 222
    .line 223
    iget-wide v7, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->frameRateOutput:J

    .line 224
    .line 225
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    .line 230
    .line 231
    const-string v1, "RateReceived : "

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    .line 235
    .line 236
    iget v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->gameFps:I

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    .line 243
    .line 244
    const-string v1, "JitterBuffer : "

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    .line 248
    .line 249
    iget-wide v7, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->jitterBuffer:J

    .line 250
    .line 251
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    .line 256
    .line 257
    const-string v1, "NacksSent : "

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    .line 261
    .line 262
    iget-wide v7, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->nacksSent:J

    .line 263
    .line 264
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    .line 269
    .line 270
    const-string v1, "RenderDelay : "

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    .line 274
    .line 275
    iget v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->renderDelay:I

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 278
    .line 279
    .line 280
    const-string v1, "ms | "

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    .line 284
    .line 285
    const-string v1, "TargetDelay : "

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    .line 289
    .line 290
    iget-wide v7, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->targetDelay:J

    .line 291
    .line 292
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    .line 297
    .line 298
    const-string v1, "CRTTime : "

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    .line 302
    .line 303
    iget-wide v7, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->currentRoundTripTime:J

    .line 304
    .line 305
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    .line 313
    .line 314
    iget-wide v5, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->bitRate:J

    .line 315
    .line 316
    cmp-long v1, v5, v3

    .line 317
    .line 318
    if-nez v1, :cond_3

    .line 319
    .line 320
    iget-wide v5, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->lastBitRate:J

    .line 321
    .line 322
    :cond_3
    invoke-static {v5, v6}, Lcom/haima/hmcp/beans/VideoDelayInfo;->formatedSize(J)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    .line 331
    .line 332
    const-string v1, "PacketsLostRate : "

    .line 333
    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    .line 336
    .line 337
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->packetsLostRate:Ljava/lang/String;

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    .line 344
    .line 345
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->boardType:Ljava/lang/String;

    .line 346
    .line 347
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-nez v1, :cond_4

    .line 352
    .line 353
    const-string v1, "BoardType : "

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    .line 357
    .line 358
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->boardType:Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    .line 365
    .line 366
    :cond_4
    const-string v1, "ServerEncodeDelay : "

    .line 367
    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    .line 370
    .line 371
    iget v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->serverEncodeDelay:I

    .line 372
    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    .line 378
    .line 379
    const-string v1, "VideoInputFps : "

    .line 380
    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    .line 383
    .line 384
    iget-wide v3, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->videoInputFps:J

    .line 385
    .line 386
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    .line 391
    .line 392
    const-string v1, "VideoSendFps : "

    .line 393
    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    .line 396
    .line 397
    iget-wide v3, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->videoSendFps:J

    .line 398
    .line 399
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    .line 404
    .line 405
    const-string v1, "VideoSendKbps : "

    .line 406
    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    .line 409
    .line 410
    iget-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->videoSendKbps:J

    .line 411
    .line 412
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    return-object v0
.end method
