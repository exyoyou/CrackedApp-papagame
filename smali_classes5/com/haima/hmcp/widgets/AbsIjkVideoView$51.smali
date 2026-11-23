.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/utils/CacheUtil$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$51;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$51;->lambda$onCacheRemove$0(Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onCacheRemove$0(Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;->getListener()Lcom/haima/hmcp/listeners/OnSendMessageListener;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p0, v0, p1}, Lcom/haima/hmcp/listeners/OnSendMessageListener;->result(ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onCacheRemove(Ljava/lang/String;Ljava/lang/Object;Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mCacheListener onCacheRemove key:"

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
    const-string v1, ",obj:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "AbsIjkVideoView"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    sget-object v0, Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;->EXPIRED:Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;

    .line 34
    .line 35
    if-ne v0, p3, :cond_1

    .line 36
    .line 37
    instance-of p3, p2, Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;

    .line 38
    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    check-cast p2, Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;->getMessage()Lcom/haima/hmcp/beans/Message;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    if-eqz p3, :cond_1

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;->getListener()Lcom/haima/hmcp/listeners/OnSendMessageListener;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    if-eqz p3, :cond_1

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;->getMessage()Lcom/haima/hmcp/beans/Message;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    iget-object p3, p3, Lcom/haima/hmcp/beans/Message;->payload:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {p3}, Lcom/haima/hmcp/utils/Utils;->checkIsVirtualGamePadPullPayMessage(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-eqz p3, :cond_1

    .line 66
    .line 67
    const-string p3, ":"

    .line 68
    .line 69
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    array-length p3, p1

    .line 74
    const/4 v0, 0x3

    .line 75
    if-lt p3, v0, :cond_0

    .line 76
    .line 77
    const/4 p3, 0x2

    .line 78
    aget-object p1, p1, p3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const-string p1, ""

    .line 82
    .line 83
    :goto_0
    iget-object p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$51;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 84
    .line 85
    iget-object p3, p3, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHandler:Landroid/os/Handler;

    .line 86
    .line 87
    new-instance v0, Lcom/haima/hmcp/widgets/a0;

    .line 88
    .line 89
    invoke-direct {v0, p2, p1}, Lcom/haima/hmcp/widgets/a0;-><init>(Lcom/haima/hmcp/beans/VirtualGamePadCacheBean;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    .line 94
    .line 95
    new-instance p2, Lcom/haima/hmcp/beans/report/ReportVirtualGamePadPayPullResult;

    .line 96
    .line 97
    const-string p3, "wait virtual game_pad return timeout"

    .line 98
    .line 99
    invoke-direct {p2, p1, p3}, Lcom/haima/hmcp/beans/report/ReportVirtualGamePadPayPullResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string p1, "14203"

    .line 103
    .line 104
    invoke-static {p2}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-static {p1, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_1
    return-void
.end method
