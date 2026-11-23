.class Lcom/haima/hmcp/business/StreamingMonitor$MonitorHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/business/StreamingMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/StreamingMonitor;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/business/StreamingMonitor;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/StreamingMonitor$MonitorHandler;->this$0:Lcom/haima/hmcp/business/StreamingMonitor;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/StreamingMonitor$MonitorHandler;->this$0:Lcom/haima/hmcp/business/StreamingMonitor;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lcom/haima/hmcp/beans/VideoDelayInfo;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/haima/hmcp/business/StreamingMonitor;->access$000(Lcom/haima/hmcp/business/StreamingMonitor;Lcom/haima/hmcp/beans/VideoDelayInfo;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
