.class public Lcom/byazt/nm/c$ve$4;
.super Lcom/byazt/ft/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x27f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/c$ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/c$ve;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/c$ve;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/c$ve$4;->c:Lcom/byazt/nm/c$ve;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/ft/tt;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;FF)V
    .locals 1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/byazt/nm/c$ve$4;->c:Lcom/byazt/nm/c$ve;

    iget-object p3, p3, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    invoke-static {p3}, Lcom/byazt/nm/c;->c(Lcom/byazt/nm/c;)Lcom/byazt/dv/tt;

    move-result-object p3

    invoke-virtual {p3}, Lcom/byazt/dv/tt;->tt()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/byazt/nm/c$ve$4;->c:Lcom/byazt/nm/c$ve;

    iget-object v0, v0, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    invoke-static {v0}, Lcom/byazt/nm/c;->c(Lcom/byazt/nm/c;)Lcom/byazt/dv/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/byazt/eu/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "TTBannerView onRenderSuccess \u6e32\u67d3\u6210\u529f\uff01\uff01mBannerViewRef = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/byazt/nm/c$ve$4;->c:Lcom/byazt/nm/c$ve;

    iget-object p3, p3, Lcom/byazt/nm/c$ve;->i:Ljava/lang/ref/SoftReference;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TTMediationSDK_banner"

    invoke-static {p3, p2}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/byazt/nm/c$ve$4;->c:Lcom/byazt/nm/c$ve;

    iget-object p2, p2, Lcom/byazt/nm/c$ve;->i:Ljava/lang/ref/SoftReference;

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_0

    .line 8
    invoke-static {p1}, Lcom/byazt/pp/n;->c(Landroid/view/View;)V

    .line 9
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/byazt/nm/c$ve$4;->c:Lcom/byazt/nm/c$ve;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/byazt/nm/c$ve;->tt(Lcom/byazt/nm/c$ve;Z)Z

    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/byazt/nm/c$ve$4;->c:Lcom/byazt/nm/c$ve;

    invoke-static {p2}, Lcom/byazt/nm/c$ve;->n(Lcom/byazt/nm/c$ve;)Lcom/byazt/zq/a;

    move-result-object p2

    instance-of p2, p2, Lcom/byazt/zq/c;

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/byazt/nm/c$ve$4;->c:Lcom/byazt/nm/c$ve;

    invoke-static {p2}, Lcom/byazt/nm/c$ve;->ve(Lcom/byazt/nm/c$ve;)Lcom/byazt/zq/c;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/byazt/oc/c;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    .line 3
    iget-object p1, p0, Lcom/byazt/nm/c$ve$4;->c:Lcom/byazt/nm/c$ve;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/byazt/nm/c$ve;->tt(Lcom/byazt/nm/c$ve;Z)Z

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/byazt/nm/c$ve$4;->c:Lcom/byazt/nm/c$ve;

    iget-object v0, v0, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    invoke-static {v0}, Lcom/byazt/nm/c;->c(Lcom/byazt/nm/c;)Lcom/byazt/dv/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/dv/tt;->tt()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/nm/c$ve$4;->c:Lcom/byazt/nm/c$ve;

    iget-object v1, v1, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    invoke-static {v1}, Lcom/byazt/nm/c;->c(Lcom/byazt/nm/c;)Lcom/byazt/dv/tt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/eu/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "TTBannerView onRenderFail -> code="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",msg="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TTMediationSDK_banner"

    invoke-static {p2, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tt(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/byazt/nm/c$ve$4;->c:Lcom/byazt/nm/c$ve;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/byazt/nm/c$ve;->a(Lcom/byazt/nm/c$ve;)Lcom/byazt/zq/a;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    instance-of p2, p2, Lcom/byazt/zq/c;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lcom/byazt/nm/c$ve$4;->c:Lcom/byazt/nm/c$ve;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/byazt/nm/c$ve;->ve(Lcom/byazt/nm/c$ve;)Lcom/byazt/zq/c;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-interface {p2, p1}, Lcom/byazt/oc/c;->tt(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
