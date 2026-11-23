.class Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader;->showAd(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader$1;->val$viewGroup:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader;->access$000(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader;)Lcom/aggmoread/sdk/client/splash/AMSplashAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader;->access$000(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader;)Lcom/aggmoread/sdk/client/splash/AMSplashAd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader$1;->val$viewGroup:Landroid/view/ViewGroup;

    .line 16
    .line 17
    new-instance v2, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader$1$1;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader$1$1;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomSplashLoader$1;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1, v2}, Lcom/aggmoread/sdk/client/splash/AMSplashAd;->showViewGroup(Landroid/view/ViewGroup;Lcom/aggmoread/sdk/client/splash/AMSplashInteractionListener;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v0, "splash show err , ad is null\uff01"

    .line 27
    .line 28
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method
