.class public Lcom/byazt/gq/x$c;
.super Lcom/byazt/c/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0x3e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/gq/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public c:Lcom/byazt/hu/yp;


# direct methods
.method public constructor <init>(Lcom/byazt/hu/yp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/c/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/gq/x$c;->c:Lcom/byazt/hu/yp;

    .line 5
    .line 6
    return-void
.end method

.method private c(Lcom/byazt/t/DownloadInfo;I)V
    .locals 2

    .line 2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 6
    iget-object p1, p0, Lcom/byazt/gq/x$c;->c:Lcom/byazt/hu/yp;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    const/16 v0, 0xb

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/byazt/gq/x$c;->c(Lcom/byazt/t/DownloadInfo;I)V

    return-void
.end method

.method public onCanceled(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    const/4 v0, -0x4

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/byazt/gq/x$c;->c(Lcom/byazt/t/DownloadInfo;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onFailed(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V
    .locals 0

    .line 1
    const/4 p2, -0x1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/gq/x$c;->c(Lcom/byazt/t/DownloadInfo;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onPause(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    const/4 v0, -0x2

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/byazt/gq/x$c;->c(Lcom/byazt/t/DownloadInfo;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onPrepare(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/byazt/gq/x$c;->c(Lcom/byazt/t/DownloadInfo;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onProgress(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/byazt/gq/x$c;->c(Lcom/byazt/t/DownloadInfo;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onStart(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/byazt/gq/x$c;->c(Lcom/byazt/t/DownloadInfo;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onSuccessed(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/byazt/gq/x$c;->c(Lcom/byazt/t/DownloadInfo;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
