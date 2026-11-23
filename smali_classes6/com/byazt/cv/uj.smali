.class public Lcom/byazt/cv/uj;
.super Lcom/byazt/nc/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x255,
        0xf
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/yl/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/yl/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/cv/uj;->c:Lcom/byazt/yl/ve;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public cancelDownload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/uj;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->cancelDownload()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public changeDownloadStatus()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/uj;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getDownloadStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/cv/uj;->c:Lcom/byazt/yl/ve;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->resumeAppDownload()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/cv/uj;->c:Lcom/byazt/yl/ve;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getDownloadStatus()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x2

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/cv/uj;->c:Lcom/byazt/yl/ve;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->pauseAppDownload()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
