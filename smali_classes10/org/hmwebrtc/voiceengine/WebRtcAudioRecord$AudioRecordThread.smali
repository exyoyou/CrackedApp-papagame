.class Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordThread"
.end annotation


# instance fields
.field private volatile keepAlive:Z

.field final synthetic this$0:Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

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
    invoke-static {}, Lorg/hmwebrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

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
    const-string v1, "WebRtcAudioRecord"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;

    .line 33
    .line 34
    invoke-static {v0}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$000(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x3

    .line 43
    const/4 v3, 0x0

    .line 44
    if-ne v0, v2, :cond_0

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    invoke-static {v0}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$100(Z)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    iget-object v0, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;

    .line 60
    .line 61
    invoke-static {v0}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$000(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v2, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;

    .line 66
    .line 67
    invoke-static {v2}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$200(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v4, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;

    .line 72
    .line 73
    invoke-static {v4}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$200(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-virtual {v0, v2, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iget-object v2, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;

    .line 86
    .line 87
    invoke-static {v2}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$200(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-ne v0, v2, :cond_4

    .line 96
    .line 97
    invoke-static {}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$300()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_2

    .line 102
    .line 103
    iget-object v2, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;

    .line 104
    .line 105
    invoke-static {v2}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$200(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;

    .line 113
    .line 114
    invoke-static {v2}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$200(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iget-object v4, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;

    .line 119
    .line 120
    invoke-static {v4}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$400(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;)[B

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 125
    .line 126
    .line 127
    :cond_2
    iget-boolean v2, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 128
    .line 129
    if-eqz v2, :cond_3

    .line 130
    .line 131
    iget-object v2, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;

    .line 132
    .line 133
    invoke-static {v2}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$500(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;)J

    .line 134
    .line 135
    .line 136
    move-result-wide v4

    .line 137
    invoke-static {v2, v0, v4, v5}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$600(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;IJ)V

    .line 138
    .line 139
    .line 140
    :cond_3
    invoke-static {}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$700()Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-eqz v0, :cond_1

    .line 145
    .line 146
    iget-object v0, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;

    .line 147
    .line 148
    invoke-static {v0}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$200(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v2, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;

    .line 157
    .line 158
    invoke-static {v2}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$200(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$700()Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    new-instance v4, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioSamples;

    .line 175
    .line 176
    iget-object v5, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;

    .line 177
    .line 178
    invoke-static {v5}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$000(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    const/4 v6, 0x0

    .line 183
    invoke-direct {v4, v5, v0, v6}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioSamples;-><init>(Landroid/media/AudioRecord;[BLorg/hmwebrtc/voiceengine/WebRtcAudioRecord$1;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {v2, v4}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;->onWebRtcAudioRecordSamplesReady(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioSamples;)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v4, "AudioRecord.read failed: "

    .line 197
    .line 198
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const/4 v4, -0x3

    .line 212
    if-ne v0, v4, :cond_1

    .line 213
    .line 214
    iput-boolean v3, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 215
    .line 216
    iget-object v0, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;

    .line 217
    .line 218
    invoke-static {v0, v2}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$900(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_1

    .line 222
    .line 223
    :cond_5
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;

    .line 224
    .line 225
    invoke-static {v0}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$000(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    if-eqz v0, :cond_6

    .line 230
    .line 231
    iget-object v0, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;

    .line 232
    .line 233
    invoke-static {v0}, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;->access$000(Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :catch_0
    move-exception v0

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    const-string v3, "AudioRecord.stop failed: "

    .line 248
    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    :cond_6
    :goto_2
    return-void
.end method

.method public stopThread()V
    .locals 2

    .line 1
    const-string v0, "WebRtcAudioRecord"

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
    iput-boolean v0, p0, Lorg/hmwebrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 10
    .line 11
    return-void
.end method
