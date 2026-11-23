.class public Lcom/windmill/sdk/models/BidInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bidTime:Ljava/lang/String;

.field private bidType:Ljava/lang/String;

.field private clickStatus:Ljava/lang/String;

.field private eCPM:Ljava/lang/String;

.field private exposureStatus:Ljava/lang/String;

.field private failReason:Ljava/lang/String;

.field private option:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestId:Ljava/lang/String;

.field private secondPrice:Ljava/lang/String;

.field private winner:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/windmill/sdk/strategy/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "request_Id",
            "strategy"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "5"

    .line 22
    iput-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->winner:Ljava/lang/String;

    const-string v1, "0"

    .line 23
    iput-object v1, p0, Lcom/windmill/sdk/models/BidInfo;->eCPM:Ljava/lang/String;

    const-string v2, "4"

    .line 24
    iput-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->bidType:Ljava/lang/String;

    const-string v2, "2"

    .line 25
    iput-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->exposureStatus:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->clickStatus:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->failReason:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/windmill/sdk/models/BidInfo;->secondPrice:Ljava/lang/String;

    const-string v3, ""

    .line 29
    iput-object v3, p0, Lcom/windmill/sdk/models/BidInfo;->bidTime:Ljava/lang/String;

    const-string v3, "\u672a\u77e5"

    .line 30
    iput-object v3, p0, Lcom/windmill/sdk/models/BidInfo;->requestId:Ljava/lang/String;

    if-eqz p3, :cond_5

    .line 31
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_0

    .line 32
    iput-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->winner:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->failReason:Ljava/lang/String;

    .line 34
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    iput-object p2, p0, Lcom/windmill/sdk/models/BidInfo;->requestId:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_0
    iput-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->winner:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->failReason:Ljava/lang/String;

    .line 38
    iput-object v3, p0, Lcom/windmill/sdk/models/BidInfo;->requestId:Ljava/lang/String;

    :cond_1
    :goto_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    const-string p1, "1"

    .line 39
    iput-object p1, p0, Lcom/windmill/sdk/models/BidInfo;->exposureStatus:Ljava/lang/String;

    goto :goto_1

    .line 40
    :cond_2
    iput-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->exposureStatus:Ljava/lang/String;

    .line 41
    :goto_1
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 42
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/windmill/sdk/models/BidInfo;->eCPM:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/windmill/sdk/models/BidInfo;->secondPrice:Ljava/lang/String;

    .line 44
    :cond_3
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->Y()I

    move-result p1

    if-ne p1, p2, :cond_4

    const-string p1, "3"

    .line 45
    iput-object p1, p0, Lcom/windmill/sdk/models/BidInfo;->bidType:Ljava/lang/String;

    goto :goto_2

    .line 46
    :cond_4
    iput-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->bidType:Ljava/lang/String;

    .line 47
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/windmill/sdk/models/BidInfo;->bidTime:Ljava/lang/String;

    .line 48
    invoke-direct {p0, p3}, Lcom/windmill/sdk/models/BidInfo;->cacheData(Lcom/windmill/sdk/strategy/a;)V

    :cond_5
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "5"

    .line 2
    iput-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->winner:Ljava/lang/String;

    const-string v1, "0"

    .line 3
    iput-object v1, p0, Lcom/windmill/sdk/models/BidInfo;->eCPM:Ljava/lang/String;

    const-string v2, "4"

    .line 4
    iput-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->bidType:Ljava/lang/String;

    const-string v2, "2"

    .line 5
    iput-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->exposureStatus:Ljava/lang/String;

    .line 6
    iput-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->clickStatus:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->failReason:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/windmill/sdk/models/BidInfo;->secondPrice:Ljava/lang/String;

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->bidTime:Ljava/lang/String;

    const-string v0, "\u672a\u77e5"

    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->requestId:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 11
    iput-object p1, p0, Lcom/windmill/sdk/models/BidInfo;->option:Ljava/util/Map;

    const-string v0, "A"

    .line 12
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->winner:Ljava/lang/String;

    const-string v0, "B"

    .line 13
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->eCPM:Ljava/lang/String;

    const-string v0, "C"

    .line 14
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->bidType:Ljava/lang/String;

    const-string v0, "S"

    .line 15
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->exposureStatus:Ljava/lang/String;

    const-string v0, "D"

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->clickStatus:Ljava/lang/String;

    const-string v0, "H"

    .line 17
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->failReason:Ljava/lang/String;

    const-string v0, "I"

    .line 18
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->secondPrice:Ljava/lang/String;

    const-string v0, "J"

    .line 19
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->bidTime:Ljava/lang/String;

    const-string v0, "K"

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/windmill/sdk/models/BidInfo;->requestId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private cacheData(Lcom/windmill/sdk/strategy/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aL()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->option:Ljava/util/Map;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->option:Ljava/util/Map;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->option:Ljava/util/Map;

    .line 25
    .line 26
    const-string v1, "A"

    .line 27
    .line 28
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->winner:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->option:Ljava/util/Map;

    .line 34
    .line 35
    const-string v1, "B"

    .line 36
    .line 37
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->eCPM:Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->option:Ljava/util/Map;

    .line 43
    .line 44
    const-string v1, "C"

    .line 45
    .line 46
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->bidType:Ljava/lang/String;

    .line 47
    .line 48
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->option:Ljava/util/Map;

    .line 52
    .line 53
    const-string v1, "S"

    .line 54
    .line 55
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->exposureStatus:Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->option:Ljava/util/Map;

    .line 61
    .line 62
    const-string v1, "D"

    .line 63
    .line 64
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->clickStatus:Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->option:Ljava/util/Map;

    .line 70
    .line 71
    const-string v1, "H"

    .line 72
    .line 73
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->failReason:Ljava/lang/String;

    .line 74
    .line 75
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->option:Ljava/util/Map;

    .line 79
    .line 80
    const-string v1, "I"

    .line 81
    .line 82
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->secondPrice:Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->option:Ljava/util/Map;

    .line 88
    .line 89
    const-string v1, "J"

    .line 90
    .line 91
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->bidTime:Ljava/lang/String;

    .line 92
    .line 93
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->option:Ljava/util/Map;

    .line 97
    .line 98
    const-string v1, "K"

    .line 99
    .line 100
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->requestId:Ljava/lang/String;

    .line 101
    .line 102
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAd;->getContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v1, "wm_bid_info"

    .line 114
    .line 115
    invoke-static {v0, v1}, Lcom/windmill/sdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    sget-object v2, Lcom/windmill/sdk/strategy/d;->a:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aL()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget-object v1, p0, Lcom/windmill/sdk/models/BidInfo;->option:Ljava/util/Map;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    .line 152
    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getBidTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->bidTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBidType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->bidType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->clickStatus:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getECpm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->eCPM:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExposureStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->exposureStatus:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFailReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->failReason:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->requestId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSecondPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->secondPrice:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWinner()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/BidInfo;->winner:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "{winner=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/windmill/sdk/models/BidInfo;->winner:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", eCPM=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->eCPM:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", bidType=\'"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->bidType:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ", exposureStatus=\'"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->exposureStatus:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ", clickStatus=\'"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->clickStatus:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, ", failReason=\'"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->failReason:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, ", secondPrice=\'"

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->secondPrice:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, ", bidTime=\'"

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->bidTime:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, ", requestId=\'"

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->requestId:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const/16 v1, 0x7d

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    return-object v0
.end method

.method public update(ILjava/lang/String;Lcom/windmill/sdk/strategy/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "request_id",
            "strategy"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_a

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_3

    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iget-object v4, p0, Lcom/windmill/sdk/models/BidInfo;->secondPrice:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    cmpl-double v6, v2, v4

    .line 30
    .line 31
    if-lez v6, :cond_2

    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    iget-object v4, p0, Lcom/windmill/sdk/models/BidInfo;->eCPM:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    cmpl-double v6, v2, v4

    .line 48
    .line 49
    if-lez v6, :cond_0

    .line 50
    .line 51
    iget-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->eCPM:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->secondPrice:Ljava/lang/String;

    .line 54
    .line 55
    :cond_0
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    iget-object v4, p0, Lcom/windmill/sdk/models/BidInfo;->eCPM:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    cmpg-double v6, v2, v4

    .line 70
    .line 71
    if-gez v6, :cond_1

    .line 72
    .line 73
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iput-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->secondPrice:Ljava/lang/String;

    .line 78
    .line 79
    :cond_1
    const/4 v1, 0x1

    .line 80
    :cond_2
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    iget-object v4, p0, Lcom/windmill/sdk/models/BidInfo;->eCPM:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    cmpl-double v6, v2, v4

    .line 95
    .line 96
    if-lez v6, :cond_3

    .line 97
    .line 98
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    iput-object v2, p0, Lcom/windmill/sdk/models/BidInfo;->eCPM:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    goto :goto_0

    .line 106
    :catch_0
    move-exception v2

    .line 107
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_0
    const/16 v2, 0x15

    .line 111
    .line 112
    if-nez p1, :cond_5

    .line 113
    .line 114
    if-nez v1, :cond_5

    .line 115
    .line 116
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-ne p1, v2, :cond_4

    .line 121
    .line 122
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_4

    .line 127
    .line 128
    iput-object p2, p0, Lcom/windmill/sdk/models/BidInfo;->requestId:Ljava/lang/String;

    .line 129
    .line 130
    invoke-direct {p0, p3}, Lcom/windmill/sdk/models/BidInfo;->cacheData(Lcom/windmill/sdk/strategy/a;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    return-void

    .line 134
    :cond_5
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    const-string v3, "5"

    .line 139
    .line 140
    const-string v4, "2"

    .line 141
    .line 142
    if-ne v1, v2, :cond_6

    .line 143
    .line 144
    iput-object v4, p0, Lcom/windmill/sdk/models/BidInfo;->winner:Ljava/lang/String;

    .line 145
    .line 146
    iput-object v3, p0, Lcom/windmill/sdk/models/BidInfo;->failReason:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_7

    .line 153
    .line 154
    iput-object p2, p0, Lcom/windmill/sdk/models/BidInfo;->requestId:Ljava/lang/String;

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_6
    iput-object v3, p0, Lcom/windmill/sdk/models/BidInfo;->winner:Ljava/lang/String;

    .line 158
    .line 159
    iput-object v4, p0, Lcom/windmill/sdk/models/BidInfo;->failReason:Ljava/lang/String;

    .line 160
    .line 161
    :cond_7
    :goto_1
    if-ne p1, v0, :cond_8

    .line 162
    .line 163
    const-string p1, "1"

    .line 164
    .line 165
    iput-object p1, p0, Lcom/windmill/sdk/models/BidInfo;->exposureStatus:Ljava/lang/String;

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_8
    iput-object v4, p0, Lcom/windmill/sdk/models/BidInfo;->exposureStatus:Ljava/lang/String;

    .line 169
    .line 170
    :goto_2
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->Y()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-ne p1, v0, :cond_9

    .line 175
    .line 176
    const-string p1, "3"

    .line 177
    .line 178
    iput-object p1, p0, Lcom/windmill/sdk/models/BidInfo;->bidType:Ljava/lang/String;

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_9
    iput-object v4, p0, Lcom/windmill/sdk/models/BidInfo;->bidType:Ljava/lang/String;

    .line 182
    .line 183
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 184
    .line 185
    .line 186
    move-result-wide p1

    .line 187
    const-wide/16 v0, 0x3e8

    .line 188
    .line 189
    div-long/2addr p1, v0

    .line 190
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    iput-object p1, p0, Lcom/windmill/sdk/models/BidInfo;->bidTime:Ljava/lang/String;

    .line 195
    .line 196
    invoke-direct {p0, p3}, Lcom/windmill/sdk/models/BidInfo;->cacheData(Lcom/windmill/sdk/strategy/a;)V

    .line 197
    .line 198
    .line 199
    :cond_a
    return-void
.end method
