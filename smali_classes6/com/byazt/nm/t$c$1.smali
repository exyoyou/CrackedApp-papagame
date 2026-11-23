.class public Lcom/byazt/nm/t$c$1;
.super Lcom/byazt/nh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x40f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nm/t$c;->c(Lcom/byazt/omf/h;Lcom/byazt/dj/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nm/t$c;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/t$c;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/nh/c;-><init>(Ljava/util/function/Function;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/nc/c;)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string v0, "TTMediationSDK"

    const-string v1, "new api onSplashLoadFail"

    .line 17
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 18
    iget-object v0, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {v0}, Lcom/byazt/nm/t$c;->c(Lcom/byazt/nm/t$c;)Lcom/byazt/sp/tt;

    move-result-object v0

    new-instance v1, Lcom/byazt/pp/c;

    invoke-virtual {p1}, Lcom/byazt/nc/c;->getCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/byazt/nc/c;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->c(Lcom/byazt/nm/t$c;)Lcom/byazt/sp/tt;

    move-result-object p1

    new-instance v0, Lcom/byazt/pp/c;

    const v1, 0x13881

    const-string v2, "csjAdError is null"

    invoke-direct {v0, v1, v2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void
.end method

.method public c(Lcom/byazt/nc/tt;)V
    .locals 5

    const-string v0, "new api onSplashLoadSuccess 111"

    const-string v1, "TTMediationSDK"

    .line 1
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->c(Lcom/byazt/nm/t$c;)Lcom/byazt/sp/tt;

    move-result-object p1

    new-instance v0, Lcom/byazt/pp/c;

    const v1, 0x13881

    const-string v2, "\u6e32\u67d3\u6210\u529f\u4f46\u5e7f\u544a\u662f\u7a7a"

    invoke-direct {v0, v1, v2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {v0, p1}, Lcom/byazt/nm/t$c;->c(Lcom/byazt/nm/t$c;Lcom/byazt/nc/tt;)Lcom/byazt/nc/tt;

    .line 4
    iget-object p1, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/byazt/yl/ve;->setExpressAd(Z)V

    .line 5
    iget-object p1, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->tt(Lcom/byazt/nm/t$c;)Lcom/byazt/nc/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nc/tt;->getInteractionType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/yl/ve;->setInteractionType(I)V

    .line 6
    iget-object p1, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->tt(Lcom/byazt/nm/t$c;)Lcom/byazt/nc/tt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/nc/tt;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PangleSplashLoader WaterfallPangleSplashLoader extraInfo :"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/util/Map;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {v0}, Lcom/byazt/nm/t$c;->ve(Lcom/byazt/nm/t$c;)Lcom/byazt/dv/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/dv/tt;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const-string v0, "price"

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/xf/tt;->c(Ljava/lang/Object;)D

    move-result-wide v0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {v2}, Lcom/byazt/nm/t$c;->ve(Lcom/byazt/nm/t$c;)Lcom/byazt/dv/tt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/dv/tt;->tt()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {v3}, Lcom/byazt/nm/t$c;->ve(Lcom/byazt/nm/t$c;)Lcom/byazt/dv/tt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/byazt/eu/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pangle Splash \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TTMediationSDK_ECMP"

    invoke-static {v2, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/byazt/yl/ve;->setCpm(D)V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->tt(Lcom/byazt/nm/t$c;)Lcom/byazt/nc/tt;

    move-result-object p1

    new-instance v0, Lcom/byazt/nm/t$c$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/nm/t$c$1$1;-><init>(Lcom/byazt/nm/t$c$1;Ljava/util/function/Function;)V

    invoke-virtual {p1, v0}, Lcom/byazt/nc/tt;->setDownloadListener(Lcom/byazt/ocd/ve;)V

    .line 14
    iget-object p1, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->tt(Lcom/byazt/nm/t$c;)Lcom/byazt/nc/tt;

    move-result-object p1

    new-instance v0, Lcom/byazt/nm/t$c$1$2;

    invoke-direct {v0, p0, v1}, Lcom/byazt/nm/t$c$1$2;-><init>(Lcom/byazt/nm/t$c$1;Ljava/util/function/Function;)V

    invoke-virtual {p1, v0}, Lcom/byazt/nc/tt;->setSplashAdListener(Lcom/byazt/vw/c;)V

    .line 15
    iget-object p1, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->tt(Lcom/byazt/nm/t$c;)Lcom/byazt/nc/tt;

    move-result-object p1

    new-instance v0, Lcom/byazt/nm/t$c$1$3;

    invoke-direct {v0, p0, v1}, Lcom/byazt/nm/t$c$1$3;-><init>(Lcom/byazt/nm/t$c$1;Ljava/util/function/Function;)V

    invoke-virtual {p1, v0}, Lcom/byazt/nc/tt;->setSplashCardListener(Lcom/byazt/vw/tt;)V

    .line 16
    iget-object p1, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->c(Lcom/byazt/nm/t$c;)Lcom/byazt/sp/tt;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-virtual {p1, v0}, Lcom/byazt/sp/tt;->notifyLoadSuccess(Lcom/byazt/yl/ve;)V

    return-void
.end method

.method public c(Lcom/byazt/nc/tt;Lcom/byazt/nc/c;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string p1, "TTMediationSDK"

    const-string v0, "new api onSplashRenderFail"

    .line 20
    invoke-static {p1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 21
    iget-object p1, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->c(Lcom/byazt/nm/t$c;)Lcom/byazt/sp/tt;

    move-result-object p1

    new-instance v0, Lcom/byazt/pp/c;

    invoke-virtual {p2}, Lcom/byazt/nc/c;->getCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/byazt/nc/c;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/byazt/nm/t$c$1;->c:Lcom/byazt/nm/t$c;

    invoke-static {p1}, Lcom/byazt/nm/t$c;->c(Lcom/byazt/nm/t$c;)Lcom/byazt/sp/tt;

    move-result-object p1

    new-instance p2, Lcom/byazt/pp/c;

    const v0, 0x13881

    const-string v1, "csjAdError is null"

    invoke-direct {p2, v0, v1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void
.end method

.method public tt(Lcom/byazt/nc/tt;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const-string p1, "TTMediationSDK"

    .line 2
    .line 3
    const-string v0, "new api onSplashRenderSuccess"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
