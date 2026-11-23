.class public Lorg/hmwebrtc/CompositeVideoDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoDecoder;


# static fields
.field private static TAG:Ljava/lang/String; = "CompositeVideoDecoder"


# instance fields
.field private activeVideoDecoder:Lorg/hmwebrtc/VideoDecoder;

.field private directSurfaceVideoDecoder:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

.field private isSurfaceTextureVideoDecoder:Z

.field private keyFrameRequired:Z

.field private mDecodeCallback:Lorg/hmwebrtc/VideoDecoder$Callback;

.field private mLastKeyFrameRequiredTimeMs:J

.field private mPendingInitDSDecoder:Z

.field private mRenderView:Lorg/hmwebrtc/DirectSurfaceHelper;

.field private needToRequireKeyFrame:Z

.field private surfaceTextureVideoDecoder:Lorg/hmwebrtc/AndroidVideoDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/hmwebrtc/AndroidVideoDecoder;Lorg/hmwebrtc/DirectSurfaceVideoDecoder;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->needToRequireKeyFrame:Z

    .line 6
    .line 7
    sget-object v0, Lorg/hmwebrtc/CompositeVideoDecoder;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "CompositeVideoDecoder Constructor"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->surfaceTextureVideoDecoder:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 15
    .line 16
    iput-object p2, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->directSurfaceVideoDecoder:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 17
    .line 18
    check-cast p3, Lorg/hmwebrtc/DirectSurfaceHelper;

    .line 19
    .line 20
    iput-object p3, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mRenderView:Lorg/hmwebrtc/DirectSurfaceHelper;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public synthetic createNativeVideoDecoder()J
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/hmwebrtc/p0;->a(Lorg/hmwebrtc/VideoDecoder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public decode(Lorg/hmwebrtc/EncodedImage;Lorg/hmwebrtc/VideoDecoder$DecodeInfo;)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 10

    .line 1
    iget-boolean v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->isSurfaceTextureVideoDecoder:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mRenderView:Lorg/hmwebrtc/DirectSurfaceHelper;

    .line 7
    .line 8
    invoke-interface {v0}, Lorg/hmwebrtc/DirectSurfaceHelper;->getSurface()Landroid/view/Surface;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    iget-object v0, p1, Lorg/hmwebrtc/EncodedImage;->frameType:Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 15
    .line 16
    sget-object v2, Lorg/hmwebrtc/EncodedImage$FrameType;->VideoFrameKey:Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->needToRequireKeyFrame:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    sget-object v0, Lorg/hmwebrtc/CompositeVideoDecoder;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v4, "decode() - key frame required first"

    .line 28
    .line 29
    invoke-static {v0, v4}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-boolean v1, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->needToRequireKeyFrame:Z

    .line 33
    .line 34
    iput-boolean v3, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->keyFrameRequired:Z

    .line 35
    .line 36
    iput-boolean v3, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mPendingInitDSDecoder:Z

    .line 37
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    iput-wide v4, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mLastKeyFrameRequiredTimeMs:J

    .line 43
    .line 44
    const/16 v0, 0x34b1

    .line 45
    .line 46
    const-string v4, "require a key frame becaused of surface is arrived"

    .line 47
    .line 48
    invoke-static {v0, v4}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p1, Lorg/hmwebrtc/EncodedImage;->frameType:Lorg/hmwebrtc/EncodedImage$FrameType;

    .line 52
    .line 53
    if-ne v0, v2, :cond_3

    .line 54
    .line 55
    sget-object v0, Lorg/hmwebrtc/CompositeVideoDecoder;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    const-string v2, "decode() - received the first key frame"

    .line 58
    .line 59
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-boolean v1, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mPendingInitDSDecoder:Z

    .line 63
    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    const/16 v0, 0x34b2

    .line 69
    .line 70
    const-string v2, "received a key frame,begin to release EGL decoder"

    .line 71
    .line 72
    invoke-static {v0, v2}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->activeVideoDecoder:Lorg/hmwebrtc/VideoDecoder;

    .line 76
    .line 77
    invoke-interface {v0}, Lorg/hmwebrtc/VideoDecoder;->release()Lorg/hmwebrtc/VideoCodecStatus;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v2, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 82
    .line 83
    if-eq v0, v2, :cond_1

    .line 84
    .line 85
    sget-object p1, Lorg/hmwebrtc/CompositeVideoDecoder;->TAG:Ljava/lang/String;

    .line 86
    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v1, "decode() - SurfaceTextureVideoDecoder.release() failed:"

    .line 93
    .line 94
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 109
    .line 110
    .line 111
    move-result-wide v6

    .line 112
    sub-long/2addr v6, v4

    .line 113
    long-to-int v0, v6

    .line 114
    sget-object v4, Lorg/hmwebrtc/CompositeVideoDecoder;->TAG:Ljava/lang/String;

    .line 115
    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v6, "decode() - SurfaceTextureVideoDecoder.release() successfully:"

    .line 122
    .line 123
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v4, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 137
    .line 138
    .line 139
    move-result-wide v4

    .line 140
    const/16 v0, 0x34b3

    .line 141
    .line 142
    const-string v6, "begin to release EGL context"

    .line 143
    .line 144
    invoke-static {v0, v6}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mRenderView:Lorg/hmwebrtc/DirectSurfaceHelper;

    .line 148
    .line 149
    invoke-interface {v0}, Lorg/hmwebrtc/DirectSurfaceHelper;->releaseFromDirectSurface()V

    .line 150
    .line 151
    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 153
    .line 154
    .line 155
    move-result-wide v6

    .line 156
    sub-long/2addr v6, v4

    .line 157
    long-to-int v0, v6

    .line 158
    sget-object v4, Lorg/hmwebrtc/CompositeVideoDecoder;->TAG:Ljava/lang/String;

    .line 159
    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v6, "decode() - mRenderView.release() successfully:"

    .line 166
    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v4, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    new-instance v0, Lorg/hmwebrtc/VideoDecoder$Settings;

    .line 181
    .line 182
    invoke-virtual {p0}, Lorg/hmwebrtc/CompositeVideoDecoder;->getDecodedWidth()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    invoke-virtual {p0}, Lorg/hmwebrtc/CompositeVideoDecoder;->getDecodedHeight()I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    invoke-direct {v0, v3, v4, v5}, Lorg/hmwebrtc/VideoDecoder$Settings;-><init>(III)V

    .line 191
    .line 192
    .line 193
    iput-boolean v1, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->isSurfaceTextureVideoDecoder:Z

    .line 194
    .line 195
    iget-object v3, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->directSurfaceVideoDecoder:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 196
    .line 197
    iput-object v3, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->activeVideoDecoder:Lorg/hmwebrtc/VideoDecoder;

    .line 198
    .line 199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 200
    .line 201
    .line 202
    move-result-wide v3

    .line 203
    const/16 v5, 0x34b4

    .line 204
    .line 205
    const-string v6, "begin to init a direct surface decoder"

    .line 206
    .line 207
    invoke-static {v5, v6}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v5, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->activeVideoDecoder:Lorg/hmwebrtc/VideoDecoder;

    .line 211
    .line 212
    iget-object v6, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mDecodeCallback:Lorg/hmwebrtc/VideoDecoder$Callback;

    .line 213
    .line 214
    invoke-interface {v5, v0, v6}, Lorg/hmwebrtc/VideoDecoder;->initDecode(Lorg/hmwebrtc/VideoDecoder$Settings;Lorg/hmwebrtc/VideoDecoder$Callback;)Lorg/hmwebrtc/VideoCodecStatus;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    if-eq v5, v2, :cond_2

    .line 219
    .line 220
    sget-object v6, Lorg/hmwebrtc/CompositeVideoDecoder;->TAG:Ljava/lang/String;

    .line 221
    .line 222
    new-instance v7, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    const-string v8, "decode() - directSurfaceVideoDecoder.initDecode() failed:"

    .line 228
    .line 229
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-static {v6, v5}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-object v5, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->surfaceTextureVideoDecoder:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 243
    .line 244
    iput-object v5, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->activeVideoDecoder:Lorg/hmwebrtc/VideoDecoder;

    .line 245
    .line 246
    const/16 v5, 0x34b0

    .line 247
    .line 248
    const-string v6, "init surfaceTexture becaused of directSurfaceVideoDecoder initial failed"

    .line 249
    .line 250
    invoke-static {v5, v6}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object v5, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->activeVideoDecoder:Lorg/hmwebrtc/VideoDecoder;

    .line 254
    .line 255
    iget-object v6, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mDecodeCallback:Lorg/hmwebrtc/VideoDecoder$Callback;

    .line 256
    .line 257
    invoke-interface {v5, v0, v6}, Lorg/hmwebrtc/VideoDecoder;->initDecode(Lorg/hmwebrtc/VideoDecoder$Settings;Lorg/hmwebrtc/VideoDecoder$Callback;)Lorg/hmwebrtc/VideoCodecStatus;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    if-eq v0, v2, :cond_2

    .line 262
    .line 263
    return-object v0

    .line 264
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 265
    .line 266
    .line 267
    move-result-wide v5

    .line 268
    sub-long/2addr v5, v3

    .line 269
    long-to-int v0, v5

    .line 270
    const/16 v2, 0x34b5

    .line 271
    .line 272
    const-string v3, "the direct surface decoder initialized successfully"

    .line 273
    .line 274
    invoke-static {v2, v3}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    sget-object v2, Lorg/hmwebrtc/CompositeVideoDecoder;->TAG:Ljava/lang/String;

    .line 278
    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string v4, "decode() - directSurfaceVideoDecoder.initDecode() successfully:"

    .line 285
    .line 286
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-static {v2, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto :goto_0

    .line 300
    :cond_3
    iget-boolean v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mPendingInitDSDecoder:Z

    .line 301
    .line 302
    if-eqz v0, :cond_5

    .line 303
    .line 304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 305
    .line 306
    .line 307
    move-result-wide v4

    .line 308
    iget-wide v6, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mLastKeyFrameRequiredTimeMs:J

    .line 309
    .line 310
    sub-long v6, v4, v6

    .line 311
    .line 312
    const-wide/16 v8, 0x3e8

    .line 313
    .line 314
    cmp-long v0, v6, v8

    .line 315
    .line 316
    if-lez v0, :cond_5

    .line 317
    .line 318
    iput-boolean v3, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->keyFrameRequired:Z

    .line 319
    .line 320
    iput-wide v4, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mLastKeyFrameRequiredTimeMs:J

    .line 321
    .line 322
    iput-boolean v1, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mPendingInitDSDecoder:Z

    .line 323
    .line 324
    sget-object v0, Lorg/hmwebrtc/CompositeVideoDecoder;->TAG:Ljava/lang/String;

    .line 325
    .line 326
    const-string v2, "DSDecoder request key frame!"

    .line 327
    .line 328
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    goto :goto_0

    .line 332
    :cond_4
    iget-object v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mRenderView:Lorg/hmwebrtc/DirectSurfaceHelper;

    .line 333
    .line 334
    invoke-interface {v0}, Lorg/hmwebrtc/DirectSurfaceHelper;->getSurface()Landroid/view/Surface;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    if-nez v0, :cond_5

    .line 339
    .line 340
    sget-object p1, Lorg/hmwebrtc/CompositeVideoDecoder;->TAG:Ljava/lang/String;

    .line 341
    .line 342
    const-string p2, "decode() - directSurfaceVideoDecoder() NO_OUTPUT:"

    .line 343
    .line 344
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->NO_OUTPUT:Lorg/hmwebrtc/VideoCodecStatus;

    .line 348
    .line 349
    return-object p1

    .line 350
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->activeVideoDecoder:Lorg/hmwebrtc/VideoDecoder;

    .line 351
    .line 352
    invoke-interface {v0, p1, p2}, Lorg/hmwebrtc/VideoDecoder;->decode(Lorg/hmwebrtc/EncodedImage;Lorg/hmwebrtc/VideoDecoder$DecodeInfo;)Lorg/hmwebrtc/VideoCodecStatus;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    iget-boolean p2, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->keyFrameRequired:Z

    .line 357
    .line 358
    if-eqz p2, :cond_6

    .line 359
    .line 360
    iput-boolean v1, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->keyFrameRequired:Z

    .line 361
    .line 362
    sget-object p1, Lorg/hmwebrtc/CompositeVideoDecoder;->TAG:Ljava/lang/String;

    .line 363
    .line 364
    const-string p2, "decode() - return REQUEST_KEYFRAME"

    .line 365
    .line 366
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->REQUEST_KEYFRAME:Lorg/hmwebrtc/VideoCodecStatus;

    .line 370
    .line 371
    :cond_6
    return-object p1
.end method

.method public getDecodedHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->activeVideoDecoder:Lorg/hmwebrtc/VideoDecoder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/hmwebrtc/VideoDecoder;->getDecodedHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getDecodedWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->activeVideoDecoder:Lorg/hmwebrtc/VideoDecoder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/hmwebrtc/VideoDecoder;->getDecodedWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->directSurfaceVideoDecoder:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->getImplementationName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v1, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->surfaceTextureVideoDecoder:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->getImplementationName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_1
    const-string v0, "CompositeVideoDecoder"

    .line 20
    .line 21
    return-object v0
.end method

.method public initDecode(Lorg/hmwebrtc/VideoDecoder$Settings;Lorg/hmwebrtc/VideoDecoder$Callback;)Lorg/hmwebrtc/VideoCodecStatus;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mPendingInitDSDecoder:Z

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    iput-wide v1, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mLastKeyFrameRequiredTimeMs:J

    .line 7
    .line 8
    iget-object v1, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->directSurfaceVideoDecoder:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget-object v1, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->surfaceTextureVideoDecoder:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    iget-object v1, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mRenderView:Lorg/hmwebrtc/DirectSurfaceHelper;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput-object p2, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mDecodeCallback:Lorg/hmwebrtc/VideoDecoder$Callback;

    .line 23
    .line 24
    invoke-interface {v1}, Lorg/hmwebrtc/DirectSurfaceHelper;->getSurface()Landroid/view/Surface;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/16 v3, 0x34b0

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    sget-object v0, Lorg/hmwebrtc/CompositeVideoDecoder;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "surfaceTextureVideoDecoder.initDecode() because of surface==null"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-boolean v2, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->isSurfaceTextureVideoDecoder:Z

    .line 40
    .line 41
    iget-object v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->surfaceTextureVideoDecoder:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 42
    .line 43
    iput-object v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->activeVideoDecoder:Lorg/hmwebrtc/VideoDecoder;

    .line 44
    .line 45
    const-string v0, "init surfaceTexture becaused of surface==null"

    .line 46
    .line 47
    invoke-static {v3, v0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->activeVideoDecoder:Lorg/hmwebrtc/VideoDecoder;

    .line 51
    .line 52
    invoke-interface {v0, p1, p2}, Lorg/hmwebrtc/VideoDecoder;->initDecode(Lorg/hmwebrtc/VideoDecoder$Settings;Lorg/hmwebrtc/VideoDecoder$Callback;)Lorg/hmwebrtc/VideoCodecStatus;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :cond_1
    sget-object v1, Lorg/hmwebrtc/CompositeVideoDecoder;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    const-string v2, "directSurfaceVideoDecoder.initDecode() because of surface!=null"

    .line 60
    .line 61
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iput-boolean v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->isSurfaceTextureVideoDecoder:Z

    .line 65
    .line 66
    iget-object v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->directSurfaceVideoDecoder:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 67
    .line 68
    iput-object v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->activeVideoDecoder:Lorg/hmwebrtc/VideoDecoder;

    .line 69
    .line 70
    invoke-interface {v0, p1, p2}, Lorg/hmwebrtc/VideoDecoder;->initDecode(Lorg/hmwebrtc/VideoDecoder$Settings;Lorg/hmwebrtc/VideoDecoder$Callback;)Lorg/hmwebrtc/VideoCodecStatus;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sget-object v1, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 75
    .line 76
    if-eq v0, v1, :cond_2

    .line 77
    .line 78
    sget-object v0, Lorg/hmwebrtc/CompositeVideoDecoder;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    const-string v1, "surfaceTextureVideoDecoder.initDecode() because of directSurfaceVideoDecoder initial failed"

    .line 81
    .line 82
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->surfaceTextureVideoDecoder:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 86
    .line 87
    iput-object v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->activeVideoDecoder:Lorg/hmwebrtc/VideoDecoder;

    .line 88
    .line 89
    const-string v0, "init surfaceTexture becaused of directSurfaceVideoDecoder initial failed"

    .line 90
    .line 91
    invoke-static {v3, v0}, Lorg/hmwebrtc/HmAndroidCallbackDirectly;->hmRecordCountlyEvent(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->activeVideoDecoder:Lorg/hmwebrtc/VideoDecoder;

    .line 95
    .line 96
    invoke-interface {v0, p1, p2}, Lorg/hmwebrtc/VideoDecoder;->initDecode(Lorg/hmwebrtc/VideoDecoder$Settings;Lorg/hmwebrtc/VideoDecoder$Callback;)Lorg/hmwebrtc/VideoCodecStatus;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :cond_2
    return-object v0

    .line 101
    :cond_3
    :goto_0
    sget-object p1, Lorg/hmwebrtc/CompositeVideoDecoder;->TAG:Ljava/lang/String;

    .line 102
    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v1, "initDecode error, fallback software,directSurfaceVideoDecoder:"

    .line 109
    .line 110
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->directSurfaceVideoDecoder:Lorg/hmwebrtc/DirectSurfaceVideoDecoder;

    .line 114
    .line 115
    if-nez v1, :cond_4

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    const/4 v1, 0x0

    .line 120
    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ",surfaceTextureVideoDecoder:"

    .line 124
    .line 125
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->surfaceTextureVideoDecoder:Lorg/hmwebrtc/AndroidVideoDecoder;

    .line 129
    .line 130
    if-nez v1, :cond_5

    .line 131
    .line 132
    const/4 v1, 0x1

    .line 133
    goto :goto_2

    .line 134
    :cond_5
    const/4 v1, 0x0

    .line 135
    :goto_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, ",mRenderView:"

    .line 139
    .line 140
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->mRenderView:Lorg/hmwebrtc/DirectSurfaceHelper;

    .line 144
    .line 145
    if-nez v1, :cond_6

    .line 146
    .line 147
    const/4 v0, 0x1

    .line 148
    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    sget-object p1, Lorg/hmwebrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lorg/hmwebrtc/VideoCodecStatus;

    .line 159
    .line 160
    return-object p1
.end method

.method public release()Lorg/hmwebrtc/VideoCodecStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/CompositeVideoDecoder;->activeVideoDecoder:Lorg/hmwebrtc/VideoDecoder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/hmwebrtc/VideoDecoder;->release()Lorg/hmwebrtc/VideoCodecStatus;

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lorg/hmwebrtc/VideoCodecStatus;->OK:Lorg/hmwebrtc/VideoCodecStatus;

    .line 9
    .line 10
    return-object v0
.end method
