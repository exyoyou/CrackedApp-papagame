.class final Lcom/windmill/gdt/GDTNBAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADUnifiedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gdt/GDTNBAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/windmill/gdt/GDTNBAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/gdt/GDTNBAdapter;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gdt/GDTNBAdapter$1;->d:Lcom/windmill/gdt/GDTNBAdapter;

    iput-object p2, p0, Lcom/windmill/gdt/GDTNBAdapter$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/windmill/gdt/GDTNBAdapter$1;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/windmill/gdt/GDTNBAdapter$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADLoaded(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeUnifiedADData;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/windmill/gdt/GDTNBAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onADLoad()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/windmill/gdt/GDTNBAdapter$1;->d:Lcom/windmill/gdt/GDTNBAdapter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-static {v0, v1}, Lcom/windmill/gdt/GDTNBAdapter;->a(Lcom/windmill/gdt/GDTNBAdapter;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    iget-object v0, p0, Lcom/windmill/gdt/GDTNBAdapter$1;->d:Lcom/windmill/gdt/GDTNBAdapter;

    new-instance v1, Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/GDTNBAdapter;->a(Lcom/windmill/gdt/GDTNBAdapter;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    move-result-object v2

    iget-object v3, p0, Lcom/windmill/gdt/GDTNBAdapter$1;->d:Lcom/windmill/gdt/GDTNBAdapter;

    invoke-virtual {v3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v3

    iget-object v4, p0, Lcom/windmill/gdt/GDTNBAdapter$1;->b:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v4}, Lcom/windmill/gdt/c;-><init>(Lcom/qq/e/ads/nativ/NativeUnifiedADData;ILjava/util/Map;)V

    invoke-static {v0, v1}, Lcom/windmill/gdt/GDTNBAdapter;->a(Lcom/windmill/gdt/GDTNBAdapter;Lcom/windmill/gdt/c;)Lcom/windmill/gdt/c;

    new-instance v0, Lcom/windmill/sdk/widget/BannerViewManager;

    iget-object v6, p0, Lcom/windmill/gdt/GDTNBAdapter$1;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/windmill/gdt/GDTNBAdapter$1;->d:Lcom/windmill/gdt/GDTNBAdapter;

    invoke-static {v1}, Lcom/windmill/gdt/GDTNBAdapter;->b(Lcom/windmill/gdt/GDTNBAdapter;)I

    move-result v7

    iget-object v1, p0, Lcom/windmill/gdt/GDTNBAdapter$1;->d:Lcom/windmill/gdt/GDTNBAdapter;

    invoke-static {v1}, Lcom/windmill/gdt/GDTNBAdapter;->c(Lcom/windmill/gdt/GDTNBAdapter;)I

    move-result v8

    iget-object v1, p0, Lcom/windmill/gdt/GDTNBAdapter$1;->d:Lcom/windmill/gdt/GDTNBAdapter;

    invoke-static {v1}, Lcom/windmill/gdt/GDTNBAdapter;->d(Lcom/windmill/gdt/GDTNBAdapter;)Lcom/windmill/gdt/c;

    move-result-object v9

    iget-object v10, p0, Lcom/windmill/gdt/GDTNBAdapter$1;->b:Ljava/util/Map;

    new-instance v11, Lcom/windmill/gdt/GDTNBAdapter$1$1;

    invoke-direct {v11, p0, p1}, Lcom/windmill/gdt/GDTNBAdapter$1$1;-><init>(Lcom/windmill/gdt/GDTNBAdapter$1;Ljava/util/List;)V

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/windmill/sdk/widget/BannerViewManager;-><init>(Landroid/content/Context;IILcom/windmill/sdk/natives/WMNativeAdData;Ljava/util/Map;Lcom/windmill/sdk/widget/ViewInteractionListener;)V

    invoke-virtual {v0}, Lcom/windmill/sdk/widget/BannerViewManager;->render()V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/windmill/gdt/GDTNBAdapter$1;->d:Lcom/windmill/gdt/GDTNBAdapter;

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "list is null or size be 0 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/windmill/gdt/GDTNBAdapter$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/windmill/gdt/GDTNBAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onNoAD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/GDTNBAdapter$1;->d:Lcom/windmill/gdt/GDTNBAdapter;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/windmill/gdt/GDTAdapterProxy;->getDetailCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
