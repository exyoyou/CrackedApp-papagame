.class final Lcom/windmill/gdt/GDTNSAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADUnifiedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gdt/GDTNSAdapter;->loadAd(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/windmill/gdt/GDTNSAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/gdt/GDTNSAdapter;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gdt/GDTNSAdapter$1;->c:Lcom/windmill/gdt/GDTNSAdapter;

    iput-object p2, p0, Lcom/windmill/gdt/GDTNSAdapter$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/windmill/gdt/GDTNSAdapter$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADLoaded(Ljava/util/List;)V
    .locals 5
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

    iget-object v1, p0, Lcom/windmill/gdt/GDTNSAdapter$1;->c:Lcom/windmill/gdt/GDTNSAdapter;

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

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/windmill/gdt/GDTNSAdapter$1;->c:Lcom/windmill/gdt/GDTNSAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTNSAdapter;->a(Lcom/windmill/gdt/GDTNSAdapter;)Z

    iget-object v0, p0, Lcom/windmill/gdt/GDTNSAdapter$1;->c:Lcom/windmill/gdt/GDTNSAdapter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-static {v0, v1}, Lcom/windmill/gdt/GDTNSAdapter;->a(Lcom/windmill/gdt/GDTNSAdapter;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    iget-object v0, p0, Lcom/windmill/gdt/GDTNSAdapter$1;->c:Lcom/windmill/gdt/GDTNSAdapter;

    new-instance v1, Lcom/windmill/gdt/c;

    invoke-static {v0}, Lcom/windmill/gdt/GDTNSAdapter;->b(Lcom/windmill/gdt/GDTNSAdapter;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    move-result-object v2

    iget-object v3, p0, Lcom/windmill/gdt/GDTNSAdapter$1;->c:Lcom/windmill/gdt/GDTNSAdapter;

    invoke-virtual {v3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v3

    iget-object v4, p0, Lcom/windmill/gdt/GDTNSAdapter$1;->b:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v4}, Lcom/windmill/gdt/c;-><init>(Lcom/qq/e/ads/nativ/NativeUnifiedADData;ILjava/util/Map;)V

    invoke-static {v0, v1}, Lcom/windmill/gdt/GDTNSAdapter;->a(Lcom/windmill/gdt/GDTNSAdapter;Lcom/windmill/gdt/c;)Lcom/windmill/gdt/c;

    iget-object v0, p0, Lcom/windmill/gdt/GDTNSAdapter$1;->c:Lcom/windmill/gdt/GDTNSAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/windmill/gdt/GDTNSAdapter$1;->c:Lcom/windmill/gdt/GDTNSAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTNSAdapter;->b(Lcom/windmill/gdt/GDTNSAdapter;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    move-result-object v0

    invoke-interface {v0}, Lcom/qq/e/comm/pi/LADI;->getECPM()I

    move-result v0

    iget-object v1, p0, Lcom/windmill/gdt/GDTNSAdapter$1;->c:Lcom/windmill/gdt/GDTNSAdapter;

    new-instance v2, Lcom/windmill/sdk/models/BidPrice;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_1
    iget-object v0, p0, Lcom/windmill/gdt/GDTNSAdapter$1;->c:Lcom/windmill/gdt/GDTNSAdapter;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/windmill/gdt/GDTNSAdapter$1;->c:Lcom/windmill/gdt/GDTNSAdapter;

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "list is null or size be 0 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/windmill/gdt/GDTNSAdapter$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/GDTNSAdapter$1;->c:Lcom/windmill/gdt/GDTNSAdapter;

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

    iget-object v0, p0, Lcom/windmill/gdt/GDTNSAdapter$1;->c:Lcom/windmill/gdt/GDTNSAdapter;

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

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
