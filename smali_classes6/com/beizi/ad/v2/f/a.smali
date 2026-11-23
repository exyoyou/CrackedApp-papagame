.class public Lcom/beizi/ad/v2/f/a;
.super Lcom/beizi/ad/v2/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/beizi/ad/v2/f/b;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/beizi/ad/v2/f/b;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/beizi/ad/v2/a/a;->a:Lcom/beizi/ad/v2/a/b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/beizi/ad/v2/a/a;->a:Lcom/beizi/ad/v2/a/b;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    instance-of v1, v0, Lcom/beizi/ad/v2/f/b;

    if-nez v1, :cond_1

    return-void

    .line 6
    :cond_1
    check-cast v0, Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v0, p1}, Lcom/beizi/ad/v2/f/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/beizi/ad/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/a;->a:Lcom/beizi/ad/v2/a/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v1, v0, Lcom/beizi/ad/v2/f/b;

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    check-cast v0, Lcom/beizi/ad/v2/f/b;

    invoke-virtual {v0, p1}, Lcom/beizi/ad/v2/f/b;->a(Lcom/beizi/ad/f;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/a;->a:Lcom/beizi/ad/v2/a/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/b;->b()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
