.class public Lcom/byazt/tm/DynamicRootView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kn/uj;
.implements Lcom/byazt/xv/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x30,
        0x5a1
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/wl/c;

.field public final c:Lcom/byazt/xl/yp;

.field public da:I

.field public i:Landroid/view/ViewGroup;

.field public m:Landroid/content/Context;

.field public n:Lcom/byazt/tm/DynamicBaseWidget;

.field public nu:Ljava/lang/String;

.field public rh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/kn/ve;",
            ">;"
        }
    .end annotation
.end field

.field public sp:Lcom/byazt/xv/ThemeStatusBroadcastReceiver;

.field public t:Lcom/byazt/kn/n;

.field public tt:Z

.field public u:I

.field public uj:Lcom/byazt/xl/sl;

.field public ve:Landroid/view/View;

.field public x:Lcom/byazt/kn/tt;

.field public yp:I

.field public z:Lcom/byazt/xl/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/xv/ThemeStatusBroadcastReceiver;ZLcom/byazt/xl/u;Lcom/byazt/wl/c;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/byazt/tm/DynamicRootView;->i:Landroid/view/ViewGroup;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/byazt/tm/DynamicRootView;->da:I

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/byazt/tm/DynamicRootView;->sl:Ljava/util/List;

    .line 16
    .line 17
    iput v0, p0, Lcom/byazt/tm/DynamicRootView;->u:I

    .line 18
    .line 19
    iput v0, p0, Lcom/byazt/tm/DynamicRootView;->yp:I

    .line 20
    .line 21
    iput-object p1, p0, Lcom/byazt/tm/DynamicRootView;->m:Landroid/content/Context;

    .line 22
    .line 23
    new-instance p1, Lcom/byazt/xl/yp;

    .line 24
    .line 25
    invoke-direct {p1}, Lcom/byazt/xl/yp;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-virtual {p1, v0}, Lcom/byazt/xl/yp;->c(I)V

    .line 32
    .line 33
    .line 34
    iput-object p5, p0, Lcom/byazt/tm/DynamicRootView;->a:Lcom/byazt/wl/c;

    .line 35
    .line 36
    invoke-interface {p5, p0}, Lcom/byazt/wl/c;->c(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Lcom/byazt/tm/DynamicRootView;->sp:Lcom/byazt/xv/ThemeStatusBroadcastReceiver;

    .line 40
    .line 41
    invoke-virtual {p2, p0}, Lcom/byazt/xv/ThemeStatusBroadcastReceiver;->c(Lcom/byazt/xv/c;)V

    .line 42
    .line 43
    .line 44
    iput-boolean p3, p0, Lcom/byazt/tm/DynamicRootView;->tt:Z

    .line 45
    .line 46
    iput-object p4, p0, Lcom/byazt/tm/DynamicRootView;->z:Lcom/byazt/xl/u;

    .line 47
    .line 48
    return-void
.end method

.method private c(Landroid/view/ViewGroup;Lcom/byazt/aq/x;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p2}, Lcom/byazt/aq/x;->gr()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 24
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_1
    return-void
.end method

.method private c(Lcom/byazt/aq/x;)V
    .locals 1

    .line 18
    invoke-virtual {p1}, Lcom/byazt/aq/x;->da()Lcom/byazt/aq/n;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/aq/n;->n()Lcom/byazt/aq/a;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    invoke-virtual {p1}, Lcom/byazt/aq/a;->di()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/xl/yp;->tt(Z)V

    return-void
.end method


# virtual methods
.method public b_(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->n:Lcom/byazt/tm/DynamicBaseWidget;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/tm/DynamicBaseWidget;->c(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public c(Lcom/byazt/aq/x;Landroid/view/ViewGroup;I)Lcom/byazt/tm/DynamicBaseWidget;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/aq/x;->sl()Ljava/util/List;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/byazt/tm/DynamicRootView;->m:Landroid/content/Context;

    invoke-static {v2, p0, p1}, Lcom/byazt/mt/tt;->c(Landroid/content/Context;Lcom/byazt/tm/DynamicRootView;Lcom/byazt/aq/x;)Lcom/byazt/tm/DynamicBaseWidget;

    move-result-object v2

    .line 9
    instance-of v3, v2, Lcom/byazt/tm/DynamicUnKnowView;

    if-eqz v3, :cond_2

    const/4 p1, 0x3

    if-ne p3, p1, :cond_1

    const/16 p1, 0x80

    goto :goto_0

    :cond_1
    const/16 p1, 0x76

    :goto_0
    const-string p2, "unknow widget"

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/byazt/tm/DynamicRootView;->c(ILjava/lang/String;)V

    return-object v0

    .line 11
    :cond_2
    invoke-direct {p0, p1}, Lcom/byazt/tm/DynamicRootView;->c(Lcom/byazt/aq/x;)V

    .line 12
    invoke-virtual {v2}, Lcom/byazt/tm/DynamicBaseWidget;->c()Z

    if-eqz p2, :cond_3

    .line 13
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14
    invoke-direct {p0, p2, p1}, Lcom/byazt/tm/DynamicRootView;->c(Landroid/view/ViewGroup;Lcom/byazt/aq/x;)V

    :cond_3
    if-eqz v1, :cond_6

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/aq/x;

    .line 17
    invoke-virtual {p0, p2, v2, p3}, Lcom/byazt/tm/DynamicRootView;->c(Lcom/byazt/aq/x;Landroid/view/ViewGroup;I)Lcom/byazt/tm/DynamicBaseWidget;

    goto :goto_1

    :cond_5
    return-object v2

    :cond_6
    :goto_2
    return-object v0
.end method

.method public c()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->n:Lcom/byazt/tm/DynamicBaseWidget;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/byazt/tm/DynamicRootView;->c(Lcom/byazt/tm/DynamicBaseWidget;I)V

    return-void
.end method

.method public c(DDDDF)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/xl/yp;->ve(D)V

    .line 29
    iget-object p1, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    invoke-virtual {p1, p3, p4}, Lcom/byazt/xl/yp;->uj(D)V

    .line 30
    iget-object p1, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    invoke-virtual {p1, p5, p6}, Lcom/byazt/xl/yp;->n(D)V

    .line 31
    iget-object p1, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    invoke-virtual {p1, p7, p8}, Lcom/byazt/xl/yp;->a(D)V

    .line 32
    iget-object p1, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    invoke-virtual {p1, p9}, Lcom/byazt/xl/yp;->c(F)V

    .line 33
    iget-object p1, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    invoke-virtual {p1, p9}, Lcom/byazt/xl/yp;->tt(F)V

    .line 34
    iget-object p1, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    invoke-virtual {p1, p9}, Lcom/byazt/xl/yp;->ve(F)V

    .line 35
    iget-object p1, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    invoke-virtual {p1, p9}, Lcom/byazt/xl/yp;->uj(F)V

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byazt/xl/yp;->c(Z)V

    .line 37
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    invoke-virtual {v0, p1}, Lcom/byazt/xl/yp;->tt(I)V

    .line 38
    iget-object p1, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    invoke-virtual {p1, p2}, Lcom/byazt/xl/yp;->c(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/byazt/tm/DynamicRootView;->uj:Lcom/byazt/xl/sl;

    iget-object p2, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    invoke-interface {p1, p2}, Lcom/byazt/xl/sl;->c(Lcom/byazt/xl/yp;)V

    return-void
.end method

.method public c(Lcom/byazt/aq/x;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p0, p2}, Lcom/byazt/tm/DynamicRootView;->c(Lcom/byazt/aq/x;Landroid/view/ViewGroup;I)Lcom/byazt/tm/DynamicBaseWidget;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/tm/DynamicRootView;->n:Lcom/byazt/tm/DynamicBaseWidget;

    .line 2
    iget-object p1, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/byazt/xl/yp;->c(Z)V

    .line 3
    iget-object p1, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    iget-object p2, p0, Lcom/byazt/tm/DynamicRootView;->n:Lcom/byazt/tm/DynamicBaseWidget;

    iget p2, p2, Lcom/byazt/tm/DynamicBaseWidget;->n:F

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/byazt/xl/yp;->c(D)V

    .line 4
    iget-object p1, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    iget-object p2, p0, Lcom/byazt/tm/DynamicRootView;->n:Lcom/byazt/tm/DynamicBaseWidget;

    iget p2, p2, Lcom/byazt/tm/DynamicBaseWidget;->a:F

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/byazt/xl/yp;->tt(D)V

    .line 5
    iget-object p1, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    iget-object p2, p0, Lcom/byazt/tm/DynamicRootView;->ve:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/byazt/xl/yp;->c(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/byazt/tm/DynamicRootView;->uj:Lcom/byazt/xl/sl;

    iget-object p2, p0, Lcom/byazt/tm/DynamicRootView;->c:Lcom/byazt/xl/yp;

    invoke-interface {p1, p2}, Lcom/byazt/xl/sl;->c(Lcom/byazt/xl/yp;)V

    return-void
.end method

.method public c(Lcom/byazt/tm/DynamicBaseWidget;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/tm/DynamicBaseWidget;->getBeginInvisibleAndShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object v0, p1, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 46
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/byazt/tm/DynamicBaseWidget;

    if-eqz v2, :cond_3

    .line 47
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/byazt/tm/DynamicBaseWidget;

    invoke-virtual {p0, v2, p2}, Lcom/byazt/tm/DynamicRootView;->c(Lcom/byazt/tm/DynamicBaseWidget;I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public c(Ljava/lang/CharSequence;IIZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    :goto_0
    iget-object v2, p0, Lcom/byazt/tm/DynamicRootView;->sl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 49
    iget-object v2, p0, Lcom/byazt/tm/DynamicRootView;->sl:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/byazt/tm/DynamicRootView;->sl:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/kn/ve;

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2, p1, v3, p3, p4}, Lcom/byazt/kn/ve;->c(Ljava/lang/CharSequence;ZIZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getBgColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->nu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBgMaterialCenterCalcColor()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->rh:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDynamicClickListener()Lcom/byazt/wl/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->a:Lcom/byazt/wl/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogoUnionHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/tm/DynamicRootView;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public getRenderListener()Lcom/byazt/xl/sl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->uj:Lcom/byazt/xl/sl;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRenderRequest()Lcom/byazt/xl/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->z:Lcom/byazt/xl/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScoreCountWithIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/tm/DynamicRootView;->yp:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimeOut()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->i:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimeOutListener()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/kn/ve;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->sl:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimedown()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/tm/DynamicRootView;->da:I

    .line 2
    .line 3
    return v0
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tm/DynamicRootView;->nu:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBgMaterialCenterCalcColor(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/byazt/tm/DynamicRootView;->rh:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setDislikeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->a:Lcom/byazt/wl/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/wl/c;->tt(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLogoUnionHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/tm/DynamicRootView;->u:I

    .line 2
    .line 3
    return-void
.end method

.method public setMuteListener(Lcom/byazt/kn/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tm/DynamicRootView;->x:Lcom/byazt/kn/tt;

    .line 2
    .line 3
    return-void
.end method

.method public setRenderListener(Lcom/byazt/xl/sl;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/byazt/tm/DynamicRootView;->uj:Lcom/byazt/xl/sl;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->a:Lcom/byazt/wl/c;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/wl/c;->c(Lcom/byazt/xl/sl;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setScoreCountWithIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/tm/DynamicRootView;->yp:I

    .line 2
    .line 3
    return-void
.end method

.method public setSoundMute(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->x:Lcom/byazt/kn/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/kn/tt;->setSoundMute(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setTimeOut(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tm/DynamicRootView;->i:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-void
.end method

.method public setTimeOutListener(Lcom/byazt/kn/ve;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->sl:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTimeUpdate(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->t:Lcom/byazt/kn/n;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/kn/n;->setTimeUpdate(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTimedown(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/tm/DynamicRootView;->da:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoListener(Lcom/byazt/kn/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tm/DynamicRootView;->t:Lcom/byazt/kn/n;

    .line 2
    .line 3
    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/tm/DynamicRootView;->n:Lcom/byazt/tm/DynamicBaseWidget;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/byazt/tm/DynamicRootView;->c(Lcom/byazt/tm/DynamicBaseWidget;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
