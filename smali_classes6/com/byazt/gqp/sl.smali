.class public Lcom/byazt/gqp/sl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x143,
        0x9e
    }
.end annotation


# instance fields
.field public a:J

.field public c:J

.field public n:J

.field public sp:J

.field public tt:J

.field public uj:J

.field public ve:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gqp/sl;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gqp/sl;->c:J

    .line 5
    :try_start_0
    instance-of v0, p1, Lcom/byazt/eg/md;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lcom/byazt/eg/md;

    .line 7
    invoke-virtual {p1}, Lcom/byazt/eg/md;->uj()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gqp/sl;->c:J

    .line 8
    invoke-virtual {p1}, Lcom/byazt/eg/md;->da()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gqp/sl;->tt:J

    .line 9
    invoke-virtual {p1}, Lcom/byazt/eg/md;->n()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gqp/sl;->ve:J

    .line 10
    invoke-virtual {p1}, Lcom/byazt/eg/md;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gqp/sl;->uj:J

    .line 11
    invoke-virtual {p1}, Lcom/byazt/eg/md;->sp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gqp/sl;->n:J

    .line 12
    invoke-virtual {p1}, Lcom/byazt/eg/md;->x()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gqp/sl;->a:J

    .line 13
    invoke-virtual {p1}, Lcom/byazt/eg/md;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gqp/sl;->sp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gqp/sl;->ve:J

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/gqp/sl;->a:J

    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gqp/sl;->uj:J

    return-void
.end method

.method public tt(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/gqp/sl;->sp:J

    return-void
.end method

.method public uj()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/byazt/gqp/sl;->tt:J

    .line 6
    .line 7
    return-void
.end method

.method public ve()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/byazt/gqp/sl;->n:J

    .line 6
    .line 7
    return-void
.end method
