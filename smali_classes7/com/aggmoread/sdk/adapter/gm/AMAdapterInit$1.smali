.class Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit;->initializeADN(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/mediation/custom/MediationCustomInitConfig;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit;Ljava/util/Map;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1;->val$map:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1;->val$context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Lcom/aggmoread/sdk/client/AMAdConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/aggmoread/sdk/client/AMAdConfig$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1;->val$map:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/aggmoread/sdk/adapter/helper/AdapterHelper;->getLocalCustomController(Ljava/util/Map;)Lcom/aggmoread/sdk/client/AMCustomController;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;

    .line 13
    .line 14
    invoke-direct {v2, p0, v1}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1$1;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1;Lcom/aggmoread/sdk/client/AMCustomController;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/aggmoread/sdk/client/AMAdConfig$Builder;->setCustomController(Lcom/aggmoread/sdk/client/AMCustomController;)Lcom/aggmoread/sdk/client/AMAdConfig$Builder;

    .line 18
    .line 19
    .line 20
    const-string v1, "initializeADN amSdk init "

    .line 21
    .line 22
    invoke-static {v1}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterInit$1;->val$context:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/aggmoread/sdk/client/AMAdConfig$Builder;->build()Lcom/aggmoread/sdk/client/AMAdConfig;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Lcom/aggmoread/sdk/client/AMSdk;->init(Landroid/content/Context;Lcom/aggmoread/sdk/client/AMAdConfig;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
