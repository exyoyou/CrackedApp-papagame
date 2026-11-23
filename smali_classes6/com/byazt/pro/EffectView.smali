.class public Lcom/byazt/pro/EffectView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc7,
        0x2e0
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/pro/EffectView$c;
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/pro/EffectView$c;

.field public c:Lcom/byazt/ete/ir;

.field public final n:Lcom/byazt/omf/my;

.field public tt:Landroid/view/View;

.field public uj:Z

.field public ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/omf/my;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/pro/EffectView;->uj:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/byazt/pro/EffectView;->ve:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/byazt/pro/EffectView;->n:Lcom/byazt/omf/my;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/byazt/ete/md;->ve(Lcom/byazt/ete/ic;)Lcom/byazt/ete/ir;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/byazt/pro/EffectView;->c:Lcom/byazt/ete/ir;

    .line 16
    .line 17
    return-void
.end method

.method private c()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/byazt/pro/EffectView;->a:Lcom/byazt/pro/EffectView$c;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0}, Lcom/byazt/pro/EffectView$c;->c()V

    :cond_0
    return-void
.end method

.method private c(Landroid/view/View;ILcom/byazt/sr/ve;)V
    .locals 5

    .line 14
    iget-object v0, p0, Lcom/byazt/pro/EffectView;->n:Lcom/byazt/omf/my;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_2

    .line 15
    :cond_1
    instance-of v2, p3, Lcom/byazt/ete/gr;

    if-eqz v2, :cond_2

    .line 16
    check-cast p3, Lcom/byazt/ete/gr;

    .line 17
    new-instance v2, Lcom/byazt/ete/da;

    invoke-direct {v2}, Lcom/byazt/ete/da;-><init>()V

    .line 18
    iget v3, p3, Lcom/byazt/ete/gr;->c:F

    invoke-virtual {v2, v3}, Lcom/byazt/ete/da;->c(F)V

    .line 19
    iget v3, p3, Lcom/byazt/ete/gr;->tt:F

    invoke-virtual {v2, v3}, Lcom/byazt/ete/da;->tt(F)V

    .line 20
    iget v3, p3, Lcom/byazt/ete/gr;->ve:F

    invoke-virtual {v2, v3}, Lcom/byazt/ete/da;->ve(F)V

    .line 21
    iget v3, p3, Lcom/byazt/ete/gr;->uj:F

    invoke-virtual {v2, v3}, Lcom/byazt/ete/da;->uj(F)V

    .line 22
    iget-wide v3, p3, Lcom/byazt/ete/gr;->n:J

    invoke-virtual {v2, v3, v4}, Lcom/byazt/ete/da;->c(J)V

    .line 23
    iget-wide v3, p3, Lcom/byazt/ete/gr;->a:J

    invoke-virtual {v2, v3, v4}, Lcom/byazt/ete/da;->tt(J)V

    .line 24
    iget-boolean p3, p3, Lcom/byazt/ete/gr;->z:Z

    invoke-virtual {v2, p3}, Lcom/byazt/ete/da;->tt(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ne p2, v0, :cond_3

    .line 25
    iget-object p3, p0, Lcom/byazt/pro/EffectView;->n:Lcom/byazt/omf/my;

    invoke-virtual {p3, p1, v2}, Lcom/byazt/omf/my;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    :cond_3
    if-ne p2, v1, :cond_4

    .line 26
    iget-object p2, p0, Lcom/byazt/pro/EffectView;->n:Lcom/byazt/omf/my;

    invoke-virtual {p2, p1, v2}, Lcom/byazt/omf/my;->tt(Landroid/view/View;Lcom/byazt/ete/da;)V

    :cond_4
    return-void
.end method

.method public static synthetic c(Lcom/byazt/pro/EffectView;Landroid/view/View;ILcom/byazt/sr/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/pro/EffectView;->c(Landroid/view/View;ILcom/byazt/sr/ve;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/pro/EffectView;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/pro/EffectView;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/pro/EffectView;Lorg/json/JSONObject;Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/pro/EffectView;->c(Lorg/json/JSONObject;Landroid/view/View;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/byazt/pro/EffectView;->a:Lcom/byazt/pro/EffectView$c;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p1}, Lcom/byazt/pro/EffectView$c;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Lorg/json/JSONObject;Landroid/view/View;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/byazt/pro/EffectView$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/byazt/pro/EffectView$3;-><init>(Lcom/byazt/pro/EffectView;Landroid/view/View;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic c(Lcom/byazt/pro/EffectView;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/byazt/pro/EffectView;->uj:Z

    return p0
.end method

.method public static synthetic c(Lcom/byazt/pro/EffectView;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/pro/EffectView;->uj:Z

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/pro/EffectView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pro/EffectView;->c()V

    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/pro/EffectView$c;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/pro/EffectView;->a:Lcom/byazt/pro/EffectView$c;

    .line 7
    new-instance p1, Lcom/byazt/pro/EffectView$1;

    invoke-direct {p1, p0}, Lcom/byazt/pro/EffectView$1;-><init>(Lcom/byazt/pro/EffectView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public c(Landroid/view/View;)Z
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/byazt/pro/EffectView;->c:Lcom/byazt/ete/ir;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ir;->t()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/byazt/pro/EffectView;->c:Lcom/byazt/ete/ir;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/byazt/ete/ir;->c(II)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/byazt/pro/EffectView;->c:Lcom/byazt/ete/ir;

    invoke-virtual {p1}, Lcom/byazt/ete/ir;->x()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    return v1

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/byazt/pro/EffectView;->c:Lcom/byazt/ete/ir;

    invoke-virtual {p1}, Lcom/byazt/ete/ir;->ve()I

    move-result p1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public tt(Landroid/view/View;)V
    .locals 3

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/pro/EffectView;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "meetRenderCondition not meet"

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/pro/EffectView;->c(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/pro/EffectView;->c:Lcom/byazt/ete/ir;

    invoke-virtual {v0}, Lcom/byazt/ete/ir;->da()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/pro/EffectView;->c:Lcom/byazt/ete/ir;

    invoke-virtual {v1}, Lcom/byazt/ete/ir;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/byazt/pro/EffectView$2;

    invoke-direct {v2, p0, p1}, Lcom/byazt/pro/EffectView$2;-><init>(Lcom/byazt/pro/EffectView;Landroid/view/View;)V

    invoke-static {v0, v1, v2}, Lcom/byazt/xs/da;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/xs/ve;)Lorg/json/JSONObject;

    return-void
.end method
