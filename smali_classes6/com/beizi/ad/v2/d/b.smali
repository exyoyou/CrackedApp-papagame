.class public Lcom/beizi/ad/v2/d/b;
.super Lcom/beizi/ad/v2/a/b;
.source "SourceFile"


# instance fields
.field private H:Lcom/beizi/ad/d;

.field private I:Ljava/lang/String;

.field private J:Lcom/beizi/ad/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    sget-object p3, Lcom/beizi/ad/internal/f;->g:Lcom/beizi/ad/internal/f;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/beizi/ad/v2/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/ad/internal/f;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/v2/d/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/ad/v2/a/b;->t:Z

    return p0
.end method

.method static synthetic a(Lcom/beizi/ad/v2/d/b;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/beizi/ad/v2/a/b;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/beizi/ad/v2/d/b;)Lcom/beizi/ad/internal/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/a/b;->r:Lcom/beizi/ad/internal/a/b;

    return-object p0
.end method

.method static synthetic c(Lcom/beizi/ad/v2/d/b;)Lcom/beizi/ad/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/d/b;->H:Lcom/beizi/ad/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/beizi/ad/v2/d/b;)Lcom/beizi/ad/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/v2/d/b;->J:Lcom/beizi/ad/e;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/d/b;->I:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public a(Landroid/view/View;Lcom/beizi/ad/internal/c/c;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/beizi/ad/v2/d/b;->J:Lcom/beizi/ad/e;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/beizi/ad/v2/d/b$1;

    invoke-direct {v1, p0, p2}, Lcom/beizi/ad/v2/d/b$1;-><init>(Lcom/beizi/ad/v2/d/b;Lcom/beizi/ad/internal/c/c;)V

    invoke-interface {v0, p1, v1}, Lcom/beizi/ad/e;->a(Landroid/view/View;Lcom/beizi/ad/internal/c/c;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/beizi/ad/d;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/ad/v2/d/b;->H:Lcom/beizi/ad/d;

    return-void
.end method

.method public a(Lcom/beizi/ad/internal/d/a;)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->a()Lcom/beizi/ad/e;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/ad/v2/d/b;->J:Lcom/beizi/ad/e;

    if-nez v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/beizi/ad/v2/a/b;->F:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 8
    new-instance v0, Lcom/beizi/ad/v2/d/b$3;

    invoke-direct {v0, p0}, Lcom/beizi/ad/v2/d/b$3;-><init>(Lcom/beizi/ad/v2/d/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beizi/ad/v2/a/b;->b(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beizi/ad/v2/a/b;->c(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/beizi/ad/internal/d/a;->B()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/beizi/ad/v2/a/b;->a(Z)V

    .line 12
    iget-object p1, p0, Lcom/beizi/ad/v2/d/b;->J:Lcom/beizi/ad/e;

    invoke-interface {p1}, Lcom/beizi/ad/e;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/beizi/ad/v2/d/b;->g(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/beizi/ad/v2/d/b;->J:Lcom/beizi/ad/e;

    check-cast p1, Lcom/beizi/ad/internal/c/a;

    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->t:Z

    invoke-virtual {p1, v0}, Lcom/beizi/ad/internal/c/a;->a(Z)V

    .line 14
    iget-object p1, p0, Lcom/beizi/ad/v2/d/b;->J:Lcom/beizi/ad/e;

    check-cast p1, Lcom/beizi/ad/internal/c/a;

    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/beizi/ad/internal/c/a;->a(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/beizi/ad/v2/a/b;->F:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 16
    new-instance v0, Lcom/beizi/ad/v2/d/b$4;

    invoke-direct {v0, p0}, Lcom/beizi/ad/v2/d/b$4;-><init>(Lcom/beizi/ad/v2/d/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/v2/d/b;->H:Lcom/beizi/ad/d;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/beizi/ad/v2/a/b;->j:Z

    .line 4
    iget-object v0, p0, Lcom/beizi/ad/v2/a/b;->F:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 5
    new-instance v1, Lcom/beizi/ad/v2/d/b$2;

    invoke-direct {v1, p0, p1}, Lcom/beizi/ad/v2/d/b$2;-><init>(Lcom/beizi/ad/v2/d/b;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/d/b;->I:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
