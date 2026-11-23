.class Lcom/windmill/sdk/reward/WMRewardAd$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/reward/WMRewardAd;->onVideoAdPlayError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/windmill/sdk/reward/WMRewardAd$4;->this$0:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/reward/WMRewardAd$4;->val$error:Lcom/windmill/sdk/WindMillError;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/reward/WMRewardAd$4;->val$placementId:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd$4;->this$0:Lcom/windmill/sdk/reward/WMRewardAd;

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
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "onVideoAdPlayError "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/windmill/sdk/reward/WMRewardAd$4;->val$error:Lcom/windmill/sdk/WindMillError;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "|"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/windmill/sdk/reward/WMRewardAd$4;->val$placementId:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd$4;->this$0:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/windmill/sdk/reward/WMRewardAd;->access$000(Lcom/windmill/sdk/reward/WMRewardAd;)Lcom/windmill/sdk/reward/WMRewardAdListener;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/windmill/sdk/reward/WMRewardAd$4;->val$error:Lcom/windmill/sdk/WindMillError;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/windmill/sdk/reward/WMRewardAd$4;->val$placementId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {v0, v1, v2}, Lcom/windmill/sdk/reward/WMRewardAdListener;->onVideoAdPlayError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method
