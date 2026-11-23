.class public Lcom/byazt/cc/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x2a
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/cc/i$c;
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/pop/ve;

.field public c:Landroid/content/Context;

.field public i:Landroid/os/Handler;

.field public n:Lcom/byazt/hkv/c;

.field public sp:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/byazt/cc/c;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Lcom/byazt/ete/ic;

.field public uj:Lcom/byazt/cc/ve;

.field public ve:Landroid/widget/FrameLayout;

.field public x:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/byazt/ocd/ve;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/cc/i;->i:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method private c(Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/pop/ve;
    .locals 2

    .line 28
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->i()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/byazt/cc/i;->c:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/byazt/yih/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/wz/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/cc/i;)Ljava/lang/ref/SoftReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/i;->sp:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method private c(Lcom/byazt/ocd/ve;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/byazt/cc/i;->a:Lcom/byazt/pop/ve;

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v1, Lcom/byazt/cc/i$3;

    invoke-direct {v1, p0, p1}, Lcom/byazt/cc/i$3;-><init>(Lcom/byazt/cc/i;Lcom/byazt/ocd/ve;)V

    invoke-interface {v0, v1}, Lcom/byazt/pop/ve;->c(Lcom/byazt/pop/c;)V

    return-void
.end method

.method private c(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/byazt/ocd/ve;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/byazt/cc/i;->tt:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/byazt/cc/i;->c:Landroid/content/Context;

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/byazt/cc/i;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/pop/ve;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/cc/i;->a:Lcom/byazt/pop/ve;

    .line 32
    iget-object v0, p0, Lcom/byazt/cc/i;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->if()I

    move-result v0

    .line 33
    new-instance v1, Lcom/byazt/omf/EmptyView;

    iget-object v2, p0, Lcom/byazt/cc/i;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p2, v0}, Lcom/byazt/omf/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 34
    iget-object v0, p0, Lcom/byazt/cc/i;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v1, v0, p1}, Lcom/byazt/omf/EmptyView;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 35
    invoke-virtual {v1, p1}, Lcom/byazt/omf/EmptyView;->setAdType(I)V

    .line 36
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_1

    .line 37
    invoke-direct {p0, p3}, Lcom/byazt/cc/i;->c(Lcom/byazt/ocd/ve;)V

    .line 38
    :cond_1
    new-instance p1, Lcom/byazt/cc/i$2;

    invoke-direct {p1, p0, p2}, Lcom/byazt/cc/i$2;-><init>(Lcom/byazt/cc/i;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, p1}, Lcom/byazt/omf/EmptyView;->setCallback(Lcom/byazt/omf/EmptyView$c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/cc/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/cc/i;->ve()V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/cc/i;)Lcom/byazt/pop/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/i;->a:Lcom/byazt/pop/ve;

    return-object p0
.end method

.method private ve()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/cc/i;->i:Landroid/os/Handler;

    new-instance v1, Lcom/byazt/cc/i$4;

    invoke-direct {v1, p0}, Lcom/byazt/cc/i$4;-><init>(Lcom/byazt/cc/i;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public c()Landroid/view/ViewGroup;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/byazt/cc/i;->ve:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public c(I)V
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/byazt/cc/i;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/oz;->c(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    new-instance p1, Lcom/byazt/cc/uj;

    invoke-direct {p1}, Lcom/byazt/cc/uj;-><init>()V

    iput-object p1, p0, Lcom/byazt/cc/i;->uj:Lcom/byazt/cc/ve;

    .line 43
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/byazt/cc/i;->uj:Lcom/byazt/cc/ve;

    if-eqz p1, :cond_2

    .line 44
    iget-object v0, p0, Lcom/byazt/cc/i;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/byazt/cc/i;->ve:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/byazt/cc/i;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/cc/ve;->c(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;)V

    .line 45
    iget-object p1, p0, Lcom/byazt/cc/i;->uj:Lcom/byazt/cc/ve;

    iget-object v0, p0, Lcom/byazt/cc/i;->n:Lcom/byazt/hkv/c;

    invoke-virtual {p1, v0}, Lcom/byazt/cc/ve;->c(Lcom/byazt/hkv/c;)V

    :cond_2
    return-void
.end method

.method public c(Landroid/content/Context;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/cc/i;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/byazt/cc/i;->tt:Lcom/byazt/ete/ic;

    .line 4
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/byazt/cc/i;->ve:Landroid/widget/FrameLayout;

    .line 5
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    .line 6
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 7
    iget-object p2, p0, Lcom/byazt/cc/i;->ve:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object p1, p0, Lcom/byazt/cc/i;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/oz;->tt(Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public c(Lcom/byazt/un/uj;Lcom/byazt/cc/i$c;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/byazt/cc/i;->uj:Lcom/byazt/cc/ve;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1, p2}, Lcom/byazt/cc/ve;->c(Lcom/byazt/un/uj;Lcom/byazt/cc/i$c;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;ILcom/byazt/cc/c;Lcom/byazt/ocd/ve;)V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/cc/i;->sp:Ljava/lang/ref/SoftReference;

    if-eqz p4, :cond_0

    .line 11
    new-instance p3, Ljava/lang/ref/SoftReference;

    invoke-direct {p3, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/byazt/cc/i;->x:Ljava/lang/ref/SoftReference;

    .line 12
    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string p4, "splash_show_type"

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance p2, Lcom/byazt/hkv/c;

    iget-object p4, p0, Lcom/byazt/cc/i;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/byazt/cc/i;->tt:Lcom/byazt/ete/ic;

    const/4 v1, 0x4

    invoke-direct {p2, p4, v0, p1, v1}, Lcom/byazt/hkv/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 15
    const-class p4, Lcom/byazt/nat/c;

    invoke-virtual {p2, p4}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    invoke-virtual {v0, p0}, Lcom/byazt/nat/c;->c(Ljava/lang/Object;)V

    .line 16
    const-class v0, Lcom/byazt/vis/c;

    invoke-virtual {p2, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/vis/c;

    invoke-virtual {v0, p3}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 17
    iget-object p3, p0, Lcom/byazt/cc/i;->x:Ljava/lang/ref/SoftReference;

    if-nez p3, :cond_1

    .line 18
    iget-object p3, p0, Lcom/byazt/cc/i;->ve:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/byazt/cc/i;->c(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/byazt/ocd/ve;)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/byazt/cc/i;->ve:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/byazt/ocd/ve;

    invoke-direct {p0, p1, v0, p3}, Lcom/byazt/cc/i;->c(Ljava/lang/String;Landroid/view/ViewGroup;Lcom/byazt/ocd/ve;)V

    .line 20
    :goto_0
    invoke-virtual {p2, p4}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/nat/c;

    iget-object p3, p0, Lcom/byazt/cc/i;->a:Lcom/byazt/pop/ve;

    invoke-virtual {p1, p3}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 21
    new-instance p1, Lcom/byazt/cc/i$1;

    invoke-direct {p1, p0}, Lcom/byazt/cc/i$1;-><init>(Lcom/byazt/cc/i;)V

    .line 22
    invoke-virtual {p2, p4}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p3

    check-cast p3, Lcom/byazt/nat/c;

    invoke-virtual {p3, p1}, Lcom/byazt/nat/c;->c(Lcom/byazt/nat/c$c;)V

    .line 23
    iget-object p3, p0, Lcom/byazt/cc/i;->tt:Lcom/byazt/ete/ic;

    if-eqz p3, :cond_2

    .line 24
    invoke-virtual {p3}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    move-result-object p3

    const-class p4, Lcom/byazt/nat/c$c;

    invoke-static {p3, p1, p4}, Lcom/byazt/omf/rl;->tt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 25
    :cond_2
    iput-object p2, p0, Lcom/byazt/cc/i;->n:Lcom/byazt/hkv/c;

    .line 26
    iget-object p1, p0, Lcom/byazt/cc/i;->uj:Lcom/byazt/cc/ve;

    if-eqz p1, :cond_3

    .line 27
    invoke-virtual {p1, p2}, Lcom/byazt/cc/ve;->c(Lcom/byazt/hkv/c;)V

    :cond_3
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/byazt/cc/i;->uj:Lcom/byazt/cc/ve;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1}, Lcom/byazt/cc/ve;->c(Z)V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/cc/i;->uj:Lcom/byazt/cc/ve;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/cc/ve;->tt()V

    :cond_0
    return-void
.end method
