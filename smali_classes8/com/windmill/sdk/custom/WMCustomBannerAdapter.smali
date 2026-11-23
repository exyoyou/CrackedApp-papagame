.class public abstract Lcom/windmill/sdk/custom/WMCustomBannerAdapter;
.super Lcom/windmill/sdk/custom/WMAdBaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/custom/IWMCustomBannerEvent;


# static fields
.field private static final h:Ljava/lang/String; = "WMCustomBannerAdapter"


# instance fields
.field private i:Lcom/windmill/sdk/strategy/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e()Lcom/windmill/sdk/strategy/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->i:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final callBannerAdClick()V
    .locals 3

    .line 1
    const-string v0, "WMCustomBannerAdapter callBannerAdClick()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->e()Lcom/windmill/sdk/strategy/a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v0, p0, v1, v2}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidAdClick(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final callBannerAdClosed()V
    .locals 2

    .line 1
    const-string v0, "WMCustomBannerAdapter callBannerAdClosed()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->e()Lcom/windmill/sdk/strategy/a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, p0, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidCloseAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final callBannerAdShow()V
    .locals 3

    .line 1
    const-string v0, "WMCustomBannerAdapter callBannerAdShow()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getNetworkOption()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->e()Lcom/windmill/sdk/strategy/a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lcom/windmill/sdk/strategy/a;->d(Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->e()Lcom/windmill/sdk/strategy/a;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v0, p0, v1, v2}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidStartPlayingAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final callBannerAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterError"
        }
    .end annotation

    .line 1
    const-string v0, "WMCustomBannerAdapter callBannerAdShowError()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->e()Lcom/windmill/sdk/strategy/a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, p0, v1, p1}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidFailToPlayingAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "price"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "WMCustomBannerAdapter---callLoadBiddingSuccess "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getPrice()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    iput-wide v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->f:J

    .line 37
    .line 38
    iput-boolean v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->c:Z

    .line 39
    .line 40
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getPrice()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/a;->f(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getPrice()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/a;->h(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 59
    .line 60
    iget-boolean v1, p1, Lcom/windmill/sdk/models/BidPrice;->is_pdb:Z

    .line 61
    .line 62
    iput-boolean v1, v0, Lcom/windmill/sdk/strategy/a;->h:Z

    .line 63
    .line 64
    iget v1, p1, Lcom/windmill/sdk/models/BidPrice;->pdb_priority:I

    .line 65
    .line 66
    iput v1, v0, Lcom/windmill/sdk/strategy/a;->i:I

    .line 67
    .line 68
    iget-object v1, p1, Lcom/windmill/sdk/models/BidPrice;->pecpm:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/a;->g(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->Q()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getCurrency()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_0

    .line 94
    .line 95
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getCurrency()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/a;->e(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 105
    .line 106
    new-instance v9, Lcom/windmill/sdk/strategy/a$a;

    .line 107
    .line 108
    const-string v2, ""

    .line 109
    .line 110
    const-string v3, ""

    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    .line 130
    .line 131
    move-result-wide v4

    .line 132
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    const-string v5, ""

    .line 140
    .line 141
    const/4 v6, 0x0

    .line 142
    const/4 v7, 0x0

    .line 143
    const/4 v8, 0x0

    .line 144
    move-object v1, v9

    .line 145
    invoke-direct/range {v1 .. v8}, Lcom/windmill/sdk/strategy/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;ILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v9}, Lcom/windmill/sdk/strategy/a;->a(Lcom/windmill/sdk/strategy/a$a;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    if-eqz v0, :cond_1

    .line 156
    .line 157
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getPrice()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-interface {v0, p0, v1, p1}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidLoadBiddingPriceSuccess(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_1
    return-void
.end method

.method public final callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterError"
        }
    .end annotation

    .line 1
    const-string v0, "WMCustomBannerAdapter---callLoadFail()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->e:Z

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->c:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 21
    .line 22
    invoke-interface {v0, p0, v1, p1}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final callLoadSuccess()V
    .locals 2

    const-string v0, "WMCustomBannerAdapter---callLoadSuccess()"

    .line 1
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->f:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->d:Z

    .line 4
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-interface {v0, p0, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidLoadAdReady(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->c:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-interface {v0, p0, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    :cond_2
    return-void
.end method

.method public final callLoadSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adObject"
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadSuccess()V

    const-string v0, "WMCustomBannerAdapter"

    .line 9
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-static {v0, p1, v1}, Lcom/windmill/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/windmill/sdk/strategy/a;)V

    return-void
.end method

.method public abstract getBannerView()Landroid/view/View;
.end method

.method public abstract loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "localExtra",
            "serverExtra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public final loadCustomAd(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "viewGroup",
            "adRequest",
            "adStrategy"
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "WMCustomBannerAdapter-----loadCustomAd---"

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ":"

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final showCustomAd(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "viewGroup",
            "adStrategy"
        }
    .end annotation

    return-void
.end method

.method public final updateAdStrategy(Lcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->updateAdStrategy(Lcom/windmill/sdk/strategy/a;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->i:Lcom/windmill/sdk/strategy/a;

    .line 5
    .line 6
    return-void
.end method
