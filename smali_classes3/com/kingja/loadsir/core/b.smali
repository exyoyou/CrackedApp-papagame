.class public Lcom/kingja/loadsir/core/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/kingja/loadsir/core/LoadLayout;

.field private c:Lcom/kingja/loadsir/core/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingja/loadsir/core/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kingja/loadsir/core/a;Lcom/kingja/loadsir/core/LoadLayout;Lcom/kingja/loadsir/core/c$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingja/loadsir/core/a<",
            "TT;>;",
            "Lcom/kingja/loadsir/core/LoadLayout;",
            "Lcom/kingja/loadsir/core/c$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/kingja/loadsir/core/b;->a:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/kingja/loadsir/core/b;->c:Lcom/kingja/loadsir/core/a;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/kingja/loadsir/core/b;->b:Lcom/kingja/loadsir/core/LoadLayout;

    .line 17
    .line 18
    invoke-direct {p0, p3}, Lcom/kingja/loadsir/core/b;->e(Lcom/kingja/loadsir/core/c$b;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method static synthetic a(Lcom/kingja/loadsir/core/b;)Lcom/kingja/loadsir/core/LoadLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kingja/loadsir/core/b;->b:Lcom/kingja/loadsir/core/LoadLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method private e(Lcom/kingja/loadsir/core/c$b;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/kingja/loadsir/core/c$b;->e()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/kingja/loadsir/core/c$b;->f()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/kingja/loadsir/callback/Callback;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/kingja/loadsir/core/b;->b:Lcom/kingja/loadsir/core/LoadLayout;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Lcom/kingja/loadsir/core/LoadLayout;->setupCallback(Lcom/kingja/loadsir/callback/Callback;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/kingja/loadsir/core/b$a;

    .line 45
    .line 46
    invoke-direct {v1, p0, p1}, Lcom/kingja/loadsir/core/b$a;-><init>(Lcom/kingja/loadsir/core/b;Ljava/lang/Class;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kingja/loadsir/core/b;->b:Lcom/kingja/loadsir/core/LoadLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kingja/loadsir/core/LoadLayout;->getCurrentCallback()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()Lcom/kingja/loadsir/core/LoadLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kingja/loadsir/core/b;->b:Lcom/kingja/loadsir/core/LoadLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/kingja/loadsir/core/b;->b:Lcom/kingja/loadsir/core/LoadLayout;

    .line 26
    .line 27
    invoke-virtual {v0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public f(Ljava/lang/Class;Lcom/kingja/loadsir/core/d;)Lcom/kingja/loadsir/core/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;",
            "Lcom/kingja/loadsir/core/d;",
            ")",
            "Lcom/kingja/loadsir/core/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kingja/loadsir/core/b;->b:Lcom/kingja/loadsir/core/LoadLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/kingja/loadsir/core/LoadLayout;->setCallBack(Ljava/lang/Class;Lcom/kingja/loadsir/core/d;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public g(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kingja/loadsir/core/b;->b:Lcom/kingja/loadsir/core/LoadLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/kingja/loadsir/core/LoadLayout;->e(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kingja/loadsir/core/b;->b:Lcom/kingja/loadsir/core/LoadLayout;

    .line 2
    .line 3
    const-class v1, Lcom/kingja/loadsir/callback/SuccessCallback;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/kingja/loadsir/core/LoadLayout;->e(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kingja/loadsir/core/b;->c:Lcom/kingja/loadsir/core/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/kingja/loadsir/core/b;->b:Lcom/kingja/loadsir/core/LoadLayout;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/kingja/loadsir/core/a;->map(Ljava/lang/Object;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v1, p1}, Lcom/kingja/loadsir/core/LoadLayout;->e(Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "You haven\'t set the Convertor."

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method
