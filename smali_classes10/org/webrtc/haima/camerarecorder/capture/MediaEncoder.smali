.class public abstract Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder$MediaEncoderListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaEncoder"

.field protected static final TIMEOUT_USEC:I = 0x186a0


# instance fields
.field protected configBuffer:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected volatile isCapturing:Z

.field protected isEOS:Z

.field protected final listener:Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder$MediaEncoderListener;

.field protected mediaCodec:Landroid/media/MediaCodec;

.field protected muxerStarted:Z

.field private prevOutputPTSUs:J

.field protected requestDrain:I

.field protected volatile requestStop:Z

.field protected final sync:Ljava/lang/Object;

.field protected trackIndex:I

.field protected final weakMuxer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder$MediaEncoderListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->sync:Ljava/lang/Object;

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->weakMuxer:Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->addEncoder(Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->listener:Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder$MediaEncoderListener;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    new-instance p1, Ljava/lang/Thread;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    :catch_0
    :try_start_2
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    throw p1

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 53
    .line 54
    const-string p2, "MediaMuxerCaptureWrapper is null"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 61
    .line 62
    const-string p2, "MediaEncoderListener is null"

    .line 63
    .line 64
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method private drain()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->weakMuxer:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->isCapturing:Z

    .line 20
    .line 21
    if-eqz v3, :cond_e

    .line 22
    .line 23
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    .line 24
    .line 25
    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 29
    .line 30
    const-wide/32 v5, 0x186a0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v3, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, -0x1

    .line 38
    if-ne v4, v5, :cond_3

    .line 39
    .line 40
    iget-boolean v3, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->isEOS:Z

    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    if-le v2, v3, :cond_2

    .line 48
    .line 49
    goto/16 :goto_5

    .line 50
    .line 51
    :cond_3
    const/4 v5, -0x2

    .line 52
    const/4 v6, 0x1

    .line 53
    if-ne v4, v5, :cond_6

    .line 54
    .line 55
    iget-boolean v3, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->muxerStarted:Z

    .line 56
    .line 57
    if-nez v3, :cond_5

    .line 58
    .line 59
    iget-object v3, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    .line 62
    .line 63
    .line 64
    iput-boolean v6, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->muxerStarted:Z

    .line 65
    .line 66
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->start()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_2

    .line 71
    .line 72
    monitor-enter v0

    .line 73
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->isStarted()Z

    .line 74
    .line 75
    .line 76
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    if-nez v3, :cond_4

    .line 78
    .line 79
    const-wide/16 v3, 0x64

    .line 80
    .line 81
    :try_start_1
    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_0
    :try_start_2
    monitor-exit v0

    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_4
    monitor-exit v0

    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    .line 91
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    throw v1

    .line 93
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 94
    .line 95
    const-string v1, "format changed twice"

    .line 96
    .line 97
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_6
    if-gez v4, :cond_7

    .line 102
    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v5, "drain:unexpected result from encoder#dequeueOutputBuffer: "

    .line 109
    .line 110
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_7
    iget-object v5, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 118
    .line 119
    invoke-virtual {v5, v4}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    if-eqz v5, :cond_d

    .line 124
    .line 125
    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 126
    .line 127
    and-int/lit8 v8, v7, 0x2

    .line 128
    .line 129
    if-eqz v8, :cond_8

    .line 130
    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v7, "Config frame generated. Offset: "

    .line 137
    .line 138
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 142
    .line 143
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v7, ". Size: "

    .line 147
    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 152
    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 157
    .line 158
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    iput-object v6, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 163
    .line 164
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_8
    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 169
    .line 170
    if-eqz v8, :cond_c

    .line 171
    .line 172
    iget-boolean v2, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->muxerStarted:Z

    .line 173
    .line 174
    if-eqz v2, :cond_b

    .line 175
    .line 176
    and-int/lit8 v2, v7, 0x1

    .line 177
    .line 178
    if-eqz v2, :cond_9

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_9
    const/4 v6, 0x0

    .line 182
    :goto_2
    if-eqz v6, :cond_a

    .line 183
    .line 184
    invoke-virtual {p0}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->getPTSUs()J

    .line 185
    .line 186
    .line 187
    move-result-wide v6

    .line 188
    iput-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 189
    .line 190
    iget v2, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 191
    .line 192
    iget-object v6, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 193
    .line 194
    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    add-int/2addr v2, v6

    .line 199
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    iget-object v6, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 204
    .line 205
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 206
    .line 207
    .line 208
    iget-object v6, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 209
    .line 210
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 217
    .line 218
    .line 219
    iget v5, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->trackIndex:I

    .line 220
    .line 221
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 222
    .line 223
    iget-object v7, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 224
    .line 225
    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    add-int/2addr v6, v7

    .line 230
    invoke-virtual {v0, v5, v2, v6}, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->writeSampleData(ILjava/nio/ByteBuffer;I)V

    .line 231
    .line 232
    .line 233
    iget-wide v5, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 234
    .line 235
    iput-wide v5, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->prevOutputPTSUs:J

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_a
    invoke-virtual {p0}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->getPTSUs()J

    .line 239
    .line 240
    .line 241
    move-result-wide v6

    .line 242
    iput-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 243
    .line 244
    iget v2, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->trackIndex:I

    .line 245
    .line 246
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 247
    .line 248
    invoke-virtual {v0, v2, v5, v6}, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->writeSampleData(ILjava/nio/ByteBuffer;I)V

    .line 249
    .line 250
    .line 251
    iget-wide v5, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 252
    .line 253
    iput-wide v5, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->prevOutputPTSUs:J

    .line 254
    .line 255
    :goto_3
    const/4 v2, 0x0

    .line 256
    goto :goto_4

    .line 257
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    .line 258
    .line 259
    const-string v1, "drain:muxer hasn\'t started"

    .line 260
    .line 261
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v0

    .line 265
    :cond_c
    :goto_4
    iget-object v5, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 266
    .line 267
    invoke-virtual {v5, v4, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 268
    .line 269
    .line 270
    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 271
    .line 272
    and-int/lit8 v3, v3, 0x4

    .line 273
    .line 274
    if-eqz v3, :cond_2

    .line 275
    .line 276
    iput-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->isCapturing:Z

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    .line 280
    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string v2, "encoderOutputBuffer "

    .line 287
    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v2, " was null"

    .line 295
    .line 296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v0

    .line 307
    :cond_e
    :goto_5
    return-void
.end method


# virtual methods
.method protected encode(Ljava/nio/ByteBuffer;IJ)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->isCapturing:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->isCapturing:Z

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 11
    .line 12
    const-wide/32 v1, 0x186a0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-ltz v4, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    :cond_1
    if-gtz p2, :cond_2

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->isEOS:Z

    .line 39
    .line 40
    iget-object v3, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v9, 0x4

    .line 45
    move-wide v7, p3

    .line 46
    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v3, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    move v6, p2

    .line 55
    move-wide v7, p3

    .line 56
    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_0
    return-void
.end method

.method public frameAvailableSoon()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->sync:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->isCapturing:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->requestStop:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->requestDrain:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    add-int/2addr v1, v2

    .line 17
    iput v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->requestDrain:I

    .line 18
    .line 19
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->sync:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return v2

    .line 26
    :cond_1
    :goto_0
    monitor-exit v0

    .line 27
    const/4 v0, 0x0

    .line 28
    return v0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method

.method getPTSUs()J
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    div-long/2addr v0, v2

    .line 8
    iget-wide v2, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->prevOutputPTSUs:J

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gez v4, :cond_0

    .line 13
    .line 14
    sub-long/2addr v2, v0

    .line 15
    add-long/2addr v0, v2

    .line 16
    :cond_0
    return-wide v0
.end method

.method abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected release()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->listener:Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder$MediaEncoderListener;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder$MediaEncoderListener;->onStopped(Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    nop

    .line 8
    :goto_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->isCapturing:Z

    .line 10
    .line 11
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->mediaCodec:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catch_1
    nop

    .line 28
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->muxerStarted:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->weakMuxer:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v1, v0

    .line 41
    check-cast v1, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;

    .line 42
    .line 43
    :cond_1
    if-eqz v1, :cond_2

    .line 44
    .line 45
    :try_start_2
    invoke-virtual {v1}, Lorg/webrtc/haima/camerarecorder/capture/MediaMuxerCaptureWrapper;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 46
    .line 47
    .line 48
    :catch_2
    :cond_2
    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->sync:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->requestStop:Z

    .line 6
    .line 7
    iput v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->requestDrain:I

    .line 8
    .line 9
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->sync:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 12
    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 15
    :goto_0
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->sync:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_1
    iget-boolean v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->requestStop:Z

    .line 19
    .line 20
    iget v3, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->requestDrain:I

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    if-lez v3, :cond_0

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v5, 0x0

    .line 28
    :goto_1
    if-eqz v5, :cond_1

    .line 29
    .line 30
    add-int/lit8 v3, v3, -0x1

    .line 31
    .line 32
    iput v3, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->requestDrain:I

    .line 33
    .line 34
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->drain()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->signalEndOfInputStream()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->drain()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->release()V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    if-eqz v5, :cond_3

    .line 51
    .line 52
    invoke-direct {p0}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->drain()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->sync:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v0

    .line 59
    :try_start_2
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->sync:Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    .line 64
    :try_start_3
    monitor-exit v0

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    goto :goto_3

    .line 68
    :catch_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    :goto_2
    iget-object v2, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->sync:Ljava/lang/Object;

    .line 70
    .line 71
    monitor-enter v2

    .line 72
    :try_start_4
    iput-boolean v4, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->requestStop:Z

    .line 73
    .line 74
    iput-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->isCapturing:Z

    .line 75
    .line 76
    monitor-exit v2

    .line 77
    return-void

    .line 78
    :catchall_1
    move-exception v0

    .line 79
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 80
    throw v0

    .line 81
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 82
    throw v1

    .line 83
    :catchall_2
    move-exception v0

    .line 84
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 85
    throw v0

    .line 86
    :catchall_3
    move-exception v1

    .line 87
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 88
    throw v1
.end method

.method protected signalEndOfInputStream()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->getPTSUs()J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->encode(Ljava/nio/ByteBuffer;IJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method startRecording()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->sync:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->isCapturing:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->requestStop:Z

    .line 9
    .line 10
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->sync:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method stopRecording()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->sync:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->isCapturing:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->requestStop:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->requestStop:Z

    .line 15
    .line 16
    iget-object v1, p0, Lorg/webrtc/haima/camerarecorder/capture/MediaEncoder;->sync:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :cond_1
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method
