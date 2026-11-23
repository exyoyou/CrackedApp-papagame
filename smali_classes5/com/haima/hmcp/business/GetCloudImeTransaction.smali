.class public Lcom/haima/hmcp/business/GetCloudImeTransaction;
.super Lcom/haima/hmcp/business/BaseTransaction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/GetCloudImeTransaction$GetCloudImeTimerTask;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/haima/hmcp/listeners/GetCloudIMECallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "GetCloudImeTransaction"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/business/BaseTransaction;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/business/GetCloudImeTransaction;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/haima/hmcp/business/GetCloudImeTransaction;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/business/GetCloudImeTransaction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/business/GetCloudImeTransaction;->getCloudIMETypeTimeout()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getCloudIMETypeTimeout()V
    .locals 3

    .line 1
    const-string v0, "GetCloudImeTransaction"

    .line 2
    .line 3
    const-string v1, "getCloudImeType timeout"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, v0, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->result:I

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuffer;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "getCloudImeType TimeOut: "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTimeOutSeconds:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->setMessage(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/GetCloudImeTransaction;->getCloudImeTypeCallback(Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTask:Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public cancelGetCloudImeTypeTask(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/business/BaseTransaction;->isTaskOpen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/haima/hmcp/business/BaseTransaction;->cancelTimerTask()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, v0, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->result:I

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->setMessage(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/GetCloudImeTransaction;->getCloudImeTypeCallback(Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public createTask()Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/business/GetCloudImeTransaction$GetCloudImeTimerTask;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/haima/hmcp/business/GetCloudImeTransaction$GetCloudImeTimerTask;-><init>(Lcom/haima/hmcp/business/GetCloudImeTransaction;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getCloudImeType(Lcom/haima/hmcp/listeners/GetCloudIMECallback;Lcom/haima/hmcp/beans/IMEConfig;Lcom/haima/hmcp/business/IWebSocket;)V
    .locals 3

    .line 1
    const-string v0, "start getCloudImeType"

    .line 2
    .line 3
    const-string v1, "GetCloudImeTransaction"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "12709"

    .line 9
    .line 10
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p1, "getCloudImeType Parameter not valid"

    .line 16
    .line 17
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "add "

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/haima/hmcp/business/GetCloudImeTransaction;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/haima/hmcp/business/BaseTransaction;->isTaskOpen()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    const-string p1, "getCloudImeType is running"

    .line 54
    .line 55
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;

    .line 59
    .line 60
    invoke-direct {p2}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;-><init>()V

    .line 61
    .line 62
    .line 63
    iput v0, p2, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->result:I

    .line 64
    .line 65
    new-instance p3, Ljava/lang/StringBuffer;

    .line 66
    .line 67
    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->setMessage(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/business/GetCloudImeTransaction;->getCloudImeTypeCallback(Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    if-eqz p2, :cond_4

    .line 85
    .line 86
    if-nez p3, :cond_2

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/IMEConfig;->getSwitchIMEAckTimeout()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    iput p1, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTimeOutSeconds:I

    .line 94
    .line 95
    sget-object p1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 96
    .line 97
    invoke-interface {p3, p1}, Lcom/haima/hmcp/business/IWebSocket;->isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-nez p2, :cond_3

    .line 102
    .line 103
    new-instance p1, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;

    .line 104
    .line 105
    invoke-direct {p1}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;-><init>()V

    .line 106
    .line 107
    .line 108
    iput v0, p1, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->result:I

    .line 109
    .line 110
    new-instance p3, Ljava/lang/StringBuffer;

    .line 111
    .line 112
    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v0, "ws server is not active"

    .line 116
    .line 117
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    .line 119
    .line 120
    const-string v0, "ws server connected: "

    .line 121
    .line 122
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->setMessage(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/GetCloudImeTransaction;->getCloudImeTypeCallback(Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_3
    new-instance p2, Lcom/haima/hmcp/beans/GetCloudIMEMessage;

    .line 140
    .line 141
    invoke-direct {p2}, Lcom/haima/hmcp/beans/GetCloudIMEMessage;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/GetCloudIMEMessage;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-interface {p3, p1, p2}, Lcom/haima/hmcp/business/IWebSocket;->sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/haima/hmcp/business/BaseTransaction;->startTimerTask()V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_4
    :goto_0
    new-instance p1, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;

    .line 156
    .line 157
    invoke-direct {p1}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;-><init>()V

    .line 158
    .line 159
    .line 160
    iput v0, p1, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->result:I

    .line 161
    .line 162
    new-instance v1, Ljava/lang/StringBuffer;

    .line 163
    .line 164
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v2, "webSocketManager is null: "

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    .line 171
    .line 172
    const/4 v2, 0x1

    .line 173
    if-nez p3, :cond_5

    .line 174
    .line 175
    const/4 p3, 0x1

    .line 176
    goto :goto_1

    .line 177
    :cond_5
    const/4 p3, 0x0

    .line 178
    :goto_1
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 179
    .line 180
    .line 181
    const-string p3, "; "

    .line 182
    .line 183
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    .line 185
    .line 186
    const-string p3, "imeConfig is null: "

    .line 187
    .line 188
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    .line 190
    .line 191
    if-nez p2, :cond_6

    .line 192
    .line 193
    const/4 v0, 0x1

    .line 194
    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->setMessage(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/GetCloudImeTransaction;->getCloudImeTypeCallback(Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method protected getCloudImeTypeCallback(Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "end getCloudImeType result: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "GetCloudImeTransaction"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "12710"

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/haima/hmcp/business/GetCloudImeTransaction;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/haima/hmcp/listeners/GetCloudIMECallback;

    .line 53
    .line 54
    iget v2, p1, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->result:I

    .line 55
    .line 56
    iget v3, p1, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->imeType:I

    .line 57
    .line 58
    invoke-interface {v1, v2, v3}, Lcom/haima/hmcp/listeners/GetCloudIMECallback;->getCloudImeResult(II)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/business/GetCloudImeTransaction;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public parseGetCloudImeTypeMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "parse getCloudImeType message: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "GetCloudImeTransaction"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/haima/hmcp/business/BaseTransaction;->cancelTimerTask()V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    new-instance p1, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;

    .line 34
    .line 35
    invoke-direct {p1}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;-><init>()V

    .line 36
    .line 37
    .line 38
    iput v1, p1, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->result:I

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "payload null cannot parse"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->setMessage(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/GetCloudImeTransaction;->getCloudImeTypeCallback(Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 62
    .line 63
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    const-string p1, "imeType"

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v0, "error"

    .line 74
    .line 75
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    new-instance p1, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;

    .line 82
    .line 83
    invoke-direct {p1}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;-><init>()V

    .line 84
    .line 85
    .line 86
    iput v1, p1, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->result:I

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v1, "rom getCloudImeType error"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->setMessage(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/GetCloudImeTransaction;->getCloudImeTypeCallback(Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    const-string v0, "cloud_ime"

    .line 110
    .line 111
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-nez v2, :cond_3

    .line 116
    .line 117
    const-string v2, "local_ime"

    .line 118
    .line 119
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_2

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    new-instance p1, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;

    .line 127
    .line 128
    invoke-direct {p1}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;-><init>()V

    .line 129
    .line 130
    .line 131
    iput v1, p1, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->result:I

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuffer;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v1, "rom getCloudImeType unknown result"

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->setMessage(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/GetCloudImeTransaction;->getCloudImeTypeCallback(Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    :goto_0
    new-instance v1, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;

    .line 155
    .line 156
    invoke-direct {v1}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;-><init>()V

    .line 157
    .line 158
    .line 159
    const/4 v2, 0x1

    .line 160
    iput v2, v1, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->result:I

    .line 161
    .line 162
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    xor-int/2addr v0, v2

    .line 167
    iput v0, v1, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->imeType:I

    .line 168
    .line 169
    new-instance v0, Ljava/lang/StringBuffer;

    .line 170
    .line 171
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v2, "rom getCloudImeType success,"

    .line 175
    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    .line 178
    .line 179
    const-string v2, "type:"

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v1, p1}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->setMessage(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/business/GetCloudImeTransaction;->getCloudImeTypeCallback(Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;)V

    .line 195
    .line 196
    .line 197
    :goto_1
    return-void

    .line 198
    :catch_0
    new-instance v0, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;

    .line 199
    .line 200
    invoke-direct {v0}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;-><init>()V

    .line 201
    .line 202
    .line 203
    iput v1, v0, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->result:I

    .line 204
    .line 205
    new-instance v1, Ljava/lang/StringBuffer;

    .line 206
    .line 207
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v2, "ack parse error; "

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    .line 214
    .line 215
    const-string v2, "payload: "

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;->setMessage(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/business/GetCloudImeTransaction;->getCloudImeTypeCallback(Lcom/haima/hmcp/beans/GetCloudImeCallbackResult;)V

    .line 231
    .line 232
    .line 233
    return-void
.end method

.method public removeCallback(Lcom/haima/hmcp/listeners/GetCloudIMECallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/GetCloudImeTransaction;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/business/GetCloudImeTransaction;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, " remove "

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "GetCloudImeTransaction"

    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
