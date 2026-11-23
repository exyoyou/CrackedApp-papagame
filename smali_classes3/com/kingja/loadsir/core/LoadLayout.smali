.class public Lcom/kingja/loadsir/core/LoadLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final h:I = 0x1


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Lcom/kingja/loadsir/callback/Callback$OnReloadListener;

.field private f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kingja/loadsir/core/LoadLayout;->b:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/kingja/loadsir/core/LoadLayout;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1}, Lcom/kingja/loadsir/core/LoadLayout;-><init>(Landroid/content/Context;)V

    .line 5
    iput-object p1, p0, Lcom/kingja/loadsir/core/LoadLayout;->d:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/kingja/loadsir/core/LoadLayout;->e:Lcom/kingja/loadsir/callback/Callback$OnReloadListener;

    return-void
.end method

.method static synthetic a(Lcom/kingja/loadsir/core/LoadLayout;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kingja/loadsir/core/LoadLayout;->f(Ljava/lang/Class;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Ljava/lang/Class;)V
    .locals 3
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
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadLayout;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object p1, v1, v2

    .line 21
    .line 22
    const-string p1, "The Callback (%s) is nonexistent."

    .line 23
    .line 24
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method private d(Ljava/lang/Class;)V
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
    new-instance v0, Lcom/kingja/loadsir/core/LoadLayout$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kingja/loadsir/core/LoadLayout$a;-><init>(Lcom/kingja/loadsir/core/LoadLayout;Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private f(Ljava/lang/Class;)V
    .locals 4
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
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadLayout;->f:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/kingja/loadsir/core/LoadLayout;->c:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/kingja/loadsir/callback/Callback;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kingja/loadsir/callback/Callback;->onDetach()V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-le v0, v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadLayout;->c:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_5

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/Class;

    .line 50
    .line 51
    if-ne v1, p1, :cond_3

    .line 52
    .line 53
    iget-object v2, p0, Lcom/kingja/loadsir/core/LoadLayout;->c:Ljava/util/Map;

    .line 54
    .line 55
    const-class v3, Lcom/kingja/loadsir/callback/SuccessCallback;

    .line 56
    .line 57
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/kingja/loadsir/callback/SuccessCallback;

    .line 62
    .line 63
    if-ne v1, v3, :cond_4

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/kingja/loadsir/callback/SuccessCallback;->show()V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    iget-object v3, p0, Lcom/kingja/loadsir/core/LoadLayout;->c:Ljava/util/Map;

    .line 70
    .line 71
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/kingja/loadsir/callback/Callback;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/kingja/loadsir/callback/Callback;->getSuccessVisible()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-virtual {v2, v3}, Lcom/kingja/loadsir/callback/SuccessCallback;->showWithCallback(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/kingja/loadsir/core/LoadLayout;->c:Ljava/util/Map;

    .line 85
    .line 86
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lcom/kingja/loadsir/callback/Callback;

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/kingja/loadsir/callback/Callback;->getRootView()Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    iget-object v3, p0, Lcom/kingja/loadsir/core/LoadLayout;->c:Ljava/util/Map;

    .line 100
    .line 101
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/kingja/loadsir/callback/Callback;

    .line 106
    .line 107
    iget-object v3, p0, Lcom/kingja/loadsir/core/LoadLayout;->d:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {v1, v3, v2}, Lcom/kingja/loadsir/callback/Callback;->onAttach(Landroid/content/Context;Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    :goto_1
    iput-object p1, p0, Lcom/kingja/loadsir/core/LoadLayout;->f:Ljava/lang/Class;

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    iput-object p1, p0, Lcom/kingja/loadsir/core/LoadLayout;->g:Ljava/lang/Class;

    .line 116
    .line 117
    return-void
.end method


# virtual methods
.method public b(Lcom/kingja/loadsir/callback/Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadLayout;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadLayout;->c:Ljava/util/Map;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Class;)V
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
    invoke-direct {p0, p1}, Lcom/kingja/loadsir/core/LoadLayout;->c(Ljava/lang/Class;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Li7/b;->b()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/kingja/loadsir/core/LoadLayout;->f(Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingja/loadsir/core/LoadLayout;->d(Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public getCurrentCallback()Ljava/lang/Class;
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
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadLayout;->g:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCallBack(Ljava/lang/Class;Lcom/kingja/loadsir/core/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;",
            "Lcom/kingja/loadsir/core/d;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingja/loadsir/core/LoadLayout;->c(Ljava/lang/Class;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadLayout;->d:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/kingja/loadsir/core/LoadLayout;->c:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/kingja/loadsir/callback/Callback;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/kingja/loadsir/callback/Callback;->obtainRootView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p2, v0, p1}, Lcom/kingja/loadsir/core/d;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setupCallback(Lcom/kingja/loadsir/callback/Callback;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/kingja/loadsir/callback/Callback;->copy()Lcom/kingja/loadsir/callback/Callback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadLayout;->d:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/kingja/loadsir/core/LoadLayout;->e:Lcom/kingja/loadsir/callback/Callback$OnReloadListener;

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/kingja/loadsir/callback/Callback;->setCallback(Landroid/content/Context;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)Lcom/kingja/loadsir/callback/Callback;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/kingja/loadsir/core/LoadLayout;->b(Lcom/kingja/loadsir/callback/Callback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setupSuccessLayout(Lcom/kingja/loadsir/callback/Callback;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/kingja/loadsir/core/LoadLayout;->b(Lcom/kingja/loadsir/callback/Callback;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/kingja/loadsir/callback/Callback;->getRootView()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x4

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    const-class p1, Lcom/kingja/loadsir/callback/SuccessCallback;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/kingja/loadsir/core/LoadLayout;->g:Ljava/lang/Class;

    .line 24
    .line 25
    return-void
.end method
