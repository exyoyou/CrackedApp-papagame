.class public Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob$WebSocketOpenTimerCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebSocketOpenTimerJob"


# instance fields
.field private cancel:Z

.field private mWebSocketOpenTimerCallback:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob$WebSocketOpenTimerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob$WebSocketOpenTimerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;->mWebSocketOpenTimerCallback:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob$WebSocketOpenTimerCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;->cancel:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;->mWebSocketOpenTimerCallback:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob$WebSocketOpenTimerCallback;

    .line 6
    .line 7
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "download-file: web-socket open timer job cancel"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;->cancel:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;->mWebSocketOpenTimerCallback:Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob$WebSocketOpenTimerCallback;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob$WebSocketOpenTimerCallback;->onTimeOut()V

    .line 11
    .line 12
    .line 13
    :cond_1
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "download-file: web-socket open timer time out"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
