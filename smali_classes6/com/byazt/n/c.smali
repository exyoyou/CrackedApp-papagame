.class public abstract Lcom/byazt/n/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2e,
        0x14
    }
.end annotation


# instance fields
.field public a:I

.field public c:Landroid/app/Notification;

.field public i:Z

.field public n:Ljava/lang/String;

.field public sp:J

.field public tt:I

.field public uj:J

.field public ve:J

.field public x:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/n/c;->a:I

    .line 6
    .line 7
    iput p1, p0, Lcom/byazt/n/c;->tt:I

    .line 8
    .line 9
    iput-object p2, p0, Lcom/byazt/n/c;->n:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/byazt/n/c;->sp:J

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
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/byazt/n/c;->sp:J

    .line 14
    .line 15
    :cond_0
    iget-wide v0, p0, Lcom/byazt/n/c;->sp:J

    .line 16
    .line 17
    return-wide v0
.end method

.method public c()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/byazt/n/c;->tt:I

    return v0
.end method

.method public c(ILcom/byazt/m/BaseException;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/byazt/n/c;->c(ILcom/byazt/m/BaseException;ZZ)V

    return-void
.end method

.method public c(ILcom/byazt/m/BaseException;ZZ)V
    .locals 0

    if-nez p4, :cond_0

    .line 6
    iget p4, p0, Lcom/byazt/n/c;->a:I

    if-ne p4, p1, :cond_0

    return-void

    .line 7
    :cond_0
    iput p1, p0, Lcom/byazt/n/c;->a:I

    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/byazt/n/c;->c(Lcom/byazt/m/BaseException;Z)V

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/n/c;->ve:J

    return-void
.end method

.method public c(JJ)V
    .locals 0

    .line 9
    iput-wide p1, p0, Lcom/byazt/n/c;->ve:J

    .line 10
    iput-wide p3, p0, Lcom/byazt/n/c;->uj:J

    const/4 p1, 0x4

    .line 11
    iput p1, p0, Lcom/byazt/n/c;->a:I

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/byazt/n/c;->c(Lcom/byazt/m/BaseException;Z)V

    return-void
.end method

.method public c(Landroid/app/Notification;)V
    .locals 3

    .line 13
    iget v0, p0, Lcom/byazt/n/c;->tt:I

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/byazt/n/tt;->c()Lcom/byazt/n/tt;

    move-result-object v0

    iget v1, p0, Lcom/byazt/n/c;->tt:I

    iget v2, p0, Lcom/byazt/n/c;->a:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/byazt/n/tt;->c(IILandroid/app/Notification;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract c(Lcom/byazt/m/BaseException;Z)V
.end method

.method public c(Lcom/byazt/t/DownloadInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    iput v0, p0, Lcom/byazt/n/c;->tt:I

    .line 2
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/n/c;->n:Ljava/lang/String;

    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/n/c;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public declared-synchronized sp()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/byazt/n/c;->x:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/byazt/n/c;->x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public tt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/n/c;->ve:J

    return-wide v0
.end method

.method public tt(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/n/c;->uj:J

    return-void
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/n/c;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/n/c;->uj:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/n/c;->i:Z

    .line 2
    .line 3
    return v0
.end method
