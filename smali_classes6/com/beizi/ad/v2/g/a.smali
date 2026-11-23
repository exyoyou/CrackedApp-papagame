.class public Lcom/beizi/ad/v2/g/a;
.super Lcom/beizi/ad/v2/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/v2/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/beizi/ad/v2/g/b;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/beizi/ad/v2/g/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/beizi/ad/v2/a/a;->a:Lcom/beizi/ad/v2/a/b;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/beizi/ad/v2/a/a;->a:Lcom/beizi/ad/v2/a/b;

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    instance-of v1, v0, Lcom/beizi/ad/v2/g/b;

    if-nez v1, :cond_1

    return-void

    .line 13
    :cond_1
    check-cast v0, Lcom/beizi/ad/v2/g/b;

    invoke-virtual {v0, p1, p2}, Lcom/beizi/ad/v2/g/b;->a(II)V

    return-void
.end method

.method public a(IIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/beizi/ad/v2/a/a;->a:Lcom/beizi/ad/v2/a/b;

    if-nez v0, :cond_0

    return-void

    .line 15
    :cond_0
    instance-of v1, v0, Lcom/beizi/ad/v2/g/b;

    if-nez v1, :cond_1

    return-void

    .line 16
    :cond_1
    check-cast v0, Lcom/beizi/ad/v2/g/b;

    invoke-virtual {v0, p1}, Lcom/beizi/ad/v2/g/b;->a(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/beizi/ad/v2/a/a;->a:Lcom/beizi/ad/v2/a/b;

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    instance-of v1, v0, Lcom/beizi/ad/v2/g/b;

    if-nez v1, :cond_1

    return-void

    .line 10
    :cond_1
    check-cast v0, Lcom/beizi/ad/v2/g/b;

    invoke-virtual {v0, p1}, Lcom/beizi/ad/v2/g/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/beizi/ad/a;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/v2/a/a;->a:Lcom/beizi/ad/v2/a/b;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v1, v0, Lcom/beizi/ad/v2/g/b;

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    check-cast v0, Lcom/beizi/ad/v2/g/b;

    invoke-virtual {v0, p1}, Lcom/beizi/ad/v2/g/b;->a(Lcom/beizi/ad/a;)V

    return-void
.end method

.method public a(Lcom/beizi/ad/v2/b/a;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/beizi/ad/v2/a/a;->a:Lcom/beizi/ad/v2/a/b;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    instance-of v1, v0, Lcom/beizi/ad/v2/g/b;

    if-nez v1, :cond_1

    return-void

    .line 7
    :cond_1
    check-cast v0, Lcom/beizi/ad/v2/g/b;

    invoke-virtual {v0, p1}, Lcom/beizi/ad/v2/g/b;->a(Lcom/beizi/ad/v2/b/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/beizi/ad/v2/a/a;->a:Lcom/beizi/ad/v2/a/b;

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    instance-of v0, v0, Lcom/beizi/ad/v2/g/b;

    if-nez v0, :cond_1

    return-void

    .line 19
    :cond_1
    new-instance v0, Lcom/beizi/ad/model/f;

    invoke-direct {v0}, Lcom/beizi/ad/model/f;-><init>()V

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 21
    invoke-virtual {v0, p1}, Lcom/beizi/ad/model/f;->a(Ljava/lang/String;)V

    .line 22
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 23
    invoke-virtual {v0, p2}, Lcom/beizi/ad/model/f;->b(Ljava/lang/String;)V

    .line 24
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 25
    invoke-virtual {v0, p3}, Lcom/beizi/ad/model/f;->c(Ljava/lang/String;)V

    .line 26
    :cond_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 27
    invoke-virtual {v0, p4}, Lcom/beizi/ad/model/f;->d(Ljava/lang/String;)V

    .line 28
    :cond_5
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 29
    invoke-virtual {v0, p5}, Lcom/beizi/ad/model/f;->e(Ljava/lang/String;)V

    .line 30
    :cond_6
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 31
    invoke-virtual {v0, p6}, Lcom/beizi/ad/model/f;->f(Ljava/lang/String;)V

    .line 32
    :cond_7
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 33
    invoke-virtual {v0, p7}, Lcom/beizi/ad/model/f;->g(Ljava/lang/String;)V

    .line 34
    :cond_8
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 35
    invoke-virtual {v0, p8}, Lcom/beizi/ad/model/f;->h(Ljava/lang/String;)V

    .line 36
    :cond_9
    iget-object p1, p0, Lcom/beizi/ad/v2/a/a;->a:Lcom/beizi/ad/v2/a/b;

    check-cast p1, Lcom/beizi/ad/v2/g/b;

    invoke-virtual {p1, v0, p9}, Lcom/beizi/ad/v2/g/b;->a(Lcom/beizi/ad/model/f;I)V

    return-void
.end method

.method public b(Landroid/view/View$OnTouchListener;)V
    .locals 2

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
    instance-of v1, v0, Lcom/beizi/ad/v2/g/b;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    check-cast v0, Lcom/beizi/ad/v2/g/b;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/beizi/ad/v2/g/b;->b(Landroid/view/View$OnTouchListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public t()V
    .locals 2

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
    instance-of v1, v0, Lcom/beizi/ad/v2/g/b;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    check-cast v0, Lcom/beizi/ad/v2/g/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/beizi/ad/v2/g/b;->D()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
