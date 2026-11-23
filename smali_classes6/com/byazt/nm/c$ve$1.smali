.class public Lcom/byazt/nm/c$ve$1;
.super Lcom/byazt/nh/a;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x276
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nm/c$ve;->loadAd(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:Lcom/byazt/nm/c$ve;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/c$ve;Ljava/util/function/Function;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/nm/c$ve$1;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/byazt/nh/a;-><init>(Ljava/util/function/Function;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    iget-object v0, v0, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    new-instance v1, Lcom/byazt/pp/c;

    invoke-direct {v1, p1, p2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nc/yp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/byazt/nm/c$ve$1;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/nc/yp;

    iput-object p1, v0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    .line 4
    iget-object p1, p0, Lcom/byazt/nm/c$ve$1;->c:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    iget-object v0, v0, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    check-cast p1, Landroid/app/Activity;

    new-instance v1, Lcom/byazt/nm/c$ve$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/byazt/nm/c$ve$1$1;-><init>(Lcom/byazt/nm/c$ve$1;Ljava/util/function/Function;)V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/nc/yp;->setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/byazt/yl/ve;->setExpressAd(Z)V

    .line 7
    iget-object p1, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    iget-object v1, p1, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    invoke-virtual {v1}, Lcom/byazt/nc/yp;->getInteractionType()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/yl/ve;->setInteractionType(I)V

    .line 8
    iget-object p1, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    iget-object v1, p1, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    invoke-virtual {v1}, Lcom/byazt/nc/yp;->getImageMode()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/yl/ve;->setImageMode(I)V

    .line 9
    iget-object p1, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    iget-object p1, p1, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    invoke-static {p1}, Lcom/byazt/nm/c;->c(Lcom/byazt/nm/c;)Lcom/byazt/dv/tt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/dv/tt;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    iget-object p1, p1, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    invoke-virtual {p1}, Lcom/byazt/nc/yp;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "price"

    .line 11
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/xf/tt;->c(Ljava/lang/Object;)D

    move-result-wide v1

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    iget-object v3, v3, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    invoke-static {v3}, Lcom/byazt/nm/c;->c(Lcom/byazt/nm/c;)Lcom/byazt/dv/tt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/dv/tt;->tt()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    iget-object v4, v4, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    invoke-static {v4}, Lcom/byazt/nm/c;->c(Lcom/byazt/nm/c;)Lcom/byazt/dv/tt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/byazt/eu/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "pangle banner \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "TTMediationSDK_ECMP"

    invoke-static {v3, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_2

    goto :goto_0

    :cond_2
    move-wide v1, v3

    :goto_0
    invoke-virtual {p1, v1, v2}, Lcom/byazt/yl/ve;->setCpm(D)V

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    iget-object v1, p1, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    invoke-static {p1}, Lcom/byazt/nm/c$ve;->uj(Lcom/byazt/nm/c$ve;)Lcom/byazt/ft/tt;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/byazt/nc/yp;->setExpressInteractionListener(Lcom/byazt/ft/tt;)V

    .line 15
    iget-object p1, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    new-instance v1, Ljava/lang/ref/SoftReference;

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/byazt/nm/c$ve$1;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p1, Lcom/byazt/nm/c$ve;->i:Ljava/lang/ref/SoftReference;

    .line 16
    iget-object p1, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    iget-object p1, p1, Lcom/byazt/nm/c$ve;->x:Lcom/byazt/nc/yp;

    invoke-virtual {p1}, Lcom/byazt/nc/yp;->render()V

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    iget-object v0, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    iget-object v0, v0, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    invoke-virtual {v0, p1}, Lcom/byazt/sp/tt;->notifyLoadSuccess(Ljava/util/List;)V

    return-void

    .line 20
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/byazt/nm/c$ve$1;->tt:Lcom/byazt/nm/c$ve;

    iget-object p1, p1, Lcom/byazt/nm/c$ve;->sl:Lcom/byazt/nm/c;

    new-instance v0, Lcom/byazt/pp/c;

    const v1, 0x13881

    const-string v2, "load list is null or empty"

    invoke-direct {v0, v1, v2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void
.end method
