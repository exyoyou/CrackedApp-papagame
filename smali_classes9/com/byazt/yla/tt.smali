.class public Lcom/byazt/yla/tt;
.super Lcom/byazt/yh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x86d,
        0xd
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/yl/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/yl/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/yh/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getVideoUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public reportVideoAutoStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMNativeCustomVideoReporter()Lcom/byazt/me/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMNativeCustomVideoReporter()Lcom/byazt/me/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/byazt/me/n;->tt()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public reportVideoBreak(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMNativeCustomVideoReporter()Lcom/byazt/me/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMNativeCustomVideoReporter()Lcom/byazt/me/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/byazt/me/n;->ve(J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public reportVideoContinue(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMNativeCustomVideoReporter()Lcom/byazt/me/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMNativeCustomVideoReporter()Lcom/byazt/me/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/byazt/me/n;->tt(J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public reportVideoError(JII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMNativeCustomVideoReporter()Lcom/byazt/me/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMNativeCustomVideoReporter()Lcom/byazt/me/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/me/n;->c(JII)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public reportVideoFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMNativeCustomVideoReporter()Lcom/byazt/me/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMNativeCustomVideoReporter()Lcom/byazt/me/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/byazt/me/n;->c()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public reportVideoPause(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMNativeCustomVideoReporter()Lcom/byazt/me/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMNativeCustomVideoReporter()Lcom/byazt/me/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/byazt/me/n;->c(J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public reportVideoStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMNativeCustomVideoReporter()Lcom/byazt/me/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMNativeCustomVideoReporter()Lcom/byazt/me/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/byazt/me/n;->tt()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public reportVideoStartError(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMNativeCustomVideoReporter()Lcom/byazt/me/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/yla/tt;->c:Lcom/byazt/yl/ve;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMNativeCustomVideoReporter()Lcom/byazt/me/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/byazt/me/n;->c(II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
