.class public Lcom/windmill/sdk/models/AdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private abFlag:I

.field private adSourceIndex:Ljava/lang/Integer;

.field private adType:I

.field private adid:Ljava/lang/String;

.field private aggreWaterfallId:I

.field private bidType:I

.field private crid:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private eCPM:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private isHeaderBidding:Z

.field public isNativeAdSource:I

.field private loadId:Ljava/lang/String;

.field private loadPriority:I

.field public netWorkOptions:Ljava/lang/String;

.field private networkId:I

.field private networkName:Ljava/lang/String;

.field private networkPlacementId:Ljava/lang/String;

.field private network_adType:I

.field private objectWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pecpm:Ljava/lang/String;

.field private placementId:Ljava/lang/String;

.field private playPriority:I

.field private reward_timing:I

.field private ruleId:Ljava/lang/String;

.field private saasChannelInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scene:Ljava/lang/String;

.field private subType:I

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/windmill/sdk/strategy/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strategy"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "CNY"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->currency:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->userId:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->loadId:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->scene:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/windmill/sdk/models/AdInfo;->options:Ljava/util/Map;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->netWorkOptions:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz p1, :cond_a

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aL()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->placementId:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->networkPlacementId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lcom/windmill/sdk/models/AdInfo;->networkId:I

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->networkName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aY()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->groupId:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->ag()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->ruleId:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aZ()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput v0, p0, Lcom/windmill/sdk/models/AdInfo;->abFlag:I

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->eCPM:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Y()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v1, 0x0

    .line 80
    const/4 v2, 0x1

    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    const/4 v0, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    iput-boolean v0, p0, Lcom/windmill/sdk/models/AdInfo;->isHeaderBidding:Z

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aK()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iput v0, p0, Lcom/windmill/sdk/models/AdInfo;->adType:I

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->R()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput v0, p0, Lcom/windmill/sdk/models/AdInfo;->loadPriority:I

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->S()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iput v0, p0, Lcom/windmill/sdk/models/AdInfo;->playPriority:I

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aE()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iput v0, p0, Lcom/windmill/sdk/models/AdInfo;->aggreWaterfallId:I

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->r()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iput v0, p0, Lcom/windmill/sdk/models/AdInfo;->isNativeAdSource:I

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->au()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->crid:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->av()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->adid:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->i()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_1

    .line 135
    .line 136
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 137
    .line 138
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iput-object v3, p0, Lcom/windmill/sdk/models/AdInfo;->objectWeakReference:Ljava/lang/ref/WeakReference;

    .line 142
    .line 143
    :cond_1
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->j()Ljava/util/Map;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->saasChannelInfo:Ljava/util/Map;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->Z()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    iput v0, p0, Lcom/windmill/sdk/models/AdInfo;->bidType:I

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->loadId:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->s()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iput v0, p0, Lcom/windmill/sdk/models/AdInfo;->subType:I

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->g()Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->adSourceIndex:Ljava/lang/Integer;

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->W()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->pecpm:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->s()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eq v0, v2, :cond_6

    .line 184
    .line 185
    const/4 v3, 0x2

    .line 186
    const/4 v4, 0x5

    .line 187
    if-eq v0, v3, :cond_5

    .line 188
    .line 189
    const/4 v3, 0x4

    .line 190
    if-eq v0, v3, :cond_4

    .line 191
    .line 192
    if-eq v0, v4, :cond_3

    .line 193
    .line 194
    const/4 v3, 0x7

    .line 195
    if-eq v0, v3, :cond_2

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aK()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    iput v0, p0, Lcom/windmill/sdk/models/AdInfo;->network_adType:I

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_2
    iput v3, p0, Lcom/windmill/sdk/models/AdInfo;->network_adType:I

    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->r()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-ne v0, v2, :cond_7

    .line 211
    .line 212
    iput v4, p0, Lcom/windmill/sdk/models/AdInfo;->network_adType:I

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_3
    iput v4, p0, Lcom/windmill/sdk/models/AdInfo;->network_adType:I

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_4
    iput v3, p0, Lcom/windmill/sdk/models/AdInfo;->network_adType:I

    .line 219
    .line 220
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->r()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-ne v0, v2, :cond_7

    .line 225
    .line 226
    iput v4, p0, Lcom/windmill/sdk/models/AdInfo;->network_adType:I

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_5
    iput v3, p0, Lcom/windmill/sdk/models/AdInfo;->network_adType:I

    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->r()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-ne v0, v2, :cond_7

    .line 236
    .line 237
    iput v4, p0, Lcom/windmill/sdk/models/AdInfo;->network_adType:I

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_6
    iput v2, p0, Lcom/windmill/sdk/models/AdInfo;->network_adType:I

    .line 241
    .line 242
    :cond_7
    :goto_1
    iget v0, p0, Lcom/windmill/sdk/models/AdInfo;->network_adType:I

    .line 243
    .line 244
    if-ne v0, v2, :cond_8

    .line 245
    .line 246
    iput v1, p0, Lcom/windmill/sdk/models/AdInfo;->reward_timing:I

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_8
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->t()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    iput v0, p0, Lcom/windmill/sdk/models/AdInfo;->reward_timing:I

    .line 254
    .line 255
    :goto_2
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aa()Ljava/util/HashMap;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    if-eqz v0, :cond_9

    .line 260
    .line 261
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->aa()Ljava/util/HashMap;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    const-string v1, "scene_id"

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Ljava/lang/String;

    .line 272
    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-nez v1, :cond_9

    .line 278
    .line 279
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->scene:Ljava/lang/String;

    .line 280
    .line 281
    :cond_9
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->H()Ljava/util/Map;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    if-eqz v0, :cond_a

    .line 286
    .line 287
    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/a;->H()Ljava/util/Map;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-static {p1}, Lcom/czhj/sdk/common/json/JSONSerializer;->Serialize(Ljava/lang/Object;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    iput-object p1, p0, Lcom/windmill/sdk/models/AdInfo;->netWorkOptions:Ljava/lang/String;

    .line 296
    .line 297
    :cond_a
    return-void
.end method


# virtual methods
.method public fillData(Lcom/windmill/sdk/WindMillAdRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adRequest"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getUserId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->userId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->loadId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->options:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->options:Ljava/util/Map;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public fillNetWorkOption(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lcom/czhj/sdk/common/json/JSONSerializer;->Serialize(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/windmill/sdk/models/AdInfo;->netWorkOptions:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public getAbFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/models/AdInfo;->abFlag:I

    .line 2
    .line 3
    return v0
.end method

.method public getAdSourceIndex()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->adSourceIndex:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/models/AdInfo;->adType:I

    .line 2
    .line 3
    return v0
.end method

.method public getAdid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->adid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAggreWaterfallId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/models/AdInfo;->aggreWaterfallId:I

    .line 2
    .line 3
    return v0
.end method

.method public getBidType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/models/AdInfo;->bidType:I

    .line 2
    .line 3
    return v0
.end method

.method public getChannelObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->objectWeakReference:Ljava/lang/ref/WeakReference;

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
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getCrid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->crid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->currency:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->groupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsNativeAdSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/models/AdInfo;->isNativeAdSource:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoadId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->loadId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoadPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/models/AdInfo;->loadPriority:I

    .line 2
    .line 3
    return v0
.end method

.method public getNetWorkOptions()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->netWorkOptions:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/models/AdInfo;->networkId:I

    .line 2
    .line 3
    return v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->networkName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->networkPlacementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetwork_adType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/models/AdInfo;->network_adType:I

    .line 2
    .line 3
    return v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->options:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPecpm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->pecpm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->placementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/models/AdInfo;->playPriority:I

    .line 2
    .line 3
    return v0
.end method

.method public getReward_timing()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/models/AdInfo;->reward_timing:I

    .line 2
    .line 3
    return v0
.end method

.method public getRuleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->ruleId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSaasChannelInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->saasChannelInfo:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScene()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->scene:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSubType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/models/AdInfo;->subType:I

    .line 2
    .line 3
    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->userId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public geteCPM()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/models/AdInfo;->eCPM:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isHeaderBidding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/models/AdInfo;->isHeaderBidding:Z

    .line 2
    .line 3
    return v0
.end method

.method public setPecpm(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pecpm"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/models/AdInfo;->pecpm:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "placementId"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/windmill/sdk/models/AdInfo;->placementId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "networkPlacementId"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/windmill/sdk/models/AdInfo;->networkPlacementId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "networkId"

    .line 21
    .line 22
    iget v2, p0, Lcom/windmill/sdk/models/AdInfo;->networkId:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "networkName"

    .line 28
    .line 29
    iget-object v2, p0, Lcom/windmill/sdk/models/AdInfo;->networkName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "groupId"

    .line 35
    .line 36
    iget-object v2, p0, Lcom/windmill/sdk/models/AdInfo;->groupId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "ruleId"

    .line 42
    .line 43
    iget-object v2, p0, Lcom/windmill/sdk/models/AdInfo;->ruleId:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v1, "abFlag"

    .line 49
    .line 50
    iget v2, p0, Lcom/windmill/sdk/models/AdInfo;->abFlag:I

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v1, "loadPriority"

    .line 56
    .line 57
    iget v2, p0, Lcom/windmill/sdk/models/AdInfo;->loadPriority:I

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string v1, "playPriority"

    .line 63
    .line 64
    iget v2, p0, Lcom/windmill/sdk/models/AdInfo;->playPriority:I

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v1, "eCPM"

    .line 70
    .line 71
    iget-object v2, p0, Lcom/windmill/sdk/models/AdInfo;->eCPM:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    const-string v1, "currency"

    .line 77
    .line 78
    iget-object v2, p0, Lcom/windmill/sdk/models/AdInfo;->currency:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    const-string v1, "isHeaderBidding"

    .line 84
    .line 85
    iget-boolean v2, p0, Lcom/windmill/sdk/models/AdInfo;->isHeaderBidding:Z

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    const-string v1, "loadId"

    .line 91
    .line 92
    iget-object v2, p0, Lcom/windmill/sdk/models/AdInfo;->loadId:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    const-string v1, "userId"

    .line 98
    .line 99
    iget-object v2, p0, Lcom/windmill/sdk/models/AdInfo;->userId:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    const-string v1, "adType"

    .line 105
    .line 106
    iget v2, p0, Lcom/windmill/sdk/models/AdInfo;->adType:I

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    const-string v1, "network_adType"

    .line 112
    .line 113
    iget v2, p0, Lcom/windmill/sdk/models/AdInfo;->network_adType:I

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    const-string v1, "scene"

    .line 119
    .line 120
    iget-object v2, p0, Lcom/windmill/sdk/models/AdInfo;->scene:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    const-string v1, "pecpm"

    .line 126
    .line 127
    iget-object v2, p0, Lcom/windmill/sdk/models/AdInfo;->pecpm:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    const-string v1, "bidType"

    .line 133
    .line 134
    iget v2, p0, Lcom/windmill/sdk/models/AdInfo;->bidType:I

    .line 135
    .line 136
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    const-string v1, "isNativeAdSource"

    .line 140
    .line 141
    iget v2, p0, Lcom/windmill/sdk/models/AdInfo;->isNativeAdSource:I

    .line 142
    .line 143
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    const-string v1, "reward_timing"

    .line 147
    .line 148
    iget v2, p0, Lcom/windmill/sdk/models/AdInfo;->reward_timing:I

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 151
    .line 152
    .line 153
    const-string v1, "aggreWaterfallId"

    .line 154
    .line 155
    iget v2, p0, Lcom/windmill/sdk/models/AdInfo;->aggreWaterfallId:I

    .line 156
    .line 157
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    const-string v1, "adSourceIndex"

    .line 161
    .line 162
    iget-object v2, p0, Lcom/windmill/sdk/models/AdInfo;->adSourceIndex:Ljava/lang/Integer;

    .line 163
    .line 164
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Lcom/windmill/sdk/models/AdInfo;->options:Ljava/util/Map;

    .line 168
    .line 169
    if-eqz v1, :cond_0

    .line 170
    .line 171
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_0

    .line 176
    .line 177
    const-string v1, "options"

    .line 178
    .line 179
    new-instance v2, Lorg/json/JSONObject;

    .line 180
    .line 181
    iget-object v3, p0, Lcom/windmill/sdk/models/AdInfo;->options:Ljava/util/Map;

    .line 182
    .line 183
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    .line 188
    .line 189
    :cond_0
    iget-object v1, p0, Lcom/windmill/sdk/models/AdInfo;->netWorkOptions:Ljava/lang/String;

    .line 190
    .line 191
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-nez v1, :cond_1

    .line 196
    .line 197
    const-string v1, "netWorkOptions"

    .line 198
    .line 199
    new-instance v2, Lorg/json/JSONObject;

    .line 200
    .line 201
    iget-object v3, p0, Lcom/windmill/sdk/models/AdInfo;->netWorkOptions:Ljava/lang/String;

    .line 202
    .line 203
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    .line 208
    .line 209
    :cond_1
    iget-object v1, p0, Lcom/windmill/sdk/models/AdInfo;->objectWeakReference:Ljava/lang/ref/WeakReference;

    .line 210
    .line 211
    if-eqz v1, :cond_2

    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    if-eqz v1, :cond_2

    .line 218
    .line 219
    const-string v2, "channelObject"

    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .line 231
    .line 232
    goto :goto_0

    .line 233
    :catchall_0
    move-exception v1

    .line 234
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 235
    .line 236
    .line 237
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    return-object v0
.end method
