.class Lcom/haima/hmcp/widgets/CountDownTimer$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/CountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/CountDownTimer;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/CountDownTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/CountDownTimer$1;->this$0:Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/CountDownTimer$1;->this$0:Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/CountDownTimer$1;->this$0:Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/haima/hmcp/widgets/CountDownTimer;->access$000(Lcom/haima/hmcp/widgets/CountDownTimer;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/haima/hmcp/beans/ReportTimer;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/haima/hmcp/widgets/CountDownTimer$1;->this$0:Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/haima/hmcp/widgets/CountDownTimer;->access$100(Lcom/haima/hmcp/widgets/CountDownTimer;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, ""

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/haima/hmcp/widgets/CountDownTimer$1;->this$0:Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-object v1, p0, Lcom/haima/hmcp/widgets/CountDownTimer$1;->this$0:Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/haima/hmcp/widgets/CountDownTimer;->access$200(Lcom/haima/hmcp/widgets/CountDownTimer;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    const/4 v6, 0x0

    .line 50
    sget-object v7, Lcom/haima/hmcp/beans/ReportTimer$Action;->CANCEL:Lcom/haima/hmcp/beans/ReportTimer$Action;

    .line 51
    .line 52
    move-object v1, v0

    .line 53
    invoke-direct/range {v1 .. v7}, Lcom/haima/hmcp/beans/ReportTimer;-><init>(Ljava/lang/String;Ljava/lang/String;JZLcom/haima/hmcp/beans/ReportTimer$Action;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEventRaw(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    monitor-exit p1

    .line 64
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/CountDownTimer$1;->this$0:Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/haima/hmcp/widgets/CountDownTimer;->access$300(Lcom/haima/hmcp/widgets/CountDownTimer;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    sub-long/2addr v0, v2

    .line 76
    const-wide/16 v2, 0x0

    .line 77
    .line 78
    cmp-long v4, v0, v2

    .line 79
    .line 80
    if-gtz v4, :cond_1

    .line 81
    .line 82
    new-instance v0, Lcom/haima/hmcp/beans/ReportTimer;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/haima/hmcp/widgets/CountDownTimer$1;->this$0:Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/haima/hmcp/widgets/CountDownTimer;->access$100(Lcom/haima/hmcp/widgets/CountDownTimer;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v2, ""

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lcom/haima/hmcp/widgets/CountDownTimer$1;->this$0:Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    iget-object v1, p0, Lcom/haima/hmcp/widgets/CountDownTimer$1;->this$0:Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 114
    .line 115
    invoke-static {v1}, Lcom/haima/hmcp/widgets/CountDownTimer;->access$200(Lcom/haima/hmcp/widgets/CountDownTimer;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v8

    .line 119
    const/4 v10, 0x0

    .line 120
    sget-object v11, Lcom/haima/hmcp/beans/ReportTimer$Action;->EXECUTE:Lcom/haima/hmcp/beans/ReportTimer$Action;

    .line 121
    .line 122
    move-object v5, v0

    .line 123
    invoke-direct/range {v5 .. v11}, Lcom/haima/hmcp/beans/ReportTimer;-><init>(Ljava/lang/String;Ljava/lang/String;JZLcom/haima/hmcp/beans/ReportTimer$Action;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEventRaw(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/haima/hmcp/widgets/CountDownTimer$1;->this$0:Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/CountDownTimer;->onFinish()V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 140
    .line 141
    .line 142
    move-result-wide v4

    .line 143
    iget-object v6, p0, Lcom/haima/hmcp/widgets/CountDownTimer$1;->this$0:Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 144
    .line 145
    invoke-virtual {v6, v0, v1}, Lcom/haima/hmcp/widgets/CountDownTimer;->onTick(J)V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 149
    .line 150
    .line 151
    move-result-wide v6

    .line 152
    sub-long/2addr v6, v4

    .line 153
    iget-object v4, p0, Lcom/haima/hmcp/widgets/CountDownTimer$1;->this$0:Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 154
    .line 155
    invoke-static {v4}, Lcom/haima/hmcp/widgets/CountDownTimer;->access$400(Lcom/haima/hmcp/widgets/CountDownTimer;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v4

    .line 159
    cmp-long v8, v0, v4

    .line 160
    .line 161
    if-gez v8, :cond_3

    .line 162
    .line 163
    sub-long/2addr v0, v6

    .line 164
    cmp-long v4, v0, v2

    .line 165
    .line 166
    if-gez v4, :cond_2

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_2
    move-wide v2, v0

    .line 170
    goto :goto_1

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/haima/hmcp/widgets/CountDownTimer$1;->this$0:Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/haima/hmcp/widgets/CountDownTimer;->access$400(Lcom/haima/hmcp/widgets/CountDownTimer;)J

    .line 174
    .line 175
    .line 176
    move-result-wide v0

    .line 177
    sub-long/2addr v0, v6

    .line 178
    :goto_0
    cmp-long v4, v0, v2

    .line 179
    .line 180
    if-gez v4, :cond_2

    .line 181
    .line 182
    iget-object v4, p0, Lcom/haima/hmcp/widgets/CountDownTimer$1;->this$0:Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 183
    .line 184
    invoke-static {v4}, Lcom/haima/hmcp/widgets/CountDownTimer;->access$400(Lcom/haima/hmcp/widgets/CountDownTimer;)J

    .line 185
    .line 186
    .line 187
    move-result-wide v4

    .line 188
    add-long/2addr v0, v4

    .line 189
    goto :goto_0

    .line 190
    :goto_1
    const/4 v0, 0x1

    .line 191
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 196
    .line 197
    .line 198
    :goto_2
    monitor-exit p1

    .line 199
    return-void

    .line 200
    :catchall_0
    move-exception v0

    .line 201
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    throw v0
.end method
