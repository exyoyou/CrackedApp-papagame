.class public abstract Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;
.super Lcom/windmill/sdk/custom/WMAdBaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/custom/IWMCustomVideoEvent;


# static fields
.field private static final h:Ljava/lang/String; = "WMCustomInterstitialAdapter"


# instance fields
.field private i:Z

.field private j:Ljava/lang/Boolean;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->i:Z

    .line 6
    .line 7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->j:Ljava/lang/Boolean;

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->k:Z

    .line 12
    .line 13
    return-void
.end method

.method private e()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aK()I

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method


# virtual methods
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
    const-string v1, "WMCustomInterstitialAdapter---callLoadBiddingSuccess "

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
    if-ne v0, v1, :cond_2

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
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getSaasChannelInfo()Ljava/util/Map;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    .line 110
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Lcom/windmill/sdk/strategy/a;->b(Ljava/util/Map;)V

    .line 113
    .line 114
    .line 115
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 116
    .line 117
    new-instance v9, Lcom/windmill/sdk/strategy/a$a;

    .line 118
    .line 119
    const-string v2, ""

    .line 120
    .line 121
    const-string v3, ""

    .line 122
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 140
    .line 141
    .line 142
    move-result-wide v4

    .line 143
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    const-string v5, ""

    .line 151
    .line 152
    const/4 v6, 0x0

    .line 153
    const/4 v7, 0x0

    .line 154
    const/4 v8, 0x0

    .line 155
    move-object v1, v9

    .line 156
    invoke-direct/range {v1 .. v8}, Lcom/windmill/sdk/strategy/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;ILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v9}, Lcom/windmill/sdk/strategy/a;->a(Lcom/windmill/sdk/strategy/a$a;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    if-eqz v0, :cond_2

    .line 167
    .line 168
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getPrice()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-interface {v0, p0, v1, p1}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidLoadBiddingPriceSuccess(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_2
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
    const-string v0, "WMCustomInterstitialAdapter---callLoadFail()"

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
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->j:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 29
    .line 30
    invoke-interface {v0, p0, v1, p1}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->j:Ljava/lang/Boolean;

    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public final callLoadSuccess()V
    .locals 4

    const-string v0, "WMCustomInterstitialAdapter---callLoadSuccess()"

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
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelObject()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/windmill/sdk/strategy/a;->o:Ljava/util/Set;

    iget-object v3, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/strategy/a;->a(Ljava/lang/Object;Z)V

    .line 5
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getSaasChannelInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v1, v0}, Lcom/windmill/sdk/strategy/a;->b(Ljava/util/Map;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->c()V

    .line 8
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->d()V

    .line 9
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-interface {v0, p0, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidLoadAdReady(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 11
    :cond_1
    iget-boolean v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->c:Z

    if-eqz v1, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 12
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-interface {v0, p0, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    :cond_3
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

    .line 13
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadSuccess()V

    const-string v0, "WMCustomInterstitialAdapter"

    .line 14
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-static {v0, p1, v1}, Lcom/windmill/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/windmill/sdk/strategy/a;)V

    return-void
.end method

.method public final callVideoAdClick()V
    .locals 3

    .line 1
    const-string v0, "WMCustomInterstitialAdapter---callVideoAdClick()"

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
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 13
    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v0, p0, v1, v2}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidAdClick(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->e()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getRewardType()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x2

    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->k:Z

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    iput-boolean v1, p0, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->k:Z

    .line 42
    .line 43
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 44
    .line 45
    invoke-interface {v0, p0, v2, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidRewardAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public callVideoAdClickDownload()V
    .locals 2

    .line 1
    const-string v0, "WMCustomInterstitialAdapter---callVideoAdClick()"

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
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 13
    .line 14
    invoke-interface {v0, p0, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidAdClickDownload(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final callVideoAdClosed()V
    .locals 3

    .line 1
    const-string v0, "WMCustomInterstitialAdapter---callVideoAdClosed()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->i:Z

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->e()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getRewardType()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->k:Z

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iput-boolean v2, p0, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->k:Z

    .line 34
    .line 35
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 36
    .line 37
    invoke-interface {v0, p0, v1, v2}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidRewardAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 43
    .line 44
    invoke-interface {v0, p0, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidCloseAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iput-boolean v2, p0, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->i:Z

    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public final callVideoAdPlayComplete()V
    .locals 2

    .line 1
    const-string v0, "WMCustomInterstitialAdapter---callVideoAdPlayComplete()"

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
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 13
    .line 14
    invoke-interface {v0, p0, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidPlayEndAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V
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
    const-string v0, "WMCustomInterstitialAdapter---callVideoAdPlayError()"

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
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 13
    .line 14
    invoke-interface {v0, p0, v1, p1}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidFailToPlayingAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final callVideoAdReward(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReward"
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
    const-string v1, "WMCustomInterstitialAdapter---callVideoAdReward "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 28
    .line 29
    invoke-interface {v0, p0, v1, p1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidRewardAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final callVideoAdShow()V
    .locals 4

    .line 1
    const-string v0, "WMCustomInterstitialAdapter---callVideoAdShow()"

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
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/windmill/sdk/strategy/a;->d(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelObject()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lcom/windmill/sdk/strategy/a;->o:Ljava/util/Set;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/strategy/a;->a(Ljava/lang/Object;Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 49
    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v0, p0, v1, v2}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidStartPlayingAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public final callVideoAdSkipped()V
    .locals 2

    .line 1
    const-string v0, "WMCustomInterstitialAdapter---callVideoAdSkipped()"

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
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 13
    .line 14
    invoke-interface {v0, p0, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidSkipAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public getCloseToOut()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getInterstitialAdType()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "subType"

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {v0}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 v0, -0x1

    .line 39
    return v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/windmill/sdk/strategy/a;->j:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v1, v0

    .line 13
    :cond_1
    :goto_0
    return-object v1
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
    const-string v0, "WMCustomInterstitialAdapter---loadCustomAd--"

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
    const/4 p2, 0x0

    .line 38
    iput-boolean p2, p0, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->i:Z

    .line 39
    .line 40
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->j:Ljava/lang/Boolean;

    .line 43
    .line 44
    iput-boolean p2, p0, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->k:Z

    .line 45
    .line 46
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public abstract showAd(Landroid/app/Activity;Ljava/util/HashMap;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "localExtra",
            "serverExtra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public final showCustomAd(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/windmill/sdk/strategy/a;)V
    .locals 1
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

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "WMCustomInterstitialAdapter----showInnerAd--"

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

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
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

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
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aa()Ljava/util/HashMap;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->showAd(Landroid/app/Activity;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
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
    return-void
.end method
