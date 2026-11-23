.class public Lcom/beizi/ad/v2/h/a;
.super Lcom/beizi/ad/v2/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p3, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p3, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p3, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    if-eq p3, v0, :cond_0

    .line 15
    .line 16
    const/4 p3, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p3, Lcom/beizi/ad/internal/f;->g:Lcom/beizi/ad/internal/f;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object p3, Lcom/beizi/ad/internal/f;->e:Lcom/beizi/ad/internal/f;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    sget-object p3, Lcom/beizi/ad/internal/f;->b:Lcom/beizi/ad/internal/f;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    sget-object p3, Lcom/beizi/ad/internal/f;->f:Lcom/beizi/ad/internal/f;

    .line 28
    .line 29
    :goto_0
    new-instance v0, Lcom/beizi/ad/v2/h/c;

    .line 30
    .line 31
    invoke-direct {v0, p1, p2, p3}, Lcom/beizi/ad/v2/h/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/ad/internal/f;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/beizi/ad/v2/a/a;->a:Lcom/beizi/ad/v2/a/b;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/beizi/ad/v2/a/a;->a:Lcom/beizi/ad/v2/a/b;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    instance-of v1, v0, Lcom/beizi/ad/v2/h/c;

    if-nez v1, :cond_1

    return-void

    .line 6
    :cond_1
    check-cast v0, Lcom/beizi/ad/v2/h/c;

    invoke-virtual {v0, p1}, Lcom/beizi/ad/v2/h/c;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;I)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/beizi/ad/v2/a/a;->a:Lcom/beizi/ad/v2/a/b;

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    instance-of v1, v0, Lcom/beizi/ad/v2/h/c;

    if-nez v1, :cond_1

    return-void

    .line 12
    :cond_1
    check-cast v0, Lcom/beizi/ad/v2/h/c;

    invoke-virtual {v0, p1, p2}, Lcom/beizi/ad/v2/h/c;->a(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;Lcom/beizi/ad/model/k;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/beizi/ad/v2/a/a;->a:Lcom/beizi/ad/v2/a/b;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    instance-of v1, v0, Lcom/beizi/ad/v2/h/c;

    if-nez v1, :cond_1

    return-void

    .line 9
    :cond_1
    check-cast v0, Lcom/beizi/ad/v2/h/c;

    invoke-virtual {v0, p1, p2}, Lcom/beizi/ad/v2/h/c;->a(Landroid/view/ViewGroup;Lcom/beizi/ad/model/k;)V

    return-void
.end method

.method public a(Lcom/beizi/ad/v2/h/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/a/a;->a:Lcom/beizi/ad/v2/a/b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v1, v0, Lcom/beizi/ad/v2/h/c;

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    check-cast v0, Lcom/beizi/ad/v2/h/c;

    invoke-virtual {v0, p1}, Lcom/beizi/ad/v2/h/c;->a(Lcom/beizi/ad/v2/h/b;)V

    return-void
.end method
