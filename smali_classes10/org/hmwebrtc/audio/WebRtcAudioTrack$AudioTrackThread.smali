.class Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/audio/WebRtcAudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioTrackThread"
.end annotation


# instance fields
.field private bufferManager:Lorg/hmwebrtc/audio/LowLatencyAudioBufferManager;

.field private volatile keepAlive:Z

.field final synthetic this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/audio/WebRtcAudioTrack;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    .line 8
    .line 9
    new-instance p1, Lorg/hmwebrtc/audio/LowLatencyAudioBufferManager;

    .line 10
    .line 11
    invoke-direct {p1}, Lorg/hmwebrtc/audio/LowLatencyAudioBufferManager;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->bufferManager:Lorg/hmwebrtc/audio/LowLatencyAudioBufferManager;

    .line 15
    .line 16
    return-void
.end method

.method private writeBytes(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, p3, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method


# virtual methods
.method public run()V
    .locals 8

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
    const-string v1, "AudioTrackThread"

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
    const-string v1, "WebRtcAudioTrackExternal"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 33
    .line 34
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$000(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

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
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$100(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 54
    .line 55
    invoke-static {v0, v4}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$200(Lorg/hmwebrtc/audio/WebRtcAudioTrack;I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 59
    .line 60
    invoke-static {v0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$300(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 69
    .line 70
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$400(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    const-string v0, "Something wrong, audio was closed."

    .line 77
    .line 78
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    .line 83
    .line 84
    if-eqz v2, :cond_6

    .line 85
    .line 86
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 87
    .line 88
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$500(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v5

    .line 92
    invoke-static {v5, v6, v0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$600(JI)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 96
    .line 97
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$300(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-gt v0, v2, :cond_2

    .line 106
    .line 107
    const/4 v2, 0x1

    .line 108
    goto :goto_2

    .line 109
    :cond_2
    const/4 v2, 0x0

    .line 110
    :goto_2
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$100(Z)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$700()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_3

    .line 118
    .line 119
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 120
    .line 121
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$300(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 126
    .line 127
    .line 128
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 129
    .line 130
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$300(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iget-object v5, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 135
    .line 136
    invoke-static {v5}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$800(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)[B

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 144
    .line 145
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$300(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 150
    .line 151
    .line 152
    :cond_3
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 153
    .line 154
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$000(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    iget-object v5, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 159
    .line 160
    invoke-static {v5}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$300(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-direct {p0, v2, v5, v0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->writeBytes(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eq v2, v0, :cond_4

    .line 169
    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v6, "AudioTrack.write played invalid number of bytes: "

    .line 176
    .line 177
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-static {v1, v5}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    if-gez v2, :cond_4

    .line 191
    .line 192
    iput-boolean v4, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    .line 193
    .line 194
    iget-object v5, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 195
    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string v7, "AudioTrack.write failed: "

    .line 202
    .line 203
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-static {v5, v2}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$900(Lorg/hmwebrtc/audio/WebRtcAudioTrack;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_4
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 217
    .line 218
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$1000(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-eqz v2, :cond_5

    .line 223
    .line 224
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->bufferManager:Lorg/hmwebrtc/audio/LowLatencyAudioBufferManager;

    .line 225
    .line 226
    iget-object v5, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 227
    .line 228
    invoke-static {v5}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$000(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-virtual {v2, v5}, Lorg/hmwebrtc/audio/LowLatencyAudioBufferManager;->maybeAdjustBufferSize(Landroid/media/AudioTrack;)V

    .line 233
    .line 234
    .line 235
    :cond_5
    iget-object v2, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 236
    .line 237
    invoke-static {v2}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->access$300(Lorg/hmwebrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 242
    .line 243
    .line 244
    goto/16 :goto_1

    .line 245
    .line 246
    :cond_6
    return-void
.end method

.method public stopThread()V
    .locals 2

    .line 1
    const-string v0, "WebRtcAudioTrackExternal"

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
    iput-boolean v0, p0, Lorg/hmwebrtc/audio/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    .line 10
    .line 11
    return-void
.end method
