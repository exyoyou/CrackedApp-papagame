.class Lcom/windmill/sdk/WindMillAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/WindMillAd;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/WindMillAd;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/WindMillAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/WindMillAd$2;->a:Lcom/windmill/sdk/WindMillAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd$2;->a:Lcom/windmill/sdk/WindMillAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/WindMillAd;->b(Lcom/windmill/sdk/WindMillAd;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->startUpdate()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/czhj/sdk/common/track/TrackManager;->getInstance()Lcom/czhj/sdk/common/track/TrackManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/windmill/sdk/WindMillAd$2$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/windmill/sdk/WindMillAd$2$1;-><init>(Lcom/windmill/sdk/WindMillAd$2;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/track/TrackManager;->setToBidTrackListener(Lcom/czhj/sdk/common/track/TrackManager$Listener;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/czhj/sdk/common/track/TrackManager;->getInstance()Lcom/czhj/sdk/common/track/TrackManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/czhj/sdk/common/track/TrackManager;->startRetryTracking()V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->sharedInstance()Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->isEnable_report_crash()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lcom/czhj/sdk/common/exceptions/CrashHandler;->getInstance()Lcom/czhj/sdk/common/exceptions/CrashHandler;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lcom/windmill/sdk/WindMillAd$2$2;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/windmill/sdk/WindMillAd$2$2;-><init>(Lcom/windmill/sdk/WindMillAd$2;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/exceptions/CrashHandler;->add(Lcom/czhj/sdk/common/exceptions/CrashHandler$CrashHandlerListener;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-static {}, Lcom/windmill/sdk/utils/a/c;->c()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/windmill/sdk/WindMillAd$2;->a:Lcom/windmill/sdk/WindMillAd;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/windmill/sdk/WindMillAd;->c(Lcom/windmill/sdk/WindMillAd;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
