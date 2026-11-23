.class Lcom/windmill/sdk/reward/WMRewardAd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/reward/WMRewardAd;->onVideoAdLoadFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/windmill/sdk/reward/WMRewardAd;

.field final synthetic val$error:Lcom/windmill/sdk/WindMillError;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/reward/WMRewardAd;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/windmill/sdk/reward/WMRewardAd$3;->this$0:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/reward/WMRewardAd$3;->val$error:Lcom/windmill/sdk/WindMillError;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/reward/WMRewardAd$3;->val$placementId:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd$3;->this$0:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/windmill/sdk/reward/WMRewardAd;->access$000(Lcom/windmill/sdk/reward/WMRewardAd;)Lcom/windmill/sdk/reward/WMRewardAdListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "---onVideoAdLoadFail "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/windmill/sdk/reward/WMRewardAd$3;->val$error:Lcom/windmill/sdk/WindMillError;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "|"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/windmill/sdk/reward/WMRewardAd$3;->val$placementId:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd$3;->this$0:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/windmill/sdk/reward/WMRewardAd;->access$000(Lcom/windmill/sdk/reward/WMRewardAd;)Lcom/windmill/sdk/reward/WMRewardAdListener;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/windmill/sdk/reward/WMRewardAd$3;->val$error:Lcom/windmill/sdk/WindMillError;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/windmill/sdk/reward/WMRewardAd$3;->val$placementId:Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {v0, v1, v2}, Lcom/windmill/sdk/reward/WMRewardAdListener;->onVideoAdLoadError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method
