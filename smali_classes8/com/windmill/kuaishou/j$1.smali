.class final Lcom/windmill/kuaishou/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/j;->a(Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

.field final synthetic c:Lcom/windmill/kuaishou/j;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/j;Ljava/lang/String;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/j$1;->c:Lcom/windmill/kuaishou/j;

    iput-object p2, p0, Lcom/windmill/kuaishou/j$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/windmill/kuaishou/j$1;->b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----------onError---------:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/j$1;->c:Lcom/windmill/kuaishou/j;

    iget-object v0, v0, Lcom/windmill/kuaishou/j;->b:Lcom/windmill/kuaishou/g$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " codeId "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/windmill/kuaishou/j$1;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/kuaishou/j$1;->c:Lcom/windmill/kuaishou/j;

    iget-object p1, p1, Lcom/windmill/kuaishou/j;->b:Lcom/windmill/kuaishou/g$a;

    invoke-interface {p1, v0}, Lcom/windmill/kuaishou/g$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method

.method public final onFeedAdLoad(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsFeedAd;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-----------onFeedAdLoad---------"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/api/KsFeedAd;

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    invoke-interface {v2}, Lcom/kwad/sdk/api/KsFeedAd;->getECPM()I

    move-result v1

    :cond_1
    invoke-interface {v2}, Lcom/kwad/sdk/api/KsFeedAd;->getECPM()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/kwad/sdk/api/KsFeedAd;->setBidEcpm(JJ)V

    new-instance v3, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    invoke-direct {v3}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;-><init>()V

    iget-object v4, p0, Lcom/windmill/kuaishou/j$1;->c:Lcom/windmill/kuaishou/j;

    iget-boolean v4, v4, Lcom/windmill/kuaishou/j;->c:Z

    invoke-virtual {v3, v4}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->dataFlowAutoStart(Z)Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/kwad/sdk/api/KsFeedAd;->setVideoPlayConfig(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V

    new-instance v3, Lcom/windmill/kuaishou/a;

    iget-object v4, p0, Lcom/windmill/kuaishou/j$1;->b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    invoke-direct {v3, v2, v4}, Lcom/windmill/kuaishou/a;-><init>(Lcom/kwad/sdk/api/KsFeedAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V

    iget-object v2, p0, Lcom/windmill/kuaishou/j$1;->c:Lcom/windmill/kuaishou/j;

    iget-object v2, v2, Lcom/windmill/kuaishou/j;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/windmill/kuaishou/j$1;->c:Lcom/windmill/kuaishou/j;

    iget-object v2, v0, Lcom/windmill/kuaishou/j;->b:Lcom/windmill/kuaishou/g$a;

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/windmill/kuaishou/j;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/windmill/kuaishou/g$a;->onNativeAdLoadSuccess(Ljava/util/List;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/windmill/kuaishou/j$1;->b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/windmill/kuaishou/j$1;->c:Lcom/windmill/kuaishou/j;

    iget-object p1, p1, Lcom/windmill/kuaishou/j;->b:Lcom/windmill/kuaishou/g$a;

    if-eqz p1, :cond_7

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ads is null or size be 0 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/kuaishou/j$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/j$1;->c:Lcom/windmill/kuaishou/j;

    iget-object v0, v0, Lcom/windmill/kuaishou/j;->b:Lcom/windmill/kuaishou/g$a;

    invoke-interface {v0, p1}, Lcom/windmill/kuaishou/g$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_7
    return-void
.end method
