.class Lcom/haima/hmcp/utils/ping/PingTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/utils/ping/PingTask;->toPing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/utils/ping/PingTask;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/utils/ping/PingTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/ping/PingTask$1;->this$0:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const-string v0, "toPing is run"

    .line 2
    .line 3
    const-string v1, "NetPingTask"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask$1;->this$0:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/haima/hmcp/utils/ping/PingTask;->access$000(Lcom/haima/hmcp/utils/ping/PingTask;)Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/haima/hmcp/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask$1;->this$0:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/haima/hmcp/utils/ping/PingTask;->access$100(Lcom/haima/hmcp/utils/ping/PingTask;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask$1;->this$0:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/haima/hmcp/utils/ping/PingTask;->access$200(Lcom/haima/hmcp/utils/ping/PingTask;)Lcom/haima/hmcp/utils/ping/PingPara;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v2, v2, Lcom/haima/hmcp/utils/ping/PingPara;->pingHost:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/ping/PingTask;->access$300(Lcom/haima/hmcp/utils/ping/PingTask;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/ping/PingTask;->access$102(Lcom/haima/hmcp/utils/ping/PingTask;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask$1;->this$0:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/haima/hmcp/utils/ping/PingTask;->access$100(Lcom/haima/hmcp/utils/ping/PingTask;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/ping/PingTask;->access$400(Lcom/haima/hmcp/utils/ping/PingTask;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask$1;->this$0:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/haima/hmcp/utils/ping/PingTask;->access$500(Lcom/haima/hmcp/utils/ping/PingTask;)Lcom/haima/hmcp/utils/ping/PingResult;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-wide/16 v2, 0x0

    .line 64
    .line 65
    iput-wide v2, v0, Lcom/haima/hmcp/utils/ping/PingResult;->min:D

    .line 66
    .line 67
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask$1;->this$0:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/haima/hmcp/utils/ping/PingTask;->access$500(Lcom/haima/hmcp/utils/ping/PingTask;)Lcom/haima/hmcp/utils/ping/PingResult;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-wide v2, v0, Lcom/haima/hmcp/utils/ping/PingResult;->max:D

    .line 74
    .line 75
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask$1;->this$0:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/haima/hmcp/utils/ping/PingTask;->access$500(Lcom/haima/hmcp/utils/ping/PingTask;)Lcom/haima/hmcp/utils/ping/PingResult;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-wide v2, v0, Lcom/haima/hmcp/utils/ping/PingResult;->avg:D

    .line 82
    .line 83
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask$1;->this$0:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/haima/hmcp/utils/ping/PingTask;->access$500(Lcom/haima/hmcp/utils/ping/PingTask;)Lcom/haima/hmcp/utils/ping/PingResult;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-wide v2, v0, Lcom/haima/hmcp/utils/ping/PingResult;->mdev:D

    .line 90
    .line 91
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask$1;->this$0:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/haima/hmcp/utils/ping/PingTask;->access$600(Lcom/haima/hmcp/utils/ping/PingTask;)Landroid/os/Handler;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask$1;->this$0:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/haima/hmcp/utils/ping/PingTask;->access$600(Lcom/haima/hmcp/utils/ping/PingTask;)Landroid/os/Handler;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const/4 v2, 0x1

    .line 106
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask$1;->this$0:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/haima/hmcp/utils/ping/PingTask;->access$600(Lcom/haima/hmcp/utils/ping/PingTask;)Landroid/os/Handler;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v3, p0, Lcom/haima/hmcp/utils/ping/PingTask$1;->this$0:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 116
    .line 117
    invoke-static {v3}, Lcom/haima/hmcp/utils/ping/PingTask;->access$200(Lcom/haima/hmcp/utils/ping/PingTask;)Lcom/haima/hmcp/utils/ping/PingPara;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    iget-wide v3, v3, Lcom/haima/hmcp/utils/ping/PingPara;->pingInterval:J

    .line 122
    .line 123
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    .line 130
    .line 131
    const-string v0, "unknow host and retry"

    .line 132
    .line 133
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask$1;->this$0:Lcom/haima/hmcp/utils/ping/PingTask;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/haima/hmcp/utils/ping/PingTask;->access$700(Lcom/haima/hmcp/utils/ping/PingTask;)V

    .line 139
    .line 140
    .line 141
    :cond_2
    :goto_1
    return-void
.end method
