.class public Lcom/beizi/ad/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/ad/a/a/e$a;
    }
.end annotation


# instance fields
.field private A:J

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:I

.field private F:F

.field private G:Landroid/animation/AnimatorSet;

.field private H:Ljava/lang/String;

.field private I:Z

.field private final J:Landroid/hardware/SensorEventListener;

.field private K:I

.field private L:Landroid/hardware/Sensor;

.field private M:F

.field private N:F

.field private O:[F

.field private P:F

.field private Q:F

.field private R:F

.field private S:F

.field private T:F

.field private U:F

.field private V:Z

.field private W:Z

.field private X:J

.field private Y:Z

.field private a:Landroid/content/Context;

.field private b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

.field private c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

.field private d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

.field private e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

.field private f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

.field private g:D

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/hardware/SensorManager;

.field private m:Landroid/hardware/Sensor;

.field private n:Lcom/beizi/ad/a/a/e$a;

.field private o:F

.field private p:F

.field private q:F

.field private r:I

.field private s:D

.field private t:D

.field private u:D

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x402399999999999aL    # 9.8

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lcom/beizi/ad/a/a/e;->g:D

    .line 10
    .line 11
    const/16 v0, -0x64

    .line 12
    .line 13
    iput v0, p0, Lcom/beizi/ad/a/a/e;->h:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/beizi/ad/a/a/e;->i:I

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    iput v2, p0, Lcom/beizi/ad/a/a/e;->j:I

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    iput v3, p0, Lcom/beizi/ad/a/a/e;->k:I

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    iput-object v3, p0, Lcom/beizi/ad/a/a/e;->n:Lcom/beizi/ad/a/a/e$a;

    .line 26
    .line 27
    int-to-float v4, v0

    .line 28
    iput v4, p0, Lcom/beizi/ad/a/a/e;->o:F

    .line 29
    .line 30
    int-to-float v4, v0

    .line 31
    iput v4, p0, Lcom/beizi/ad/a/a/e;->p:F

    .line 32
    .line 33
    int-to-float v0, v0

    .line 34
    iput v0, p0, Lcom/beizi/ad/a/a/e;->q:F

    .line 35
    .line 36
    iput v1, p0, Lcom/beizi/ad/a/a/e;->r:I

    .line 37
    .line 38
    iput v1, p0, Lcom/beizi/ad/a/a/e;->x:I

    .line 39
    .line 40
    iput v1, p0, Lcom/beizi/ad/a/a/e;->y:I

    .line 41
    .line 42
    iput-boolean v2, p0, Lcom/beizi/ad/a/a/e;->z:Z

    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/beizi/ad/a/a/e;->B:Z

    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/beizi/ad/a/a/e;->C:Z

    .line 47
    .line 48
    iput-object v3, p0, Lcom/beizi/ad/a/a/e;->D:Ljava/lang/String;

    .line 49
    .line 50
    const/16 v0, 0x50

    .line 51
    .line 52
    iput v0, p0, Lcom/beizi/ad/a/a/e;->E:I

    .line 53
    .line 54
    const/high16 v0, 0x41f00000    # 30.0f

    .line 55
    .line 56
    iput v0, p0, Lcom/beizi/ad/a/a/e;->F:F

    .line 57
    .line 58
    iput-boolean v1, p0, Lcom/beizi/ad/a/a/e;->I:Z

    .line 59
    .line 60
    new-instance v0, Lcom/beizi/ad/a/a/e$5;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/beizi/ad/a/a/e$5;-><init>(Lcom/beizi/ad/a/a/e;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/beizi/ad/a/a/e;->J:Landroid/hardware/SensorEventListener;

    .line 66
    .line 67
    const v0, 0x3089705f    # 1.0E-9f

    .line 68
    .line 69
    .line 70
    iput v0, p0, Lcom/beizi/ad/a/a/e;->N:F

    .line 71
    .line 72
    const/4 v0, 0x3

    .line 73
    new-array v0, v0, [F

    .line 74
    .line 75
    iput-object v0, p0, Lcom/beizi/ad/a/a/e;->O:[F

    .line 76
    .line 77
    :try_start_0
    iput-object p1, p0, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    .line 78
    .line 79
    iput-object p2, p0, Lcom/beizi/ad/a/a/e;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 80
    .line 81
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_0

    .line 86
    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v0, "beizi_cool_"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, p0, Lcom/beizi/ad/a/a/e;->D:Ljava/lang/String;

    .line 105
    .line 106
    :cond_0
    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getOrderData()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-direct {p0, p1, p4}, Lcom/beizi/ad/a/a/e;->a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_1

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    if-eqz p3, :cond_1

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iput-object p1, p0, Lcom/beizi/ad/a/a/e;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 127
    .line 128
    :cond_1
    iget-object p1, p0, Lcom/beizi/ad/a/a/e;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 129
    .line 130
    if-eqz p1, :cond_2

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getCoolShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iput-object p1, p0, Lcom/beizi/ad/a/a/e;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRegulatoryAngle()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    iput p1, p0, Lcom/beizi/ad/a/a/e;->K:I

    .line 143
    .line 144
    :cond_2
    iget-object p1, p0, Lcom/beizi/ad/a/a/e;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 145
    .line 146
    if-eqz p1, :cond_4

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iput-object p1, p0, Lcom/beizi/ad/a/a/e;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 153
    .line 154
    iget-object p1, p0, Lcom/beizi/ad/a/a/e;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iput-object p1, p0, Lcom/beizi/ad/a/a/e;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 161
    .line 162
    iget-object p1, p0, Lcom/beizi/ad/a/a/e;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getImageURL()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    if-eqz p1, :cond_3

    .line 169
    .line 170
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-lez p2, :cond_3

    .line 175
    .line 176
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    check-cast p1, Ljava/lang/String;

    .line 181
    .line 182
    iput-object p1, p0, Lcom/beizi/ad/a/a/e;->H:Ljava/lang/String;

    .line 183
    .line 184
    :cond_3
    iget-object p1, p0, Lcom/beizi/ad/a/a/e;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRegulatoryAngle()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    iput p1, p0, Lcom/beizi/ad/a/a/e;->K:I

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_4
    iget-object p1, p0, Lcom/beizi/ad/a/a/e;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 194
    .line 195
    if-eqz p1, :cond_5

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAliaseShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    iput-object p1, p0, Lcom/beizi/ad/a/a/e;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 202
    .line 203
    iget-object p1, p0, Lcom/beizi/ad/a/a/e;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    iput-object p1, p0, Lcom/beizi/ad/a/a/e;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 210
    .line 211
    iget-object p1, p0, Lcom/beizi/ad/a/a/e;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getImageURL()Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    if-eqz p1, :cond_5

    .line 218
    .line 219
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 220
    .line 221
    .line 222
    move-result p2

    .line 223
    if-lez p2, :cond_5

    .line 224
    .line 225
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Ljava/lang/String;

    .line 230
    .line 231
    iput-object p1, p0, Lcom/beizi/ad/a/a/e;->H:Ljava/lang/String;

    .line 232
    .line 233
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->f()Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-nez p1, :cond_6

    .line 238
    .line 239
    iput-boolean v1, p0, Lcom/beizi/ad/a/a/e;->I:Z

    .line 240
    .line 241
    return-void

    .line 242
    :cond_6
    iput-boolean v2, p0, Lcom/beizi/ad/a/a/e;->I:Z

    .line 243
    .line 244
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->i()V

    .line 245
    .line 246
    .line 247
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->o()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/beizi/ad/a/a/e;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .line 252
    .line 253
    goto :goto_1

    .line 254
    :catch_0
    move-exception p1

    .line 255
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 256
    .line 257
    .line 258
    :goto_1
    return-void
.end method

.method private a(FFF)D
    .locals 6

    float-to-double v0, p1

    .line 74
    :try_start_0
    iget-wide v2, p0, Lcom/beizi/ad/a/a/e;->g:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 75
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p1, p2

    iget-wide v4, p0, Lcom/beizi/ad/a/a/e;->g:D

    div-double/2addr p1, v4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    float-to-double p1, p3

    iget-wide v4, p0, Lcom/beizi/ad/a/a/e;->g:D

    div-double/2addr p1, v4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;

    .line 11
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private a(Landroid/hardware/SensorEvent;)V
    .locals 8

    const-string v0, "_"

    .line 77
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/beizi/ad/a/a/e;->A:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x64

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_5

    .line 78
    iget-boolean v1, p0, Lcom/beizi/ad/a/a/e;->z:Z

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 79
    :cond_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz p1, :cond_5

    .line 80
    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    goto/16 :goto_0

    .line 81
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/beizi/ad/a/a/e;->A:J

    const/4 v1, 0x0

    .line 82
    aget v2, p1, v1

    const/4 v3, 0x1

    .line 83
    aget v4, p1, v3

    const/4 v5, 0x2

    .line 84
    aget p1, p1, v5

    .line 85
    invoke-direct {p0, v2, v4, p1}, Lcom/beizi/ad/a/a/e;->a(FFF)D

    move-result-wide v4

    .line 86
    iget-wide v6, p0, Lcom/beizi/ad/a/a/e;->s:D

    cmpl-double p1, v4, v6

    if-lez p1, :cond_3

    .line 87
    iget p1, p0, Lcom/beizi/ad/a/a/e;->j:I

    iput p1, p0, Lcom/beizi/ad/a/a/e;->r:I

    .line 88
    :cond_3
    iget-wide v6, p0, Lcom/beizi/ad/a/a/e;->t:D

    cmpg-double p1, v4, v6

    if-gtz p1, :cond_4

    iget p1, p0, Lcom/beizi/ad/a/a/e;->r:I

    iget v2, p0, Lcom/beizi/ad/a/a/e;->j:I

    if-ne p1, v2, :cond_4

    .line 89
    iget p1, p0, Lcom/beizi/ad/a/a/e;->k:I

    iput p1, p0, Lcom/beizi/ad/a/a/e;->r:I

    .line 90
    iget p1, p0, Lcom/beizi/ad/a/a/e;->x:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/beizi/ad/a/a/e;->x:I

    .line 91
    :cond_4
    iget p1, p0, Lcom/beizi/ad/a/a/e;->v:I

    if-lez p1, :cond_6

    iget v2, p0, Lcom/beizi/ad/a/a/e;->x:I

    if-lt v2, p1, :cond_6

    .line 92
    iput-boolean v3, p0, Lcom/beizi/ad/a/a/e;->W:Z

    const-string p1, "ShakeUtil"

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " current: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%.4f"

    new-array v3, v3, [Ljava/lang/Object;

    .line 94
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", execute: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/beizi/ad/a/a/e;->x:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/beizi/ad/a/a/e;->v:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/beizi/ad/a/a/e;->w:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shake: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/beizi/ad/a/a/e;->s:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/beizi/ad/a/a/e;->t:D

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {p1, v0}, Lcom/beizi/ad/lance/a/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-boolean p1, p0, Lcom/beizi/ad/a/a/e;->W:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/beizi/ad/a/a/e;->V:Z

    if-eqz p1, :cond_6

    .line 97
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->r()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/lang/String;",
            "FF)V"
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p4, v0, v1

    const/4 p4, 0x1

    aput p5, v0, p4

    .line 67
    invoke-static {p1, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 68
    iget p3, p0, Lcom/beizi/ad/a/a/e;->E:I

    int-to-long p3, p3

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 69
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/a/a/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->j()V

    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/a/a/e;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/ad/a/a/e;->a(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic b(Lcom/beizi/ad/a/a/e;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/ad/a/a/e;->G:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private b(Landroid/hardware/SensorEvent;)V
    .locals 14

    const-string v0, "%.4f"

    if-eqz p1, :cond_f

    .line 49
    :try_start_0
    iget-boolean v1, p0, Lcom/beizi/ad/a/a/e;->Y:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 50
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/beizi/ad/a/a/e;->X:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x32

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    return-void

    .line 51
    :cond_1
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 52
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 53
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-eqz v2, :cond_e

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    goto/16 :goto_3

    .line 54
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/beizi/ad/a/a/e;->X:J

    .line 55
    iget v1, p0, Lcom/beizi/ad/a/a/e;->M:F

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    .line 56
    aget v5, v2, v4

    const/4 v6, 0x1

    .line 57
    aget v7, v2, v6

    const/4 v8, 0x2

    .line 58
    aget v2, v2, v8

    .line 59
    iget-wide v9, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v9, v9

    sub-float/2addr v9, v1

    iget v1, p0, Lcom/beizi/ad/a/a/e;->N:F

    mul-float v9, v9, v1

    .line 60
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->O:[F

    aget v10, v1, v4

    float-to-double v10, v10

    mul-float v5, v5, v9

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v5, v10

    aput v5, v1, v4

    .line 61
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->O:[F

    aget v5, v1, v6

    float-to-double v10, v5

    mul-float v7, v7, v9

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v5, v10

    aput v5, v1, v6

    .line 62
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->O:[F

    aget v5, v1, v8

    float-to-double v10, v5

    mul-float v2, v2, v9

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v2, v10

    aput v2, v1, v8

    .line 63
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->O:[F

    aget v2, v1, v4

    cmpl-float v5, v2, v3

    if-lez v5, :cond_3

    .line 64
    iget v5, p0, Lcom/beizi/ad/a/a/e;->S:F

    cmpl-float v5, v2, v5

    if-lez v5, :cond_4

    .line 65
    iput v2, p0, Lcom/beizi/ad/a/a/e;->S:F

    goto :goto_0

    .line 66
    :cond_3
    iget v5, p0, Lcom/beizi/ad/a/a/e;->P:F

    cmpg-float v5, v2, v5

    if-gez v5, :cond_4

    .line 67
    iput v2, p0, Lcom/beizi/ad/a/a/e;->P:F

    .line 68
    :cond_4
    :goto_0
    aget v2, v1, v6

    cmpl-float v5, v2, v3

    if-lez v5, :cond_5

    .line 69
    iget v5, p0, Lcom/beizi/ad/a/a/e;->T:F

    cmpl-float v5, v2, v5

    if-lez v5, :cond_6

    .line 70
    iput v2, p0, Lcom/beizi/ad/a/a/e;->T:F

    goto :goto_1

    .line 71
    :cond_5
    iget v5, p0, Lcom/beizi/ad/a/a/e;->Q:F

    cmpg-float v5, v2, v5

    if-gez v5, :cond_6

    .line 72
    iput v2, p0, Lcom/beizi/ad/a/a/e;->Q:F

    .line 73
    :cond_6
    :goto_1
    aget v1, v1, v8

    cmpl-float v2, v1, v3

    if-lez v2, :cond_7

    .line 74
    iget v2, p0, Lcom/beizi/ad/a/a/e;->U:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_8

    .line 75
    iput v1, p0, Lcom/beizi/ad/a/a/e;->U:F

    goto :goto_2

    .line 76
    :cond_7
    iget v2, p0, Lcom/beizi/ad/a/a/e;->R:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_8

    .line 77
    iput v1, p0, Lcom/beizi/ad/a/a/e;->R:F

    .line 78
    :cond_8
    :goto_2
    iget v1, p0, Lcom/beizi/ad/a/a/e;->P:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/beizi/ad/a/a/e;->K:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    iget v1, p0, Lcom/beizi/ad/a/a/e;->S:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/beizi/ad/a/a/e;->K:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_b

    :cond_9
    iget v1, p0, Lcom/beizi/ad/a/a/e;->Q:F

    .line 79
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/beizi/ad/a/a/e;->K:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    iget v1, p0, Lcom/beizi/ad/a/a/e;->T:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/beizi/ad/a/a/e;->K:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_b

    :cond_a
    iget v1, p0, Lcom/beizi/ad/a/a/e;->R:F

    .line 80
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/beizi/ad/a/a/e;->K:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    iget v1, p0, Lcom/beizi/ad/a/a/e;->U:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/beizi/ad/a/a/e;->K:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    :cond_b
    const-string v1, "ShakeUtil"

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotate  xMin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/beizi/ad/a/a/e;->P:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",xMax: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/beizi/ad/a/a/e;->S:F

    .line 82
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",yMin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/beizi/ad/a/a/e;->Q:F

    .line 83
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",yMax: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/beizi/ad/a/a/e;->T:F

    .line 84
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",zMin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/beizi/ad/a/a/e;->R:F

    .line 85
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",zMax: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/beizi/ad/a/a/e;->U:F

    .line 86
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v1, v0}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iput-boolean v6, p0, Lcom/beizi/ad/a/a/e;->V:Z

    .line 89
    :cond_c
    iget-boolean v0, p0, Lcom/beizi/ad/a/a/e;->W:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/beizi/ad/a/a/e;->V:Z

    if-eqz v0, :cond_d

    .line 90
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->r()V

    .line 91
    :cond_d
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float p1, v0

    iput p1, p0, Lcom/beizi/ad/a/a/e;->M:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_e
    :goto_3
    return-void

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_4
    return-void
.end method

.method static synthetic b(Lcom/beizi/ad/a/a/e;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/ad/a/a/e;->b(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method private c(Landroid/view/ViewGroup;)[I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "ShakeUtil"

    const-string v3, ";"

    const-string v4, "%"

    const/4 v5, 0x4

    new-array v5, v5, [I

    const/4 v9, 0x0

    if-eqz v0, :cond_14

    .line 2
    :try_start_0
    iget-object v10, v1, Lcom/beizi/ad/a/a/e;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    if-nez v10, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-virtual {v10}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getCenterX()Ljava/lang/String;

    move-result-object v10

    .line 4
    iget-object v11, v1, Lcom/beizi/ad/a/a/e;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    invoke-virtual {v11}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getCenterY()Ljava/lang/String;

    move-result-object v11

    .line 5
    iget-object v12, v1, Lcom/beizi/ad/a/a/e;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    invoke-virtual {v12}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getWidth()Ljava/lang/String;

    move-result-object v12

    .line 6
    iget-object v13, v1, Lcom/beizi/ad/a/a/e;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    invoke-virtual {v13}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getHeight()Ljava/lang/String;

    move-result-object v13

    .line 7
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, "10"

    const-string v6, "0"

    if-nez v14, :cond_1

    :try_start_1
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_1
    move-object v10, v15

    .line 8
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_3
    move-object v11, v15

    .line 9
    :cond_4
    invoke-virtual {v0, v9, v9}, Landroid/view/View;->measure(II)V

    .line 10
    iget-object v14, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    invoke-static {v14, v15}, Lcom/beizi/ad/internal/e/t;->b(Landroid/content/Context;F)I

    move-result v14

    .line 11
    iget-object v15, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v15, v7}, Lcom/beizi/ad/internal/e/t;->b(Landroid/content/Context;F)I

    move-result v7

    if-gtz v14, :cond_5

    .line 12
    iget-object v14, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    invoke-static {v14}, Lcom/beizi/ad/lance/a/q;->h(Landroid/content/Context;)I

    move-result v14

    .line 13
    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "position containerWidth:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ";containerHeight:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v2, v0}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "20"

    if-nez v0, :cond_6

    :try_start_2
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move-object v12, v8

    .line 17
    :cond_7
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move-object v13, v8

    .line 18
    :cond_9
    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 19
    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int v0, v0, v14

    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    .line 20
    :cond_a
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 21
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-virtual {v11, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 23
    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v11, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int v7, v7, v6

    div-int/lit8 v7, v7, 0x64

    goto :goto_1

    .line 24
    :cond_c
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 25
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    :cond_d
    const/4 v7, 0x0

    .line 26
    :goto_1
    invoke-virtual {v12, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v8, 0x14

    if-eqz v6, :cond_e

    .line 27
    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 28
    invoke-virtual {v12, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int v14, v14, v6

    div-int/lit8 v14, v14, 0x64

    goto :goto_2

    .line 29
    :cond_e
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 30
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_2

    :cond_f
    const/16 v14, 0x14

    .line 31
    :goto_2
    invoke-virtual {v13, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 32
    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v13, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int v4, v4, v14

    div-int/lit8 v8, v4, 0x64

    goto :goto_3

    .line 33
    :cond_10
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 34
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 35
    :cond_11
    :goto_3
    iget-object v4, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    int-to-float v6, v14

    invoke-static {v4, v6}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v4

    .line 36
    iget-object v6, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    int-to-float v8, v8

    invoke-static {v6, v8}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v6

    .line 37
    iget-object v8, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v8, v0}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v0

    .line 38
    iget-object v8, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    int-to-float v7, v7

    invoke-static {v8, v7}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v7

    aput v4, v5, v9

    const/4 v4, 0x1

    aput v6, v5, v4

    if-lez v0, :cond_12

    const/4 v4, 0x2

    aput v0, v5, v4

    :cond_12
    if-lez v7, :cond_13

    const/4 v0, 0x3

    aput v7, v5, v0

    .line 39
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position widthInt:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v5, v9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";heightInt:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v4, v5, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";centerX:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget v4, v5, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";centerY:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    aget v4, v5, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 40
    :cond_14
    :goto_4
    iget-object v0, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v0, v2}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v0

    .line 41
    iget-object v2, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v2

    aput v0, v5, v9

    const/4 v3, 0x1

    aput v0, v5, v3

    const/4 v0, 0x2

    aput v2, v5, v0

    const/4 v0, 0x3

    aput v2, v5, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-object v5
.end method

.method private d(Landroid/view/ViewGroup;)[I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "ShakeUtil"

    const-string v3, ";"

    const-string v4, "%"

    const/4 v5, 0x4

    new-array v5, v5, [I

    const/4 v9, 0x0

    if-eqz v0, :cond_18

    .line 15
    :try_start_0
    iget-object v10, v1, Lcom/beizi/ad/a/a/e;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    if-nez v10, :cond_0

    goto/16 :goto_4

    .line 16
    :cond_0
    invoke-virtual {v10}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getCenterX()Ljava/lang/String;

    move-result-object v10

    .line 17
    iget-object v11, v1, Lcom/beizi/ad/a/a/e;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    invoke-virtual {v11}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getCenterY()Ljava/lang/String;

    move-result-object v11

    .line 18
    iget-object v12, v1, Lcom/beizi/ad/a/a/e;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    invoke-virtual {v12}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getWidth()Ljava/lang/String;

    move-result-object v12

    .line 19
    iget-object v13, v1, Lcom/beizi/ad/a/a/e;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    invoke-virtual {v13}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getHeight()Ljava/lang/String;

    move-result-object v13

    .line 20
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, "0"

    if-nez v14, :cond_1

    :try_start_1
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_1
    move-object v10, v15

    .line 21
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_3
    move-object v11, v15

    .line 22
    :cond_4
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_5
    const-string v12, "120"

    .line 23
    :cond_6
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    :cond_7
    const-string v13, "36"

    .line 24
    :cond_8
    invoke-virtual {v0, v9, v9}, Landroid/view/View;->measure(II)V

    .line 25
    iget-object v14, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v14, v6}, Lcom/beizi/ad/internal/e/t;->b(Landroid/content/Context;F)I

    move-result v6

    .line 26
    iget-object v14, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v14, v7}, Lcom/beizi/ad/internal/e/t;->b(Landroid/content/Context;F)I

    move-result v7

    if-gtz v6, :cond_9

    .line 27
    iget-object v6, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/beizi/ad/lance/a/q;->h(Landroid/content/Context;)I

    move-result v6

    .line 28
    :cond_9
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "position containerWidth:"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ";containerHeight:"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v2, v0}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "20"

    if-nez v0, :cond_a

    :try_start_2
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    move-object v12, v8

    .line 32
    :cond_b
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    move-object v13, v8

    .line 33
    :cond_d
    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 34
    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int v0, v0, v6

    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    .line 35
    :cond_e
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 36
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_f
    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-virtual {v11, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 38
    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v11, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int v7, v7, v8

    div-int/lit8 v7, v7, 0x64

    goto :goto_1

    .line 39
    :cond_10
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 40
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    :cond_11
    const/4 v7, 0x0

    .line 41
    :goto_1
    invoke-virtual {v12, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    const/16 v14, 0x14

    if-eqz v8, :cond_12

    .line 42
    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 43
    invoke-virtual {v12, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int v6, v6, v8

    div-int/lit8 v6, v6, 0x64

    goto :goto_2

    .line 44
    :cond_12
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 45
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    :cond_13
    const/16 v6, 0x14

    .line 46
    :goto_2
    invoke-virtual {v13, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 47
    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v13, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int v4, v4, v6

    div-int/lit8 v14, v4, 0x64

    goto :goto_3

    .line 48
    :cond_14
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 49
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 50
    :cond_15
    :goto_3
    iget-object v4, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    int-to-float v6, v6

    invoke-static {v4, v6}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v4

    .line 51
    iget-object v6, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    int-to-float v8, v14

    invoke-static {v6, v8}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v6

    .line 52
    iget-object v8, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v8, v0}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v0

    .line 53
    iget-object v8, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    int-to-float v7, v7

    invoke-static {v8, v7}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v7

    aput v4, v5, v9

    const/4 v4, 0x1

    aput v6, v5, v4

    if-lez v0, :cond_16

    const/4 v4, 0x2

    aput v0, v5, v4

    :cond_16
    if-lez v7, :cond_17

    const/4 v0, 0x3

    aput v7, v5, v0

    .line 54
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position widthInt:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v5, v9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";heightInt:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v4, v5, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";centerX:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget v4, v5, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";centerY:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    aget v4, v5, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 55
    :cond_18
    :goto_4
    iget-object v0, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v0, v2}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v0

    .line 56
    iget-object v2, v1, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v2, v3}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v2

    aput v0, v5, v9

    const/4 v0, 0x1

    aput v2, v5, v0

    const/4 v0, 0x2

    aput v9, v5, v0

    const/4 v0, 0x3

    aput v9, v5, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-object v5
.end method

.method private f()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeStartAmplitude()D

    .line 9
    .line 10
    .line 11
    move-result-wide v4

    .line 12
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeEndAmplitude()D

    .line 15
    .line 16
    .line 17
    move-result-wide v6

    .line 18
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeStartAmplitude()D

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeEndAmplitude()D

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeCount()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-wide v4, v1

    .line 47
    move-wide v6, v4

    .line 48
    const/4 v0, 0x0

    .line 49
    :goto_0
    cmpl-double v8, v4, v1

    .line 50
    .line 51
    if-lez v8, :cond_2

    .line 52
    .line 53
    cmpl-double v4, v6, v1

    .line 54
    .line 55
    if-lez v4, :cond_2

    .line 56
    .line 57
    if-lez v0, :cond_2

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    return v0

    .line 61
    :cond_2
    return v3
.end method

.method private g()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getShakeCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-gtz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getRotatCount()I

    .line 16
    .line 17
    .line 18
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    if-lez v1, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_2
    return v0
.end method

.method private h()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    if-eqz v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getPassivationTime()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeCount()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-gtz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getRotatCount()I

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-lez v1, :cond_2

    .line 30
    .line 31
    :cond_1
    const/4 v0, 0x1

    .line 32
    return v0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_2
    return v0
.end method

.method private i()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->q()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->n()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->m()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-boolean v1, p0, Lcom/beizi/ad/a/a/e;->B:Z

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->g()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/beizi/ad/a/a/e;->B:Z

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iput-boolean v1, p0, Lcom/beizi/ad/a/a/e;->B:Z

    .line 32
    .line 33
    :goto_1
    iget-boolean v0, p0, Lcom/beizi/ad/a/a/e;->B:Z

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->l()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->h()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->k()V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :goto_2
    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "ShakeUtil"

    .line 2
    .line 3
    const-string v1, "setShakeSensitivityNormal"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->q()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/beizi/ad/a/a/e;->b(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeStartAmplitude()D

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/beizi/ad/a/a/e;->a(D)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeEndAmplitude()D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/beizi/ad/a/a/e;->b(D)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRotatAmplitude()D

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/beizi/ad/a/a/e;->c(D)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRotatCount()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/beizi/ad/a/a/e;->c(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeCount()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/beizi/ad/a/a/e;->b(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeStartAmplitude()D

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/beizi/ad/a/a/e;->a(D)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeEndAmplitude()D

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/beizi/ad/a/a/e;->b(D)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRotatAmplitude()D

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    invoke-virtual {p0, v0, v1}, Lcom/beizi/ad/a/a/e;->c(D)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRotatCount()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/beizi/ad/a/a/e;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    :cond_1
    :goto_0
    return-void
.end method

.method private k()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "ShakeUtil"

    .line 7
    .line 8
    const-string v1, "setShakeSensitivityAliase"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/beizi/ad/a/a/e;->b(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeStartAmplitude()D

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/beizi/ad/a/a/e;->a(D)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeEndAmplitude()D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/beizi/ad/a/a/e;->b(D)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getRotatAmplitude()D

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/beizi/ad/a/a/e;->c(D)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getRotatCount()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/beizi/ad/a/a/e;->c(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getPassivationTime()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/beizi/ad/a/a/e;->a(I)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    new-instance v1, Landroid/os/Handler;

    .line 69
    .line 70
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v2, Lcom/beizi/ad/a/a/e$1;

    .line 74
    .line 75
    invoke-direct {v2, p0}, Lcom/beizi/ad/a/a/e$1;-><init>(Lcom/beizi/ad/a/a/e;)V

    .line 76
    .line 77
    .line 78
    int-to-long v3, v0

    .line 79
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "ShakeUtil"

    .line 7
    .line 8
    const-string v1, "setShakeSensitivityCool"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getShakeCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/beizi/ad/a/a/e;->b(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getShakeStartAmplitude()D

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/beizi/ad/a/a/e;->a(D)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getShakeEndAmplitude()D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/beizi/ad/a/a/e;->b(D)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getRotatAmplitude()D

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/beizi/ad/a/a/e;->c(D)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getRotatCount()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/beizi/ad/a/a/e;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method private m()Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->D:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getCoolTime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iget-object v3, p0, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/beizi/ad/a/a/e;->D:Ljava/lang/String;

    .line 25
    .line 26
    const-wide/16 v5, 0x0

    .line 27
    .line 28
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-static {v3, v4, v7}, Lcom/beizi/ad/internal/e/l;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/Long;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    cmp-long v7, v3, v5

    .line 43
    .line 44
    if-eqz v7, :cond_2

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    sub-long/2addr v5, v3

    .line 51
    cmp-long v3, v5, v1

    .line 52
    .line 53
    if-gez v3, :cond_2

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    return v0
.end method

.method private n()Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getUserProtectTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iget-object v3, p0, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v3}, Lcom/beizi/ad/lance/a/q;->a(Landroid/content/Context;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    sub-long/2addr v5, v3

    .line 22
    cmp-long v3, v5, v1

    .line 23
    .line 24
    if-gez v3, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return v0
.end method

.method private o()V
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "ShakeUtil"

    .line 2
    .line 3
    const-string v1, "registerShakeListener"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/beizi/ad/a/a/e;->C:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->q()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->l:Landroid/hardware/SensorManager;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "sensor"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/hardware/SensorManager;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/beizi/ad/a/a/e;->l:Landroid/hardware/SensorManager;

    .line 33
    .line 34
    :cond_0
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->m:Landroid/hardware/Sensor;

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->l:Landroid/hardware/SensorManager;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/beizi/ad/a/a/e;->m:Landroid/hardware/Sensor;

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->l:Landroid/hardware/SensorManager;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->J:Landroid/hardware/SensorEventListener;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/beizi/ad/a/a/e;->m:Landroid/hardware/Sensor;

    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "ShakeUtil"

    .line 2
    .line 3
    const-string v1, "unRegisterShakeListener"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/beizi/ad/a/a/e;->C:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->l:Landroid/hardware/SensorManager;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->J:Landroid/hardware/SensorEventListener;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/beizi/ad/a/a/e;->x:I

    .line 3
    .line 4
    iput v0, p0, Lcom/beizi/ad/a/a/e;->y:I

    .line 5
    .line 6
    iget v1, p0, Lcom/beizi/ad/a/a/e;->h:I

    .line 7
    .line 8
    int-to-float v2, v1

    .line 9
    iput v2, p0, Lcom/beizi/ad/a/a/e;->o:F

    .line 10
    .line 11
    int-to-float v2, v1

    .line 12
    iput v2, p0, Lcom/beizi/ad/a/a/e;->p:F

    .line 13
    .line 14
    int-to-float v1, v1

    .line 15
    iput v1, p0, Lcom/beizi/ad/a/a/e;->q:F

    .line 16
    .line 17
    iget v1, p0, Lcom/beizi/ad/a/a/e;->i:I

    .line 18
    .line 19
    iput v1, p0, Lcom/beizi/ad/a/a/e;->r:I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/beizi/ad/a/a/e;->P:F

    .line 23
    .line 24
    iput v1, p0, Lcom/beizi/ad/a/a/e;->Q:F

    .line 25
    .line 26
    iput v1, p0, Lcom/beizi/ad/a/a/e;->R:F

    .line 27
    .line 28
    iput v1, p0, Lcom/beizi/ad/a/a/e;->S:F

    .line 29
    .line 30
    iput v1, p0, Lcom/beizi/ad/a/a/e;->T:F

    .line 31
    .line 32
    iput v1, p0, Lcom/beizi/ad/a/a/e;->U:F

    .line 33
    .line 34
    iput v1, p0, Lcom/beizi/ad/a/a/e;->M:F

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/beizi/ad/a/a/e;->W:Z

    .line 37
    .line 38
    iget v1, p0, Lcom/beizi/ad/a/a/e;->K:I

    .line 39
    .line 40
    if-lez v1, :cond_0

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/beizi/ad/a/a/e;->V:Z

    .line 43
    .line 44
    :cond_0
    iput-boolean v0, p0, Lcom/beizi/ad/a/a/e;->Y:Z

    .line 45
    .line 46
    return-void
.end method

.method private declared-synchronized r()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->n:Lcom/beizi/ad/a/a/e$a;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/beizi/ad/a/a/e;->z:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/ad/a/a/e;->Y:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    :try_start_1
    iput-boolean v0, p0, Lcom/beizi/ad/a/a/e;->Y:Z

    .line 19
    .line 20
    const-string v0, "ShakeUtil"

    .line 21
    .line 22
    const-string v1, "callBackResult"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/beizi/ad/a/a/e;->b()V

    .line 28
    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/beizi/ad/a/a/e;->B:Z

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->D:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->D:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v0, v1, v2}, Lcom/beizi/ad/internal/e/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->n:Lcom/beizi/ad/a/a/e$a;

    .line 58
    .line 59
    invoke-interface {v0}, Lcom/beizi/ad/a/a/e$a;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    :goto_0
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    .line 71
    :goto_1
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :goto_2
    monitor-exit p0

    .line 74
    throw v0
.end method

.method private s()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->l:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/beizi/ad/a/a/e;->L:Landroid/hardware/Sensor;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/beizi/ad/a/a/e;->l:Landroid/hardware/SensorManager;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/beizi/ad/a/a/e;->J:Landroid/hardware/SensorEventListener;

    .line 18
    .line 19
    invoke-virtual {v2, v3, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-boolean v1, p0, Lcom/beizi/ad/a/a/e;->V:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 4

    .line 71
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    int-to-double v2, p1

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method public a()V
    .locals 1

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/ad/a/a/e;->C:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/ad/a/a/e;->I:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/beizi/ad/a/a/e;->z:Z

    .line 6
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->i()V

    .line 7
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->o()V

    .line 8
    invoke-virtual {p0}, Lcom/beizi/ad/a/a/e;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public a(D)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/beizi/ad/a/a/e;->s:D

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 10

    if-eqz p1, :cond_d

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/beizi/ad/a/a/e;->I:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 14
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    sget v2, Lcom/beizi/fusion/R$mipmap;->beizi_interaction_icon_shake:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    iget-object v2, p0, Lcom/beizi/ad/a/a/e;->H:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 18
    iget-object v2, p0, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    move-result-object v2

    iget-object v3, p0, Lcom/beizi/ad/a/a/e;->H:Ljava/lang/String;

    new-instance v4, Lcom/beizi/ad/a/a/e$2;

    invoke-direct {v4, p0, v0}, Lcom/beizi/ad/a/a/e$2;-><init>(Lcom/beizi/ad/a/a/e;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3, v4}, Lcom/beizi/ad/internal/e/h;->b(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V

    .line 19
    :cond_1
    invoke-direct {p0, p1}, Lcom/beizi/ad/a/a/e;->c(Landroid/view/ViewGroup;)[I

    move-result-object v2

    .line 20
    instance-of v3, p1, Landroid/widget/RelativeLayout;

    const/16 v4, 0x11

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, -0x2

    const/4 v9, -0x1

    if-eqz v3, :cond_4

    .line 21
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 22
    aget v1, v2, v1

    if-lez v1, :cond_2

    .line 23
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 24
    :cond_2
    aget v1, v2, v7

    if-lez v1, :cond_3

    .line 25
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 26
    :cond_3
    aget v1, v2, v6

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 27
    aget v1, v2, v5

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 28
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 29
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 30
    :cond_4
    instance-of v3, p1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_7

    .line 31
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 32
    aget v1, v2, v1

    if-lez v1, :cond_5

    .line 33
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 34
    :cond_5
    aget v1, v2, v7

    if-lez v1, :cond_6

    .line 35
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 36
    :cond_6
    aget v1, v2, v6

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 37
    aget v1, v2, v5

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 38
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 39
    :cond_7
    instance-of v3, p1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_a

    .line 40
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41880000    # 17.0f

    invoke-direct {v3, v9, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 41
    aget v1, v2, v1

    if-lez v1, :cond_8

    .line 42
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 43
    :cond_8
    aget v1, v2, v7

    if-lez v1, :cond_9

    .line 44
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 45
    :cond_9
    aget v1, v2, v6

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 46
    aget v1, v2, v5

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 47
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 48
    :cond_a
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 49
    aget v1, v2, v1

    if-lez v1, :cond_b

    .line 50
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51
    :cond_b
    aget v1, v2, v7

    if-lez v1, :cond_c

    .line 52
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 53
    :cond_c
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    :goto_0
    invoke-virtual {p0, v0}, Lcom/beizi/ad/a/a/e;->a(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_1
    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 7

    .line 56
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "rotation"

    const/4 v4, 0x0

    .line 57
    iget v5, p0, Lcom/beizi/ad/a/a/e;->F:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/e;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotation"

    .line 58
    iget v4, p0, Lcom/beizi/ad/a/a/e;->F:F

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/e;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotation"

    const/4 v4, 0x0

    .line 59
    iget v0, p0, Lcom/beizi/ad/a/a/e;->F:F

    neg-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/e;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotation"

    .line 60
    iget v0, p0, Lcom/beizi/ad/a/a/e;->F:F

    neg-float v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/e;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    .line 61
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 62
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/beizi/ad/a/a/e;->G:Landroid/animation/AnimatorSet;

    .line 63
    new-instance v0, Lcom/beizi/ad/a/a/e$4;

    invoke-direct {v0, p0}, Lcom/beizi/ad/a/a/e$4;-><init>(Lcom/beizi/ad/a/a/e;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 64
    iget-object p1, p0, Lcom/beizi/ad/a/a/e;->G:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 65
    iget-object p1, p0, Lcom/beizi/ad/a/a/e;->G:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/beizi/ad/a/a/e$a;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/beizi/ad/a/a/e;->n:Lcom/beizi/ad/a/a/e$a;

    return-void
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/ad/a/a/e;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    return-void
.end method

.method public b(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/beizi/ad/a/a/e;->I:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    sget v3, Lcom/beizi/fusion/R$drawable;->beizi_icon_shake_native:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object v3, p0, Lcom/beizi/ad/a/a/e;->H:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 12
    iget-object v3, p0, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    move-result-object v3

    iget-object v4, p0, Lcom/beizi/ad/a/a/e;->H:Ljava/lang/String;

    new-instance v5, Lcom/beizi/ad/a/a/e$3;

    invoke-direct {v5, p0, v1}, Lcom/beizi/ad/a/a/e$3;-><init>(Lcom/beizi/ad/a/a/e;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4, v5}, Lcom/beizi/ad/internal/e/h;->b(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V

    .line 13
    :cond_1
    invoke-direct {p0, p1}, Lcom/beizi/ad/a/a/e;->d(Landroid/view/ViewGroup;)[I

    move-result-object v3

    .line 14
    instance-of v4, p1, Landroid/widget/RelativeLayout;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x53

    const/4 v8, 0x1

    const/4 v9, -0x2

    const/4 v10, -0x1

    if-eqz v4, :cond_4

    .line 15
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16
    aget v2, v3, v2

    if-lez v2, :cond_2

    .line 17
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 18
    :cond_2
    aget v2, v3, v8

    if-lez v2, :cond_3

    .line 19
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 20
    :cond_3
    aget v2, v3, v6

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 21
    aget v2, v3, v5

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 22
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23
    invoke-virtual {p1, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 24
    :cond_4
    instance-of v4, p1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_7

    .line 25
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v10, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 26
    aget v2, v3, v2

    if-lez v2, :cond_5

    .line 27
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 28
    :cond_5
    aget v2, v3, v8

    if-lez v2, :cond_6

    .line 29
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 30
    :cond_6
    invoke-virtual {p1, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 31
    :cond_7
    instance-of v4, p1, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_a

    .line 32
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42a60000    # 83.0f

    invoke-direct {v4, v10, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 33
    aget v2, v3, v2

    if-lez v2, :cond_8

    .line 34
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 35
    :cond_8
    aget v2, v3, v8

    if-lez v2, :cond_9

    .line 36
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 37
    :cond_9
    aget v2, v3, v6

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 38
    aget v2, v3, v5

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 39
    invoke-virtual {p1, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 40
    :cond_a
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v10, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 41
    aget v2, v3, v2

    if-lez v2, :cond_b

    .line 42
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 43
    :cond_b
    aget v2, v3, v8

    if-lez v2, :cond_c

    .line 44
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    :cond_c
    invoke-virtual {p1, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_1
    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/beizi/ad/a/a/e;->z:Z

    .line 4
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->p()V

    .line 5
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(D)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/beizi/ad/a/a/e;->t:D

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/beizi/ad/a/a/e;->v:I

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/a/a/e;->H:Ljava/lang/String;

    return-object v0
.end method

.method public c(D)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/beizi/ad/a/a/e;->u:D

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/beizi/ad/a/a/e;->w:I

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->p()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/beizi/ad/a/a/e;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 3
    iput-object v0, p0, Lcom/beizi/ad/a/a/e;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 4
    iput-object v0, p0, Lcom/beizi/ad/a/a/e;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 5
    iput-object v0, p0, Lcom/beizi/ad/a/a/e;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;

    .line 6
    iput-object v0, p0, Lcom/beizi/ad/a/a/e;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    .line 7
    iput-object v0, p0, Lcom/beizi/ad/a/a/e;->a:Landroid/content/Context;

    .line 8
    iput-object v0, p0, Lcom/beizi/ad/a/a/e;->l:Landroid/hardware/SensorManager;

    .line 9
    iput-object v0, p0, Lcom/beizi/ad/a/a/e;->m:Landroid/hardware/Sensor;

    .line 10
    iput-object v0, p0, Lcom/beizi/ad/a/a/e;->n:Lcom/beizi/ad/a/a/e$a;

    .line 11
    iget-object v1, p0, Lcom/beizi/ad/a/a/e;->G:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 13
    :cond_0
    iput-object v0, p0, Lcom/beizi/ad/a/a/e;->G:Landroid/animation/AnimatorSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/ad/a/a/e;->K:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/beizi/ad/a/a/e;->s()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/beizi/ad/a/a/e;->V:Z

    .line 11
    .line 12
    :goto_0
    return-void
.end method
