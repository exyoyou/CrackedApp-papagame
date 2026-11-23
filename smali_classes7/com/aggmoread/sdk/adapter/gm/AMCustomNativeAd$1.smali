.class Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->registerView(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$clickViews:Ljava/util/List;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$viewBinder:Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->val$container:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->val$activity:Landroid/app/Activity;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->val$clickViews:Ljava/util/List;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->val$viewBinder:Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->access$000(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;)Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->val$container:Landroid/view/ViewGroup;

    .line 10
    .line 11
    instance-of v1, v0, Landroid/widget/FrameLayout;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Landroid/widget/FrameLayout;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "registerView #4 nativeAdContainer "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->access$000(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;)Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->val$activity:Landroid/app/Activity;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->access$100(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/aggmoread/sdk/adapter/helper/AdapterHelper;->getNativeAdLogoParams(Lcom/bytedance/sdk/openadsdk/AdSlot;)Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    iget-object v6, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->val$clickViews:Ljava/util/List;

    .line 56
    .line 57
    const/4 v7, 0x0

    .line 58
    new-instance v8, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1$1;

    .line 59
    .line 60
    invoke-direct {v8, p0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1$1;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;)V

    .line 61
    .line 62
    .line 63
    move-object v4, v0

    .line 64
    invoke-interface/range {v2 .. v8}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->bindAdToView(Landroid/content/Context;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Landroid/view/View;Lcom/aggmoread/sdk/client/feedlist/AMNativeInteractionListener;)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->val$viewBinder:Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;

    .line 68
    .line 69
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationViewBinder;->mediaViewId:I

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/FrameLayout;

    .line 76
    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 80
    .line 81
    invoke-static {v1}, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->access$000(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;)Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-interface {v1}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->isVideoAd()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    .line 91
    const-string v1, "registerView media "

    .line 92
    .line 93
    invoke-static {v1}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v1, Lcom/aggmoread/sdk/client/AMAdMediaView;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 99
    .line 100
    invoke-static {v2}, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->access$200(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;)Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v1, v2}, Lcom/aggmoread/sdk/client/AMAdMediaView;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 108
    .line 109
    .line 110
    const/4 v2, -0x1

    .line 111
    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;->access$000(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;)Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    new-instance v2, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1$2;

    .line 121
    .line 122
    invoke-direct {v2, p0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1$2;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v0, v1, v2}, Lcom/aggmoread/sdk/client/feedlist/AMNativeAd;->bindMediaAdToView(Lcom/aggmoread/sdk/client/AMAdMediaView;Lcom/aggmoread/sdk/client/AMAdMediaListener;)V

    .line 126
    .line 127
    .line 128
    :cond_0
    return-void
.end method
