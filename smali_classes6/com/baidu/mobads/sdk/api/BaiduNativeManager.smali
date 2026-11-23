.class public Lcom/baidu/mobads/sdk/api/BaiduNativeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;,
        Lcom/baidu/mobads/sdk/api/BaiduNativeManager$PortraitVideoAdListener;,
        Lcom/baidu/mobads/sdk/api/BaiduNativeManager$EntryAdListener;,
        Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;
    }
.end annotation


# static fields
.field private static final FEED_TIMEOUT:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "BaiduNativeManager"


# instance fields
.field private isCacheVideo:Z

.field private isCacheVideoOnlyWifi:Z

.field private final mAdPlacementId:Ljava/lang/String;

.field private mAdReward:Z

.field private mAppSid:Ljava/lang/String;

.field private mBidFloor:I

.field private final mContext:Landroid/content/Context;

.field private mRequestParameters:Lcom/baidu/mobads/sdk/api/RequestParameters;

.field private mRewardOnDownloaded:Z

.field private mTimeoutMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x1f40

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const/16 v0, 0x1f40

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideoOnlyWifi:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mBidFloor:I

    .line 7
    iput-boolean v0, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAdReward:Z

    .line 8
    iput-boolean v0, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRewardOnDownloaded:Z

    .line 9
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAdPlacementId:Ljava/lang/String;

    .line 11
    iput-boolean p3, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideo:Z

    .line 12
    iput p4, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mTimeoutMillis:I

    return-void
.end method

.method private getAdPlacemenId(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/RequestParameters;->getAdPlacementId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAdPlacementId:Ljava/lang/String;

    .line 15
    .line 16
    return-object p1
.end method

.method private getBidFloor(Lcom/baidu/mobads/sdk/api/RequestParameters;)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/RequestParameters;->getBidFloor()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    iget p1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mBidFloor:I

    .line 11
    .line 12
    return p1
.end method

.method private loadBiddingAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/baidu/mobads/sdk/internal/dg;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getAdPlacemenId(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-boolean v4, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideo:Z

    .line 10
    .line 11
    iget v5, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mTimeoutMillis:I

    .line 12
    .line 13
    move-object v0, v6

    .line 14
    move-object v3, p2

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/dg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/bj;->h(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getBidFloor(Lcom/baidu/mobads/sdk/api/RequestParameters;)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    iput p2, v6, Lcom/baidu/mobads/sdk/internal/bj;->r:I

    .line 36
    .line 37
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAdReward:Z

    .line 38
    .line 39
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/dg;->c(Z)V

    .line 40
    .line 41
    .line 42
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRewardOnDownloaded:Z

    .line 43
    .line 44
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/dg;->d(Z)V

    .line 45
    .line 46
    .line 47
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideoOnlyWifi:Z

    .line 48
    .line 49
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/dg;->b(Z)V

    .line 50
    .line 51
    .line 52
    if-eqz p4, :cond_1

    .line 53
    .line 54
    new-instance p2, Lcom/baidu/mobads/sdk/internal/ad;

    .line 55
    .line 56
    invoke-direct {p2, p4}, Lcom/baidu/mobads/sdk/internal/ad;-><init>(Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/dg;->a(Lcom/baidu/mobads/sdk/internal/g$a;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    if-eqz p5, :cond_2

    .line 64
    .line 65
    invoke-virtual {v6, p5}, Lcom/baidu/mobads/sdk/internal/dg;->a(Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;)V

    .line 66
    .line 67
    .line 68
    const/4 p2, 0x1

    .line 69
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/dg;->a(I)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    new-instance p2, Lcom/baidu/mobads/sdk/internal/ak;

    .line 73
    .line 74
    invoke-direct {p2}, Lcom/baidu/mobads/sdk/internal/ak;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/dg;->a(Lcom/baidu/mobads/sdk/internal/g$b;)V

    .line 78
    .line 79
    .line 80
    if-nez p1, :cond_3

    .line 81
    .line 82
    new-instance p1, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 83
    .line 84
    invoke-direct {p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :cond_3
    invoke-virtual {v6, p1}, Lcom/baidu/mobads/sdk/internal/dg;->a(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Lcom/baidu/mobads/sdk/internal/bj;->l()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, p3}, Lcom/baidu/mobads/sdk/internal/bj;->c(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public getExpressFeedBiddingToken(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v6, Lcom/baidu/mobads/sdk/internal/dg;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getAdPlacemenId(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "feed"

    .line 10
    .line 11
    iget-boolean v4, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideo:Z

    .line 12
    .line 13
    iget v5, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mTimeoutMillis:I

    .line 14
    .line 15
    move-object v0, v6

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/dg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {v6, v0}, Lcom/baidu/mobads/sdk/internal/dg;->a(I)V

    .line 21
    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    new-instance v0, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v0, p1

    .line 36
    :goto_0
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v6, v1}, Lcom/baidu/mobads/sdk/internal/bj;->h(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getBidFloor(Lcom/baidu/mobads/sdk/api/RequestParameters;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, v6, Lcom/baidu/mobads/sdk/internal/bj;->r:I

    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRewardOnDownloaded:Z

    .line 56
    .line 57
    invoke-virtual {v6, p1}, Lcom/baidu/mobads/sdk/internal/dg;->d(Z)V

    .line 58
    .line 59
    .line 60
    iget-boolean p1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAdReward:Z

    .line 61
    .line 62
    invoke-virtual {v6, p1}, Lcom/baidu/mobads/sdk/internal/dg;->c(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v0}, Lcom/baidu/mobads/sdk/internal/dg;->a(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRequestParameters:Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 69
    .line 70
    invoke-virtual {v6}, Lcom/baidu/mobads/sdk/internal/bj;->l()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method

.method public getFeedBiddingToken(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v6, Lcom/baidu/mobads/sdk/internal/dg;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getAdPlacemenId(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "feed"

    .line 10
    .line 11
    iget-boolean v4, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideo:Z

    .line 12
    .line 13
    iget v5, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mTimeoutMillis:I

    .line 14
    .line 15
    move-object v0, v6

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/dg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 17
    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v0, p1

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v6, v1}, Lcom/baidu/mobads/sdk/internal/bj;->h(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getBidFloor(Lcom/baidu/mobads/sdk/api/RequestParameters;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput p1, v6, Lcom/baidu/mobads/sdk/internal/bj;->r:I

    .line 50
    .line 51
    iget-boolean p1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAdReward:Z

    .line 52
    .line 53
    invoke-virtual {v6, p1}, Lcom/baidu/mobads/sdk/internal/dg;->c(Z)V

    .line 54
    .line 55
    .line 56
    iget-boolean p1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRewardOnDownloaded:Z

    .line 57
    .line 58
    invoke-virtual {v6, p1}, Lcom/baidu/mobads/sdk/internal/dg;->d(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v0}, Lcom/baidu/mobads/sdk/internal/dg;->a(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRequestParameters:Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 65
    .line 66
    invoke-virtual {v6}, Lcom/baidu/mobads/sdk/internal/bj;->l()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method public getPortraitVideoBiddingToken(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v6, Lcom/baidu/mobads/sdk/internal/dg;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getAdPlacemenId(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "pvideo"

    .line 10
    .line 11
    iget-boolean v4, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideo:Z

    .line 12
    .line 13
    iget v5, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mTimeoutMillis:I

    .line 14
    .line 15
    move-object v0, v6

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/dg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 17
    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v0, p1

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v6, v1}, Lcom/baidu/mobads/sdk/internal/bj;->h(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getBidFloor(Lcom/baidu/mobads/sdk/api/RequestParameters;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput p1, v6, Lcom/baidu/mobads/sdk/internal/bj;->r:I

    .line 50
    .line 51
    iget-boolean p1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRewardOnDownloaded:Z

    .line 52
    .line 53
    invoke-virtual {v6, p1}, Lcom/baidu/mobads/sdk/internal/dg;->d(Z)V

    .line 54
    .line 55
    .line 56
    iget-boolean p1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAdReward:Z

    .line 57
    .line 58
    invoke-virtual {v6, p1}, Lcom/baidu/mobads/sdk/internal/dg;->c(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v0}, Lcom/baidu/mobads/sdk/internal/dg;->a(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRequestParameters:Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 65
    .line 66
    invoke-virtual {v6}, Lcom/baidu/mobads/sdk/internal/bj;->l()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method public loadBidAdForExpress(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRequestParameters:Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 2
    .line 3
    const-string v2, "feed"

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v5, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->loadBiddingAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public loadBidAdForFeed(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRequestParameters:Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 2
    .line 3
    const-string v2, "feed"

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->loadBiddingAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public loadBidAdForPortraitVideo(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V
    .locals 6

    .line 2
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRequestParameters:Lcom/baidu/mobads/sdk/api/RequestParameters;

    const-string v2, "pvideo"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->loadBiddingAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;)V

    return-void
.end method

.method public loadBidAdForPortraitVideo(Ljava/lang/String;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$PortraitVideoAdListener;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRequestParameters:Lcom/baidu/mobads/sdk/api/RequestParameters;

    const-string v2, "pvideo"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->loadBiddingAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;)V

    return-void
.end method

.method public loadContentAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/baidu/mobads/sdk/internal/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    new-instance v2, Lcom/baidu/mobads/sdk/internal/ad;

    .line 6
    .line 7
    invoke-direct {v2, p2}, Lcom/baidu/mobads/sdk/internal/ad;-><init>(Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V

    .line 8
    .line 9
    .line 10
    new-instance p2, Lcom/baidu/mobads/sdk/internal/dg;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getAdPlacemenId(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    const-string v6, "content"

    .line 19
    .line 20
    iget-boolean v7, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideo:Z

    .line 21
    .line 22
    iget v8, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mTimeoutMillis:I

    .line 23
    .line 24
    move-object v3, p2

    .line 25
    invoke-direct/range {v3 .. v8}, Lcom/baidu/mobads/sdk/internal/dg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2, p2}, Lcom/baidu/mobads/sdk/internal/g;-><init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/internal/g$a;Lcom/baidu/mobads/sdk/internal/dg;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->b(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getBidFloor(Lcom/baidu/mobads/sdk/api/RequestParameters;)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(I)V

    .line 49
    .line 50
    .line 51
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAdReward:Z

    .line 52
    .line 53
    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(Z)V

    .line 54
    .line 55
    .line 56
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideoOnlyWifi:Z

    .line 57
    .line 58
    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->c(Z)V

    .line 59
    .line 60
    .line 61
    new-instance p2, Lcom/baidu/mobads/sdk/internal/ak;

    .line 62
    .line 63
    invoke-direct {p2}, Lcom/baidu/mobads/sdk/internal/ak;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(Lcom/baidu/mobads/sdk/internal/g$b;)V

    .line 67
    .line 68
    .line 69
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRewardOnDownloaded:Z

    .line 70
    .line 71
    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->b(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/g;->b(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public loadExpressAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/baidu/mobads/sdk/internal/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getAdPlacemenId(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-boolean v4, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideo:Z

    .line 10
    .line 11
    iget v5, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mTimeoutMillis:I

    .line 12
    .line 13
    move-object v0, v6

    .line 14
    move-object v3, p2

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;ZI)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/g;->b(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getBidFloor(Lcom/baidu/mobads/sdk/api/RequestParameters;)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(I)V

    .line 36
    .line 37
    .line 38
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideoOnlyWifi:Z

    .line 39
    .line 40
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/g;->c(Z)V

    .line 41
    .line 42
    .line 43
    new-instance p2, Lcom/baidu/mobads/sdk/internal/ak;

    .line 44
    .line 45
    invoke-direct {p2}, Lcom/baidu/mobads/sdk/internal/ak;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(Lcom/baidu/mobads/sdk/internal/g$b;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, p1}, Lcom/baidu/mobads/sdk/internal/g;->b(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public loadFeedAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/baidu/mobads/sdk/internal/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getAdPlacemenId(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Lcom/baidu/mobads/sdk/internal/ad;

    .line 10
    .line 11
    invoke-direct {v3, p2}, Lcom/baidu/mobads/sdk/internal/ad;-><init>(Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v4, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideo:Z

    .line 15
    .line 16
    iget v5, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mTimeoutMillis:I

    .line 17
    .line 18
    move-object v0, v6

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobads/sdk/internal/g$a;ZI)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/g;->b(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getBidFloor(Lcom/baidu/mobads/sdk/api/RequestParameters;)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(I)V

    .line 40
    .line 41
    .line 42
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAdReward:Z

    .line 43
    .line 44
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(Z)V

    .line 45
    .line 46
    .line 47
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideoOnlyWifi:Z

    .line 48
    .line 49
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/g;->c(Z)V

    .line 50
    .line 51
    .line 52
    new-instance p2, Lcom/baidu/mobads/sdk/internal/ak;

    .line 53
    .line 54
    invoke-direct {p2}, Lcom/baidu/mobads/sdk/internal/ak;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(Lcom/baidu/mobads/sdk/internal/g$b;)V

    .line 58
    .line 59
    .line 60
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRewardOnDownloaded:Z

    .line 61
    .line 62
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/g;->b(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, p1}, Lcom/baidu/mobads/sdk/internal/g;->b(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public loadFeedEntryAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$EntryAdListener;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/baidu/mobads/sdk/internal/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getAdPlacemenId(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-boolean v4, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideo:Z

    .line 10
    .line 11
    iget v5, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mTimeoutMillis:I

    .line 12
    .line 13
    move-object v0, v6

    .line 14
    move-object v3, p2

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$EntryAdListener;ZI)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/g;->b(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v6, p1}, Lcom/baidu/mobads/sdk/internal/g;->b(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public loadInsiteAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/baidu/mobads/sdk/internal/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    new-instance v2, Lcom/baidu/mobads/sdk/internal/ad;

    .line 6
    .line 7
    invoke-direct {v2, p2}, Lcom/baidu/mobads/sdk/internal/ad;-><init>(Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V

    .line 8
    .line 9
    .line 10
    new-instance p2, Lcom/baidu/mobads/sdk/internal/dg;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getAdPlacemenId(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    const-string v6, "insite"

    .line 19
    .line 20
    iget-boolean v7, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideo:Z

    .line 21
    .line 22
    iget v8, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mTimeoutMillis:I

    .line 23
    .line 24
    move-object v3, p2

    .line 25
    invoke-direct/range {v3 .. v8}, Lcom/baidu/mobads/sdk/internal/dg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2, p2}, Lcom/baidu/mobads/sdk/internal/g;-><init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/internal/g$a;Lcom/baidu/mobads/sdk/internal/dg;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->b(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getBidFloor(Lcom/baidu/mobads/sdk/api/RequestParameters;)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(I)V

    .line 49
    .line 50
    .line 51
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAdReward:Z

    .line 52
    .line 53
    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(Z)V

    .line 54
    .line 55
    .line 56
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideoOnlyWifi:Z

    .line 57
    .line 58
    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->c(Z)V

    .line 59
    .line 60
    .line 61
    new-instance p2, Lcom/baidu/mobads/sdk/internal/ak;

    .line 62
    .line 63
    invoke-direct {p2}, Lcom/baidu/mobads/sdk/internal/ak;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(Lcom/baidu/mobads/sdk/internal/g$b;)V

    .line 67
    .line 68
    .line 69
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRewardOnDownloaded:Z

    .line 70
    .line 71
    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->b(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/g;->b(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public loadPortraitVideoAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V
    .locals 7

    .line 2
    new-instance v6, Lcom/baidu/mobads/sdk/internal/dg;

    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getAdPlacemenId(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pvideo"

    iget-boolean v4, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideo:Z

    iget v5, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mTimeoutMillis:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/dg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 3
    new-instance v0, Lcom/baidu/mobads/sdk/internal/g;

    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/baidu/mobads/sdk/internal/ad;

    invoke-direct {v2, p2}, Lcom/baidu/mobads/sdk/internal/ad;-><init>(Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V

    invoke-direct {v0, v1, v2, v6}, Lcom/baidu/mobads/sdk/internal/g;-><init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/internal/g$a;Lcom/baidu/mobads/sdk/internal/dg;)V

    .line 4
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->b(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getBidFloor(Lcom/baidu/mobads/sdk/api/RequestParameters;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(I)V

    .line 7
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAdReward:Z

    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(Z)V

    .line 8
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideoOnlyWifi:Z

    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->c(Z)V

    .line 9
    new-instance p2, Lcom/baidu/mobads/sdk/internal/ak;

    invoke-direct {p2}, Lcom/baidu/mobads/sdk/internal/ak;-><init>()V

    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(Lcom/baidu/mobads/sdk/internal/g$b;)V

    .line 10
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRewardOnDownloaded:Z

    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->b(Z)V

    .line 11
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/g;->b(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    return-void
.end method

.method public loadPortraitVideoAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$PortraitVideoAdListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->loadPortraitVideoAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V

    return-void
.end method

.method public loadPrerollVideo(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/baidu/mobads/sdk/internal/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getAdPlacemenId(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Lcom/baidu/mobads/sdk/internal/ad;

    .line 10
    .line 11
    invoke-direct {v3, p2}, Lcom/baidu/mobads/sdk/internal/ad;-><init>(Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v4, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideo:Z

    .line 15
    .line 16
    const/16 v5, 0x1f40

    .line 17
    .line 18
    const-string v6, "preroll"

    .line 19
    .line 20
    move-object v0, v7

    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobads/sdk/internal/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobads/sdk/internal/g$a;ZILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    iget-object p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v7, p2}, Lcom/baidu/mobads/sdk/internal/g;->b(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getBidFloor(Lcom/baidu/mobads/sdk/api/RequestParameters;)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {v7, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(I)V

    .line 42
    .line 43
    .line 44
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAdReward:Z

    .line 45
    .line 46
    invoke-virtual {v7, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(Z)V

    .line 47
    .line 48
    .line 49
    iget-boolean p2, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRewardOnDownloaded:Z

    .line 50
    .line 51
    invoke-virtual {v7, p2}, Lcom/baidu/mobads/sdk/internal/g;->b(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7, p1}, Lcom/baidu/mobads/sdk/internal/g;->b(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public setAdReward(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAdReward:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAppSid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBidFloor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mBidFloor:I

    .line 2
    .line 3
    return-void
.end method

.method public setCacheVideoOnlyWifi(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideoOnlyWifi:Z

    .line 2
    .line 3
    return-void
.end method

.method public setExpressFeedBiddingData(Lcom/baidu/mobads/sdk/api/RequestParameters;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v6, Lcom/baidu/mobads/sdk/internal/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getAdPlacemenId(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-boolean v4, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideo:Z

    .line 10
    .line 11
    iget v5, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mTimeoutMillis:I

    .line 12
    .line 13
    move-object v0, v6

    .line 14
    move-object v3, p3

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;ZI)V

    .line 16
    .line 17
    .line 18
    iget-object p3, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-nez p3, :cond_0

    .line 25
    .line 26
    iget-object p3, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v6, p3}, Lcom/baidu/mobads/sdk/internal/g;->b(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getBidFloor(Lcom/baidu/mobads/sdk/api/RequestParameters;)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    invoke-virtual {v6, p3}, Lcom/baidu/mobads/sdk/internal/g;->a(I)V

    .line 36
    .line 37
    .line 38
    iget-boolean p3, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAdReward:Z

    .line 39
    .line 40
    invoke-virtual {v6, p3}, Lcom/baidu/mobads/sdk/internal/g;->a(Z)V

    .line 41
    .line 42
    .line 43
    iget-boolean p3, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideoOnlyWifi:Z

    .line 44
    .line 45
    invoke-virtual {v6, p3}, Lcom/baidu/mobads/sdk/internal/g;->c(Z)V

    .line 46
    .line 47
    .line 48
    new-instance p3, Lcom/baidu/mobads/sdk/internal/ak;

    .line 49
    .line 50
    invoke-direct {p3}, Lcom/baidu/mobads/sdk/internal/ak;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, p3}, Lcom/baidu/mobads/sdk/internal/g;->a(Lcom/baidu/mobads/sdk/internal/g$b;)V

    .line 54
    .line 55
    .line 56
    iget-boolean p3, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRewardOnDownloaded:Z

    .line 57
    .line 58
    invoke-virtual {v6, p3}, Lcom/baidu/mobads/sdk/internal/g;->b(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, p1}, Lcom/baidu/mobads/sdk/internal/g;->a(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public setFeedBiddingData(Lcom/baidu/mobads/sdk/api/RequestParameters;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v6, Lcom/baidu/mobads/sdk/internal/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getAdPlacemenId(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Lcom/baidu/mobads/sdk/internal/ad;

    .line 10
    .line 11
    invoke-direct {v3, p3}, Lcom/baidu/mobads/sdk/internal/ad;-><init>(Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v4, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideo:Z

    .line 15
    .line 16
    iget v5, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mTimeoutMillis:I

    .line 17
    .line 18
    move-object v0, v6

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobads/sdk/internal/g$a;ZI)V

    .line 20
    .line 21
    .line 22
    iget-object p3, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-nez p3, :cond_0

    .line 29
    .line 30
    iget-object p3, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v6, p3}, Lcom/baidu/mobads/sdk/internal/g;->b(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getBidFloor(Lcom/baidu/mobads/sdk/api/RequestParameters;)I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    invoke-virtual {v6, p3}, Lcom/baidu/mobads/sdk/internal/g;->a(I)V

    .line 40
    .line 41
    .line 42
    iget-boolean p3, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAdReward:Z

    .line 43
    .line 44
    invoke-virtual {v6, p3}, Lcom/baidu/mobads/sdk/internal/g;->a(Z)V

    .line 45
    .line 46
    .line 47
    iget-boolean p3, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideoOnlyWifi:Z

    .line 48
    .line 49
    invoke-virtual {v6, p3}, Lcom/baidu/mobads/sdk/internal/g;->c(Z)V

    .line 50
    .line 51
    .line 52
    new-instance p3, Lcom/baidu/mobads/sdk/internal/ak;

    .line 53
    .line 54
    invoke-direct {p3}, Lcom/baidu/mobads/sdk/internal/ak;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, p3}, Lcom/baidu/mobads/sdk/internal/g;->a(Lcom/baidu/mobads/sdk/internal/g$b;)V

    .line 58
    .line 59
    .line 60
    iget-boolean p3, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRewardOnDownloaded:Z

    .line 61
    .line 62
    invoke-virtual {v6, p3}, Lcom/baidu/mobads/sdk/internal/g;->b(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, p1}, Lcom/baidu/mobads/sdk/internal/g;->a(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public setPortraitVideoBiddingData(Lcom/baidu/mobads/sdk/api/RequestParameters;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$PortraitVideoAdListener;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v6, Lcom/baidu/mobads/sdk/internal/dg;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getAdPlacemenId(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "pvideo"

    .line 10
    .line 11
    iget-boolean v4, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideo:Z

    .line 12
    .line 13
    iget v5, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mTimeoutMillis:I

    .line 14
    .line 15
    move-object v0, v6

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/dg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/baidu/mobads/sdk/internal/g;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    new-instance v2, Lcom/baidu/mobads/sdk/internal/ad;

    .line 24
    .line 25
    invoke-direct {v2, p3}, Lcom/baidu/mobads/sdk/internal/ad;-><init>(Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2, v6}, Lcom/baidu/mobads/sdk/internal/g;-><init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/internal/g$a;Lcom/baidu/mobads/sdk/internal/dg;)V

    .line 29
    .line 30
    .line 31
    iget-object p3, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-nez p3, :cond_0

    .line 38
    .line 39
    iget-object p3, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAppSid:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, p3}, Lcom/baidu/mobads/sdk/internal/g;->b(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->getBidFloor(Lcom/baidu/mobads/sdk/api/RequestParameters;)I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    invoke-virtual {v0, p3}, Lcom/baidu/mobads/sdk/internal/g;->a(I)V

    .line 49
    .line 50
    .line 51
    iget-boolean p3, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mAdReward:Z

    .line 52
    .line 53
    invoke-virtual {v0, p3}, Lcom/baidu/mobads/sdk/internal/g;->a(Z)V

    .line 54
    .line 55
    .line 56
    iget-boolean p3, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->isCacheVideoOnlyWifi:Z

    .line 57
    .line 58
    invoke-virtual {v0, p3}, Lcom/baidu/mobads/sdk/internal/g;->c(Z)V

    .line 59
    .line 60
    .line 61
    new-instance p3, Lcom/baidu/mobads/sdk/internal/ak;

    .line 62
    .line 63
    invoke-direct {p3}, Lcom/baidu/mobads/sdk/internal/ak;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p3}, Lcom/baidu/mobads/sdk/internal/g;->a(Lcom/baidu/mobads/sdk/internal/g$b;)V

    .line 67
    .line 68
    .line 69
    iget-boolean p3, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRewardOnDownloaded:Z

    .line 70
    .line 71
    invoke-virtual {v0, p3}, Lcom/baidu/mobads/sdk/internal/g;->b(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/g;->a(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/g;->a(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public setRewardOnDownloaded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->mRewardOnDownloaded:Z

    .line 2
    .line 3
    return-void
.end method
