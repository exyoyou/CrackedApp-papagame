.class public Lcom/byazt/mt/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xl/sl;
.implements Lcom/byazt/xl/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2ac,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/mt/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/xl/sl;",
        "Lcom/byazt/xl/uj<",
        "Lcom/byazt/tm/DynamicRootView;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/xl/u;

.field public c:Lcom/byazt/tm/DynamicRootView;

.field public volatile i:Z

.field public n:Lcom/byazt/xl/x;

.field public sp:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public tt:Lcom/byazt/du/x;

.field public uj:Lcom/byazt/xl/sp;

.field public ve:Landroid/content/Context;

.field public x:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/xv/ThemeStatusBroadcastReceiver;ZLcom/byazt/du/x;Lcom/byazt/xl/u;Lcom/byazt/wl/c;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/mt/c;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/byazt/mt/c;->i:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/byazt/mt/c;->ve:Landroid/content/Context;

    .line 15
    .line 16
    new-instance v0, Lcom/byazt/tm/DynamicRootView;

    .line 17
    .line 18
    move-object v2, v0

    .line 19
    move-object v3, p1

    .line 20
    move-object v4, p2

    .line 21
    move v5, p3

    .line 22
    move-object v6, p5

    .line 23
    move-object v7, p6

    .line 24
    invoke-direct/range {v2 .. v7}, Lcom/byazt/tm/DynamicRootView;-><init>(Landroid/content/Context;Lcom/byazt/xv/ThemeStatusBroadcastReceiver;ZLcom/byazt/xl/u;Lcom/byazt/wl/c;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/byazt/mt/c;->c:Lcom/byazt/tm/DynamicRootView;

    .line 28
    .line 29
    iput-object p4, p0, Lcom/byazt/mt/c;->tt:Lcom/byazt/du/x;

    .line 30
    .line 31
    iput-object p5, p0, Lcom/byazt/mt/c;->a:Lcom/byazt/xl/u;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lcom/byazt/tm/DynamicRootView;->setRenderListener(Lcom/byazt/xl/sl;)V

    .line 34
    .line 35
    .line 36
    iput-object p5, p0, Lcom/byazt/mt/c;->a:Lcom/byazt/xl/u;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic a(Lcom/byazt/mt/c;)Lcom/byazt/du/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/mt/c;->tt:Lcom/byazt/du/x;

    return-object p0
.end method

.method private c(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 24
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 25
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 26
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/byazt/mt/c;->c(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_1
    instance-of v0, p1, Lcom/byazt/tm/n;

    if-eqz v0, :cond_2

    .line 28
    check-cast p1, Lcom/byazt/tm/n;

    invoke-interface {p1}, Lcom/byazt/tm/n;->tt()V

    :cond_2
    return-void
.end method

.method private c(Lcom/byazt/aq/x;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/aq/x;->sl()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 20
    :cond_1
    new-instance v0, Lcom/byazt/mt/c$4;

    invoke-direct {v0, p0}, Lcom/byazt/mt/c$4;-><init>(Lcom/byazt/mt/c;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/aq/x;

    if-eqz v0, :cond_2

    .line 22
    invoke-direct {p0, v0}, Lcom/byazt/mt/c;->c(Lcom/byazt/aq/x;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/mt/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/mt/c;->x()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/mt/c;Lcom/byazt/aq/x;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/mt/c;->c(Lcom/byazt/aq/x;)V

    return-void
.end method

.method private da()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/mt/c;->sp:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/mt/c;->sp:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/byazt/mt/c;->sp:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/mt/c;->c:Lcom/byazt/tm/DynamicRootView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public static synthetic n(Lcom/byazt/mt/c;)Lcom/byazt/tm/DynamicRootView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/mt/c;->c:Lcom/byazt/tm/DynamicRootView;

    return-object p0
.end method

.method private tt(Lcom/byazt/aq/x;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/aq/x;->sl()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/aq/x;

    .line 6
    invoke-virtual {v3}, Lcom/byazt/aq/x;->sp()F

    move-result v4

    invoke-virtual {p1}, Lcom/byazt/aq/x;->sp()F

    move-result v5

    invoke-virtual {v3}, Lcom/byazt/aq/x;->i()F

    move-result v6

    sub-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    .line 7
    invoke-virtual {v3}, Lcom/byazt/aq/x;->sl()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 9
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byazt/aq/x;

    .line 10
    invoke-virtual {v6}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/byazt/aq/n;->getType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "logo-union"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 11
    invoke-virtual {v6}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/aq/n;->a()I

    move-result v2

    int-to-float v5, v2

    neg-float v2, v5

    .line 12
    invoke-virtual {p1}, Lcom/byazt/aq/x;->sp()F

    move-result v6

    add-float/2addr v2, v6

    invoke-virtual {v3}, Lcom/byazt/aq/x;->sp()F

    move-result v6

    sub-float/2addr v2, v6

    invoke-virtual {v3}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/aq/a;->mq()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 13
    :cond_4
    invoke-direct {p0, v3}, Lcom/byazt/mt/c;->tt(Lcom/byazt/aq/x;)V

    const/high16 v4, -0x3e900000    # -15.0f

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_1

    .line 14
    invoke-virtual {v3}, Lcom/byazt/aq/x;->i()F

    move-result v4

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/byazt/aq/x;->a(F)V

    .line 15
    invoke-virtual {v3}, Lcom/byazt/aq/x;->sp()F

    move-result v4

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/byazt/aq/x;->uj(F)V

    .line 16
    invoke-virtual {v3}, Lcom/byazt/aq/x;->sl()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/aq/x;

    .line 17
    invoke-virtual {v4}, Lcom/byazt/aq/x;->sp()F

    move-result v6

    sub-float/2addr v6, v5

    invoke-virtual {v4, v6}, Lcom/byazt/aq/x;->uj(F)V

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 18
    :cond_6
    invoke-virtual {p1}, Lcom/byazt/aq/x;->t()Lcom/byazt/aq/x;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 19
    :cond_7
    invoke-virtual {p1}, Lcom/byazt/aq/x;->a()F

    move-result v3

    invoke-virtual {v0}, Lcom/byazt/aq/x;->a()F

    move-result v4

    sub-float/2addr v3, v4

    .line 20
    invoke-virtual {p1}, Lcom/byazt/aq/x;->sp()F

    move-result v4

    invoke-virtual {v0}, Lcom/byazt/aq/x;->sp()F

    move-result v0

    sub-float/2addr v4, v0

    .line 21
    invoke-virtual {p1, v3}, Lcom/byazt/aq/x;->ve(F)V

    .line 22
    invoke-virtual {p1, v4}, Lcom/byazt/aq/x;->uj(F)V

    cmpl-float v0, v2, v1

    if-lez v0, :cond_8

    .line 23
    invoke-virtual {p1}, Lcom/byazt/aq/x;->sp()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/byazt/aq/x;->uj(F)V

    .line 24
    invoke-virtual {p1}, Lcom/byazt/aq/x;->i()F

    move-result v0

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/byazt/aq/x;->a(F)V

    .line 25
    invoke-virtual {p1}, Lcom/byazt/aq/x;->sl()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/aq/x;

    .line 26
    invoke-virtual {v0}, Lcom/byazt/aq/x;->sp()F

    move-result v1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/byazt/aq/x;->uj(F)V

    goto :goto_2

    :cond_8
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/mt/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/mt/c;->da()V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/mt/c;Lcom/byazt/aq/x;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/mt/c;->tt(Lcom/byazt/aq/x;)V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/mt/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/mt/c;->i:Z

    return p0
.end method

.method public static synthetic ve(Lcom/byazt/mt/c;)Lcom/byazt/xl/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/mt/c;->a:Lcom/byazt/xl/u;

    return-object p0
.end method

.method private ve(Lcom/byazt/aq/x;)V
    .locals 4

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/byazt/mt/c;->tt:Lcom/byazt/du/x;

    instance-of p1, p1, Lcom/byazt/du/sp;

    if-eqz p1, :cond_0

    const/16 p1, 0x7b

    goto :goto_0

    :cond_0
    const/16 p1, 0x71

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/byazt/mt/c;->c:Lcom/byazt/tm/DynamicRootView;

    const-string v1, "layoutUnit is null"

    invoke-virtual {v0, p1, v1}, Lcom/byazt/tm/DynamicRootView;->c(ILjava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/byazt/mt/c;->a:Lcom/byazt/xl/u;

    invoke-virtual {v0}, Lcom/byazt/xl/u;->sp()Lcom/byazt/xl/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/mt/c;->ve()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/byazt/xl/i;->uj(I)V

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/byazt/mt/c;->c:Lcom/byazt/tm/DynamicRootView;

    invoke-virtual {p0}, Lcom/byazt/mt/c;->ve()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/byazt/tm/DynamicRootView;->c(Lcom/byazt/aq/x;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    iget-object v0, p0, Lcom/byazt/mt/c;->tt:Lcom/byazt/du/x;

    instance-of v0, v0, Lcom/byazt/du/sp;

    if-eqz v0, :cond_2

    const/16 v0, 0x80

    goto :goto_1

    :cond_2
    const/16 v0, 0x76

    .line 9
    :goto_1
    iget-object v1, p0, Lcom/byazt/mt/c;->c:Lcom/byazt/tm/DynamicRootView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/byazt/tm/DynamicRootView;->c(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/mt/c;Lcom/byazt/aq/x;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/mt/c;->ve(Lcom/byazt/aq/x;)V

    return-void
.end method

.method private x()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/mt/c;->a:Lcom/byazt/xl/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/xl/u;->sp()Lcom/byazt/xl/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/byazt/mt/c;->ve()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {v0, v1}, Lcom/byazt/xl/i;->tt(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/mt/c;->a:Lcom/byazt/xl/u;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byazt/xl/u;->n()Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/byazt/six/tt;->c(Lorg/json/JSONObject;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lcom/byazt/mt/c;->tt:Lcom/byazt/du/x;

    .line 27
    .line 28
    instance-of v1, v1, Lcom/byazt/du/sp;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const/16 v1, 0x7b

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/16 v1, 0x71

    .line 36
    .line 37
    :goto_0
    iget-object v2, p0, Lcom/byazt/mt/c;->c:Lcom/byazt/tm/DynamicRootView;

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v4, "data null is "

    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v2, v1, v0}, Lcom/byazt/tm/DynamicRootView;->c(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/byazt/mt/c;->tt:Lcom/byazt/du/x;

    .line 63
    .line 64
    new-instance v1, Lcom/byazt/mt/c$3;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/byazt/mt/c$3;-><init>(Lcom/byazt/mt/c;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v1}, Lcom/byazt/du/x;->c(Lcom/byazt/wl/tt;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/byazt/mt/c;->tt:Lcom/byazt/du/x;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/byazt/mt/c;->a:Lcom/byazt/xl/u;

    .line 75
    .line 76
    invoke-interface {v0, v1}, Lcom/byazt/du/x;->c(Lcom/byazt/xl/u;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public a()Lcom/byazt/tm/DynamicRootView;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/mt/c;->c:Lcom/byazt/tm/DynamicRootView;

    return-object v0
.end method

.method public c()Lcom/byazt/tm/DynamicRootView;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/byazt/mt/c;->a()Lcom/byazt/tm/DynamicRootView;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/view/View;ILcom/byazt/sr/ve;I)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/byazt/mt/c;->n:Lcom/byazt/xl/x;

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/xl/x;->c(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/xl/sp;)V
    .locals 4

    .line 3
    iput-object p1, p0, Lcom/byazt/mt/c;->uj:Lcom/byazt/xl/sp;

    .line 4
    iget-object p1, p0, Lcom/byazt/mt/c;->a:Lcom/byazt/xl/u;

    invoke-virtual {p1}, Lcom/byazt/xl/u;->x()I

    move-result p1

    if-gez p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/byazt/mt/c;->tt:Lcom/byazt/du/x;

    instance-of v0, v0, Lcom/byazt/du/sp;

    if-eqz v0, :cond_0

    const/16 v0, 0x7f

    goto :goto_0

    :cond_0
    const/16 v0, 0x75

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/byazt/mt/c;->c:Lcom/byazt/tm/DynamicRootView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "time is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/byazt/tm/DynamicRootView;->c(ILjava/lang/String;)V

    return-void

    .line 7
    :cond_1
    new-instance v0, Lcom/byazt/mt/c$c;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/byazt/mt/c$c;-><init>(Lcom/byazt/mt/c;I)V

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, p1}, Lcom/byazt/or/n;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/mt/c;->sp:Ljava/util/concurrent/ScheduledFuture;

    .line 8
    iget-boolean p1, p0, Lcom/byazt/mt/c;->i:Z

    if-eqz p1, :cond_2

    .line 9
    invoke-static {}, Lcom/byazt/nr/da;->ve()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/byazt/mt/c$1;

    invoke-direct {v0, p0}, Lcom/byazt/mt/c$1;-><init>(Lcom/byazt/mt/c;)V

    iget-object v1, p0, Lcom/byazt/mt/c;->a:Lcom/byazt/xl/u;

    .line 10
    invoke-virtual {v1}, Lcom/byazt/xl/u;->sl()J

    move-result-wide v1

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 12
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/byazt/mt/c;->a:Lcom/byazt/xl/u;

    .line 13
    invoke-virtual {p1}, Lcom/byazt/xl/u;->sl()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_3

    .line 14
    invoke-direct {p0}, Lcom/byazt/mt/c;->x()V

    return-void

    .line 15
    :cond_3
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/byazt/mt/c$2;

    invoke-direct {v0, p0}, Lcom/byazt/mt/c$2;-><init>(Lcom/byazt/mt/c;)V

    iget-object v1, p0, Lcom/byazt/mt/c;->a:Lcom/byazt/xl/u;

    .line 16
    invoke-virtual {v1}, Lcom/byazt/xl/u;->sl()J

    move-result-wide v1

    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public c(Lcom/byazt/xl/x;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/byazt/mt/c;->n:Lcom/byazt/xl/x;

    return-void
.end method

.method public c(Lcom/byazt/xl/yp;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/byazt/mt/c;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/byazt/mt/c;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33
    invoke-virtual {p1}, Lcom/byazt/xl/yp;->ve()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-direct {p0}, Lcom/byazt/mt/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 36
    iget-object v1, p0, Lcom/byazt/mt/c;->c:Lcom/byazt/tm/DynamicRootView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v0, p0, Lcom/byazt/mt/c;->uj:Lcom/byazt/xl/sp;

    invoke-virtual {p0}, Lcom/byazt/mt/c;->c()Lcom/byazt/tm/DynamicRootView;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/byazt/xl/sp;->c(Landroid/view/View;Lcom/byazt/xl/yp;)V

    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/byazt/mt/c;->uj:Lcom/byazt/xl/sp;

    invoke-virtual {p1}, Lcom/byazt/xl/yp;->sl()I

    move-result v1

    invoke-virtual {p1}, Lcom/byazt/xl/yp;->da()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/byazt/mt/c;->c:Lcom/byazt/tm/DynamicRootView;

    invoke-virtual {v0, p1}, Lcom/byazt/tm/DynamicRootView;->setSoundMute(Z)V

    return-void
.end method

.method public n()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/mt/c;->c:Lcom/byazt/tm/DynamicRootView;

    invoke-virtual {v0}, Lcom/byazt/tm/DynamicRootView;->tt()V

    return-void
.end method

.method public synthetic sp()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/mt/c;->c()Lcom/byazt/tm/DynamicRootView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public tt()V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/byazt/mt/c;->c()Lcom/byazt/tm/DynamicRootView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/byazt/mt/c;->c(Landroid/view/View;)V

    return-void
.end method

.method public tt(Landroid/view/View;ILcom/byazt/sr/ve;I)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/byazt/mt/c;->n:Lcom/byazt/xl/x;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/xl/x;->tt(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    :cond_0
    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/byazt/mt/c;->i:Z

    return-void
.end method

.method public uj()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/mt/c;->c:Lcom/byazt/tm/DynamicRootView;

    invoke-virtual {v0}, Lcom/byazt/tm/DynamicRootView;->c()V

    return-void
.end method

.method public ve()I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/mt/c;->tt:Lcom/byazt/du/x;

    instance-of v0, v0, Lcom/byazt/du/sp;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method
