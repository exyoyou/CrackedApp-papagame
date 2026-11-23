.class public abstract Lcom/windmill/sdk/custom/WMCustomNativeAdapter;
.super Lcom/windmill/sdk/custom/WMAdBaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/custom/IWMCustomNativeEvent;


# static fields
.field private static final h:Ljava/lang/String; = "WMCustomNativeAdapter"


# instance fields
.field protected baseAdapter:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

.field private i:Ljava/lang/Boolean;

.field private j:Lcom/windmill/sdk/models/AdInfo;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end field

.field protected loadListener:Lcom/windmill/sdk/custom/NativeAdResponseLoadListener;


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
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->i:Ljava/lang/Boolean;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->k:Ljava/util/Map;

    .line 14
    .line 15
    return-void
.end method

.method private a(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/strategy/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adData"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->k:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->k:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/windmill/sdk/strategy/a;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 23
    .line 24
    return-object p1
.end method


# virtual methods
.method public final callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V
    .locals 11
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
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " callLoadBiddingSuccess "

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
    if-ne v0, v1, :cond_1

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    iput-wide v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->f:J

    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->c:Z

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getPrice()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/strategy/a;->f(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getPrice()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/strategy/a;->h(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 70
    .line 71
    iget-object v2, p1, Lcom/windmill/sdk/models/BidPrice;->pecpm:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/strategy/a;->g(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->Q()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_0

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getCurrency()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_0

    .line 97
    .line 98
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getCurrency()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Lcom/windmill/sdk/strategy/a;->e(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 108
    .line 109
    new-instance v10, Lcom/windmill/sdk/strategy/a$a;

    .line 110
    .line 111
    const-string v3, ""

    .line 112
    .line 113
    const-string v4, ""

    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    .line 133
    .line 134
    move-result-wide v5

    .line 135
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    const-string v6, ""

    .line 143
    .line 144
    const/4 v7, 0x0

    .line 145
    const/4 v8, 0x0

    .line 146
    const/4 v9, 0x0

    .line 147
    move-object v2, v10

    .line 148
    invoke-direct/range {v2 .. v9}, Lcom/windmill/sdk/strategy/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;ILjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v10}, Lcom/windmill/sdk/strategy/a;->a(Lcom/windmill/sdk/strategy/a$a;)V

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getPrice()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-interface {v0, p0, v1, p1}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidLoadBiddingPriceSuccess(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " callLoadFail()"

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
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->i:Ljava/lang/Boolean;

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
    iput-object p1, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->i:Ljava/lang/Boolean;

    .line 53
    .line 54
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

    .line 18
    sget-object v0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-static {v0, p1, v1}, Lcom/windmill/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/windmill/sdk/strategy/a;)V

    return-void
.end method

.method public final callLoadSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callLoadSuccess()"

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
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->c()V

    .line 5
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->d()V

    if-eqz p1, :cond_2

    .line 6
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/natives/WMNativeAdData;

    if-eqz v1, :cond_0

    .line 8
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->getMediaExtraOption()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/windmill/sdk/strategy/a;->b(Ljava/util/Map;)V

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/natives/WMNativeAdData;

    if-eqz v1, :cond_1

    .line 11
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->k:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->k:Ljava/util/Map;

    iget-object v3, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 15
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-interface {p1, p0, v0}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidLoadAdReady(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 16
    :cond_3
    iget-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->c:Z

    if-eqz v0, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 17
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-interface {p1, p0, v0}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidLoadAdSuccessAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    :cond_5
    return-void
.end method

.method public callNativeAdClick(Lcom/windmill/sdk/natives/WMNativeAdData;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adData"
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
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " callNativeAdClick() "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b()Lcom/windmill/sdk/base/WMAdNativeConnector;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v2, 0x0

    .line 39
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    new-instance v1, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v3, "offer_id"

    .line 69
    .line 70
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->a(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/strategy/a;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {v0, p0, p1, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidAdClick(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void
.end method

.method public callNativeAdLangPageShow(Lcom/windmill/sdk/natives/WMNativeAdData;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adData"
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
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " callNativeAdLangPageShow()"

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
    new-instance v1, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "offer_id"

    .line 43
    .line 44
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->a(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/strategy/a;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {v0, p0, p1, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidShowLangPageAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public callNativeAdShow(Lcom/windmill/sdk/natives/WMNativeAdData;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adData"
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
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---callNativeAdShow()"

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
    new-instance v1, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "offer_id"

    .line 43
    .line 44
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->a(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/strategy/a;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {v0, p0, p1, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidStartPlayingAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public final callNativeAdShowError(Lcom/windmill/sdk/natives/WMNativeAdData;Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adData",
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
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " callNativeAdShowError()"

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
    invoke-direct {p0, p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->a(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/strategy/a;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {v0, p0, p1, p2}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidFailToPlayingAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final getAdCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b:Lcom/windmill/sdk/WindMillAdRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getAdCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    return v0
.end method

.method public final getAdInFo()Lcom/windmill/sdk/models/AdInfo;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->j:Lcom/windmill/sdk/models/AdInfo;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/windmill/sdk/models/AdInfo;

    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-direct {v0, v1}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    iput-object v0, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->j:Lcom/windmill/sdk/models/AdInfo;

    .line 3
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->j:Lcom/windmill/sdk/models/AdInfo;

    return-object v0
.end method

.method public final getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeAdData"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->j:Lcom/windmill/sdk/models/AdInfo;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/windmill/sdk/models/AdInfo;

    invoke-direct {p0, p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->a(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/strategy/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    iput-object v0, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->j:Lcom/windmill/sdk/models/AdInfo;

    .line 7
    iget-object p1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b:Lcom/windmill/sdk/WindMillAdRequest;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->j:Lcom/windmill/sdk/models/AdInfo;

    return-object p1
.end method

.method public abstract getNativeAdDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;"
        }
    .end annotation
.end method

.method public final getNativeAdType()I
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
    const-string v1, "templateType"

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 v0, -0x1

    .line 37
    return v0
.end method

.method public final getNativeType()I
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
    invoke-static {v0}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 v0, -0x1

    .line 37
    return v0
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
    sget-object v0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v0, "------------loadCustomAd------------"

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
    iput-object p2, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->j:Lcom/windmill/sdk/models/AdInfo;

    .line 44
    .line 45
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->i:Ljava/lang/Boolean;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public setAdapter(Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->baseAdapter:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 2
    .line 3
    return-void
.end method

.method public setLoadNativeAdResponseLoadListener(Lcom/windmill/sdk/custom/NativeAdResponseLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->loadListener:Lcom/windmill/sdk/custom/NativeAdResponseLoadListener;

    .line 2
    .line 3
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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->updateAdStrategy(Lcom/windmill/sdk/strategy/a;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/windmill/sdk/models/AdInfo;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/windmill/sdk/models/AdInfo;-><init>(Lcom/windmill/sdk/strategy/a;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->j:Lcom/windmill/sdk/models/AdInfo;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->b:Lcom/windmill/sdk/WindMillAdRequest;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/models/AdInfo;->fillData(Lcom/windmill/sdk/WindMillAdRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
