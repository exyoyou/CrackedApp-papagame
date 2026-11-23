.class public final Lcom/windmill/adscope/b;
.super Lcom/windmill/adscope/c;
.source "SourceFile"


# instance fields
.field a:Lcom/windmill/adscope/c$a;

.field b:Lcom/beizi/fusion/InterstitialAd;


# direct methods
.method public constructor <init>(Lcom/windmill/adscope/c$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/windmill/adscope/c;-><init>()V

    iput-object p1, p0, Lcom/windmill/adscope/b;->a:Lcom/windmill/adscope/c$a;

    return-void
.end method

.method private a(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/windmill/adscope/b;->a:Lcom/windmill/adscope/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/windmill/adscope/c$a;->onInterstitialAdFailToPlaying(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/adscope/b;->b:Lcom/beizi/fusion/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/beizi/fusion/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/adscope/b;->b:Lcom/beizi/fusion/InterstitialAd;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/InterstitialAd;->showAd(Landroid/app/Activity;)V

    return-void

    :cond_0
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    const-string v1, "expressInterstitialAd is null when show"

    invoke-direct {p1, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/windmill/adscope/b;->a(Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adScope catch error when show "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/windmill/adscope/b;->a(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v6, Lcom/beizi/fusion/InterstitialAd;

    new-instance v3, Lcom/windmill/adscope/b$1;

    invoke-direct {v3, p0}, Lcom/windmill/adscope/b$1;-><init>(Lcom/windmill/adscope/b;)V

    const-wide/16 v4, 0x1388

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/beizi/fusion/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/InterstitialAdListener;J)V

    iput-object v6, p0, Lcom/windmill/adscope/b;->b:Lcom/beizi/fusion/InterstitialAd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    :try_start_1
    const-string p2, "adTemplateType"

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/windmill/adscope/b;->b:Lcom/beizi/fusion/InterstitialAd;

    invoke-virtual {p2, p1}, Lcom/beizi/fusion/InterstitialAd;->setAdVersion(I)V

    iget-object p1, p0, Lcom/windmill/adscope/b;->b:Lcom/beizi/fusion/InterstitialAd;

    invoke-virtual {p1}, Lcom/beizi/fusion/InterstitialAd;->loadAd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/windmill/adscope/b;->a:Lcom/windmill/adscope/c$a;

    if-eqz p2, :cond_1

    new-instance p3, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adScope catch error load "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/windmill/adscope/c$a;->onInterstitialAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/windmill/adscope/b;->b:Lcom/beizi/fusion/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/beizi/fusion/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/adscope/b;->b:Lcom/beizi/fusion/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/beizi/fusion/InterstitialAd;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/adscope/b;->b:Lcom/beizi/fusion/InterstitialAd;

    :cond_0
    return-void
.end method
