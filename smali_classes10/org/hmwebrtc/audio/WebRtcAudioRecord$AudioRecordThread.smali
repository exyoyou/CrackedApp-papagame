.class Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/audio/WebRtcAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordThread"
.end annotation


# instance fields
.field private volatile keepAlive:Z

.field final synthetic this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/audio/WebRtcAudioRecord;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const/16 v0, -0x13

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "AudioRecordThread"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lorg/hmwebrtc/audio/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "WebRtcAudioRecordExternal"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 33
    .line 34
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$000(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Lorg/hmwebrtc/audio/IAudioRecord;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Lorg/hmwebrtc/audio/IAudioRecord;->getRecordingState()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x3

    .line 43
    const/4 v3, 0x1

    .line 44
    const/4 v4, 0x0

    .line 45
    if-ne v0, v2, :cond_0

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$100(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 54
    .line 55
    invoke-static {v0, v4}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$200(Lorg/hmwebrtc/audio/WebRtcAudioRecord;I)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 59
    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v2, "init microphoneMute and set audioRecord with mPendingMicrophoneMute: "

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 72
    .line 73
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$300(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 88
    .line 89
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$300(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-static {v0, v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$402(Lorg/hmwebrtc/audio/WebRtcAudioRecord;Z)Z

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 97
    .line 98
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$000(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Lorg/hmwebrtc/audio/IAudioRecord;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 103
    .line 104
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$400(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-interface {v0, v2}, Lorg/hmwebrtc/audio/IAudioRecord;->setMicrophoneMute(Z)Z

    .line 109
    .line 110
    .line 111
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 112
    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 116
    .line 117
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$300(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 122
    .line 123
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$400(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eq v0, v2, :cond_2

    .line 128
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v2, "update microphoneMute: "

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 140
    .line 141
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$400(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v2, " with mPendingMicrophoneMute: "

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 154
    .line 155
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$300(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 170
    .line 171
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$300(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    invoke-static {v0, v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$402(Lorg/hmwebrtc/audio/WebRtcAudioRecord;Z)Z

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 179
    .line 180
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$000(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Lorg/hmwebrtc/audio/IAudioRecord;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 185
    .line 186
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$400(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    invoke-interface {v0, v2}, Lorg/hmwebrtc/audio/IAudioRecord;->setMicrophoneMute(Z)Z

    .line 191
    .line 192
    .line 193
    :cond_2
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 194
    .line 195
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$000(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Lorg/hmwebrtc/audio/IAudioRecord;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 200
    .line 201
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$500(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    iget-object v5, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 206
    .line 207
    invoke-static {v5}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$500(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    invoke-interface {v0, v2, v5}, Lorg/hmwebrtc/audio/IAudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 220
    .line 221
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$500(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-ne v0, v2, :cond_5

    .line 230
    .line 231
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 232
    .line 233
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$400(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_3

    .line 238
    .line 239
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 240
    .line 241
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$500(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 246
    .line 247
    .line 248
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 249
    .line 250
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$500(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    iget-object v5, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 255
    .line 256
    invoke-static {v5}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$600(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)[B

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 261
    .line 262
    .line 263
    :cond_3
    iget-boolean v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 264
    .line 265
    if-eqz v2, :cond_4

    .line 266
    .line 267
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 268
    .line 269
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$700(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)J

    .line 270
    .line 271
    .line 272
    move-result-wide v5

    .line 273
    invoke-static {v2, v5, v6, v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$800(Lorg/hmwebrtc/audio/WebRtcAudioRecord;JI)V

    .line 274
    .line 275
    .line 276
    :cond_4
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 277
    .line 278
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$900(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    if-eqz v0, :cond_1

    .line 283
    .line 284
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 285
    .line 286
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$500(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 295
    .line 296
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$500(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    iget-object v5, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 305
    .line 306
    invoke-static {v5}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$500(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    iget-object v6, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 315
    .line 316
    invoke-static {v6}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$500(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    add-int/2addr v5, v6

    .line 325
    invoke-static {v0, v2, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 330
    .line 331
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$900(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    new-instance v5, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioSamples;

    .line 336
    .line 337
    iget-object v6, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 338
    .line 339
    invoke-static {v6}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$000(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Lorg/hmwebrtc/audio/IAudioRecord;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    invoke-interface {v6}, Lorg/hmwebrtc/audio/IAudioRecord;->getAudioFormat()I

    .line 344
    .line 345
    .line 346
    move-result v6

    .line 347
    iget-object v7, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 348
    .line 349
    invoke-static {v7}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$000(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Lorg/hmwebrtc/audio/IAudioRecord;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    invoke-interface {v7}, Lorg/hmwebrtc/audio/IAudioRecord;->getChannelCount()I

    .line 354
    .line 355
    .line 356
    move-result v7

    .line 357
    iget-object v8, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 358
    .line 359
    invoke-static {v8}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$000(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Lorg/hmwebrtc/audio/IAudioRecord;

    .line 360
    .line 361
    .line 362
    move-result-object v8

    .line 363
    invoke-interface {v8}, Lorg/hmwebrtc/audio/IAudioRecord;->getSampleRate()I

    .line 364
    .line 365
    .line 366
    move-result v8

    .line 367
    invoke-direct {v5, v6, v7, v8, v0}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioSamples;-><init>(III[B)V

    .line 368
    .line 369
    .line 370
    invoke-interface {v2, v5}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$SamplesReadyCallback;->onWebRtcAudioRecordSamplesReady(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioSamples;)V

    .line 371
    .line 372
    .line 373
    goto/16 :goto_1

    .line 374
    .line 375
    :cond_5
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 376
    .line 377
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$000(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Lorg/hmwebrtc/audio/IAudioRecord;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-interface {v2}, Lorg/hmwebrtc/audio/IAudioRecord;->isTimeout()Z

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    if-eqz v2, :cond_6

    .line 386
    .line 387
    goto/16 :goto_1

    .line 388
    .line 389
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .line 393
    .line 394
    const-string v5, "AudioRecord.read failed: "

    .line 395
    .line 396
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const/4 v5, -0x3

    .line 410
    if-ne v0, v5, :cond_1

    .line 411
    .line 412
    iput-boolean v4, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 413
    .line 414
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 415
    .line 416
    invoke-static {v0, v2}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$1000(Lorg/hmwebrtc/audio/WebRtcAudioRecord;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_1

    .line 420
    .line 421
    :cond_7
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 422
    .line 423
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$000(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Lorg/hmwebrtc/audio/IAudioRecord;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    if-eqz v0, :cond_8

    .line 428
    .line 429
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 430
    .line 431
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$000(Lorg/hmwebrtc/audio/WebRtcAudioRecord;)Lorg/hmwebrtc/audio/IAudioRecord;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-interface {v0}, Lorg/hmwebrtc/audio/IAudioRecord;->stop()V

    .line 436
    .line 437
    .line 438
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioRecord;

    .line 439
    .line 440
    invoke-static {v0, v3}, Lorg/hmwebrtc/audio/WebRtcAudioRecord;->access$200(Lorg/hmwebrtc/audio/WebRtcAudioRecord;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .line 442
    .line 443
    goto :goto_2

    .line 444
    :catch_0
    move-exception v0

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .line 449
    .line 450
    const-string v3, "AudioRecord.stop failed: "

    .line 451
    .line 452
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    :cond_8
    :goto_2
    return-void
.end method

.method public stopThread()V
    .locals 2

    .line 1
    const-string v0, "WebRtcAudioRecordExternal"

    .line 2
    .line 3
    const-string v1, "stopThread"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 10
    .line 11
    return-void
.end method
