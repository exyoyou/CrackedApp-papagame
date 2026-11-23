.class public Lcom/facebook/rebound/s;
.super Lcom/facebook/rebound/n;
.source "SourceFile"


# static fields
.field public static d:D = 16.6667


# instance fields
.field private b:D

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/facebook/rebound/n;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lcom/facebook/rebound/s;->d:D

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/facebook/rebound/s;->b:D

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/facebook/rebound/s;->c:Z

    .line 3
    .line 4
    :goto_0
    iget-object v0, p0, Lcom/facebook/rebound/n;->a:Lcom/facebook/rebound/c;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/facebook/rebound/c;->g()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/facebook/rebound/s;->c:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/n;->a:Lcom/facebook/rebound/c;

    .line 18
    .line 19
    iget-wide v1, p0, Lcom/facebook/rebound/s;->b:D

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/c;->i(D)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/facebook/rebound/s;->c:Z

    .line 3
    .line 4
    return-void
.end method

.method public d()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/rebound/s;->b:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public e(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/rebound/s;->b:D

    .line 2
    .line 3
    return-void
.end method
