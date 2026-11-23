.class Lcom/windmill/sdk/splash/WMSplashAd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/splash/WMSplashAd;->onSplashAdFailToLoad(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/windmill/sdk/splash/WMSplashAd;

.field final synthetic val$error:Lcom/windmill/sdk/WindMillError;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/splash/WMSplashAd;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$error",
            "val$placementId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/splash/WMSplashAd$3;->this$0:Lcom/windmill/sdk/splash/WMSplashAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd$3;->val$error:Lcom/windmill/sdk/WindMillError;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/splash/WMSplashAd$3;->val$placementId:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd$3;->this$0:Lcom/windmill/sdk/splash/WMSplashAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/splash/WMSplashAd;->access$000(Lcom/windmill/sdk/splash/WMSplashAd;)Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd$3;->this$0:Lcom/windmill/sdk/splash/WMSplashAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/windmill/sdk/splash/WMSplashAd;->access$000(Lcom/windmill/sdk/splash/WMSplashAd;)Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd$3;->val$error:Lcom/windmill/sdk/WindMillError;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/windmill/sdk/splash/WMSplashAd$3;->val$placementId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Lcom/windmill/sdk/splash/WMSplashAdListener;->onSplashAdFailToLoad(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
