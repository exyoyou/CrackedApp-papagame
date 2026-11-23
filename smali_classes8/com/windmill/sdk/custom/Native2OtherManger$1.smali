.class Lcom/windmill/sdk/custom/Native2OtherManger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/custom/NativeAdResponseLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/custom/Native2OtherManger;->loadAd(Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/windmill/sdk/custom/Native2OtherManger;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/custom/Native2OtherManger;Lcom/windmill/sdk/custom/WMAdBaseAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$baseAdapter",
            "val$context",
            "val$localExtra",
            "val$serverExtra"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/custom/Native2OtherManger$1;->e:Lcom/windmill/sdk/custom/Native2OtherManger;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/custom/Native2OtherManger$1;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/custom/Native2OtherManger$1;->b:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/windmill/sdk/custom/Native2OtherManger$1;->c:Ljava/util/Map;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/windmill/sdk/custom/Native2OtherManger$1;->d:Ljava/util/Map;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onNativeAdResponseLoadFail(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "errorMsg"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " Fail"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    .line 33
    .line 34
    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-direct {p1, v0, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/windmill/sdk/custom/Native2OtherManger$1;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 44
    .line 45
    instance-of v0, p2, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    check-cast p2, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    instance-of v0, p2, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    check-cast p2, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    instance-of v0, p2, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    check-cast p2, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public onNativeAdResponseLoadSuccess(Lcom/windmill/sdk/natives/WMNativeAdData;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeAdResponse",
            "bidPrice"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/Native2OtherManger$1;->e:Lcom/windmill/sdk/custom/Native2OtherManger;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/windmill/sdk/custom/Native2OtherManger;->isReady:Z

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "---suc"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/windmill/sdk/custom/Native2OtherManger$1;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/windmill/sdk/custom/Native2OtherManger$1;->e:Lcom/windmill/sdk/custom/Native2OtherManger;

    .line 40
    .line 41
    iput-object p1, v0, Lcom/windmill/sdk/custom/Native2OtherManger;->nativeAdData:Lcom/windmill/sdk/natives/WMNativeAdData;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/windmill/sdk/custom/Native2OtherManger$1;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 44
    .line 45
    instance-of v1, p1, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    check-cast p1, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    .line 50
    .line 51
    new-instance v0, Lcom/windmill/sdk/models/BidPrice;

    .line 52
    .line 53
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-direct {v0, p2}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/windmill/sdk/custom/Native2OtherManger$1;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 64
    .line 65
    check-cast p1, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadSuccess()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    instance-of v1, p1, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    check-cast p1, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    .line 76
    .line 77
    new-instance v0, Lcom/windmill/sdk/models/BidPrice;

    .line 78
    .line 79
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-direct {v0, p2}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/windmill/sdk/custom/Native2OtherManger$1;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 90
    .line 91
    check-cast p1, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadSuccess()V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    instance-of p1, p1, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;

    .line 98
    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    iget-object p1, p0, Lcom/windmill/sdk/custom/Native2OtherManger$1;->b:Landroid/content/Context;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/windmill/sdk/custom/Native2OtherManger$1;->c:Ljava/util/Map;

    .line 104
    .line 105
    iget-object v2, p0, Lcom/windmill/sdk/custom/Native2OtherManger$1;->d:Ljava/util/Map;

    .line 106
    .line 107
    invoke-static {v0, p1, v1, v2}, Lcom/windmill/sdk/custom/Native2OtherManger;->a(Lcom/windmill/sdk/custom/Native2OtherManger;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/windmill/sdk/custom/Native2OtherManger$1;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 111
    .line 112
    check-cast p1, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;

    .line 113
    .line 114
    new-instance v0, Lcom/windmill/sdk/models/BidPrice;

    .line 115
    .line 116
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-direct {v0, p2}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/windmill/sdk/custom/Native2OtherManger$1;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 127
    .line 128
    check-cast p1, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
