.class Lorg/webrtc/haima/HmOperationDelayReport$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmOperationDelayReport;->startReport(IZJJLorg/webrtc/haima/HmRtcAdapterImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmOperationDelayReport;

.field final synthetic val$adapter:Lorg/webrtc/haima/HmRtcAdapterImpl;

.field final synthetic val$maxDelayMs:J

.field final synthetic val$saltMs:J


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmOperationDelayReport;JJLorg/webrtc/haima/HmRtcAdapterImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->this$0:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 2
    .line 3
    iput-wide p2, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->val$maxDelayMs:J

    .line 4
    .line 5
    iput-wide p4, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->val$saltMs:J

    .line 6
    .line 7
    iput-object p6, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->val$adapter:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->this$0:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/HmOperationDelayReport;->access$000(Lorg/webrtc/haima/HmOperationDelayReport;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->this$0:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 9
    .line 10
    invoke-static {v1}, Lorg/webrtc/haima/HmOperationDelayReport;->access$000(Lorg/webrtc/haima/HmOperationDelayReport;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    move-wide v4, v2

    .line 24
    :goto_0
    iget-object v6, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->this$0:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 25
    .line 26
    invoke-static {v6}, Lorg/webrtc/haima/HmOperationDelayReport;->access$000(Lorg/webrtc/haima/HmOperationDelayReport;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-ge v1, v6, :cond_0

    .line 35
    .line 36
    iget-object v6, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->this$0:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 37
    .line 38
    invoke-static {v6}, Lorg/webrtc/haima/HmOperationDelayReport;->access$000(Lorg/webrtc/haima/HmOperationDelayReport;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Ljava/lang/Long;

    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    add-long/2addr v4, v6

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->this$0:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 57
    .line 58
    invoke-static {v1}, Lorg/webrtc/haima/HmOperationDelayReport;->access$000(Lorg/webrtc/haima/HmOperationDelayReport;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    int-to-long v6, v1

    .line 67
    div-long/2addr v4, v6

    .line 68
    iget-object v1, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->this$0:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 69
    .line 70
    invoke-static {v1}, Lorg/webrtc/haima/HmOperationDelayReport;->access$000(Lorg/webrtc/haima/HmOperationDelayReport;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move-wide v4, v2

    .line 79
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-wide v0, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->val$maxDelayMs:J

    .line 81
    .line 82
    cmp-long v6, v4, v0

    .line 83
    .line 84
    if-lez v6, :cond_2

    .line 85
    .line 86
    iget-object v0, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->this$0:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v6, "delay("

    .line 94
    .line 95
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v4, ") > maxDelay("

    .line 102
    .line 103
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-wide v4, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->val$maxDelayMs:J

    .line 107
    .line 108
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v4, ")"

    .line 112
    .line 113
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Lorg/webrtc/haima/HmOperationDelayReport;->access$100(Lorg/webrtc/haima/HmOperationDelayReport;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    move-wide v4, v2

    .line 124
    :cond_2
    cmp-long v0, v4, v2

    .line 125
    .line 126
    if-lez v0, :cond_3

    .line 127
    .line 128
    iget-wide v0, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->val$saltMs:J

    .line 129
    .line 130
    add-long v6, v4, v0

    .line 131
    .line 132
    cmp-long v8, v6, v2

    .line 133
    .line 134
    if-lez v8, :cond_3

    .line 135
    .line 136
    add-long/2addr v4, v0

    .line 137
    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->this$0:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 138
    .line 139
    invoke-static {v0}, Lorg/webrtc/haima/HmOperationDelayReport;->access$200(Lorg/webrtc/haima/HmOperationDelayReport;)Lorg/webrtc/haima/IOperationDelayEvent;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    iget-object v0, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->this$0:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 146
    .line 147
    invoke-static {v0}, Lorg/webrtc/haima/HmOperationDelayReport;->access$200(Lorg/webrtc/haima/HmOperationDelayReport;)Lorg/webrtc/haima/IOperationDelayEvent;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-interface {v0, v4, v5}, Lorg/webrtc/haima/IOperationDelayEvent;->onOperationDelayCallback(J)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->val$adapter:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 155
    .line 156
    if-eqz v0, :cond_4

    .line 157
    .line 158
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getFrameDelayInfo()Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0, v4, v5}, Lorg/webrtc/haima/HmFrameDelayInfo;->setOperationDelayMs(J)V

    .line 163
    .line 164
    .line 165
    :cond_4
    iget-object v0, p0, Lorg/webrtc/haima/HmOperationDelayReport$1;->this$0:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v2, "operation delay:"

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v2, "ms."

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-static {v0, v1}, Lorg/webrtc/haima/HmOperationDelayReport;->access$100(Lorg/webrtc/haima/HmOperationDelayReport;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v1, "HmOperationDelayReport"

    .line 195
    .line 196
    const-string v2, "operationDelayEvent - failed"

    .line 197
    .line 198
    invoke-static {v1, v2, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    .line 200
    .line 201
    :cond_5
    :goto_2
    return-void

    .line 202
    :catchall_0
    move-exception v1

    .line 203
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    throw v1
.end method
