.class public Lcom/byazt/ma/c;
.super Lcom/byazt/sy/tt;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/qdk/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28e,
        0x14
    }
.end annotation


# instance fields
.field public a:Z

.field public final da:Lcom/byazt/sy/sp;

.field public i:Landroid/content/Context;

.field public n:Landroid/view/View;

.field public sp:Lcom/byazt/atv/n;

.field public uj:Lcom/byazt/ete/ir;

.field public x:Lcom/byazt/dj/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;Lcom/byazt/ete/ir;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/sy/tt;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/ma/c;->a:Z

    .line 6
    .line 7
    new-instance p1, Lcom/byazt/ma/c$1;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/byazt/ma/c$1;-><init>(Lcom/byazt/ma/c;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/byazt/ma/c;->da:Lcom/byazt/sy/sp;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private c(ILcom/byazt/atv/tt;Landroid/view/ViewGroup;)Lcom/byazt/atv/n;
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 46
    new-instance p1, Lcom/byazt/atv/sp;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/byazt/atv/sp;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/atv/tt;Landroid/view/ViewGroup;)V

    return-object p1

    .line 47
    :cond_0
    new-instance p1, Lcom/byazt/atv/n;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/byazt/atv/n;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/atv/tt;Landroid/view/ViewGroup;)V

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/ma/c;ILcom/byazt/atv/tt;Landroid/view/ViewGroup;)Lcom/byazt/atv/n;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/ma/c;->c(ILcom/byazt/atv/tt;Landroid/view/ViewGroup;)Lcom/byazt/atv/n;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/ma/c;Lcom/byazt/atv/n;)Lcom/byazt/atv/n;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ma/c;->sp:Lcom/byazt/atv/n;

    return-object p1
.end method

.method private c(Landroid/view/View;Lorg/json/JSONObject;)Lcom/byazt/atv/tt;
    .locals 3

    .line 35
    new-instance v0, Lcom/byazt/atv/tt$c;

    invoke-direct {v0}, Lcom/byazt/atv/tt$c;-><init>()V

    .line 36
    iget-object v1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-direct {p0}, Lcom/byazt/ma/c;->i()Z

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/byazt/xs/da;->c(Lcom/byazt/ete/ic;Landroid/view/View;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/byazt/atv/tt$c;->n(Lorg/json/JSONObject;)Lcom/byazt/atv/tt$c;

    .line 38
    invoke-virtual {v0, p2}, Lcom/byazt/xl/u$c;->c(Lorg/json/JSONObject;)Lcom/byazt/xl/u$c;

    .line 39
    new-instance p2, Lcom/byazt/ouz/gt;

    invoke-direct {p2}, Lcom/byazt/ouz/gt;-><init>()V

    invoke-virtual {v0, p2}, Lcom/byazt/atv/tt$c;->c(Lcom/byazt/sz/qy;)Lcom/byazt/atv/tt$c;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Lcom/byazt/atv/tt$c;->tt(F)Lcom/byazt/atv/tt$c;

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/byazt/atv/tt$c;->c(F)Lcom/byazt/atv/tt$c;

    .line 42
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/omf/x;->uj()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/xl/u$c;->c(Z)Lcom/byazt/xl/u$c;

    .line 43
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->eo()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/xl/u$c;->da(I)Lcom/byazt/xl/u$c;

    .line 44
    invoke-virtual {p0}, Lcom/byazt/ma/c;->ve()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/atv/tt$c;->sl(I)Lcom/byazt/atv/tt$c;

    .line 45
    invoke-virtual {v0}, Lcom/byazt/atv/tt$c;->tt()Lcom/byazt/atv/tt;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/ma/c;Landroid/view/View;Lorg/json/JSONObject;)Lcom/byazt/atv/tt;
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/ma/c;->c(Landroid/view/View;Lorg/json/JSONObject;)Lcom/byazt/atv/tt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/ma/c;)Lcom/byazt/kyz/c;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/byazt/sy/tt;->ve:Lcom/byazt/kyz/c;

    return-object p0
.end method

.method private c(ILorg/json/JSONObject;Landroid/view/View;)Lorg/json/JSONObject;
    .locals 7

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 33
    invoke-static {p3}, Lcom/byazt/jlk/tt;->c(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 34
    iget-object v1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-direct {p0}, Lcom/byazt/ma/c;->i()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/byazt/jlk/tt;->c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLjava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public static synthetic c(Lcom/byazt/ma/c;ILorg/json/JSONObject;Landroid/view/View;)Lorg/json/JSONObject;
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/ma/c;->c(ILorg/json/JSONObject;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private c(I)V
    .locals 3

    .line 74
    new-instance v0, Lcom/byazt/rob/c;

    iget-object v1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/ma/c;->i:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/byazt/rob/c;-><init>(Lcom/byazt/ete/ic;Landroid/content/Context;)V

    .line 75
    iget-object v1, p0, Lcom/byazt/ma/c;->x:Lcom/byazt/dj/tt;

    invoke-virtual {v0, p1, v1}, Lcom/byazt/rob/c;->c(ILcom/byazt/dj/tt;)V

    return-void
.end method

.method private c(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-nez p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/byazt/rgb/a;->tt(Ljava/lang/String;I)V

    .line 53
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    iget-object p2, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    const/16 p3, 0x65

    const-string v1, "renderView is null"

    invoke-static {p1, p2, v0, p3, v1}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZILjava/lang/String;)V

    return-void

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-static {v2}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/byazt/rgb/a;->tt(Ljava/lang/String;I)V

    .line 55
    iget-object v2, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    iget-object v4, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    invoke-static {v2, v4, v3}, Lcom/byazt/sy/ve;->tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;Z)V

    .line 56
    iput-object p1, p0, Lcom/byazt/ma/c;->n:Landroid/view/View;

    const/16 v2, 0x8

    .line 57
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-direct {p0, p1}, Lcom/byazt/ma/c;->c(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/byazt/rgb/a;->ve(Ljava/lang/String;I)V

    .line 60
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    iget-object p2, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const/16 v1, 0x67

    invoke-static {p1, p2, v0, v1, p3}, Lcom/byazt/sy/ve;->tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZILorg/json/JSONObject;)V

    return-void

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/byazt/ma/c;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/byazt/ma/c;->sp:Lcom/byazt/atv/n;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/byazt/atv/n;->n()[F

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/byazt/sy/tt;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;[F)V

    .line 62
    invoke-virtual {p0}, Lcom/byazt/ma/c;->sp()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ma/c;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/ma/c;->c(I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ma/c;Landroid/view/View;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/byazt/ma/c;->tt(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ma/c;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/ma/c;->c(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ma/c;Lorg/json/JSONObject;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/ma/c;->c(Lorg/json/JSONObject;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private c(Lorg/json/JSONObject;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 32
    new-instance v0, Lcom/byazt/ma/c$3;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/byazt/ma/c$3;-><init>(Lcom/byazt/ma/c;Lorg/json/JSONObject;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(Landroid/view/View;)Z
    .locals 3

    .line 63
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 64
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 65
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/byazt/ma/c;->sp:Lcom/byazt/atv/n;

    instance-of v0, v0, Lcom/byazt/atv/sp;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 67
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 68
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static synthetic c(Lcom/byazt/ma/c;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/byazt/ma/c;->a:Z

    return p1
.end method

.method public static synthetic da(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gr(Lcom/byazt/ma/c;)Lcom/byazt/sy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->tt:Lcom/byazt/sy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gt(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gu(Lcom/byazt/ma/c;)Lcom/byazt/sy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->tt:Lcom/byazt/sy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private i()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic m(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic md(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic my(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic nu(Lcom/byazt/ma/c;)Lcom/byazt/sy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->tt:Lcom/byazt/sy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/byazt/ma/c;)Lcom/byazt/sy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->tt:Lcom/byazt/sy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic qy(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rh(Lcom/byazt/ma/c;)Lcom/byazt/sy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->tt:Lcom/byazt/sy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rl(Lcom/byazt/ma/c;)Lcom/byazt/atv/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ma/c;->sp:Lcom/byazt/atv/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private tt(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 7
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/byazt/sy/EasyPlayableContainer;

    if-eqz v1, :cond_3

    .line 10
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 11
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    instance-of p1, v1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 13
    check-cast v1, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void

    .line 14
    :cond_3
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 15
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public static synthetic u(Lcom/byazt/ma/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ma/c;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic uj(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/ma/c;)Lcom/byazt/kyz/c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/sy/tt;->ve:Lcom/byazt/kyz/c;

    return-object p0
.end method

.method private ve(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ir;->i()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    invoke-virtual {v1}, Lcom/byazt/ete/ir;->da()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/byazt/ma/c$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/byazt/ma/c$2;-><init>(Lcom/byazt/ma/c;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-static {v1, v0, v2}, Lcom/byazt/xs/da;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/xs/ve;)Lorg/json/JSONObject;

    return-void
.end method

.method public static synthetic x(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private x()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ma/c;->sp:Lcom/byazt/atv/n;

    iget-object v1, p0, Lcom/byazt/ma/c;->da:Lcom/byazt/sy/sp;

    invoke-virtual {v0, v1}, Lcom/byazt/atv/n;->c(Lcom/byazt/sy/sp;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/ma/c;->sp:Lcom/byazt/atv/n;

    iget-object v1, p0, Lcom/byazt/sy/tt;->tt:Lcom/byazt/sy/c;

    invoke-virtual {v0, v1}, Lcom/byazt/atv/n;->c(Lcom/byazt/sy/c;)V

    .line 4
    iget-object v0, p0, Lcom/byazt/ma/c;->sp:Lcom/byazt/atv/n;

    invoke-virtual {v0, p0}, Lcom/byazt/atv/n;->c(Lcom/byazt/qdk/tt;)V

    .line 5
    iget-object v0, p0, Lcom/byazt/ma/c;->sp:Lcom/byazt/atv/n;

    new-instance v1, Lcom/byazt/ma/c$4;

    invoke-direct {v1, p0}, Lcom/byazt/ma/c$4;-><init>(Lcom/byazt/ma/c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/atv/n;->c(Lcom/byazt/xl/x;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/ma/c;->sp:Lcom/byazt/atv/n;

    new-instance v1, Lcom/byazt/ma/c$5;

    invoke-direct {v1, p0}, Lcom/byazt/ma/c$5;-><init>(Lcom/byazt/ma/c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/atv/n;->c(Lcom/byazt/sy/x;)V

    return-void
.end method

.method public static synthetic yp(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic yv(Lcom/byazt/ma/c;)Lcom/byazt/sy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->tt:Lcom/byazt/sy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zm(Lcom/byazt/ma/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/byazt/ma/c;->uj()V

    .line 3
    iget-object v0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/byazt/rgb/a;->uj(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcom/byazt/sy/tt;->ve:Lcom/byazt/kyz/c;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/kyz/c;->ve()V

    :cond_0
    return-void
.end method

.method public c()Lcom/byazt/sy/sp;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/byazt/ma/c;->da:Lcom/byazt/sy/sp;

    return-object v0
.end method

.method public c(Landroid/content/Context;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/byazt/ma/c;->i:Landroid/content/Context;

    return-void
.end method

.method public c(Lcom/byazt/dj/tt;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/byazt/ma/c;->x:Lcom/byazt/dj/tt;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "clickEvent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "convert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    iget-object v0, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZLorg/json/JSONObject;Z)V

    :goto_0
    return-void
.end method

.method public c(Landroid/view/ViewGroup;Landroid/view/View;)Z
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ir;->t()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    iget-object p2, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    const/4 v0, 0x6

    invoke-static {p1, p2, v1, v0}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZI)V

    return v1

    .line 14
    :cond_1
    invoke-static {p1}, Lcom/byazt/sy/uj;->c(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "container_name"

    .line 17
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "enable_layout_restrict"

    .line 18
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->bj()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    iget-object v0, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    invoke-static {p1, v0, v1, v2, p2}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZILorg/json/JSONObject;)V

    return v1

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-static {p1, v2}, Lcom/byazt/sy/uj;->c(Lcom/byazt/ete/ic;Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 21
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    iget-object p2, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    const/4 v0, 0x2

    invoke-static {p1, p2, v1, v0}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZI)V

    return v1

    .line 22
    :cond_3
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->sl()Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-gt p1, v0, :cond_4

    .line 23
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    iget-object p2, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    const/16 v0, 0x9

    invoke-static {p1, p2, v1, v0}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZI)V

    return v1

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    invoke-virtual {p1}, Lcom/byazt/ete/ir;->x()I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 25
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    iget-object p2, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    const/16 v0, 0xb

    invoke-static {p1, p2, v1, v0}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZI)V

    return v1

    .line 26
    :cond_5
    iget-object p1, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/byazt/ete/ir;->c(II)Z

    move-result p1

    if-nez p1, :cond_6

    .line 27
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v0, "view_width"

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "view_height"

    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    :catch_1
    iget-object p2, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    iget-object v0, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    const/16 v2, 0xa

    invoke-static {p2, v0, v1, v2, p1}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZILorg/json/JSONObject;)V

    return v1

    :cond_6
    return v2

    .line 31
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    const/4 p2, 0x5

    invoke-static {p1, v0, v1, p2}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZI)V

    return v1
.end method

.method public c(Ljava/lang/String;Lcom/byazt/xj/ve;Lcom/byazt/qdk/ve;)Z
    .locals 0

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "closeWidget"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ma/c;->a()V

    const/4 p1, 0x1

    :goto_0
    return p1
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
    iget-object v0, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-static {v0, v1}, Lcom/byazt/rgb/a;->uj(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public n()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/byazt/ma/c;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/byazt/ma/c;->n:Landroid/view/View;

    .line 4
    iget-object v1, p0, Lcom/byazt/ma/c;->sp:Lcom/byazt/atv/n;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Lcom/byazt/atv/n;->c(Lcom/byazt/sy/sp;)V

    .line 6
    iget-object v1, p0, Lcom/byazt/ma/c;->sp:Lcom/byazt/atv/n;

    invoke-virtual {v1, v0}, Lcom/byazt/atv/n;->c(Lcom/byazt/xl/x;)V

    .line 7
    iget-object v1, p0, Lcom/byazt/ma/c;->sp:Lcom/byazt/atv/n;

    invoke-virtual {v1, v0}, Lcom/byazt/atv/n;->c(Lcom/byazt/sy/x;)V

    .line 8
    iget-object v1, p0, Lcom/byazt/ma/c;->sp:Lcom/byazt/atv/n;

    invoke-virtual {v1}, Lcom/byazt/atv/n;->t()V

    .line 9
    iput-object v0, p0, Lcom/byazt/ma/c;->sp:Lcom/byazt/atv/n;

    :cond_0
    return-void
.end method

.method public sp()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ma/c;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/byazt/ma/c;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public tt()Lcom/byazt/ete/u;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/byazt/ma/c;->uj:Lcom/byazt/ete/ir;

    return-object v0
.end method

.method public tt(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/byazt/ma/c;->c(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/sy/tt;->c:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ip/sp;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/byazt/rgb/a;->c(Ljava/lang/String;I)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/byazt/ma/c;->ve(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public uj()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/ma/c;->n:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lcom/byazt/ma/c;->tt(Landroid/view/View;)V

    return-void

    .line 5
    :cond_1
    new-instance v1, Lcom/byazt/ma/c$6;

    invoke-direct {v1, p0, v0}, Lcom/byazt/ma/c$6;-><init>(Lcom/byazt/ma/c;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ve()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    return v0
.end method
