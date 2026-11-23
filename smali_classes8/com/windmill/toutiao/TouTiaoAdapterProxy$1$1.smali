.class final Lcom/windmill/toutiao/TouTiaoAdapterProxy$1$1;
.super Lcom/bytedance/sdk/openadsdk/mediation/init/MediationPrivacyConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/toutiao/TouTiaoAdapterProxy$1;->getMediationPrivacyConfig()Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationPrivacyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/toutiao/TouTiaoAdapterProxy$1;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/TouTiaoAdapterProxy$1;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy$1$1;->a:Lcom/windmill/toutiao/TouTiaoAdapterProxy$1;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/MediationPrivacyConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public final isCanUseOaid()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy$1$1;->a:Lcom/windmill/toutiao/TouTiaoAdapterProxy$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoAdapterProxy$1;->a:Lcom/windmill/toutiao/TouTiaoAdapterProxy;

    invoke-static {v0}, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->a(Lcom/windmill/toutiao/TouTiaoAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoAdapterProxy$1$1;->a:Lcom/windmill/toutiao/TouTiaoAdapterProxy$1;

    iget-object v0, v0, Lcom/windmill/toutiao/TouTiaoAdapterProxy$1;->a:Lcom/windmill/toutiao/TouTiaoAdapterProxy;

    invoke-static {v0}, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->a(Lcom/windmill/toutiao/TouTiaoAdapterProxy;)Lcom/windmill/sdk/WMCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/windmill/sdk/WMCustomController;->isCanUseOaid()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/MediationPrivacyConfig;->isCanUseOaid()Z

    move-result v0

    return v0
.end method
