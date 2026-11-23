.class final Lcom/windmill/gromore/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gromore/f;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/windmill/gromore/f;


# direct methods
.method constructor <init>(Lcom/windmill/gromore/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iput-object p2, p0, Lcom/windmill/gromore/f$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/windmill/gromore/f$1;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-----Gro-message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-static {p2}, Lcom/windmill/gromore/GroAdapterProxy;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/gromore/f;->a(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 10

    iget-object v0, p0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iput-object p1, v0, Lcom/windmill/gromore/f;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    new-instance v0, Lcom/windmill/gromore/f$1$1;

    invoke-direct {v0, p0}, Lcom/windmill/gromore/f$1$1;-><init>(Lcom/windmill/gromore/f$1;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    iget-object p1, p0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v0, p1, Lcom/windmill/gromore/f;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v0, p1, Lcom/windmill/gromore/f;->b:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    iget v2, p1, Lcom/windmill/gromore/f;->c:I

    iget-object v3, p0, Lcom/windmill/gromore/f$1;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/windmill/gromore/n;->a(Ljava/lang/Object;ILjava/lang/String;I)Lcom/windmill/gromore/q;

    move-result-object v0

    iput-object v0, p1, Lcom/windmill/gromore/f;->d:Lcom/windmill/gromore/q;

    new-instance p1, Lcom/windmill/sdk/models/BidPrice;

    iget-object v0, p0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v0, v0, Lcom/windmill/gromore/f;->d:Lcom/windmill/gromore/q;

    iget-wide v2, v0, Lcom/windmill/gromore/q;->a:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v2, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    iget-object v0, v0, Lcom/windmill/gromore/f;->d:Lcom/windmill/gromore/q;

    iget-wide v3, v0, Lcom/windmill/gromore/q;->a:D

    iget-object v5, v0, Lcom/windmill/gromore/q;->e:Ljava/lang/String;

    iget-object v6, v0, Lcom/windmill/gromore/q;->d:Ljava/lang/String;

    iget-object v7, v0, Lcom/windmill/gromore/q;->h:Ljava/lang/String;

    iget-object v8, v0, Lcom/windmill/gromore/q;->f:Ljava/lang/String;

    iget-object v9, v0, Lcom/windmill/gromore/q;->i:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroC2sPriceInfo(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object v0, v0, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_0
    iget-object p1, p0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object p1, p1, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getFillType()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object p1, p1, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadSuccess()V

    :cond_1
    return-void
.end method

.method public final onFullScreenVideoCached()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFullScreenVideoCached(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/windmill/gromore/f$1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "---Gro---onFullScreenVideoCached "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object p1, p1, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getFillType()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/windmill/gromore/f$1;->b:Lcom/windmill/gromore/f;

    iget-object p1, p1, Lcom/windmill/gromore/f;->a:Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadSuccess()V

    :cond_0
    return-void
.end method
