.class public Lcom/byazt/w/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/w/n$c;
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/w/n$c;

.field public tt:Lcom/byazt/w/n$c;

.field public uj:I

.field public ve:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Lcom/byazt/w/n;->uj:I

    .line 7
    .line 8
    return-void
.end method

.method private c()Lcom/byazt/w/n$c;
    .locals 3

    .line 18
    iget v0, p0, Lcom/byazt/w/n;->ve:I

    iget v1, p0, Lcom/byazt/w/n;->uj:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 19
    iget-object v1, p0, Lcom/byazt/w/n;->tt:Lcom/byazt/w/n$c;

    if-eqz v1, :cond_1

    .line 20
    iget-object v0, v1, Lcom/byazt/w/n$c;->uj:Lcom/byazt/w/n$c;

    .line 21
    iput-object v2, v1, Lcom/byazt/w/n$c;->uj:Lcom/byazt/w/n$c;

    .line 22
    iput-object v0, p0, Lcom/byazt/w/n;->tt:Lcom/byazt/w/n$c;

    if-eqz v0, :cond_0

    .line 23
    iput-object v2, v0, Lcom/byazt/w/n$c;->ve:Lcom/byazt/w/n$c;

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 24
    iput v0, p0, Lcom/byazt/w/n;->ve:I

    .line 25
    new-instance v0, Lcom/byazt/w/n$c;

    invoke-direct {v0, v2}, Lcom/byazt/w/n$c;-><init>(Lcom/byazt/w/n$1;)V

    return-object v0
.end method

.method private c(J)Lcom/byazt/w/n$c;
    .locals 7

    .line 26
    iget-object v0, p0, Lcom/byazt/w/n;->c:Lcom/byazt/w/n$c;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 27
    iget-wide v2, v0, Lcom/byazt/w/n$c;->tt:J

    cmp-long v4, v2, p1

    if-lez v4, :cond_0

    .line 28
    iget-object v1, v0, Lcom/byazt/w/n$c;->ve:Lcom/byazt/w/n$c;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eq v0, v1, :cond_1

    .line 29
    iget-wide v2, v0, Lcom/byazt/w/n$c;->tt:J

    sub-long v2, p1, v2

    iget-wide v4, v1, Lcom/byazt/w/n$c;->tt:J

    sub-long/2addr v4, p1

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public c(JJ)Z
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/n;->c:Lcom/byazt/w/n$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget-wide v2, v0, Lcom/byazt/w/n$c;->c:J

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    iget-wide v2, v0, Lcom/byazt/w/n$c;->tt:J

    cmp-long v4, p3, v2

    if-gez v4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, v0, Lcom/byazt/w/n$c;->ve:Lcom/byazt/w/n$c;

    if-eqz v2, :cond_2

    .line 5
    iget-wide v2, v2, Lcom/byazt/w/n$c;->tt:J

    sub-long v2, p3, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 6
    iput-wide p1, v0, Lcom/byazt/w/n$c;->c:J

    .line 7
    iput-wide p3, v0, Lcom/byazt/w/n$c;->tt:J

    .line 8
    monitor-exit p0

    return v1

    .line 9
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/byazt/w/n;->c()Lcom/byazt/w/n$c;

    move-result-object v2

    .line 11
    iput-wide p1, v2, Lcom/byazt/w/n$c;->c:J

    .line 12
    iput-wide p3, v2, Lcom/byazt/w/n$c;->tt:J

    if-eqz v0, :cond_3

    .line 13
    iput-object v0, v2, Lcom/byazt/w/n$c;->ve:Lcom/byazt/w/n$c;

    .line 14
    iput-object v2, v0, Lcom/byazt/w/n$c;->uj:Lcom/byazt/w/n$c;

    .line 15
    :cond_3
    iput-object v2, p0, Lcom/byazt/w/n;->c:Lcom/byazt/w/n$c;

    .line 16
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public tt(JJ)J
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/w/n;->c:Lcom/byazt/w/n$c;

    .line 3
    .line 4
    const-wide/16 v1, -0x1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-wide v1

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/byazt/w/n;->c(J)Lcom/byazt/w/n$c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-wide v1

    .line 18
    :cond_1
    iget-wide v3, v0, Lcom/byazt/w/n$c;->c:J

    .line 19
    .line 20
    iget-wide v5, p1, Lcom/byazt/w/n$c;->c:J

    .line 21
    .line 22
    sub-long/2addr v3, v5

    .line 23
    iget-wide p1, p1, Lcom/byazt/w/n$c;->tt:J

    .line 24
    .line 25
    sub-long/2addr p3, p1

    .line 26
    const-wide/16 p1, 0x0

    .line 27
    .line 28
    cmp-long v0, v3, p1

    .line 29
    .line 30
    if-ltz v0, :cond_2

    .line 31
    .line 32
    cmp-long v0, p3, p1

    .line 33
    .line 34
    if-lez v0, :cond_2

    .line 35
    .line 36
    div-long/2addr v3, p3

    .line 37
    monitor-exit p0

    .line 38
    return-wide v3

    .line 39
    :cond_2
    monitor-exit p0

    .line 40
    return-wide v1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method
