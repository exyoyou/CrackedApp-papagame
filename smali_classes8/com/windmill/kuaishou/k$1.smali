.class final Lcom/windmill/kuaishou/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/k;->a(Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/windmill/kuaishou/k;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/k;Ljava/lang/String;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/k$1;->d:Lcom/windmill/kuaishou/k;

    iput-object p2, p0, Lcom/windmill/kuaishou/k$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/windmill/kuaishou/k$1;->b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iput-object p4, p0, Lcom/windmill/kuaishou/k$1;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/windmill/kuaishou/k$1;->d:Lcom/windmill/kuaishou/k;

    iget-object v0, v0, Lcom/windmill/kuaishou/k;->b:Lcom/windmill/kuaishou/g$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " codeId "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/windmill/kuaishou/k$1;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/kuaishou/k$1;->d:Lcom/windmill/kuaishou/k;

    iget-object p1, p1, Lcom/windmill/kuaishou/k;->b:Lcom/windmill/kuaishou/g$a;

    invoke-interface {p1, v0}, Lcom/windmill/kuaishou/g$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method

.method public final onNativeAdLoad(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsNativeAd;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    invoke-interface {v2}, Lcom/kwad/sdk/api/KsNativeAd;->getECPM()I

    move-result v1

    :cond_1
    invoke-interface {v2}, Lcom/kwad/sdk/api/KsNativeAd;->getECPM()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/kwad/sdk/api/KsNativeAd;->setBidEcpm(JJ)V

    new-instance v3, Lcom/windmill/kuaishou/h;

    iget-object v4, p0, Lcom/windmill/kuaishou/k$1;->b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v5, p0, Lcom/windmill/kuaishou/k$1;->c:Ljava/util/Map;

    invoke-direct {v3, v2, v4, v5}, Lcom/windmill/kuaishou/h;-><init>(Lcom/kwad/sdk/api/KsNativeAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/windmill/kuaishou/k$1;->d:Lcom/windmill/kuaishou/k;

    iget-object v2, v2, Lcom/windmill/kuaishou/k;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/windmill/kuaishou/k$1;->d:Lcom/windmill/kuaishou/k;

    iget-object v2, v0, Lcom/windmill/kuaishou/k;->b:Lcom/windmill/kuaishou/g$a;

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/windmill/kuaishou/k;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/windmill/kuaishou/g$a;->onNativeAdLoadSuccess(Ljava/util/List;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/windmill/kuaishou/k$1;->b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/windmill/kuaishou/k$1;->d:Lcom/windmill/kuaishou/k;

    iget-object p1, p1, Lcom/windmill/kuaishou/k;->b:Lcom/windmill/kuaishou/g$a;

    if-eqz p1, :cond_7

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adList is null or size be 0 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/kuaishou/k$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/k$1;->d:Lcom/windmill/kuaishou/k;

    iget-object v0, v0, Lcom/windmill/kuaishou/k;->b:Lcom/windmill/kuaishou/g$a;

    invoke-interface {v0, p1}, Lcom/windmill/kuaishou/g$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_7
    return-void
.end method
