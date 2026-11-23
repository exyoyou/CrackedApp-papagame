.class public final Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/reward/WMRewardAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/viewmodel/RewardAdViewModel;->load(Landroid/app/Activity;Ljava/lang/String;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u001c\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u001c\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\r\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u000e\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u000f\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u001c\u0010\u0010\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "com/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1",
        "Lcom/windmill/sdk/reward/WMRewardAdListener;",
        "onVideoAdLoadSuccess",
        "",
        "placementId",
        "",
        "onVideoAdLoadError",
        "error",
        "Lcom/windmill/sdk/WindMillError;",
        "onVideoAdPlayStart",
        "adInfo",
        "Lcom/windmill/sdk/models/AdInfo;",
        "onVideoAdPlayError",
        "onVideoAdPlayEnd",
        "onVideoAdClicked",
        "onVideoAdClosed",
        "onVideoRewarded",
        "rewardInfo",
        "Lcom/windmill/sdk/reward/WMRewardInfo;",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $adId:Ljava/lang/String;

.field final synthetic $autoShow:Z

.field final synthetic this$0:Lcom/join/kotlin/viewmodel/RewardAdViewModel;


# direct methods
.method constructor <init>(Lcom/join/kotlin/viewmodel/RewardAdViewModel;ZLjava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;->this$0:Lcom/join/kotlin/viewmodel/RewardAdViewModel;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;->$autoShow:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;->$adId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;->$activity:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onVideoAdClicked(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;->this$0:Lcom/join/kotlin/viewmodel/RewardAdViewModel;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->getEvent()Lkotlinx/coroutines/flow/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lf6/a$a;->a:Lf6/a$a;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/i;->d(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onVideoAdClosed(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;->this$0:Lcom/join/kotlin/viewmodel/RewardAdViewModel;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->getEvent()Lkotlinx/coroutines/flow/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lf6/a$b;->a:Lf6/a$b;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/i;->d(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onVideoAdLoadError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;->this$0:Lcom/join/kotlin/viewmodel/RewardAdViewModel;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->getEvent()Lkotlinx/coroutines/flow/i;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Lf6/a$f;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, v1

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_1
    invoke-direct {v0, v2, v1}, Lf6/a$f;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, v0}, Lkotlinx/coroutines/flow/i;->d(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onVideoAdLoadSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;->this$0:Lcom/join/kotlin/viewmodel/RewardAdViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->getEvent()Lkotlinx/coroutines/flow/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lf6/a$g;->a:Lf6/a$g;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/i;->d(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;->$autoShow:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;->$adId:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;->this$0:Lcom/join/kotlin/viewmodel/RewardAdViewModel;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;->$activity:Landroid/app/Activity;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->show(Landroid/app/Activity;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public onVideoAdPlayEnd(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;->this$0:Lcom/join/kotlin/viewmodel/RewardAdViewModel;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->getEvent()Lkotlinx/coroutines/flow/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lf6/a$h;->a:Lf6/a$h;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/i;->d(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onVideoAdPlayError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;->this$0:Lcom/join/kotlin/viewmodel/RewardAdViewModel;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->getEvent()Lkotlinx/coroutines/flow/i;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Lf6/a$i;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, v1

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillError;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_1
    invoke-direct {v0, v2, v1}, Lf6/a$i;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, v0}, Lkotlinx/coroutines/flow/i;->d(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onVideoAdPlayStart(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 0

    return-void
.end method

.method public onVideoRewarded(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/reward/WMRewardInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;->this$0:Lcom/join/kotlin/viewmodel/RewardAdViewModel;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->getEvent()Lkotlinx/coroutines/flow/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object p2, Lf6/a$c;->a:Lf6/a$c;

    .line 8
    .line 9
    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/i;->d(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
