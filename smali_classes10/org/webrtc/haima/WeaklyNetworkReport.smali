.class public Lorg/webrtc/haima/WeaklyNetworkReport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;
    }
.end annotation


# static fields
.field public static START_STREAMER_WEAKLY_INFO:I = 0x4


# instance fields
.field private avgJitter:J

.field private decodedHeight:J

.field private decodedWidth:J

.field private deltaJitter:J

.field private freezeIntervals:Ljava/lang/String;

.field private lastReceivingAudioPackets:J

.field private maxJitter:J

.field private medianJitter:J

.field private minJitter:J

.field private packetsLostRate:Ljava/lang/String;

.field private receivingAudioPackets:J

.field private receivingAudioPacketsRate:J

.field private receivingRtt:J

.field private receivingVideoBitrate:J

.field private receivingVideoPacketsRate:J

.field private remoteToLocalClockOffset:I

.field private reportTime:J

.field private resolutionChangedTime:J

.field private streamerWeaklyNetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->receivingVideoBitrate:J

    .line 7
    .line 8
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->receivingVideoPacketsRate:J

    .line 9
    .line 10
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->receivingAudioPacketsRate:J

    .line 11
    .line 12
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->maxJitter:J

    .line 13
    .line 14
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->minJitter:J

    .line 15
    .line 16
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->avgJitter:J

    .line 17
    .line 18
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->medianJitter:J

    .line 19
    .line 20
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->deltaJitter:J

    .line 21
    .line 22
    const v0, 0x7fffffff

    .line 23
    .line 24
    .line 25
    iput v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->remoteToLocalClockOffset:I

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->streamerWeaklyNetList:Ljava/util/ArrayList;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public addStreamerWeaklyNetInfo(Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->streamerWeaklyNetList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getLastReceivingAudioPackets()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->lastReceivingAudioPackets:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRemoteToLocalClockOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->remoteToLocalClockOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public reset()V
    .locals 3

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->receivingVideoBitrate:J

    .line 4
    .line 5
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->receivingAudioPacketsRate:J

    .line 6
    .line 7
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->maxJitter:J

    .line 8
    .line 9
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->minJitter:J

    .line 10
    .line 11
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->avgJitter:J

    .line 12
    .line 13
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->medianJitter:J

    .line 14
    .line 15
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->deltaJitter:J

    .line 16
    .line 17
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->receivingVideoPacketsRate:J

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iput-object v2, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->packetsLostRate:Ljava/lang/String;

    .line 21
    .line 22
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->decodedWidth:J

    .line 23
    .line 24
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->decodedHeight:J

    .line 25
    .line 26
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->resolutionChangedTime:J

    .line 29
    .line 30
    const-string v0, "-1:-1"

    .line 31
    .line 32
    iput-object v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->freezeIntervals:Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method

.method public setAvgJitter(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->avgJitter:J

    .line 2
    .line 3
    return-void
.end method

.method public setDeltaJitter(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->deltaJitter:J

    .line 2
    .line 3
    return-void
.end method

.method public setFreezeIntervals(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->freezeIntervals:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxJitter(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->maxJitter:J

    .line 2
    .line 3
    return-void
.end method

.method public setMedianJitter(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->medianJitter:J

    .line 2
    .line 3
    return-void
.end method

.method public setMinJitter(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->minJitter:J

    .line 2
    .line 3
    return-void
.end method

.method public setPacketsLostRate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->packetsLostRate:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReceivingAudioPackets(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->receivingAudioPackets:J

    .line 2
    .line 3
    iput-wide v0, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->lastReceivingAudioPackets:J

    .line 4
    .line 5
    iput-wide p1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->receivingAudioPackets:J

    .line 6
    .line 7
    return-void
.end method

.method public setReceivingAudioPacketsRate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->receivingAudioPacketsRate:J

    .line 2
    .line 3
    return-void
.end method

.method public setReceivingRtt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->receivingRtt:J

    .line 2
    .line 3
    return-void
.end method

.method public setReceivingVideoBitrate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->receivingVideoBitrate:J

    .line 2
    .line 3
    return-void
.end method

.method public setReceivingVideoPacketsRate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->receivingVideoPacketsRate:J

    .line 2
    .line 3
    return-void
.end method

.method public setRemoteToLocalClockOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->remoteToLocalClockOffset:I

    .line 2
    .line 3
    return-void
.end method

.method public setReportTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->reportTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setResolutionChanged(JJJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->decodedWidth:J

    .line 2
    .line 3
    iput-wide p3, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->decodedHeight:J

    .line 4
    .line 5
    iput-wide p5, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->resolutionChangedTime:J

    .line 6
    .line 7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->reportTime:J

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    const-string v1, "|"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    .line 15
    .line 16
    iget-wide v2, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->receivingVideoBitrate:J

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    iget-wide v2, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->receivingAudioPacketsRate:J

    .line 25
    .line 26
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    const-string v2, ":"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    iget-wide v3, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->maxJitter:J

    .line 35
    .line 36
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    iget-wide v3, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->minJitter:J

    .line 43
    .line 44
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    iget-wide v3, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->avgJitter:J

    .line 51
    .line 52
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    iget-wide v3, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->medianJitter:J

    .line 59
    .line 60
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    .line 65
    .line 66
    iget-wide v3, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->deltaJitter:J

    .line 67
    .line 68
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    .line 73
    .line 74
    iget-wide v3, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->receivingVideoPacketsRate:J

    .line 75
    .line 76
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    iget-object v3, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->packetsLostRate:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    .line 89
    .line 90
    iget-wide v3, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->decodedWidth:J

    .line 91
    .line 92
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    .line 97
    .line 98
    iget-wide v3, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->decodedHeight:J

    .line 99
    .line 100
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    .line 105
    .line 106
    iget-wide v3, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->resolutionChangedTime:J

    .line 107
    .line 108
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    .line 113
    .line 114
    iget-wide v3, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->receivingRtt:J

    .line 115
    .line 116
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    .line 121
    .line 122
    iget-object v3, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->freezeIntervals:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    .line 126
    .line 127
    iget-object v3, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->streamerWeaklyNetList:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_2

    .line 138
    .line 139
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    check-cast v4, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;

    .line 144
    .line 145
    const-string v5, "#"

    .line 146
    .line 147
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    .line 149
    .line 150
    invoke-static {v4}, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->access$000(Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;)J

    .line 151
    .line 152
    .line 153
    move-result-wide v5

    .line 154
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    .line 159
    .line 160
    invoke-static {v4}, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->access$100(Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;)J

    .line 161
    .line 162
    .line 163
    move-result-wide v5

    .line 164
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    .line 169
    .line 170
    invoke-static {v4}, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->access$200(Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v5

    .line 174
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    .line 179
    .line 180
    invoke-static {v4}, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->access$300(Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;)J

    .line 181
    .line 182
    .line 183
    move-result-wide v5

    .line 184
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    .line 189
    .line 190
    invoke-static {v4}, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->access$400(Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;)J

    .line 191
    .line 192
    .line 193
    move-result-wide v5

    .line 194
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    .line 199
    .line 200
    invoke-static {v4}, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->access$500(Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;)Ljava/util/ArrayList;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-lez v5, :cond_1

    .line 209
    .line 210
    invoke-static {v4}, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->access$500(Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;)Ljava/util/ArrayList;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    const-string v6, ""

    .line 219
    .line 220
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    if-eqz v7, :cond_0

    .line 225
    .line 226
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    check-cast v7, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo$Bwe;

    .line 231
    .line 232
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    .line 234
    .line 235
    iget-wide v8, v7, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo$Bwe;->estimatedTime:J

    .line 236
    .line 237
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    .line 242
    .line 243
    iget-wide v6, v7, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo$Bwe;->estimatedBitrate:J

    .line 244
    .line 245
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 246
    .line 247
    .line 248
    const-string v6, ";"

    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_0
    invoke-static {v4}, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->access$500(Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;)Ljava/util/ArrayList;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 256
    .line 257
    .line 258
    goto :goto_0

    .line 259
    :cond_1
    const-string v4, "-1:-1"

    .line 260
    .line 261
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_2
    iget-object v1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->streamerWeaklyNetList:Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-lez v1, :cond_3

    .line 273
    .line 274
    iget-object v1, p0, Lorg/webrtc/haima/WeaklyNetworkReport;->streamerWeaklyNetList:Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 277
    .line 278
    .line 279
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    return-object v0
.end method
