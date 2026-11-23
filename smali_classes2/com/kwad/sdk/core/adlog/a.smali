.class public final Lcom/kwad/sdk/core/adlog/a;
.super Lcom/kwad/sdk/core/network/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/adlog/a$a;
    }
.end annotation


# instance fields
.field aLd:I

.field private final aLe:Lcom/kwad/sdk/core/adlog/c/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/adlog/c/a;)V
    .locals 1
    .param p1    # Lcom/kwad/sdk/core/adlog/c/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kwad/sdk/core/adlog/a;->aLe:Lcom/kwad/sdk/core/adlog/c/a;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/kwad/sdk/core/adlog/c/a;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 9
    .line 10
    iget p1, p1, Lcom/kwad/sdk/core/adlog/c/a;->aKI:I

    .line 11
    .line 12
    iput p1, p0, Lcom/kwad/sdk/core/adlog/a;->aLd:I

    .line 13
    .line 14
    return-void
.end method

.method private IR()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/a;->aLe:Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/core/adlog/c/a;->aMe:Lorg/json/JSONObject;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const-string v1, "clientTimestamp"

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 19
    .line 20
    .line 21
    const-string v1, "extData"

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kwad/sdk/core/adlog/c/a;)V
    .locals 2
    .param p2    # Lcom/kwad/sdk/core/adlog/c/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_a

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aML:I

    if-ltz p1, :cond_1

    const-string v0, "adOrder"

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 4
    :cond_1
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->QX:I

    if-ltz p1, :cond_2

    const-string v0, "adInterstitialSource"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 6
    :cond_2
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMj:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "adRenderArea"

    .line 7
    iget-object v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMj:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "adxResult"

    .line 8
    iget v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->adxResult:I

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 9
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMP:I

    if-eqz p1, :cond_4

    const-string v0, "fingerSwipeType"

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 11
    :cond_4
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMQ:I

    if-eqz p1, :cond_5

    const-string v0, "fingerSwipeDistance"

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 13
    :cond_5
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMI:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    const-string v1, "installStatus"

    .line 14
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 15
    :cond_6
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    if-eqz p1, :cond_7

    .line 16
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/a/a;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "clientExtData"

    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_7
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMT:Ljava/lang/String;

    if-eqz p1, :cond_8

    const-string v1, "clientPkFailAdInfo"

    .line 18
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_8
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->Rb:I

    if-eq p1, v0, :cond_9

    const-string v0, "triggerType"

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 21
    :cond_9
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->Ra:I

    if-eqz p1, :cond_a

    const-string p2, "photoSizeStyle"

    .line 22
    invoke-virtual {p0, p2, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    :cond_a
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c/a;)V
    .locals 4
    .param p3    # Lcom/kwad/sdk/core/adlog/c/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    iget p1, p2, Lcom/kwad/sdk/core/response/model/AdTemplate;->mInitVoiceStatus:I

    if-eqz p1, :cond_1

    const-string p2, "initVoiceStatus"

    .line 25
    invoke-virtual {p0, p2, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/kwad/sdk/core/adlog/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-wide p1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mBidEcpm:J

    const-wide/16 v0, 0x0

    const-string v2, "ecpmType"

    cmp-long v3, p1, v0

    if-nez v3, :cond_2

    const/4 p1, 0x2

    .line 27
    invoke-virtual {p0, v2, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, v2, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    :goto_0
    if-nez p3, :cond_3

    return-void

    .line 29
    :cond_3
    iget p1, p3, Lcom/kwad/sdk/core/adlog/c/a;->aMA:I

    if-eqz p1, :cond_4

    const-string p2, "adAggPageSource"

    .line 30
    invoke-virtual {p0, p2, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 31
    :cond_4
    iget-object p1, p3, Lcom/kwad/sdk/core/adlog/c/a;->QY:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "payload"

    .line 32
    iget-object p2, p3, Lcom/kwad/sdk/core/adlog/c/a;->QY:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/kwad/sdk/core/adlog/c/a;)V
    .locals 5
    .param p2    # Lcom/kwad/sdk/core/adlog/c/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p2, :cond_12

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->nm:I

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const-string v0, "itemClickType"

    .line 16
    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->QY:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    const-string p1, "payload"

    .line 29
    .line 30
    iget-object v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->QY:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMA:I

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    const-string v0, "adAggPageSource"

    .line 40
    .line 41
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    :cond_3
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aML:I

    .line 45
    .line 46
    if-ltz p1, :cond_4

    .line 47
    .line 48
    const-string v0, "adOrder"

    .line 49
    .line 50
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    :cond_4
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->QX:I

    .line 54
    .line 55
    if-ltz p1, :cond_5

    .line 56
    .line 57
    const-string v0, "adInterstitialSource"

    .line 58
    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    :cond_5
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->Rb:I

    .line 63
    .line 64
    const/4 v0, -0x1

    .line 65
    if-eq p1, v0, :cond_6

    .line 66
    .line 67
    const-string v1, "triggerType"

    .line 68
    .line 69
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    :cond_6
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMS:I

    .line 73
    .line 74
    if-eqz p1, :cond_7

    .line 75
    .line 76
    const-string v1, "cardCloseType"

    .line 77
    .line 78
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    :cond_7
    const-string p1, "adxResult"

    .line 82
    .line 83
    iget v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->adxResult:I

    .line 84
    .line 85
    invoke-virtual {p0, p1, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    iget-wide v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->np:D

    .line 89
    .line 90
    const-wide/16 v3, 0x0

    .line 91
    .line 92
    cmpl-double p1, v1, v3

    .line 93
    .line 94
    if-lez p1, :cond_8

    .line 95
    .line 96
    const-string p1, "splashShakeAcceleration"

    .line 97
    .line 98
    invoke-virtual {p0, p1, v1, v2}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;D)V

    .line 99
    .line 100
    .line 101
    :cond_8
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMM:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_9

    .line 108
    .line 109
    const-string p1, "splashInteractionRotateAngle"

    .line 110
    .line 111
    iget-object v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMM:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p0, p1, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_9
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMP:I

    .line 117
    .line 118
    if-eqz p1, :cond_a

    .line 119
    .line 120
    const-string v1, "fingerSwipeType"

    .line 121
    .line 122
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    :cond_a
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMQ:I

    .line 126
    .line 127
    if-eqz p1, :cond_b

    .line 128
    .line 129
    const-string v1, "fingerSwipeDistance"

    .line 130
    .line 131
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    :cond_b
    iget-wide v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->zV:J

    .line 135
    .line 136
    const-wide/16 v3, 0x0

    .line 137
    .line 138
    cmp-long p1, v1, v3

    .line 139
    .line 140
    if-lez p1, :cond_c

    .line 141
    .line 142
    const-string p1, "playedDuration"

    .line 143
    .line 144
    invoke-virtual {p0, p1, v1, v2}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;J)V

    .line 145
    .line 146
    .line 147
    :cond_c
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMK:I

    .line 148
    .line 149
    if-lez p1, :cond_d

    .line 150
    .line 151
    const-string v1, "playedRate"

    .line 152
    .line 153
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    :cond_d
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMT:Ljava/lang/String;

    .line 157
    .line 158
    if-eqz p1, :cond_e

    .line 159
    .line 160
    const-string v1, "clientPkFailAdInfo"

    .line 161
    .line 162
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_e
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMs:I

    .line 166
    .line 167
    if-eq p1, v0, :cond_f

    .line 168
    .line 169
    const-string v0, "retainCodeType"

    .line 170
    .line 171
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 172
    .line 173
    .line 174
    :cond_f
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 175
    .line 176
    if-eqz p1, :cond_10

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/a/a;->toJson()Lorg/json/JSONObject;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    const-string v0, "clientExtData"

    .line 187
    .line 188
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_10
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMR:I

    .line 192
    .line 193
    if-eqz p1, :cond_11

    .line 194
    .line 195
    const-string v0, "finger_swiper_angle"

    .line 196
    .line 197
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 198
    .line 199
    .line 200
    :cond_11
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->Ra:I

    .line 201
    .line 202
    if-eqz p1, :cond_12

    .line 203
    .line 204
    const-string p2, "photoSizeStyle"

    .line 205
    .line 206
    invoke-virtual {p0, p2, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    :cond_12
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;Lcom/kwad/sdk/core/adlog/c/a;)V
    .locals 8
    .param p2    # Lcom/kwad/sdk/core/adlog/c/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_2d

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMh:I

    if-eqz p1, :cond_1

    const-string v0, "itemCloseType"

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 4
    :cond_1
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMf:I

    if-lez p1, :cond_2

    const-string v0, "photoPlaySecond"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 6
    :cond_2
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMg:I

    if-eqz p1, :cond_3

    const-string v0, "awardReceiveStage"

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 8
    :cond_3
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMi:I

    if-eqz p1, :cond_4

    const-string v0, "elementType"

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 10
    :cond_4
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->QY:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "payload"

    .line 11
    iget-object v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->QY:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_5
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    if-eqz p1, :cond_6

    .line 13
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/a/a;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "clientExtData"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_6
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMt:I

    if-lez p1, :cond_7

    const-string v0, "deeplinkType"

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 16
    :cond_7
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMu:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "deeplinkAppName"

    .line 17
    iget-object v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMu:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_8
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMv:I

    if-eqz p1, :cond_9

    const-string v0, "deeplinkFailedReason"

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 20
    :cond_9
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->downloadSource:I

    if-lez p1, :cond_a

    const-string v0, "downloadSource"

    .line 21
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 22
    :cond_a
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMS:I

    if-eqz p1, :cond_b

    const-string v0, "cardCloseType"

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 24
    :cond_b
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMw:I

    if-lez p1, :cond_c

    const-string v0, "isPackageChanged"

    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    :cond_c
    const-string p1, "installedFrom"

    .line 26
    iget-object v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMx:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isChangedEndcard"

    .line 27
    iget v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMz:I

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 28
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMA:I

    if-eqz p1, :cond_d

    const-string v0, "adAggPageSource"

    .line 29
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 30
    :cond_d
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMy:Ljava/lang/String;

    if-eqz p1, :cond_e

    const-string v0, "downloadFailedReason"

    .line 31
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_e
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMC:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/utils/br;->isNullString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "installedPackageName"

    .line 33
    iget-object v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMC:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_f
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMB:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/utils/br;->isNullString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    const-string p1, "serverPackageName"

    .line 35
    iget-object v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMB:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_10
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aME:I

    if-lez p1, :cond_11

    const-string v0, "closeButtonClickTime"

    .line 37
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 38
    :cond_11
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMD:I

    if-lez p1, :cond_12

    const-string v0, "closeButtonImpressionTime"

    .line 39
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 40
    :cond_12
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->downloadStatus:I

    if-ltz p1, :cond_13

    const-string v0, "downloadStatus"

    .line 41
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 42
    :cond_13
    iget-wide v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMF:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_14

    const-string p1, "landingPageLoadedDuration"

    .line 43
    invoke-virtual {p0, p1, v0, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;J)V

    .line 44
    :cond_14
    iget-wide v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->RD:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_15

    const-string p1, "leaveTime"

    .line 45
    invoke-virtual {p0, p1, v0, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;J)V

    .line 46
    :cond_15
    iget-wide v0, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMG:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_16

    const-string p1, "adItemClickBackDuration"

    .line 47
    invoke-virtual {p0, p1, v0, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;J)V

    .line 48
    :cond_16
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMs:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_17

    const-string v1, "retainCodeType"

    .line 49
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 50
    :cond_17
    iget-wide v4, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMk:J

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-lez p1, :cond_18

    const-string p1, "highestLossPrice"

    .line 51
    invoke-virtual {p0, p1, v4, v5}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;J)V

    .line 52
    :cond_18
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMl:I

    const/16 v1, -0x270f

    if-gez p1, :cond_19

    if-ne p1, v1, :cond_1a

    :cond_19
    const-string v4, "impFailReason"

    .line 53
    invoke-virtual {p0, v4, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 54
    :cond_1a
    iget-wide v4, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMm:J

    cmp-long p1, v4, v6

    if-gtz p1, :cond_1b

    const-wide/16 v6, -0x270f

    cmp-long p1, v4, v6

    if-nez p1, :cond_1c

    :cond_1b
    const-string p1, "winEcpm"

    .line 55
    invoke-virtual {p0, p1, v4, v5}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;J)V

    .line 56
    :cond_1c
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->adnType:I

    if-gtz p1, :cond_1d

    if-ne p1, v1, :cond_1e

    :cond_1d
    const-string v1, "adnType"

    .line 57
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 58
    :cond_1e
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->adnName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1f

    const-string p1, "adnName"

    .line 59
    iget-object v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->adnName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_1f
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMn:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    const-string p1, "adnAdvertiser"

    .line 61
    iget-object v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMn:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_20
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMo:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21

    const-string p1, "adnTitle"

    .line 63
    iget-object v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMo:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_21
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMp:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_22

    const-string p1, "adnRequestId"

    .line 65
    iget-object v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMp:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    const-string p1, "adnShowType"

    .line 66
    iget v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMq:I

    invoke-virtual {p0, p1, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    const-string p1, "adnClickType"

    .line 67
    iget v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMr:I

    invoke-virtual {p0, p1, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    const-string p1, "adnMaterialType"

    .line 68
    iget v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->adnMaterialType:I

    invoke-virtual {p0, p1, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 69
    iget-object p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->adnMaterialUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_23

    const-string p1, "adnMaterialUrl"

    .line 70
    iget-object v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->adnMaterialUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    const-string p1, "downloadCardType"

    .line 71
    iget v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMJ:I

    invoke-virtual {p0, p1, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    const-string p1, "landingPageType"

    .line 72
    iget v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->ads:I

    invoke-virtual {p0, p1, v1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 73
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->QX:I

    if-ltz p1, :cond_24

    const-string v1, "adInterstitialSource"

    .line 74
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 75
    :cond_24
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMN:I

    if-lez p1, :cond_25

    const-string v1, "downloadInstallType"

    .line 76
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 77
    :cond_25
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMP:I

    if-eqz p1, :cond_26

    const-string v1, "fingerSwipeType"

    .line 78
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 79
    :cond_26
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMQ:I

    if-eqz p1, :cond_27

    const-string v1, "fingerSwipeDistance"

    .line 80
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 81
    :cond_27
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMO:I

    if-lez p1, :cond_28

    const-string v1, "businessSceneType"

    .line 82
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 83
    :cond_28
    iget-wide v4, p2, Lcom/kwad/sdk/core/adlog/c/a;->zV:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_29

    const-string p1, "playedDuration"

    .line 84
    invoke-virtual {p0, p1, v4, v5}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;J)V

    .line 85
    :cond_29
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMK:I

    if-lez p1, :cond_2a

    const-string v1, "playedRate"

    .line 86
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 87
    :cond_2a
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->aMH:I

    if-eq p1, v0, :cond_2b

    const-string v1, "appStorePageType"

    .line 88
    invoke-virtual {p0, v1, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 89
    :cond_2b
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->Rb:I

    if-eq p1, v0, :cond_2c

    const-string v0, "triggerType"

    .line 90
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    .line 91
    :cond_2c
    iget p1, p2, Lcom/kwad/sdk/core/adlog/c/a;->Ra:I

    if-eqz p1, :cond_2d

    const-string p2, "photoSizeStyle"

    .line 92
    invoke-virtual {p0, p2, p1}, Lcom/kwad/sdk/core/network/b;->putBody(Ljava/lang/String;I)V

    :cond_2d
    :goto_0
    return-void
.end method


# virtual methods
.method public final buildBaseBody()V
    .locals 0

    return-void
.end method

.method public final buildBaseHeader()V
    .locals 0

    return-void
.end method

.method public final getBody()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/network/b;->mBodyParams:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, p0, Lcom/kwad/sdk/core/adlog/a;->aLd:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const-string v4, "__BEHAVIOR__"

    .line 15
    .line 16
    const-string v5, "__TYPE__"

    .line 17
    .line 18
    const-string v6, "__PR__"

    .line 19
    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    .line 22
    iget-object v0, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->showUrl:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 27
    .line 28
    iget-wide v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mBidEcpm:J

    .line 29
    .line 30
    const-wide/16 v7, 0x0

    .line 31
    .line 32
    cmp-long v3, v1, v7

    .line 33
    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    const-class v1, Lcom/kwad/sdk/service/a/h;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/kwad/sdk/service/a/h;

    .line 43
    .line 44
    invoke-interface {v1}, Lcom/kwad/sdk/service/a/h;->FO()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->aX(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 70
    .line 71
    iget-wide v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mBidEcpm:J

    .line 72
    .line 73
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 82
    .line 83
    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    .line 84
    .line 85
    iget v1, v1, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;->mVideoPlayerType:I

    .line 86
    .line 87
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 96
    .line 97
    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    .line 98
    .line 99
    iget v1, v1, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;->mVideoPlayerBehavior:I

    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a;->aLe:Lcom/kwad/sdk/core/adlog/c/a;

    .line 110
    .line 111
    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/core/adlog/a;->a(Ljava/lang/String;Lcom/kwad/sdk/core/adlog/c/a;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/a;->aLe:Lcom/kwad/sdk/core/adlog/c/a;

    .line 117
    .line 118
    invoke-direct {p0, v0, v1, v2}, Lcom/kwad/sdk/core/adlog/a;->a(Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c/a;)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :cond_1
    const/4 v3, 0x2

    .line 124
    if-ne v2, v3, :cond_2

    .line 125
    .line 126
    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    .line 127
    .line 128
    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->clickUrl:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/a;->aLe:Lcom/kwad/sdk/core/adlog/c/a;

    .line 131
    .line 132
    iget-object v2, v2, Lcom/kwad/sdk/core/adlog/c/a;->no:Lcom/kwad/sdk/utils/al$a;

    .line 133
    .line 134
    invoke-static {v1, v2}, Lcom/kwad/sdk/utils/al;->a(Ljava/lang/String;Lcom/kwad/sdk/utils/al$a;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/al;->av(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 143
    .line 144
    iget-wide v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mBidEcpm:J

    .line 145
    .line 146
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 155
    .line 156
    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    .line 157
    .line 158
    iget v1, v1, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;->mVideoPlayerType:I

    .line 159
    .line 160
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 169
    .line 170
    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    .line 171
    .line 172
    iget v1, v1, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;->mVideoPlayerBehavior:I

    .line 173
    .line 174
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a;->aLe:Lcom/kwad/sdk/core/adlog/c/a;

    .line 183
    .line 184
    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/core/adlog/a;->b(Ljava/lang/String;Lcom/kwad/sdk/core/adlog/c/a;)V

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 188
    .line 189
    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/a;->aLe:Lcom/kwad/sdk/core/adlog/c/a;

    .line 190
    .line 191
    invoke-direct {p0, v0, v1, v2}, Lcom/kwad/sdk/core/adlog/a;->a(Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c/a;)V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_2
    iget-object v0, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    .line 196
    .line 197
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->convUrl:Ljava/lang/String;

    .line 198
    .line 199
    const-string v1, "__ACTION__"

    .line 200
    .line 201
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 210
    .line 211
    iget-wide v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mBidEcpm:J

    .line 212
    .line 213
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 222
    .line 223
    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    .line 224
    .line 225
    iget v1, v1, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;->mVideoPlayerType:I

    .line 226
    .line 227
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 236
    .line 237
    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    .line 238
    .line 239
    iget v1, v1, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;->mVideoPlayerBehavior:I

    .line 240
    .line 241
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a;->aLe:Lcom/kwad/sdk/core/adlog/c/a;

    .line 250
    .line 251
    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/core/adlog/a;->c(Ljava/lang/String;Lcom/kwad/sdk/core/adlog/c/a;)V

    .line 252
    .line 253
    .line 254
    :goto_1
    invoke-direct {p0}, Lcom/kwad/sdk/core/adlog/a;->IR()V

    .line 255
    .line 256
    .line 257
    return-object v0
.end method
