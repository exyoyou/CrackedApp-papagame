.class Lcom/windmill/sdk/reward/WMRewardAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/reward/WMRewardAd;->onVideoAdPlayStart(Lcom/windmill/sdk/models/AdInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/windmill/sdk/reward/WMRewardAd;

.field final synthetic val$adInfo:Lcom/windmill/sdk/models/AdInfo;

.field final synthetic val$hasAdShow:Z


# direct methods
.method constructor <init>(Lcom/windmill/sdk/reward/WMRewardAd;Lcom/windmill/sdk/models/AdInfo;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$adInfo",
            "val$hasAdShow"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/reward/WMRewardAd$2;->this$0:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/reward/WMRewardAd$2;->val$adInfo:Lcom/windmill/sdk/models/AdInfo;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/windmill/sdk/reward/WMRewardAd$2;->val$hasAdShow:Z

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
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd$2;->this$0:Lcom/windmill/sdk/reward/WMRewardAd;

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
    const-string v1, "---onVideoAdPlayStart |"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/windmill/sdk/reward/WMRewardAd$2;->this$0:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/windmill/sdk/reward/WMRewardAd;->access$100(Lcom/windmill/sdk/reward/WMRewardAd;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd$2;->this$0:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/windmill/sdk/reward/WMRewardAd;->access$000(Lcom/windmill/sdk/reward/WMRewardAd;)Lcom/windmill/sdk/reward/WMRewardAdListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/windmill/sdk/reward/WMRewardAd$2;->val$adInfo:Lcom/windmill/sdk/models/AdInfo;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Lcom/windmill/sdk/reward/WMRewardAdListener;->onVideoAdPlayStart(Lcom/windmill/sdk/models/AdInfo;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd$2;->this$0:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/windmill/sdk/reward/WMRewardAd;->access$200(Lcom/windmill/sdk/reward/WMRewardAd;)Lcom/windmill/sdk/common/t;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd$2;->this$0:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/windmill/sdk/reward/WMRewardAd;->access$200(Lcom/windmill/sdk/reward/WMRewardAd;)Lcom/windmill/sdk/common/t;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/windmill/sdk/common/l;->i()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-boolean v0, p0, Lcom/windmill/sdk/reward/WMRewardAd$2;->val$hasAdShow:Z

    .line 67
    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    iget-object v0, p0, Lcom/windmill/sdk/reward/WMRewardAd$2;->this$0:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/windmill/sdk/reward/WMRewardAd;->access$300(Lcom/windmill/sdk/reward/WMRewardAd;)Lcom/windmill/sdk/reward/WMRewardAdRequest;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/4 v2, 0x1

    .line 77
    invoke-static {v0, v1, v2}, Lcom/windmill/sdk/reward/WMRewardAd;->access$400(Lcom/windmill/sdk/reward/WMRewardAd;Lcom/windmill/sdk/reward/WMRewardAdRequest;Z)Z

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method
