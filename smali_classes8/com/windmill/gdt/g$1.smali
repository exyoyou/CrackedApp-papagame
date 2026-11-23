.class final Lcom/windmill/gdt/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADUnifiedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gdt/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/windmill/gdt/g;


# direct methods
.method constructor <init>(Lcom/windmill/gdt/g;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gdt/g$1;->c:Lcom/windmill/gdt/g;

    iput-object p2, p0, Lcom/windmill/gdt/g$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/windmill/gdt/g$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADLoaded(Ljava/util/List;)V
    .locals 7
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

    iget-object v1, p0, Lcom/windmill/gdt/g$1;->c:Lcom/windmill/gdt/g;

    iget-object v1, v1, Lcom/windmill/gdt/g;->d:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

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

    check-cast v2, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/windmill/gdt/g$1;->c:Lcom/windmill/gdt/g;

    iget-boolean v3, v3, Lcom/windmill/gdt/g;->b:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/windmill/gdt/GDTAdapterProxy;->DOWNLOAD_CONFIRM_LISTENER:Lcom/qq/e/comm/compliance/DownloadConfirmListener;

    invoke-interface {v2, v3}, Lcom/qq/e/comm/compliance/ApkDownloadComplianceInterface;->setDownloadConfirmListener(Lcom/qq/e/comm/compliance/DownloadConfirmListener;)V

    :cond_1
    new-instance v3, Lcom/windmill/gdt/e;

    iget-object v4, p0, Lcom/windmill/gdt/g$1;->c:Lcom/windmill/gdt/g;

    iget-object v5, v4, Lcom/windmill/gdt/g;->d:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v6, p0, Lcom/windmill/gdt/g$1;->b:Ljava/util/Map;

    iget-boolean v4, v4, Lcom/windmill/gdt/g;->e:Z

    invoke-direct {v3, v2, v5, v6, v4}, Lcom/windmill/gdt/e;-><init>(Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Ljava/util/Map;Z)V

    iget-object v4, p0, Lcom/windmill/gdt/g$1;->c:Lcom/windmill/gdt/g;

    iget-object v4, v4, Lcom/windmill/gdt/g;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/qq/e/comm/pi/LADI;->getECPM()I

    move-result v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/windmill/gdt/g$1;->c:Lcom/windmill/gdt/g;

    iget-object v2, v0, Lcom/windmill/gdt/g;->c:Lcom/windmill/gdt/d$a;

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/windmill/gdt/g;->a:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Lcom/windmill/gdt/d$a;->onNativeAdLoadSuccess(Ljava/util/List;I)V

    :cond_4
    iget-object v0, p0, Lcom/windmill/gdt/g$1;->c:Lcom/windmill/gdt/g;

    iget-object v0, v0, Lcom/windmill/gdt/g;->d:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/windmill/gdt/g$1;->c:Lcom/windmill/gdt/g;

    iget-object p1, p1, Lcom/windmill/gdt/g;->c:Lcom/windmill/gdt/d$a;

    if-eqz p1, :cond_7

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "list is null or size be 0 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/gdt/g$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/g$1;->c:Lcom/windmill/gdt/g;

    iget-object v0, v0, Lcom/windmill/gdt/g;->c:Lcom/windmill/gdt/d$a;

    invoke-interface {v0, p1}, Lcom/windmill/gdt/d$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_7
    return-void
.end method

.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/g$1;->c:Lcom/windmill/gdt/g;

    iget-object v1, v1, Lcom/windmill/gdt/g;->d:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

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

    iget-object v0, p0, Lcom/windmill/gdt/g$1;->c:Lcom/windmill/gdt/g;

    iget-object v0, v0, Lcom/windmill/gdt/g;->c:Lcom/windmill/gdt/d$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/windmill/gdt/GDTAdapterProxy;->getDetailCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/gdt/g$1;->c:Lcom/windmill/gdt/g;

    iget-object p1, p1, Lcom/windmill/gdt/g;->c:Lcom/windmill/gdt/d$a;

    invoke-interface {p1, v0}, Lcom/windmill/gdt/d$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method
