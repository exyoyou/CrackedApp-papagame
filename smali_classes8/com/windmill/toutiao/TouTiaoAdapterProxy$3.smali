.class final Lcom/windmill/toutiao/TouTiaoAdapterProxy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdSdk$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/toutiao/TouTiaoAdapterProxy;->initializeADN(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/toutiao/TouTiaoAdapterProxy;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/TouTiaoAdapterProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy$3;->a:Lcom/windmill/toutiao/TouTiaoAdapterProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fail(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy$3;->a:Lcom/windmill/toutiao/TouTiaoAdapterProxy;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->b(Lcom/windmill/toutiao/TouTiaoAdapterProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy$3;->a:Lcom/windmill/toutiao/TouTiaoAdapterProxy;

    invoke-virtual {v0, p1, p2}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->callInitFail(ILjava/lang/String;)V

    invoke-static {}, Lcom/windmill/sdk/base/WMInitManager;->sharedInstance()Lcom/windmill/sdk/base/WMInitManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/windmill/sdk/base/WMInitManager;->callInitFail(ILjava/lang/String;)V

    return-void
.end method

.method public final success()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy$3;->a:Lcom/windmill/toutiao/TouTiaoAdapterProxy;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->b(Lcom/windmill/toutiao/TouTiaoAdapterProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy$3;->a:Lcom/windmill/toutiao/TouTiaoAdapterProxy;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->callInitSuccess()V

    invoke-static {}, Lcom/windmill/sdk/base/WMInitManager;->sharedInstance()Lcom/windmill/sdk/base/WMInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/base/WMInitManager;->callInitSuccess()V

    return-void
.end method
