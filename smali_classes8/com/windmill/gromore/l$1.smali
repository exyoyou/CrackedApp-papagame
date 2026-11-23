.class final Lcom/windmill/gromore/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gromore/l;->a(Landroid/content/Context;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

.field final synthetic c:Lcom/windmill/gromore/l;


# direct methods
.method constructor <init>(Lcom/windmill/gromore/l;Ljava/lang/String;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gromore/l$1;->c:Lcom/windmill/gromore/l;

    iput-object p2, p0, Lcom/windmill/gromore/l$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/windmill/gromore/l$1;->b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/windmill/gromore/l$1;->c:Lcom/windmill/gromore/l;

    iget-object v0, v0, Lcom/windmill/gromore/l;->b:Lcom/windmill/gromore/i$a;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-static {p2}, Lcom/windmill/gromore/GroAdapterProxy;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " codeId "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/windmill/gromore/l$1;->a:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, v2, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/windmill/gromore/i$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method

.method public final onFeedAdLoad(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTFeedAd;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-------------onFeedAdLoad-----------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "isExpress"

    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_1

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/windmill/gromore/l$1;->c:Lcom/windmill/gromore/l;

    iget v5, v3, Lcom/windmill/gromore/l;->c:I

    iget-object v6, p0, Lcom/windmill/gromore/l$1;->a:Ljava/lang/String;

    invoke-static {v2, v5, v6, v0}, Lcom/windmill/gromore/n;->a(Ljava/lang/Object;ILjava/lang/String;I)Lcom/windmill/gromore/q;

    move-result-object v5

    iput-object v5, v3, Lcom/windmill/gromore/l;->d:Lcom/windmill/gromore/q;

    if-eqz v4, :cond_2

    new-instance v3, Lcom/windmill/gromore/d;

    iget-object v4, p0, Lcom/windmill/gromore/l$1;->b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v5, p0, Lcom/windmill/gromore/l$1;->c:Lcom/windmill/gromore/l;

    iget-object v5, v5, Lcom/windmill/gromore/l;->d:Lcom/windmill/gromore/q;

    invoke-direct {v3, v2, v4, v5}, Lcom/windmill/gromore/d;-><init>(Lcom/bytedance/sdk/openadsdk/TTFeedAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Lcom/windmill/gromore/q;)V

    goto :goto_2

    :cond_2
    new-instance v3, Lcom/windmill/gromore/j;

    iget-object v4, p0, Lcom/windmill/gromore/l$1;->b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v5, p0, Lcom/windmill/gromore/l$1;->c:Lcom/windmill/gromore/l;

    iget-object v5, v5, Lcom/windmill/gromore/l;->d:Lcom/windmill/gromore/q;

    invoke-direct {v3, v2, v4, v5}, Lcom/windmill/gromore/j;-><init>(Lcom/bytedance/sdk/openadsdk/TTFeedAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Lcom/windmill/gromore/q;)V

    :goto_2
    iget-object v2, p0, Lcom/windmill/gromore/l$1;->c:Lcom/windmill/gromore/l;

    iget-object v2, v2, Lcom/windmill/gromore/l;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/windmill/gromore/l$1;->c:Lcom/windmill/gromore/l;

    iget-object p1, p1, Lcom/windmill/gromore/l;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/windmill/gromore/l$1;->c:Lcom/windmill/gromore/l;

    iget-object p1, p1, Lcom/windmill/gromore/l;->b:Lcom/windmill/gromore/i$a;

    if-eqz p1, :cond_5

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ads express is null:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/gromore/l$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gromore/l$1;->c:Lcom/windmill/gromore/l;

    iget-object v0, v0, Lcom/windmill/gromore/l;->b:Lcom/windmill/gromore/i$a;

    invoke-interface {v0, p1}, Lcom/windmill/gromore/i$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_5
    return-void

    :cond_6
    iget-object p1, p0, Lcom/windmill/gromore/l$1;->c:Lcom/windmill/gromore/l;

    iget-object v0, p1, Lcom/windmill/gromore/l;->b:Lcom/windmill/gromore/i$a;

    if-eqz v0, :cond_7

    iget-object v1, p1, Lcom/windmill/gromore/l;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/windmill/gromore/l;->d:Lcom/windmill/gromore/q;

    invoke-interface {v0, v1, p1}, Lcom/windmill/gromore/i$a;->onNativeAdLoadSuccess(Ljava/util/List;Ljava/lang/Object;)V

    :cond_7
    return-void

    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/windmill/gromore/l$1;->c:Lcom/windmill/gromore/l;

    iget-object p1, p1, Lcom/windmill/gromore/l;->b:Lcom/windmill/gromore/i$a;

    if-eqz p1, :cond_9

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ads is null or size be 0 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/gromore/l$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gromore/l$1;->c:Lcom/windmill/gromore/l;

    iget-object v0, v0, Lcom/windmill/gromore/l;->b:Lcom/windmill/gromore/i$a;

    invoke-interface {v0, p1}, Lcom/windmill/gromore/i$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_9
    return-void
.end method
