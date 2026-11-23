.class public abstract Lcom/windmill/sdk/custom/WMCustomRewardAdapter;
.super Lcom/windmill/sdk/custom/WMAdBaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/custom/IWMCustomVideoEvent;


# static fields
.field protected static h:Ljava/lang/String; = "WMCustomRewardAdapter"


# instance fields
.field private i:Z

.field private j:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->i:Z

    .line 6
    .line 7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->j:Ljava/lang/Boolean;

    .line 10
    .line 11
    return-void
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
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---callLoadBiddingSuccess "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getPrice()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x1

    .line 35
    if-ne v0, v1, :cond_2

    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->c:Z

    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iput-wide v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->f:J

    .line 44
    .line 45
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getPrice()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/a;->f(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 55
    .line 56
    iget-object v1, p1, Lcom/windmill/sdk/models/BidPrice;->pecpm:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/a;->g(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getPrice()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/a;->h(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 71
    .line 72
    iget-boolean v1, p1, Lcom/windmill/sdk/models/BidPrice;->is_pdb:Z

    .line 73
    .line 74
    iput-boolean v1, v0, Lcom/windmill/sdk/strategy/a;->h:Z

    .line 75
    .line 76
    iget v1, p1, Lcom/windmill/sdk/models/BidPrice;->pdb_priority:I

    .line 77
    .line 78
    iput v1, v0, Lcom/windmill/sdk/strategy/a;->i:I

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->Q()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getCurrency()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_0

    .line 99
    .line 100
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getCurrency()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/a;->e(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getSaasChannelInfo()Ljava/util/Map;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_1

    .line 114
    .line 115
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 116
    .line 117
    invoke-virtual {v1, v0}, Lcom/windmill/sdk/strategy/a;->b(Ljava/util/Map;)V

    .line 118
    .line 119
    .line 120
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 121
    .line 122
    new-instance v9, Lcom/windmill/sdk/strategy/a$a;

    .line 123
    .line 124
    const-string v2, ""

    .line 125
    .line 126
    const-string v3, ""

    .line 127
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 145
    .line 146
    .line 147
    move-result-wide v4

    .line 148
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    const-string v5, ""

    .line 156
    .line 157
    const/4 v6, 0x0

    .line 158
    const/4 v7, 0x0

    .line 159
    const/4 v8, 0x0

    .line 160
    move-object v1, v9

    .line 161
    invoke-direct/range {v1 .. v8}, Lcom/windmill/sdk/strategy/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v9}, Lcom/windmill/sdk/strategy/a;->a(Lcom/windmill/sdk/strategy/a$a;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-eqz v0, :cond_2

    .line 172
    .line 173
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getPrice()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-interface {v0, p0, v1, p1}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidLoadBiddingPriceSuccess(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---callLoadFail()"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->e:Z

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->c:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->j:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 46
    .line 47
    invoke-interface {v0, p0, v1, p1}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidFailToLoadAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->j:Ljava/lang/Boolean;

    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final callLoadSuccess()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---callLoadSuccess()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->d:Z

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->f:J

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
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadSuccess()V

    .line 14
    sget-object v0, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-static {v0, p1, v1}, Lcom/windmill/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/windmill/sdk/strategy/a;)V

    return-void
.end method

.method public final callVideoAdClick()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---callVideoAdClick()"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 30
    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v0, p0, v1, v2}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidAdClick(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public callVideoAdClickDownload()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---callVideoAdClickDownload()"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 30
    .line 31
    invoke-interface {v0, p0, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidAdClickDownload(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final callVideoAdClosed()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---callVideoAdClosed()"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->i:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 34
    .line 35
    invoke-interface {v0, p0, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidCloseAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->i:Z

    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final callVideoAdPlayComplete()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---callVideoAdPlayComplete()"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 30
    .line 31
    invoke-interface {v0, p0, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidPlayEndAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 32
    .line 33
    .line 34
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---callVideoAdPlayError()"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 30
    .line 31
    invoke-interface {v0, p0, v1, p1}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidFailToPlayingAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 32
    .line 33
    .line 34
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
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---callVideoAdReward()"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 30
    .line 31
    invoke-interface {v0, p0, v1, p1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidRewardAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Z)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final callVideoAdRewardWithData(ZLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isReward",
            "customData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
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
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---callVideoAdRewardWithData()"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 32
    .line 33
    invoke-virtual {v1, p2}, Lcom/windmill/sdk/strategy/a;->e(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 37
    .line 38
    invoke-interface {v0, p0, p2, p1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidRewardAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Z)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final callVideoAdShow()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---callVideoAdShow()"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getNetworkOption()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/windmill/sdk/strategy/a;->d(Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelObject()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget-object v2, Lcom/windmill/sdk/strategy/a;->o:Ljava/util/Set;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/strategy/a;->a(Ljava/lang/Object;Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 66
    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-interface {v0, p0, v1, v2}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidStartPlayingAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method public final callVideoAdSkipped()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---callVideoAdSkipped()"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 30
    .line 31
    invoke-interface {v0, p0, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidSkipAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
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
    sget-object v0, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v0, "-----loadCustomAd---"

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ":"

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->i:Z

    .line 44
    .line 45
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->j:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 58
    .line 59
    .line 60
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
    sget-object v0, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v0, "----showCustomAd--"

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ":"

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aa()Ljava/util/HashMap;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->showAd(Landroid/app/Activity;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 51
    .line 52
    .line 53
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
