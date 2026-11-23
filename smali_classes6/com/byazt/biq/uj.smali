.class public Lcom/byazt/biq/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/aas/c$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc,
        0xf
    }
.end annotation


# instance fields
.field public c:J

.field public tt:J

.field public ve:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/byazt/omf/x;->c(Lcom/byazt/aas/c$tt;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public c(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    if-eqz p1, :cond_0

    .line 5
    iget-wide v0, p0, Lcom/byazt/biq/uj;->c:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    iget-wide v0, p0, Lcom/byazt/biq/uj;->c:J

    return-wide v0
.end method

.method public c()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/byazt/biq/uj;->tt:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 3
    iget-wide v4, p0, Lcom/byazt/biq/uj;->c:J

    sub-long v2, v0, v2

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/byazt/biq/uj;->c:J

    .line 4
    :cond_0
    iput-wide v0, p0, Lcom/byazt/biq/uj;->tt:J

    return-void
.end method

.method public onAppBackground()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/byazt/biq/uj;->tt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onAppExit()V
    .locals 0

    return-void
.end method

.method public onAppForeground()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/byazt/biq/uj;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onAppStart()V
    .locals 0

    return-void
.end method

.method public tt()V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/byazt/biq/uj;->tt:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide v4, p0, Lcom/byazt/biq/uj;->c:J

    .line 15
    .line 16
    iget-wide v6, p0, Lcom/byazt/biq/uj;->tt:J

    .line 17
    .line 18
    sub-long/2addr v0, v6

    .line 19
    add-long/2addr v4, v0

    .line 20
    iput-wide v4, p0, Lcom/byazt/biq/uj;->c:J

    .line 21
    .line 22
    iput-wide v2, p0, Lcom/byazt/biq/uj;->tt:J

    .line 23
    .line 24
    iput-wide v2, p0, Lcom/byazt/biq/uj;->ve:J

    .line 25
    .line 26
    return-void
.end method

.method public ve()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/byazt/biq/uj;->tt:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/byazt/biq/uj;->ve:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/byazt/biq/uj;->c:J

    .line 8
    .line 9
    return-void
.end method
