.class public Lcom/haima/hmcp/cloud/video/observer/KeepAliveObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/WebSocketObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeepAliveObserver"


# instance fields
.field private mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/listeners/InnerDownloadCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/observer/KeepAliveObserver;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p1, "operation"

    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-class v0, Lcom/haima/hmcp/beans/Message;

    .line 11
    .line 12
    invoke-static {p2, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lcom/haima/hmcp/beans/Message;

    .line 17
    .line 18
    iget v0, p2, Lcom/haima/hmcp/beans/Message;->type:I

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-ne v0, v1, :cond_3

    .line 22
    .line 23
    iget-object p2, p2, Lcom/haima/hmcp/beans/Message;->payload:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v0, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "data"

    .line 45
    .line 46
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/16 v0, 0x29

    .line 55
    .line 56
    if-eq p1, v0, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    .line 60
    .line 61
    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p2, "flag"

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iget-object p2, p0, Lcom/haima/hmcp/cloud/video/observer/KeepAliveObserver;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 71
    .line 72
    if-eqz p2, :cond_2

    .line 73
    .line 74
    invoke-interface {p2, p1}, Lcom/haima/hmcp/listeners/InnerDownloadCallback;->onStartKeepAlive(Z)V

    .line 75
    .line 76
    .line 77
    :cond_2
    const-string p1, "keep alive unknow result"

    .line 78
    .line 79
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception p1

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v0, "keep alive exception: "

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/haima/hmcp/cloud/video/observer/KeepAliveObserver;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 109
    .line 110
    if-eqz p1, :cond_3

    .line 111
    .line 112
    const/4 p2, 0x0

    .line 113
    invoke-interface {p1, p2}, Lcom/haima/hmcp/listeners/InnerDownloadCallback;->onStartKeepAlive(Z)V

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_0
    return-void
.end method

.method public onObserver(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;I)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/observer/KeepAliveObserver;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 3
    .line 4
    return-void
.end method
