.class public Lcom/byazt/nm/x$c$5;
.super Lcom/byazt/me/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x933
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nm/x$c;->getGMNativeCustomVideoReporter()Lcom/byazt/me/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/x$c;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/x$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/me/n;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yh/c;->reportVideoFinish()V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/yh/c;->reportVideoStartError(II)V

    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/yh/c;->reportVideoPause(J)V

    :cond_0
    return-void
.end method

.method public c(JII)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/yh/c;->reportVideoError(JII)V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yh/c;->reportVideoAutoStart()V

    :cond_0
    return-void
.end method

.method public tt(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/yh/c;->reportVideoContinue(J)V

    :cond_0
    return-void
.end method

.method public ve(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/nm/x$c$5;->c:Lcom/byazt/nm/x$c;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/byazt/nm/x$c;->qp(Lcom/byazt/nm/x$c;)Lcom/byazt/nc/da;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/byazt/nc/da;->getCustomVideo()Lcom/byazt/yh/c;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1, p2}, Lcom/byazt/yh/c;->reportVideoBreak(J)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
