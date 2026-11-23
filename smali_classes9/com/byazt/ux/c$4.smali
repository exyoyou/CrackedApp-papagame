.class public Lcom/byazt/ux/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ux/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1a3,
        0x62
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ux/c;->c(Lorg/json/JSONObject;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ux/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ux/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ux/c$4;->c:Lcom/byazt/ux/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/byazt/ux/c$4;->c:Lcom/byazt/ux/c;

    iget-object p2, p2, Lcom/byazt/ux/c;->a:Lcom/byazt/qj/c;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcom/byazt/qj/c;->c(I)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/xj/ve;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/ux/c$4;->c:Lcom/byazt/ux/c;

    iput-object p1, v0, Lcom/byazt/ux/c;->sp:Lcom/byazt/xj/ve;

    .line 4
    invoke-static {v0}, Lcom/byazt/ux/c;->c(Lcom/byazt/ux/c;)Lcom/byazt/ux/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ux/a;->c()Lcom/byazt/xj/ve;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ux/c;->x:Lcom/byazt/xj/ve;

    .line 5
    iget-object v0, p0, Lcom/byazt/ux/c$4;->c:Lcom/byazt/ux/c;

    iget-object v0, v0, Lcom/byazt/ux/c;->ve:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->or()I

    move-result v3

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->cu()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/ux/c$4;->c:Lcom/byazt/ux/c;

    invoke-static {v0}, Lcom/byazt/ux/c;->tt(Lcom/byazt/ux/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/byazt/ux/c$4;->c:Lcom/byazt/ux/c;

    iget-object v1, v1, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    const/high16 v2, 0x43480000    # 200.0f

    .line 8
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/byazt/ux/c$4;->c:Lcom/byazt/ux/c;

    iget-object v3, v3, Lcom/byazt/ux/c;->tt:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 9
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    iget-object v1, p0, Lcom/byazt/ux/c$4;->c:Lcom/byazt/ux/c;

    iget-object v2, v1, Lcom/byazt/ux/c;->ve:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/byazt/ux/c;->ve(Lcom/byazt/ux/c;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/ux/c$4;->c:Lcom/byazt/ux/c;

    iget-object v0, v0, Lcom/byazt/ux/c;->a:Lcom/byazt/qj/c;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/byazt/qj/c;->c(Landroid/view/View;)V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/byazt/ux/c$4;->c:Lcom/byazt/ux/c;

    iget-object v0, p1, Lcom/byazt/ux/c;->n:Lcom/byazt/ete/ic;

    iget-object p1, p1, Lcom/byazt/ux/c;->t:Ljava/lang/String;

    const-string v1, "ugeno_coin_eCommerce_page_show_success"

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method
