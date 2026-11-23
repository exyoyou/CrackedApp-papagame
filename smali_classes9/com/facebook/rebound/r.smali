.class public Lcom/facebook/rebound/r;
.super Lcom/facebook/rebound/n;
.source "SourceFile"


# instance fields
.field private b:Z

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/rebound/n;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/facebook/rebound/r;->b:Z

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/facebook/rebound/r;->c:J

    .line 7
    .line 8
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/facebook/rebound/r;->b:Z

    .line 3
    .line 4
    return-void
.end method

.method public d(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/n;->a:Lcom/facebook/rebound/c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/facebook/rebound/r;->b:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-wide v1, p0, Lcom/facebook/rebound/r;->c:J

    .line 11
    .line 12
    add-long/2addr v1, p1

    .line 13
    long-to-double p1, v1

    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/facebook/rebound/c;->i(D)V

    .line 15
    .line 16
    .line 17
    iput-wide v1, p0, Lcom/facebook/rebound/r;->c:J

    .line 18
    .line 19
    iget-object p1, p0, Lcom/facebook/rebound/n;->a:Lcom/facebook/rebound/c;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/facebook/rebound/c;->g()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method
