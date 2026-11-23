.class public abstract Lcom/windmill/sdk/custom/WMCustomSplashAdapter;
.super Lcom/windmill/sdk/custom/WMAdBaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/custom/IWMCustomSplashEvent;


# static fields
.field public static aPageVGroup:Landroid/widget/FrameLayout; = null

.field private static h:Ljava/lang/String; = "WMCustomSplashAdapter"


# instance fields
.field private i:Ljava/lang/Boolean;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/windmill/sdk/custom/IWMCustomSplashEvent;",
            ">;"
        }
    .end annotation
.end field


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
    iput-object v0, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->i:Ljava/lang/Boolean;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->j:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->k:Z

    .line 12
    .line 13
    return-void
.end method

.method static synthetic a(Lcom/windmill/sdk/custom/WMCustomSplashAdapter;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->l:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/sdk/custom/WMCustomSplashAdapter;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->g()V

    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private f()Lcom/windmill/sdk/custom/IWMCustomSplashEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->l:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/windmill/sdk/custom/IWMCustomSplashEvent;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method private g()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->h()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getRewardType()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->k:Z

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iput-boolean v2, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->k:Z

    .line 29
    .line 30
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 31
    .line 32
    invoke-interface {v0, p0, v1, v2}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidRewardAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 38
    .line 39
    invoke-interface {v0, p0, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidCloseAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iput-boolean v2, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->j:Z

    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method private h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aK()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_0
    return v1
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
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->h:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "---callLoadBiddingSuccess "

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getPrice()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 35
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
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->Q()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getCurrency()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    .line 67
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getCurrency()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/a;->e(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    iget-object v0, p1, Lcom/windmill/sdk/models/BidPrice;->pecpm:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 85
    .line 86
    iget-object v1, p1, Lcom/windmill/sdk/models/BidPrice;->pecpm:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/strategy/a;->g(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->h:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, "---callLoadBiddingSuccess  pecpm "

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v1, p1, Lcom/windmill/sdk/models/BidPrice;->pecpm:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 119
    .line 120
    iget-boolean v1, p1, Lcom/windmill/sdk/models/BidPrice;->is_pdb:Z

    .line 121
    .line 122
    iput-boolean v1, v0, Lcom/windmill/sdk/strategy/a;->h:Z

    .line 123
    .line 124
    iget v1, p1, Lcom/windmill/sdk/models/BidPrice;->pdb_priority:I

    .line 125
    .line 126
    iput v1, v0, Lcom/windmill/sdk/strategy/a;->i:I

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getSaasChannelInfo()Ljava/util/Map;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_2

    .line 133
    .line 134
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 135
    .line 136
    invoke-virtual {v1, v0}, Lcom/windmill/sdk/strategy/a;->b(Ljava/util/Map;)V

    .line 137
    .line 138
    .line 139
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 140
    .line 141
    new-instance v9, Lcom/windmill/sdk/strategy/a$a;

    .line 142
    .line 143
    const-string v2, ""

    .line 144
    .line 145
    const-string v3, ""

    .line 146
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 164
    .line 165
    .line 166
    move-result-wide v4

    .line 167
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    const-string v5, ""

    .line 175
    .line 176
    const/4 v6, 0x0

    .line 177
    const/4 v7, 0x0

    .line 178
    const/4 v8, 0x0

    .line 179
    move-object v1, v9

    .line 180
    invoke-direct/range {v1 .. v8}, Lcom/windmill/sdk/strategy/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;ILjava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v9}, Lcom/windmill/sdk/strategy/a;->a(Lcom/windmill/sdk/strategy/a$a;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-eqz v0, :cond_3

    .line 191
    .line 192
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/windmill/sdk/models/BidPrice;->getPrice()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-interface {v0, p0, v1, p1}, Lcom/windmill/sdk/base/WMAdBaseConnector;->adapterDidLoadBiddingPriceSuccess(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_3
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
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->h:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->i:Ljava/lang/Boolean;

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
    iput-object p1, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->i:Ljava/lang/Boolean;

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

    sget-object v1, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---callLoadSuccess()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->f:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->d:Z

    .line 4
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->c()V

    .line 5
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->d()V

    .line 6
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getSaasChannelInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-virtual {v1, v0}, Lcom/windmill/sdk/strategy/a;->b(Ljava/util/Map;)V

    .line 8
    :cond_0
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
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadSuccess()V

    .line 14
    sget-object v0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    invoke-static {v0, p1, v1}, Lcom/windmill/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/windmill/sdk/strategy/a;)V

    return-void
.end method

.method public final callSplashAdClick()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---callSplashAdClick()"

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
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->h()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getRewardType()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v2, 0x2

    .line 49
    if-ne v1, v2, :cond_1

    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->k:Z

    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->k:Z

    .line 59
    .line 60
    iget-object v2, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 61
    .line 62
    invoke-interface {v0, p0, v2, v1}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidRewardAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Z)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->f()Lcom/windmill/sdk/custom/IWMCustomSplashEvent;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-interface {v0}, Lcom/windmill/sdk/custom/IWMCustomSplashEvent;->callSplashAdClick()V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public final callSplashAdClosed()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---callSplashAdClosed()"

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
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->g()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->f()Lcom/windmill/sdk/custom/IWMCustomSplashEvent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/windmill/sdk/custom/IWMCustomSplashEvent;->callSplashAdClosed()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final callSplashAdShow()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---callSplashAdShow()"

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
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->f()Lcom/windmill/sdk/custom/IWMCustomSplashEvent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/windmill/sdk/custom/IWMCustomSplashEvent;->callSplashAdShow()V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getNetworkOption()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/windmill/sdk/strategy/a;->d(Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelObject()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sget-object v2, Lcom/windmill/sdk/strategy/a;->o:Ljava/util/Set;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/strategy/a;->a(Ljava/lang/Object;Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a()Lcom/windmill/sdk/base/WMAdConnector;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v1, p0, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a:Lcom/windmill/sdk/strategy/a;

    .line 75
    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-interface {v0, p0, v1, v2}, Lcom/windmill/sdk/base/WMAdConnector;->adapterDidStartPlayingAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void
.end method

.method public callSplashAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V
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
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---callSplashAdShowError()"

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
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->f()Lcom/windmill/sdk/custom/IWMCustomSplashEvent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-interface {v0, p1}, Lcom/windmill/sdk/custom/IWMCustomSplashEvent;->callSplashAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public callSplashAdSkipped()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---callSplashAdSkipped()"

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
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->g()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->f()Lcom/windmill/sdk/custom/IWMCustomSplashEvent;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/windmill/sdk/custom/IWMCustomSplashEvent;->callSplashAdSkipped()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public getSplashType()I
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
    const-string v1, "splashType"

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
    const/4 v0, 0x0

    .line 37
    return v0
.end method

.method public abstract loadAd(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/Map;Ljava/util/Map;)V
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
            "localExtra",
            "serverExtra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
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
    .locals 2
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "---loadCustomAd---"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ":"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->i:Ljava/lang/Boolean;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->j:Z

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->k:Z

    .line 50
    .line 51
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-virtual {p4}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->loadAd(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/Map;Ljava/util/Map;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public abstract showAd(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "viewGroup",
            "serverExtra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public final showCustomAd(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/windmill/sdk/strategy/a;)V
    .locals 2
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "-----showCustomAd-name: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " :"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->h()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    .line 51
    .line 52
    const-class v0, Lcom/windmill/sdk/widget/SpecialActivity;

    .line 53
    .line 54
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    const-string v0, "adnName"

    .line 58
    .line 59
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;

    .line 67
    .line 68
    invoke-direct {v0, p0, p3}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter$1;-><init>(Lcom/windmill/sdk/custom/WMCustomSplashAdapter;Lcom/windmill/sdk/strategy/a;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lcom/windmill/sdk/widget/SpecialActivity;->a(Lcom/windmill/sdk/widget/SpecialActivity$a;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    .line 79
    .line 80
    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    const-string p3, "showCustomAd activity is null"

    .line 87
    .line 88
    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callSplashAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception p1

    .line 96
    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    .line 97
    .line 98
    sget-object p3, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 99
    .line 100
    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v1, "showCustomAd:"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-direct {p2, p3, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p2}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callSplashAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p3}, Lcom/windmill/sdk/strategy/a;->aR()Ljava/util/Map;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    invoke-virtual {p0, p1, p2, p3}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->showAd(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/Map;)V

    .line 137
    .line 138
    .line 139
    :goto_0
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
