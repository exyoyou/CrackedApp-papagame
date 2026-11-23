.class Lcom/windmill/sdk/splash/WMSplashAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/splash/WMSplashAd;->onSplashAdSuccessLoad(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/windmill/sdk/splash/WMSplashAd;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/splash/WMSplashAd;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$placementId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/splash/WMSplashAd$2;->this$0:Lcom/windmill/sdk/splash/WMSplashAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/splash/WMSplashAd$2;->val$placementId:Ljava/lang/String;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd$2;->this$0:Lcom/windmill/sdk/splash/WMSplashAd;

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
    iget-object v0, p0, Lcom/windmill/sdk/splash/WMSplashAd$2;->this$0:Lcom/windmill/sdk/splash/WMSplashAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/windmill/sdk/splash/WMSplashAd;->access$000(Lcom/windmill/sdk/splash/WMSplashAd;)Lcom/windmill/sdk/splash/WMSplashAdListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/windmill/sdk/splash/WMSplashAd$2;->val$placementId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/windmill/sdk/splash/WMSplashAdListener;->onSplashAdSuccessLoad(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
