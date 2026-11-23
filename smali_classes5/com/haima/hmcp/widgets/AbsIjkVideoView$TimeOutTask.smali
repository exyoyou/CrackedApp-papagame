.class public Lcom/haima/hmcp/widgets/AbsIjkVideoView$TimeOutTask;
.super Lcom/haima/hmcp/widgets/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TimeOutTask"
.end annotation


# instance fields
.field private rootCause:Ljava/lang/String;

.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$TimeOutTask;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/haima/hmcp/widgets/CountDownTimer;-><init>(JJ)V

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$TimeOutTask;->rootCause:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;JJLjava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$TimeOutTask;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/haima/hmcp/widgets/CountDownTimer;-><init>(JJ)V

    .line 6
    iput-object p6, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$TimeOutTask;->rootCause:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$TimeOutTask;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isGetControl:Z

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    iget-boolean v1, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->isStopPlay:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$300(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_1
    sget-object v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudPlayInfo;->isPingPongNormal()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    const-string v0, "100099099"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string v0, "100099009"

    .line 35
    .line 36
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$TimeOutTask;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, "-"

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$TimeOutTask;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$TimeOutTask;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 79
    .line 80
    new-instance v2, Lcom/haima/hmcp/utils/ErrorInfo;

    .line 81
    .line 82
    invoke-direct {v2}, Lcom/haima/hmcp/utils/ErrorInfo;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v3, "errorCode"

    .line 86
    .line 87
    invoke-virtual {v2, v3, v0}, Lcom/haima/hmcp/utils/ErrorInfo;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/haima/hmcp/utils/ErrorInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v2, "rootCause"

    .line 92
    .line 93
    iget-object v3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$TimeOutTask;->rootCause:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v2, v3}, Lcom/haima/hmcp/utils/ErrorInfo;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/haima/hmcp/utils/ErrorInfo;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 100
    .line 101
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const-string v3, "errorMessage"

    .line 106
    .line 107
    invoke-virtual {v0, v3, v2}, Lcom/haima/hmcp/utils/ErrorInfo;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/haima/hmcp/utils/ErrorInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const/16 v2, 0x17

    .line 112
    .line 113
    invoke-virtual {v1, v0, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->callbackHmcpError(Lcom/haima/hmcp/utils/ErrorInfo;I)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 118
    .line 119
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$TimeOutTask;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpHandler:Landroid/os/Handler;

    .line 122
    .line 123
    if-eqz v0, :cond_4

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const/16 v1, 0xde

    .line 130
    .line 131
    iput v1, v0, Landroid/os/Message;->what:I

    .line 132
    .line 133
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$TimeOutTask;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 134
    .line 135
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 136
    .line 137
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$TimeOutTask;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpHandler:Landroid/os/Handler;

    .line 146
    .line 147
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    .line 149
    .line 150
    :cond_4
    const-string v0, "AbsIjkVideoView"

    .line 151
    .line 152
    const-string v1, "imeOutTask extends TimerTask"

    .line 153
    .line 154
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :goto_1
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
