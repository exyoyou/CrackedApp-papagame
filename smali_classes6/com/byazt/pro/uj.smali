.class public Lcom/byazt/pro/uj;
.super Lcom/byazt/lq/tt;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/oce/c;
.implements Lcom/byazt/dh/ve$uj;
.implements Lcom/byazt/dh/ve$ve;
.implements Lcom/byazt/ua/c$c;
.implements Lcom/byazt/lbn/LazeLayout$c;
.implements Lcom/byazt/lbn/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc7,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/lq/tt;",
        "Lcom/byazt/oce/c;",
        "Lcom/byazt/dh/ve$uj;",
        "Lcom/byazt/dh/ve$ve;",
        "Lcom/byazt/ua/c$c;",
        "Lcom/byazt/lbn/LazeLayout$c<",
        "Lcom/byazt/un/NativeVideoTsView;",
        ">;",
        "Lcom/byazt/lbn/c<",
        "Lcom/byazt/un/NativeVideoTsView;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/kyz/ve;

.field public c:Lcom/byazt/ua/c;

.field public da:Lcom/byazt/lbn/LazeLayout;

.field public i:Z

.field public m:Lcom/byazt/ete/ic;

.field public n:Lcom/byazt/bf/c;

.field public nu:Lcom/byazt/pro/CreativeContainer;

.field public rh:Lcom/byazt/lsp/c;

.field public volatile sl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/un/NativeVideoTsView;",
            ">;"
        }
    .end annotation
.end field

.field public sp:I

.field public t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Lcom/byazt/dj/tt;

.field public u:Lcom/byazt/bf/tt;

.field public uj:[I

.field public ve:I

.field public x:Lcom/byazt/yh/c;

.field public volatile yp:I

.field public volatile z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;ILcom/byazt/dj/tt;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/byazt/kyz/ve;

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    move-object v0, v6

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move v3, p3

    .line 8
    move-object v4, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/byazt/kyz/ve;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;ILcom/byazt/dj/tt;Z)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v6}, Lcom/byazt/lq/tt;-><init>(Lcom/byazt/nc/u;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/byazt/pro/uj;->uj:[I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/byazt/pro/uj;->i:Z

    .line 20
    .line 21
    iput-object v0, p0, Lcom/byazt/pro/uj;->da:Lcom/byazt/lbn/LazeLayout;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/pro/uj;->sl:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/byazt/pro/uj;->t:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    new-instance v1, Lcom/byazt/pro/uj$4;

    .line 28
    .line 29
    invoke-direct {v1, p0, v0}, Lcom/byazt/pro/uj$4;-><init>(Lcom/byazt/pro/uj;Ljava/util/function/Function;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/byazt/pro/uj;->rh:Lcom/byazt/lsp/c;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/byazt/lq/tt;->getNativeAd()Lcom/byazt/nc/u;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/byazt/kyz/ve;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getInteractionManager()Lcom/byazt/omf/my;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Lcom/byazt/omf/my;->c(Lcom/byazt/nc/u;)V

    .line 47
    .line 48
    .line 49
    iput p3, p0, Lcom/byazt/pro/uj;->ve:I

    .line 50
    .line 51
    iput-object p4, p0, Lcom/byazt/pro/uj;->tt:Lcom/byazt/dj/tt;

    .line 52
    .line 53
    new-instance p3, Lcom/byazt/ua/c;

    .line 54
    .line 55
    invoke-direct {p3}, Lcom/byazt/ua/c;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p3, p0, Lcom/byazt/pro/uj;->c:Lcom/byazt/ua/c;

    .line 59
    .line 60
    iput-object p2, p0, Lcom/byazt/pro/uj;->m:Lcom/byazt/ete/ic;

    .line 61
    .line 62
    invoke-static {p2}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    iput p3, p0, Lcom/byazt/pro/uj;->sp:I

    .line 67
    .line 68
    invoke-direct {p0, p3}, Lcom/byazt/pro/uj;->c(I)V

    .line 69
    .line 70
    .line 71
    iget-object p3, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 72
    .line 73
    iget-object p4, p0, Lcom/byazt/pro/uj;->rh:Lcom/byazt/lsp/c;

    .line 74
    .line 75
    invoke-virtual {p3, p4}, Lcom/byazt/kyz/ve;->setPluginAdInteractionListener(Lcom/byazt/lsp/c;)V

    .line 76
    .line 77
    .line 78
    if-eqz p1, :cond_0

    .line 79
    .line 80
    invoke-static {p2}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    if-nez p3, :cond_0

    .line 85
    .line 86
    invoke-static {p2}, Lcom/byazt/pro/CreativeContainer;->c(Lcom/byazt/ete/ic;)Z

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    if-eqz p3, :cond_0

    .line 91
    .line 92
    new-instance p3, Lcom/byazt/pro/CreativeContainer;

    .line 93
    .line 94
    iget-object p4, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 95
    .line 96
    invoke-virtual {p4}, Lcom/byazt/kyz/ve;->getInteractionManager()Lcom/byazt/omf/my;

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    invoke-direct {p3, p1, p2, p4}, Lcom/byazt/pro/CreativeContainer;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/omf/my;)V

    .line 101
    .line 102
    .line 103
    iput-object p3, p0, Lcom/byazt/pro/uj;->nu:Lcom/byazt/pro/CreativeContainer;

    .line 104
    .line 105
    :cond_0
    return-void
.end method

.method private c()Landroid/view/View;
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/byazt/pro/uj;->t:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/byazt/apd/EcMallWebView;

    iget-object v1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v1}, Lcom/byazt/kyz/ve;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v2}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    move-result-object v2

    iget v3, p0, Lcom/byazt/pro/uj;->ve:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lcom/byazt/apd/EcMallWebView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;I)V

    .line 6
    iget-object v1, p0, Lcom/byazt/pro/uj;->m:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/aas/cu;->c(Lcom/byazt/ete/ic;)Lcom/byazt/nzi/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/el/SSWebView;->setMaterialMeta(Lcom/byazt/nzi/c;)V

    .line 7
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/byazt/pro/uj;->t:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/pro/uj;)Lcom/byazt/kyz/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    return-object p0
.end method

.method private c(I)V
    .locals 3

    .line 8
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/ogz/sl;->a(I)I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {p1, v1}, Lcom/byazt/kyz/ve;->setAllowDevOperate(Z)V

    .line 10
    iget-object p1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {p1, v1}, Lcom/byazt/kyz/ve;->setAutoPlay(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 11
    iget-object v2, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v2}, Lcom/byazt/kyz/ve;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    iget-object p1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {p1, v1}, Lcom/byazt/kyz/ve;->setAllowDevOperate(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v2, p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {p1}, Lcom/byazt/kyz/ve;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/nr/rh;->n(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {p1}, Lcom/byazt/kyz/ve;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {p1}, Lcom/byazt/kyz/ve;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/nr/rh;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {p1, v1}, Lcom/byazt/kyz/ve;->setAllowDevOperate(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v1, p1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {p1, v0}, Lcom/byazt/kyz/ve;->setAllowDevOperate(Z)V

    return-void

    :cond_4
    const/4 v1, 0x5

    if-ne v1, p1, :cond_6

    .line 16
    iget-object p1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {p1}, Lcom/byazt/kyz/ve;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {p1}, Lcom/byazt/kyz/ve;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/nr/rh;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {p1, v0}, Lcom/byazt/kyz/ve;->setAutoPlay(Z)V

    :cond_6
    return-void
.end method

.method private c(JJ)V
    .locals 6

    .line 18
    invoke-direct {p0}, Lcom/byazt/pro/uj;->ve()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/pro/uj;->z:Z

    if-eqz v0, :cond_1

    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->kz()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-wide/16 v2, 0x3a98

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const-wide/16 v2, 0x7530

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    :goto_0
    const-wide/16 v4, 0x3e8

    cmp-long v0, p3, v2

    if-gtz v0, :cond_4

    sub-long/2addr p3, p1

    .line 21
    div-long/2addr p3, v4

    long-to-int p1, p3

    goto :goto_1

    :cond_4
    sub-long/2addr v2, p1

    .line 22
    div-long/2addr v2, v4

    long-to-int p1, v2

    :goto_1
    if-gez p1, :cond_5

    const/4 p1, 0x0

    .line 23
    :cond_5
    iget p2, p0, Lcom/byazt/pro/uj;->yp:I

    if-ne p1, p2, :cond_6

    return-void

    .line 24
    :cond_6
    iput p1, p0, Lcom/byazt/pro/uj;->yp:I

    .line 25
    iget p1, p0, Lcom/byazt/pro/uj;->yp:I

    if-nez p1, :cond_7

    .line 26
    iput-boolean v1, p0, Lcom/byazt/pro/uj;->z:Z

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/byazt/pro/uj;->u:Lcom/byazt/bf/tt;

    iget p2, p0, Lcom/byazt/pro/uj;->yp:I

    invoke-virtual {p1, p2}, Lcom/byazt/bf/tt;->c(I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/pro/uj;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/pro/uj;->i:Z

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/pro/uj;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/pro/uj;->m:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private tt()[I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->id()I

    move-result v0

    const/16 v1, 0xa6

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/bx;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/bx;->u(Lcom/byazt/ete/ic;)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v1}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/ete/bx;->t(Lcom/byazt/ete/ic;)I

    move-result v1

    .line 7
    filled-new-array {v1, v0}, [I

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->xx()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 9
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->hc()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 10
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/xd;->m(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/xd;->m(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/jzl/uj;->getWidthAndHeight()[I

    move-result-object v0

    return-object v0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/jzl/uj;->getWidthAndHeight()[I

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic uj(Lcom/byazt/pro/uj;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/pro/uj;->sl:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method private ve()Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/pro/uj;->u:Lcom/byazt/bf/tt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->kz()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public static synthetic ve(Lcom/byazt/pro/uj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/pro/uj;->i:Z

    return p0
.end method


# virtual methods
.method public createNativeVideoTsView(Z)Lcom/byazt/un/NativeVideoTsView;
    .locals 10

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/byazt/un/NativeDrawVideoTsView;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {p1, v0, v1}, Lcom/byazt/un/NativeDrawVideoTsView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Lcom/byazt/un/NativeVideoTsView;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    iget v0, p0, Lcom/byazt/pro/uj;->ve:I

    .line 38
    .line 39
    invoke-static {v0}, Lcom/byazt/aas/nb;->tt(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    move-object v2, p1

    .line 46
    invoke-direct/range {v2 .. v9}, Lcom/byazt/un/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;ZZLjava/lang/String;ZZ)V

    .line 47
    .line 48
    .line 49
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/byazt/pro/uj;->sl:Ljava/lang/ref/WeakReference;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/byazt/pro/uj;->sl:Ljava/lang/ref/WeakReference;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/byazt/kyz/ve;->setWeakReferenceTsView(Ljava/lang/ref/WeakReference;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->setVideoViewEasyPlayableSender()V

    .line 66
    .line 67
    .line 68
    return-object p1
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->sl:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/pro/uj;->sl:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/byazt/un/NativeVideoTsView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->gt()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/pro/uj;->da:Lcom/byazt/lbn/LazeLayout;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/lbn/LazeLayout;->c()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/byazt/pro/uj;->nu:Lcom/byazt/pro/CreativeContainer;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-super {p0}, Lcom/byazt/lq/tt;->destroy()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public filterVideoKeys(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    const-string v3, "video"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    const-string v3, "video_url"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_3

    .line 62
    .line 63
    const-string v3, "videoUrl"

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const/4 v3, 0x0

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    :goto_1
    const/4 v3, 0x1

    .line 75
    :goto_2
    if-eqz v3, :cond_1

    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    :goto_3
    return-object v0
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/pro/uj;->getLifecycleId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-static {v0, v1}, Lcom/byazt/rgb/tt;->ve(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getAdType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/pro/uj;->ve:I

    .line 2
    .line 3
    return v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_9

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->c()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/byazt/iyp/tt;->c(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/byazt/ete/ic;->tt(Lcom/byazt/ete/ic;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v2, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v3, 0x3

    .line 56
    const-string v4, "valid invoke"

    .line 57
    .line 58
    invoke-virtual {v0, v2, v3, v4}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/byazt/wu/uj;->c(Lcom/byazt/ete/ic;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/byazt/pro/uj;->c()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v2, p0, Lcom/byazt/pro/uj;->m:Lcom/byazt/ete/ic;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_6

    .line 91
    .line 92
    invoke-static {}, Lcom/byazt/bzd/x;->c()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Lcom/byazt/ogz/sl;->bw()Lcom/byazt/ogz/sp;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iget-boolean v2, v2, Lcom/byazt/ogz/sp;->tt:Z

    .line 107
    .line 108
    if-eqz v2, :cond_4

    .line 109
    .line 110
    iget-object v1, p0, Lcom/byazt/pro/uj;->sl:Ljava/lang/ref/WeakReference;

    .line 111
    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    iget-object v1, p0, Lcom/byazt/pro/uj;->sl:Ljava/lang/ref/WeakReference;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lcom/byazt/un/NativeVideoTsView;

    .line 121
    .line 122
    if-eqz v1, :cond_3

    .line 123
    .line 124
    const/4 v0, 0x1

    .line 125
    invoke-virtual {v1, v0}, Lcom/byazt/un/NativeVideoTsView;->setNativeRenderAd(Z)V

    .line 126
    .line 127
    .line 128
    return-object v1

    .line 129
    :cond_3
    new-instance v1, Lcom/byazt/lbn/LazeLayout;

    .line 130
    .line 131
    invoke-direct {v1, v0, p0, p0}, Lcom/byazt/lbn/LazeLayout;-><init>(Landroid/content/Context;Lcom/byazt/lbn/c;Lcom/byazt/lbn/LazeLayout$c;)V

    .line 132
    .line 133
    .line 134
    iput-object v1, p0, Lcom/byazt/pro/uj;->da:Lcom/byazt/lbn/LazeLayout;

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/byazt/pro/uj;->inflate(Landroid/content/Context;)Lcom/byazt/un/NativeVideoTsView;

    .line 138
    .line 139
    .line 140
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    goto :goto_0

    .line 142
    :catchall_0
    nop

    .line 143
    :goto_0
    if-eqz v1, :cond_5

    .line 144
    .line 145
    invoke-virtual {p0, v1}, Lcom/byazt/pro/uj;->onFill(Lcom/byazt/un/NativeVideoTsView;)V

    .line 146
    .line 147
    .line 148
    :cond_5
    return-object v1

    .line 149
    :cond_6
    iget-object v0, p0, Lcom/byazt/pro/uj;->nu:Lcom/byazt/pro/CreativeContainer;

    .line 150
    .line 151
    if-eqz v0, :cond_8

    .line 152
    .line 153
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 154
    .line 155
    if-eqz v0, :cond_7

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getInteractionManager()Lcom/byazt/omf/my;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getInteractionManager()Lcom/byazt/omf/my;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/byazt/pro/uj;->nu:Lcom/byazt/pro/CreativeContainer;

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Lcom/byazt/omf/my;->c(Lcom/byazt/pro/CreativeContainer;)V

    .line 172
    .line 173
    .line 174
    :cond_7
    iget-object v0, p0, Lcom/byazt/pro/uj;->nu:Lcom/byazt/pro/CreativeContainer;

    .line 175
    .line 176
    return-object v0

    .line 177
    :cond_8
    :goto_1
    invoke-static {}, Lcom/byazt/dz/uj;->c()Lcom/byazt/dz/uj;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lcom/byazt/dz/uj;->c(Lcom/byazt/ete/ic;)Lcom/byazt/dz/uj;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iget v1, p0, Lcom/byazt/pro/uj;->ve:I

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Lcom/byazt/dz/uj;->c(I)Lcom/byazt/dz/uj;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iget v1, p0, Lcom/byazt/pro/uj;->sp:I

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Lcom/byazt/dz/uj;->tt(I)Lcom/byazt/dz/uj;

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/byazt/pro/uj;->da:Lcom/byazt/lbn/LazeLayout;

    .line 203
    .line 204
    return-object v0

    .line 205
    :cond_9
    :goto_2
    return-object v1
.end method

.method public getAdViewHeight()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/byazt/kyz/ve;->getImageMode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0}, Lcom/byazt/pro/CreativeContainer;->c(Lcom/byazt/ete/ic;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x5

    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    .line 24
    const/16 v2, 0xf

    .line 25
    .line 26
    if-eq v1, v2, :cond_0

    .line 27
    .line 28
    const/16 v2, 0x7d1

    .line 29
    .line 30
    if-eq v1, v2, :cond_0

    .line 31
    .line 32
    const/16 v2, 0x7d2

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/byazt/ete/zb;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/byazt/ete/zb;->ve()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    return v0

    .line 52
    :cond_1
    const/16 v0, 0x2d0

    .line 53
    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/byazt/pro/uj;->uj:[I

    .line 55
    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/byazt/pro/uj;->tt()[I

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, p0, Lcom/byazt/pro/uj;->uj:[I

    .line 63
    .line 64
    :cond_2
    iget-object v1, p0, Lcom/byazt/pro/uj;->uj:[I

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    array-length v2, v1

    .line 69
    const/4 v3, 0x2

    .line 70
    if-ge v2, v3, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const/4 v2, 0x1

    .line 74
    aget v0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    :cond_4
    :goto_0
    return v0

    .line 77
    :catchall_0
    move-exception v1

    .line 78
    const-string v2, "TTFeedAdImpl"

    .line 79
    .line 80
    const-string v3, "getAdViewHeight error"

    .line 81
    .line 82
    invoke-static {v2, v3, v1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    return v0
.end method

.method public getAdViewWidth()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/byazt/kyz/ve;->getImageMode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {v0}, Lcom/byazt/pro/CreativeContainer;->c(Lcom/byazt/ete/ic;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    const/4 v3, 0x5

    .line 23
    if-eq v2, v3, :cond_0

    .line 24
    .line 25
    const/16 v3, 0xf

    .line 26
    .line 27
    if-eq v2, v3, :cond_0

    .line 28
    .line 29
    const/16 v3, 0x7d1

    .line 30
    .line 31
    if-eq v2, v3, :cond_0

    .line 32
    .line 33
    const/16 v3, 0x7d2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/byazt/ete/zb;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/byazt/ete/zb;->tt()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    return v0

    .line 52
    :cond_1
    const/16 v0, 0x500

    .line 53
    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/byazt/pro/uj;->uj:[I

    .line 55
    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/byazt/pro/uj;->tt()[I

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iput-object v2, p0, Lcom/byazt/pro/uj;->uj:[I

    .line 63
    .line 64
    :cond_2
    iget-object v2, p0, Lcom/byazt/pro/uj;->uj:[I

    .line 65
    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    array-length v3, v2

    .line 69
    const/4 v4, 0x2

    .line 70
    if-ge v3, v4, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    aget v0, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    :cond_4
    :goto_0
    return v0

    .line 76
    :catchall_0
    move-exception v1

    .line 77
    const-string v2, "TTFeedAdImpl"

    .line 78
    .line 79
    const-string v3, "getAdViewWidth error"

    .line 80
    .line 81
    invoke-static {v2, v3, v1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    return v0
.end method

.method public getCodeId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/pro/uj;->sp:I

    .line 2
    .line 3
    return v0
.end method

.method public getCustomVideo()Lcom/byazt/yh/c;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->m:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/ic;->tt(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Lcom/byazt/pro/uj;->m:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const-string v4, "invalid invoke"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v3, v4}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/ic;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/byazt/pro/uj;->x:Lcom/byazt/yh/c;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Lcom/byazt/pro/uj$3;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/byazt/pro/uj$3;-><init>(Lcom/byazt/pro/uj;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/byazt/pro/uj;->x:Lcom/byazt/yh/c;

    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lcom/byazt/pro/uj;->x:Lcom/byazt/yh/c;

    .line 48
    .line 49
    return-object v0
.end method

.method public getHasUseCustomizeVideo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/pro/uj;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public getLifecycleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->m:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->zm()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMediaExtraInfo()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 8
    .line 9
    const-string v3, "media_ext_video"

    .line 10
    .line 11
    invoke-static {v3, v1, v2}, Lcom/byazt/ukr/n;->c(Ljava/lang/String;D)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/byazt/pro/uj;->filterVideoKeys(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    :try_start_1
    iget-object v4, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-lez v5, :cond_0

    .line 35
    .line 36
    const-string v5, "rit"

    .line 37
    .line 38
    const-string v6, ""

    .line 39
    .line 40
    invoke-static {v4, v6}, Lcom/byazt/aas/nb;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    const-string v5, "req_id"

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    const-string v5, "cid"

    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    goto :goto_0

    .line 68
    :catch_1
    move-exception v2

    .line 69
    move-object v7, v2

    .line 70
    move-object v2, v1

    .line 71
    move-object v1, v7

    .line 72
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 73
    .line 74
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-lez v4, :cond_1

    .line 79
    .line 80
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v4, v3, v2, v1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object v1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-nez v1, :cond_2

    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_2
    if-nez v0, :cond_3

    .line 97
    .line 98
    new-instance v0, Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->ne()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const-string v3, "reward_task_type"

    .line 112
    .line 113
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->ix()Lcom/byazt/ete/tx;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-eqz v2, :cond_4

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->ix()Lcom/byazt/ete/tx;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lcom/byazt/ete/tx;->tt()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    const/4 v2, -0x1

    .line 132
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    const-string v3, "reward_task_threshold"

    .line 137
    .line 138
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->id()I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    const/16 v3, 0xa6

    .line 146
    .line 147
    if-eq v2, v3, :cond_5

    .line 148
    .line 149
    return-object v0

    .line 150
    :cond_5
    invoke-static {v1}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_6

    .line 155
    .line 156
    invoke-static {v1}, Lcom/byazt/ete/bx;->uj(Lcom/byazt/ete/ic;)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    invoke-static {v1}, Lcom/byazt/ete/bx;->n(Lcom/byazt/ete/ic;)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    const-string v3, "live_author_follower_count"

    .line 165
    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    const-string v2, "live_watch_count"

    .line 174
    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    :cond_6
    return-object v0
.end method

.method public getMediationManager()Lcom/byazt/sbm/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/ah/ve;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ah/ve;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getNativeVideoTsView()Lcom/byazt/un/NativeVideoTsView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->sl:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/pro/uj;->sl:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/byazt/un/NativeVideoTsView;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public getVideoDuration()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    return-wide v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/byazt/ete/xd;->sp(Lcom/byazt/ete/ic;)D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    return-wide v0
.end method

.method public getVideoModel()Lcom/byazt/ua/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->c:Lcom/byazt/ua/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic inflate(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/pro/uj;->inflate(Landroid/content/Context;)Lcom/byazt/un/NativeVideoTsView;

    move-result-object p1

    return-object p1
.end method

.method public inflate(Landroid/content/Context;)Lcom/byazt/un/NativeVideoTsView;
    .locals 4

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/pro/uj;->createNativeVideoTsView(Z)Lcom/byazt/un/NativeVideoTsView;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lcom/byazt/un/NativeVideoTsView;->setVideoAdClickListenerTTNativeAd(Lcom/byazt/nc/u;)V

    .line 4
    new-instance v1, Lcom/byazt/pro/uj$1;

    invoke-direct {v1, p0}, Lcom/byazt/pro/uj$1;-><init>(Lcom/byazt/pro/uj;)V

    invoke-virtual {v0, v1}, Lcom/byazt/un/NativeVideoTsView;->setAdCreativeClickListener(Lcom/byazt/un/NativeVideoTsView$c;)V

    .line 5
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/byazt/omf/x;->c(J)V

    .line 6
    new-instance v1, Lcom/byazt/pro/uj$2;

    invoke-direct {v1, p0}, Lcom/byazt/pro/uj$2;-><init>(Lcom/byazt/pro/uj;)V

    invoke-virtual {v0, v1}, Lcom/byazt/un/NativeVideoTsView;->setControllerStatusCallBack(Lcom/byazt/un/NativeVideoTsView$uj;)V

    .line 7
    invoke-virtual {v0, p0}, Lcom/byazt/un/NativeVideoTsView;->setVideoAdLoadListener(Lcom/byazt/dh/ve$uj;)V

    .line 8
    invoke-virtual {v0, p0}, Lcom/byazt/un/NativeVideoTsView;->setVideoAdInteractionListener(Lcom/byazt/dh/ve$ve;)V

    const/4 v1, 0x5

    .line 9
    iget v2, p0, Lcom/byazt/pro/uj;->ve:I

    if-ne v1, v2, :cond_1

    .line 10
    iget-object v1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v1}, Lcom/byazt/kyz/ve;->isAllowDevOperate()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/byazt/pro/uj;->tt:Lcom/byazt/dj/tt;

    invoke-virtual {v1}, Lcom/byazt/dj/tt;->n()Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v1}, Lcom/byazt/kyz/ve;->isAutoPlay()Z

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/byazt/un/NativeVideoTsView;->setIsAutoPlay(Z)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {v1}, Lcom/byazt/kyz/ve;->isAutoPlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/un/NativeVideoTsView;->setIsAutoPlay(Z)V

    .line 12
    :goto_1
    iget-object v1, p0, Lcom/byazt/pro/uj;->m:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->ab()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 p1, 0x1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/byazt/un/NativeVideoTsView;->setIsQuiet(Z)V

    .line 13
    iget-object p1, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    invoke-virtual {p1}, Lcom/byazt/kyz/ve;->getInteractionManager()Lcom/byazt/omf/my;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/omf/my;->c()Lcom/byazt/pop/ve;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    invoke-interface {p1, p0}, Lcom/byazt/pop/ve;->c(Lcom/byazt/ua/c$c;)V

    :cond_3
    return-object v0
.end method

.method public bridge synthetic onFill(Landroid/view/View;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/un/NativeVideoTsView;

    invoke-virtual {p0, p1}, Lcom/byazt/pro/uj;->onFill(Lcom/byazt/un/NativeVideoTsView;)V

    return-void
.end method

.method public onFill(Lcom/byazt/un/NativeVideoTsView;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/byazt/un/NativeVideoTsView;->setNativeRenderAd(Z)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/byazt/un/NativeVideoTsView;->c(JZZ)Z

    :cond_0
    return-void
.end method

.method public onProgressUpdate(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->n:Lcom/byazt/bf/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/bf/c;->c(JJ)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/pro/uj;->c(JJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onVideoAdContinuePlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->n:Lcom/byazt/bf/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/byazt/bf/c;->uj(Lcom/byazt/nc/da;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoAdPaused()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->n:Lcom/byazt/bf/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/byazt/bf/c;->ve(Lcom/byazt/nc/da;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoAdStartPlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->n:Lcom/byazt/bf/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/byazt/bf/c;->tt(Lcom/byazt/nc/da;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->n:Lcom/byazt/bf/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/byazt/bf/c;->n(Lcom/byazt/nc/da;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/byazt/pro/uj;->ve()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/byazt/pro/uj;->z:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/pro/uj;->u:Lcom/byazt/bf/tt;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lcom/byazt/bf/tt;->c(I)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/byazt/pro/uj;->z:Z

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public onVideoError(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->n:Lcom/byazt/bf/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/byazt/bf/c;->c(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoLoad()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->n:Lcom/byazt/bf/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/byazt/bf/c;->c(Lcom/byazt/nc/da;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/lsp/c;Lcom/byazt/am/uj;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/byazt/lsp/c;",
            "Lcom/byazt/am/uj;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move-object v7, p6

    .line 9
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/lq/tt;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

    .line 10
    .line 11
    .line 12
    if-eqz p7, :cond_3

    .line 13
    .line 14
    invoke-virtual {p7}, Lcom/byazt/am/uj;->t()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 p3, -0x1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/byazt/lq/tt;->getAdLogo()Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    if-eqz p4, :cond_1

    .line 30
    .line 31
    const/4 p4, 0x0

    .line 32
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    instance-of p4, p1, Landroid/view/ViewGroup;

    .line 36
    .line 37
    if-eqz p4, :cond_0

    .line 38
    .line 39
    move-object p4, p1

    .line 40
    check-cast p4, Landroid/view/ViewGroup;

    .line 41
    .line 42
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 43
    .line 44
    .line 45
    new-instance p4, Landroid/widget/ImageView;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p5

    .line 51
    invoke-direct {p4, p5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/byazt/lq/tt;->getAdLogo()Landroid/graphics/Bitmap;

    .line 55
    .line 56
    .line 57
    move-result-object p5

    .line 58
    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    .line 60
    .line 61
    sget-object p5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 62
    .line 63
    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 67
    .line 68
    .line 69
    move-result-object p5

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p6

    .line 74
    const/high16 v0, 0x42180000    # 38.0f

    .line 75
    .line 76
    invoke-static {p6, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 77
    .line 78
    .line 79
    move-result p6

    .line 80
    iput p6, p5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 81
    .line 82
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p6

    .line 86
    invoke-static {p6, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 87
    .line 88
    .line 89
    move-result p6

    .line 90
    iput p6, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    .line 92
    invoke-virtual {p1, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    check-cast p1, Landroid/view/ViewGroup;

    .line 96
    .line 97
    invoke-virtual {p1, p4, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    instance-of p4, p1, Landroid/widget/ImageView;

    .line 102
    .line 103
    if-eqz p4, :cond_1

    .line 104
    .line 105
    check-cast p1, Landroid/widget/ImageView;

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/byazt/lq/tt;->getAdLogo()Landroid/graphics/Bitmap;

    .line 108
    .line 109
    .line 110
    move-result-object p4

    .line 111
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    :goto_0
    invoke-virtual {p7}, Lcom/byazt/am/uj;->sp()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Landroid/widget/FrameLayout;

    .line 123
    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/byazt/pro/uj;->getAdView()Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    if-nez p2, :cond_2

    .line 131
    .line 132
    return-void

    .line 133
    :cond_2
    invoke-static {p2}, Lcom/byazt/aas/pf;->x(Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .line 141
    .line 142
    :cond_3
    return-void

    .line 143
    :catchall_0
    move-exception p1

    .line 144
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public setEasyPlayWidgetListener(Lcom/byazt/lsp/tt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/uj;->a:Lcom/byazt/kyz/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/kyz/ve;->setEasyPlayWidgetListener(Lcom/byazt/lsp/tt;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setVideoAdListener(Lcom/byazt/bf/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pro/uj;->n:Lcom/byazt/bf/c;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoRewardListener(Lcom/byazt/bf/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pro/uj;->u:Lcom/byazt/bf/tt;

    .line 2
    .line 3
    return-void
.end method
