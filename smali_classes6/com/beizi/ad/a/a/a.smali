.class public Lcom/beizi/ad/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/ad/a/a/a$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "a"

.field private static q:Landroid/hardware/SensorManager;


# instance fields
.field private A:F

.field private B:Lcom/beizi/ad/a/a/a$a;

.field private C:Z

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:I

.field private G:F

.field private H:F

.field private I:F

.field private J:Landroid/animation/AnimatorSet;

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:F

.field private N:F

.field private O:F

.field private P:F

.field private Q:F

.field private R:F

.field private S:Landroid/hardware/SensorEventListener;

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

.field private j:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

.field private k:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

.field private l:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

.field private m:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

.field private n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

.field private o:F

.field private p:[F

.field private r:Landroid/hardware/Sensor;

.field private s:D

.field private t:D

.field private u:D

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x3089705f    # 1.0E-9f

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/beizi/ad/a/a/a;->o:F

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [F

    .line 11
    .line 12
    iput-object v0, p0, Lcom/beizi/ad/a/a/a;->p:[F

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/beizi/ad/a/a/a;->s:D

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/beizi/ad/a/a/a;->t:D

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/beizi/ad/a/a/a;->u:D

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/beizi/ad/a/a/a;->y:Z

    .line 24
    .line 25
    iput v0, p0, Lcom/beizi/ad/a/a/a;->z:I

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/beizi/ad/a/a/a;->C:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/beizi/ad/a/a/a;->D:Z

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    iput-object v2, p0, Lcom/beizi/ad/a/a/a;->E:Ljava/lang/String;

    .line 34
    .line 35
    const-string v2, "x"

    .line 36
    .line 37
    iput-object v2, p0, Lcom/beizi/ad/a/a/a;->a:Ljava/lang/String;

    .line 38
    .line 39
    const-string v2, "y"

    .line 40
    .line 41
    iput-object v2, p0, Lcom/beizi/ad/a/a/a;->b:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "z"

    .line 44
    .line 45
    iput-object v2, p0, Lcom/beizi/ad/a/a/a;->c:Ljava/lang/String;

    .line 46
    .line 47
    const-string v2, "0"

    .line 48
    .line 49
    iput-object v2, p0, Lcom/beizi/ad/a/a/a;->d:Ljava/lang/String;

    .line 50
    .line 51
    const-string v2, "1"

    .line 52
    .line 53
    iput-object v2, p0, Lcom/beizi/ad/a/a/a;->e:Ljava/lang/String;

    .line 54
    .line 55
    const-string v2, "2"

    .line 56
    .line 57
    iput-object v2, p0, Lcom/beizi/ad/a/a/a;->f:Ljava/lang/String;

    .line 58
    .line 59
    const/16 v2, 0x15e

    .line 60
    .line 61
    iput v2, p0, Lcom/beizi/ad/a/a/a;->F:I

    .line 62
    .line 63
    const/high16 v2, 0x42700000    # 60.0f

    .line 64
    .line 65
    iput v2, p0, Lcom/beizi/ad/a/a/a;->G:F

    .line 66
    .line 67
    iput v2, p0, Lcom/beizi/ad/a/a/a;->H:F

    .line 68
    .line 69
    const/high16 v2, 0x41f00000    # 30.0f

    .line 70
    .line 71
    iput v2, p0, Lcom/beizi/ad/a/a/a;->I:F

    .line 72
    .line 73
    iput-boolean v0, p0, Lcom/beizi/ad/a/a/a;->K:Z

    .line 74
    .line 75
    new-instance v2, Lcom/beizi/ad/a/a/a$4;

    .line 76
    .line 77
    invoke-direct {v2, p0}, Lcom/beizi/ad/a/a/a$4;-><init>(Lcom/beizi/ad/a/a/a;)V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Lcom/beizi/ad/a/a/a;->S:Landroid/hardware/SensorEventListener;

    .line 81
    .line 82
    iput-object p1, p0, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

    .line 83
    .line 84
    iput-object p2, p0, Lcom/beizi/ad/a/a/a;->i:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 85
    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string p2, "beizi_cool_"

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, Lcom/beizi/ad/a/a/a;->E:Ljava/lang/String;

    .line 104
    .line 105
    iget-object p1, p0, Lcom/beizi/ad/a/a/a;->i:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;->getOrderData()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {p0, p1, p4}, Lcom/beizi/ad/a/a/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataEulerAngleViewBean;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_0

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataEulerAngleViewBean;->getEulerAngleRule()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    if-eqz p2, :cond_0

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataEulerAngleViewBean;->getEulerAngleRule()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Lcom/beizi/ad/a/a/a;->j:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 128
    .line 129
    :cond_0
    iget-object p1, p0, Lcom/beizi/ad/a/a/a;->i:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 130
    .line 131
    if-eqz p1, :cond_1

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;->getCoolRule()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iput-object p1, p0, Lcom/beizi/ad/a/a/a;->m:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 138
    .line 139
    :cond_1
    iget-object p1, p0, Lcom/beizi/ad/a/a/a;->j:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 140
    .line 141
    if-eqz p1, :cond_2

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;->getNomalRule()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iput-object p1, p0, Lcom/beizi/ad/a/a/a;->l:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 148
    .line 149
    iget-object p1, p0, Lcom/beizi/ad/a/a/a;->j:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;->getRender()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Lcom/beizi/ad/a/a/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_2
    iget-object p1, p0, Lcom/beizi/ad/a/a/a;->i:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 159
    .line 160
    if-eqz p1, :cond_3

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;->getNomalRule()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iput-object p1, p0, Lcom/beizi/ad/a/a/a;->l:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 167
    .line 168
    iget-object p1, p0, Lcom/beizi/ad/a/a/a;->i:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;->getRender()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iput-object p1, p0, Lcom/beizi/ad/a/a/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    .line 175
    .line 176
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/beizi/ad/a/a/a;->e()Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-nez p1, :cond_4

    .line 181
    .line 182
    iput-boolean v0, p0, Lcom/beizi/ad/a/a/a;->K:Z

    .line 183
    .line 184
    return-void

    .line 185
    :cond_4
    iput-boolean v1, p0, Lcom/beizi/ad/a/a/a;->K:Z

    .line 186
    .line 187
    invoke-direct {p0}, Lcom/beizi/ad/a/a/a;->f()V

    .line 188
    .line 189
    .line 190
    invoke-direct {p0}, Lcom/beizi/ad/a/a/a;->l()V

    .line 191
    .line 192
    .line 193
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/a/a/a;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/beizi/ad/a/a/a;->s:D

    return-wide p1
.end method

.method static synthetic a(Lcom/beizi/ad/a/a/a;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/ad/a/a/a;->A:F

    return p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataEulerAngleViewBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataEulerAngleViewBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataEulerAngleViewBean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataEulerAngleViewBean;

    .line 6
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataEulerAngleViewBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private a(Landroid/hardware/SensorEvent;)V
    .locals 14

    const-string v0, "%.4f"

    if-eqz p1, :cond_a

    .line 109
    :try_start_0
    iget-boolean v1, p0, Lcom/beizi/ad/a/a/a;->C:Z

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 110
    :cond_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 111
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 112
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-eqz v2, :cond_9

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    goto/16 :goto_3

    .line 113
    :cond_1
    iget v1, p0, Lcom/beizi/ad/a/a/a;->A:F

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    .line 114
    aget v5, v2, v4

    const/4 v6, 0x1

    .line 115
    aget v7, v2, v6

    const/4 v8, 0x2

    .line 116
    aget v2, v2, v8

    .line 117
    iget-wide v9, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v9, v9

    sub-float/2addr v9, v1

    iget v1, p0, Lcom/beizi/ad/a/a/a;->o:F

    mul-float v9, v9, v1

    .line 118
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->p:[F

    aget v10, v1, v4

    float-to-double v10, v10

    mul-float v5, v5, v9

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v5, v10

    aput v5, v1, v4

    .line 119
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->p:[F

    aget v5, v1, v6

    float-to-double v10, v5

    mul-float v7, v7, v9

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v5, v10

    aput v5, v1, v6

    .line 120
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->p:[F

    aget v5, v1, v8

    float-to-double v10, v5

    mul-float v2, v2, v9

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v2, v10

    aput v2, v1, v8

    .line 121
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->p:[F

    aget v2, v1, v4

    cmpl-float v5, v2, v3

    if-lez v5, :cond_2

    .line 122
    iget v5, p0, Lcom/beizi/ad/a/a/a;->P:F

    cmpl-float v5, v2, v5

    if-lez v5, :cond_3

    .line 123
    iput v2, p0, Lcom/beizi/ad/a/a/a;->P:F

    goto :goto_0

    .line 124
    :cond_2
    iget v5, p0, Lcom/beizi/ad/a/a/a;->M:F

    cmpg-float v5, v2, v5

    if-gez v5, :cond_3

    .line 125
    iput v2, p0, Lcom/beizi/ad/a/a/a;->M:F

    .line 126
    :cond_3
    :goto_0
    aget v2, v1, v6

    cmpl-float v5, v2, v3

    if-lez v5, :cond_4

    .line 127
    iget v5, p0, Lcom/beizi/ad/a/a/a;->Q:F

    cmpl-float v5, v2, v5

    if-lez v5, :cond_5

    .line 128
    iput v2, p0, Lcom/beizi/ad/a/a/a;->Q:F

    goto :goto_1

    .line 129
    :cond_4
    iget v5, p0, Lcom/beizi/ad/a/a/a;->N:F

    cmpg-float v5, v2, v5

    if-gez v5, :cond_5

    .line 130
    iput v2, p0, Lcom/beizi/ad/a/a/a;->N:F

    .line 131
    :cond_5
    :goto_1
    aget v1, v1, v8

    cmpl-float v2, v1, v3

    if-lez v2, :cond_6

    .line 132
    iget v2, p0, Lcom/beizi/ad/a/a/a;->R:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    .line 133
    iput v1, p0, Lcom/beizi/ad/a/a/a;->R:F

    goto :goto_2

    .line 134
    :cond_6
    iget v2, p0, Lcom/beizi/ad/a/a/a;->O:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_7

    .line 135
    iput v1, p0, Lcom/beizi/ad/a/a/a;->O:F

    .line 136
    :cond_7
    :goto_2
    sget-object v1, Lcom/beizi/ad/a/a/a;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotate  x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/beizi/ad/a/a/a;->p:[F

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/beizi/ad/a/a/a;->p:[F

    aget v5, v5, v6

    .line 137
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",z: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/beizi/ad/a/a/a;->p:[F

    aget v5, v5, v8

    .line 138
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",x : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/beizi/ad/a/a/a;->s:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",y : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/beizi/ad/a/a/a;->t:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",z : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/beizi/ad/a/a/a;->u:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v1, v0}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/beizi/ad/a/a/a;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 141
    invoke-direct {p0}, Lcom/beizi/ad/a/a/a;->o()V

    .line 142
    :cond_8
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float p1, v0

    iput p1, p0, Lcom/beizi/ad/a/a/a;->A:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_9
    :goto_3
    return-void

    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_4
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

    .line 105
    invoke-static {p1, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 106
    iget p3, p0, Lcom/beizi/ad/a/a/a;->F:I

    int-to-long p3, p3

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 107
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/a/a/a;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/beizi/ad/a/a/a;->a(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/ad/a/a/a;)[F
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/beizi/ad/a/a/a;->p:[F

    return-object p0
.end method

.method static synthetic b(Lcom/beizi/ad/a/a/a;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/beizi/ad/a/a/a;->t:D

    return-wide p1
.end method

.method static synthetic b(Lcom/beizi/ad/a/a/a;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/beizi/ad/a/a/a;->J:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private b(Landroid/view/ViewGroup;)[I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ";"

    const-string v3, "%"

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v8, 0x0

    if-eqz v0, :cond_14

    .line 6
    :try_start_0
    iget-object v9, v1, Lcom/beizi/ad/a/a/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    if-nez v9, :cond_0

    goto/16 :goto_4

    .line 7
    :cond_0
    invoke-virtual {v9}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;->getCenterX()Ljava/lang/String;

    move-result-object v9

    .line 8
    iget-object v10, v1, Lcom/beizi/ad/a/a/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    invoke-virtual {v10}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;->getCenterY()Ljava/lang/String;

    move-result-object v10

    .line 9
    iget-object v11, v1, Lcom/beizi/ad/a/a/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    invoke-virtual {v11}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;->getWidth()Ljava/lang/String;

    move-result-object v11

    .line 10
    iget-object v12, v1, Lcom/beizi/ad/a/a/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    invoke-virtual {v12}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;->getHeight()Ljava/lang/String;

    move-result-object v12

    .line 11
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, "10"

    const-string v15, "0"

    if-nez v13, :cond_1

    :try_start_1
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_1
    move-object v9, v14

    .line 12
    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_3
    move-object v10, v14

    .line 13
    :cond_4
    invoke-virtual {v0, v8, v8}, Landroid/view/View;->measure(II)V

    .line 14
    iget-object v13, v1, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-static {v13, v14}, Lcom/beizi/ad/internal/e/t;->b(Landroid/content/Context;F)I

    move-result v13

    .line 15
    iget-object v14, v1, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v14, v5}, Lcom/beizi/ad/internal/e/t;->b(Landroid/content/Context;F)I

    move-result v5

    if-gtz v13, :cond_5

    .line 16
    iget-object v13, v1, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

    invoke-static {v13}, Lcom/beizi/ad/lance/a/q;->h(Landroid/content/Context;)I

    move-result v13

    .line 17
    :cond_5
    sget-object v14, Lcom/beizi/ad/a/a/a;->g:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position containerWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";containerHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v14, v0}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "20"

    if-nez v0, :cond_6

    :try_start_2
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move-object v11, v6

    .line 21
    :cond_7
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move-object v12, v6

    .line 22
    :cond_9
    invoke-virtual {v9, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    invoke-virtual {v9, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int v0, v0, v13

    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    .line 24
    :cond_a
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 25
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {v10, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 27
    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v10, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int v5, v5, v6

    div-int/lit8 v5, v5, 0x64

    goto :goto_1

    .line 28
    :cond_c
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 29
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_d
    const/4 v5, 0x0

    .line 30
    :goto_1
    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v7, 0x14

    if-eqz v6, :cond_e

    .line 31
    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 32
    invoke-virtual {v11, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int v13, v13, v6

    div-int/lit8 v13, v13, 0x64

    goto :goto_2

    .line 33
    :cond_e
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 34
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    goto :goto_2

    :cond_f
    const/16 v13, 0x14

    .line 35
    :goto_2
    invoke-virtual {v12, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 36
    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int v3, v3, v13

    div-int/lit8 v7, v3, 0x64

    goto :goto_3

    .line 37
    :cond_10
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 38
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 39
    :cond_11
    :goto_3
    iget-object v3, v1, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

    int-to-float v6, v13

    invoke-static {v3, v6}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v3

    .line 40
    iget-object v6, v1, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v6

    .line 41
    iget-object v7, v1, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v7, v0}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v0

    .line 42
    iget-object v7, v1, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

    int-to-float v5, v5

    invoke-static {v7, v5}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v5

    aput v3, v4, v8

    const/4 v3, 0x1

    aput v6, v4, v3

    if-lez v0, :cond_12

    const/4 v3, 0x2

    aput v0, v4, v3

    :cond_12
    if-lez v5, :cond_13

    const/4 v0, 0x3

    aput v5, v4, v0

    .line 43
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position widthInt:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v4, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";heightInt:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";centerX:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";centerY:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 44
    :cond_14
    :goto_4
    iget-object v0, v1, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v0, v2}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v0

    .line 45
    iget-object v2, v1, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;F)I

    move-result v2

    aput v0, v4, v8

    const/4 v3, 0x1

    aput v0, v4, v3

    const/4 v0, 0x2

    aput v2, v4, v0

    const/4 v0, 0x3

    aput v2, v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-object v4
.end method

.method static synthetic c(Lcom/beizi/ad/a/a/a;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/beizi/ad/a/a/a;->u:D

    return-wide p1
.end method

.method private e()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->l:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;->getRules()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_4

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;

    .line 35
    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAxis()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAngle()D

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    cmpl-double v6, v4, v2

    .line 56
    .line 57
    if-lez v6, :cond_2

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    return v0

    .line 61
    :cond_4
    :goto_1
    return v1
.end method

.method private f()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/ad/a/a/a;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/beizi/ad/a/a/a;->i()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput-boolean v1, p0, Lcom/beizi/ad/a/a/a;->y:Z

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/beizi/ad/a/a/a;->h()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/beizi/ad/a/a/a;->y:Z

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iput-boolean v1, p0, Lcom/beizi/ad/a/a/a;->y:Z

    .line 29
    .line 30
    :goto_1
    iget-boolean v0, p0, Lcom/beizi/ad/a/a/a;->y:Z

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->m:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/beizi/ad/a/a/a;->k:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/beizi/ad/a/a/a;->g()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->l:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/beizi/ad/a/a/a;->k:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/beizi/ad/a/a/a;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :goto_2
    return-void
.end method

.method private g()V
    .locals 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->k:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;->getRules()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_a

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_1
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->k:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;->getPassivationTime()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    move-wide v6, v2

    .line 33
    move-wide v8, v6

    .line 34
    move-wide v10, v8

    .line 35
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_9

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;

    .line 46
    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget-object v5, p0, Lcom/beizi/ad/a/a/a;->a:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAxis()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_5

    .line 61
    .line 62
    if-lez v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getPangle()D

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    cmpl-double v7, v5, v2

    .line 69
    .line 70
    if-lez v7, :cond_4

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getPangle()D

    .line 73
    .line 74
    .line 75
    move-result-wide v5

    .line 76
    iput-wide v5, p0, Lcom/beizi/ad/a/a/a;->s:D

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAngle()D

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    iput-wide v5, p0, Lcom/beizi/ad/a/a/a;->s:D

    .line 84
    .line 85
    :goto_1
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAngle()D

    .line 86
    .line 87
    .line 88
    move-result-wide v6

    .line 89
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getDirection()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iput-object v4, p0, Lcom/beizi/ad/a/a/a;->v:Ljava/lang/String;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    iget-object v5, p0, Lcom/beizi/ad/a/a/a;->b:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAxis()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_7

    .line 107
    .line 108
    if-lez v1, :cond_6

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getPangle()D

    .line 111
    .line 112
    .line 113
    move-result-wide v8

    .line 114
    cmpl-double v5, v8, v2

    .line 115
    .line 116
    if-lez v5, :cond_6

    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getPangle()D

    .line 119
    .line 120
    .line 121
    move-result-wide v8

    .line 122
    iput-wide v8, p0, Lcom/beizi/ad/a/a/a;->t:D

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAngle()D

    .line 126
    .line 127
    .line 128
    move-result-wide v8

    .line 129
    iput-wide v8, p0, Lcom/beizi/ad/a/a/a;->t:D

    .line 130
    .line 131
    :goto_2
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAngle()D

    .line 132
    .line 133
    .line 134
    move-result-wide v8

    .line 135
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getDirection()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    iput-object v4, p0, Lcom/beizi/ad/a/a/a;->w:Ljava/lang/String;

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_7
    iget-object v5, p0, Lcom/beizi/ad/a/a/a;->c:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAxis()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v12

    .line 148
    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_2

    .line 153
    .line 154
    if-lez v1, :cond_8

    .line 155
    .line 156
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getPangle()D

    .line 157
    .line 158
    .line 159
    move-result-wide v10

    .line 160
    cmpl-double v5, v10, v2

    .line 161
    .line 162
    if-lez v5, :cond_8

    .line 163
    .line 164
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getPangle()D

    .line 165
    .line 166
    .line 167
    move-result-wide v10

    .line 168
    iput-wide v10, p0, Lcom/beizi/ad/a/a/a;->u:D

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_8
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAngle()D

    .line 172
    .line 173
    .line 174
    move-result-wide v10

    .line 175
    iput-wide v10, p0, Lcom/beizi/ad/a/a/a;->u:D

    .line 176
    .line 177
    :goto_3
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAngle()D

    .line 178
    .line 179
    .line 180
    move-result-wide v10

    .line 181
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getDirection()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    iput-object v4, p0, Lcom/beizi/ad/a/a/a;->x:Ljava/lang/String;

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_9
    if-lez v1, :cond_b

    .line 190
    .line 191
    invoke-virtual {p0, v1}, Lcom/beizi/ad/a/a/a;->a(I)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    new-instance v1, Landroid/os/Handler;

    .line 196
    .line 197
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 198
    .line 199
    .line 200
    new-instance v2, Lcom/beizi/ad/a/a/a$1;

    .line 201
    .line 202
    move-object v4, v2

    .line 203
    move-object v5, p0

    .line 204
    invoke-direct/range {v4 .. v11}, Lcom/beizi/ad/a/a/a$1;-><init>(Lcom/beizi/ad/a/a/a;DDD)V

    .line 205
    .line 206
    .line 207
    int-to-long v3, v0

    .line 208
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_a
    :goto_4
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 215
    .line 216
    .line 217
    :cond_b
    :goto_5
    return-void
.end method

.method private h()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->m:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;->getRules()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->m:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;->getRules()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->m:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;->getStyle()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleStyleBean;

    .line 30
    .line 31
    .line 32
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :catch_0
    move-exception v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return v0
.end method

.method private i()Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->m:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;->getCoolTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iget-object v3, p0, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/beizi/ad/a/a/a;->E:Ljava/lang/String;

    .line 14
    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-static {v3, v4, v7}, Lcom/beizi/ad/internal/e/l;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/Long;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    cmp-long v7, v3, v5

    .line 32
    .line 33
    if-eqz v7, :cond_1

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    sub-long/2addr v5, v3

    .line 40
    cmp-long v3, v5, v1

    .line 41
    .line 42
    if-gez v3, :cond_1

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return v0
.end method

.method private j()Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->m:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;->getUserProtectTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iget-object v3, p0, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

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

.method private k()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/beizi/ad/a/a/a;->A:F

    .line 3
    .line 4
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->p:[F

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput v0, v1, v2

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    aput v0, v1, v2

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    aput v0, v1, v2

    .line 14
    .line 15
    iput v0, p0, Lcom/beizi/ad/a/a/a;->M:F

    .line 16
    .line 17
    iput v0, p0, Lcom/beizi/ad/a/a/a;->N:F

    .line 18
    .line 19
    iput v0, p0, Lcom/beizi/ad/a/a/a;->O:F

    .line 20
    .line 21
    iput v0, p0, Lcom/beizi/ad/a/a/a;->P:F

    .line 22
    .line 23
    iput v0, p0, Lcom/beizi/ad/a/a/a;->Q:F

    .line 24
    .line 25
    iput v0, p0, Lcom/beizi/ad/a/a/a;->R:F

    .line 26
    .line 27
    return-void
.end method

.method private l()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/beizi/ad/a/a/a;->q:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "sensor"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/hardware/SensorManager;

    .line 18
    .line 19
    sput-object v0, Lcom/beizi/ad/a/a/a;->q:Landroid/hardware/SensorManager;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->r:Landroid/hardware/Sensor;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    sget-object v0, Lcom/beizi/ad/a/a/a;->q:Landroid/hardware/SensorManager;

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/beizi/ad/a/a/a;->r:Landroid/hardware/Sensor;

    .line 33
    .line 34
    :cond_1
    sget-object v0, Lcom/beizi/ad/a/a/a;->q:Landroid/hardware/SensorManager;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->S:Landroid/hardware/SensorEventListener;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/beizi/ad/a/a/a;->r:Landroid/hardware/Sensor;

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/beizi/ad/a/a/a;->g:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "enter unRegisterListener"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/beizi/ad/a/a/a;->q:Landroid/hardware/SensorManager;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->S:Landroid/hardware/SensorEventListener;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void
.end method

.method private n()Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/beizi/ad/a/a/a;->s:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    const-string v3, "3"

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x1

    .line 10
    cmpl-double v8, v1, v4

    .line 11
    .line 12
    if-lez v8, :cond_3

    .line 13
    .line 14
    :try_start_1
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->f:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/beizi/ad/a/a/a;->v:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->p:[F

    .line 25
    .line 26
    aget v1, v1, v0

    .line 27
    .line 28
    cmpl-float v2, v1, v6

    .line 29
    .line 30
    if-lez v2, :cond_3

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    float-to-double v1, v1

    .line 37
    iget-wide v8, p0, Lcom/beizi/ad/a/a/a;->s:D

    .line 38
    .line 39
    cmpl-double v10, v1, v8

    .line 40
    .line 41
    if-ltz v10, :cond_3

    .line 42
    .line 43
    return v7

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->e:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/beizi/ad/a/a/a;->v:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->p:[F

    .line 55
    .line 56
    aget v1, v1, v0

    .line 57
    .line 58
    cmpg-float v2, v1, v6

    .line 59
    .line 60
    if-gez v2, :cond_3

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    float-to-double v1, v1

    .line 67
    iget-wide v8, p0, Lcom/beizi/ad/a/a/a;->s:D

    .line 68
    .line 69
    cmpl-double v10, v1, v8

    .line 70
    .line 71
    if-ltz v10, :cond_3

    .line 72
    .line 73
    return v7

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->d:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/beizi/ad/a/a/a;->v:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->p:[F

    .line 85
    .line 86
    aget v1, v1, v0

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    float-to-double v1, v1

    .line 93
    iget-wide v8, p0, Lcom/beizi/ad/a/a/a;->s:D

    .line 94
    .line 95
    cmpl-double v10, v1, v8

    .line 96
    .line 97
    if-ltz v10, :cond_3

    .line 98
    .line 99
    return v7

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->v:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    iget v1, p0, Lcom/beizi/ad/a/a/a;->M:F

    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    float-to-double v1, v1

    .line 115
    iget-wide v8, p0, Lcom/beizi/ad/a/a/a;->s:D

    .line 116
    .line 117
    cmpl-double v10, v1, v8

    .line 118
    .line 119
    if-ltz v10, :cond_3

    .line 120
    .line 121
    iget v1, p0, Lcom/beizi/ad/a/a/a;->P:F

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    float-to-double v1, v1

    .line 128
    iget-wide v8, p0, Lcom/beizi/ad/a/a/a;->s:D

    .line 129
    .line 130
    cmpl-double v10, v1, v8

    .line 131
    .line 132
    if-lez v10, :cond_3

    .line 133
    .line 134
    return v7

    .line 135
    :cond_3
    iget-wide v1, p0, Lcom/beizi/ad/a/a/a;->t:D

    .line 136
    .line 137
    cmpl-double v8, v1, v4

    .line 138
    .line 139
    if-lez v8, :cond_7

    .line 140
    .line 141
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->f:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v2, p0, Lcom/beizi/ad/a/a/a;->w:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_4

    .line 150
    .line 151
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->p:[F

    .line 152
    .line 153
    aget v1, v1, v7

    .line 154
    .line 155
    cmpg-float v2, v1, v6

    .line 156
    .line 157
    if-gez v2, :cond_7

    .line 158
    .line 159
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    float-to-double v1, v1

    .line 164
    iget-wide v8, p0, Lcom/beizi/ad/a/a/a;->t:D

    .line 165
    .line 166
    cmpl-double v10, v1, v8

    .line 167
    .line 168
    if-ltz v10, :cond_7

    .line 169
    .line 170
    return v7

    .line 171
    :cond_4
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->e:Ljava/lang/String;

    .line 172
    .line 173
    iget-object v2, p0, Lcom/beizi/ad/a/a/a;->w:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_5

    .line 180
    .line 181
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->p:[F

    .line 182
    .line 183
    aget v1, v1, v7

    .line 184
    .line 185
    cmpl-float v2, v1, v6

    .line 186
    .line 187
    if-lez v2, :cond_7

    .line 188
    .line 189
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    float-to-double v1, v1

    .line 194
    iget-wide v8, p0, Lcom/beizi/ad/a/a/a;->t:D

    .line 195
    .line 196
    cmpl-double v10, v1, v8

    .line 197
    .line 198
    if-ltz v10, :cond_7

    .line 199
    .line 200
    return v7

    .line 201
    :cond_5
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->d:Ljava/lang/String;

    .line 202
    .line 203
    iget-object v2, p0, Lcom/beizi/ad/a/a/a;->w:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_6

    .line 210
    .line 211
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->p:[F

    .line 212
    .line 213
    aget v1, v1, v7

    .line 214
    .line 215
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    float-to-double v1, v1

    .line 220
    iget-wide v8, p0, Lcom/beizi/ad/a/a/a;->t:D

    .line 221
    .line 222
    cmpl-double v10, v1, v8

    .line 223
    .line 224
    if-ltz v10, :cond_7

    .line 225
    .line 226
    return v7

    .line 227
    :cond_6
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->w:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_7

    .line 234
    .line 235
    iget v1, p0, Lcom/beizi/ad/a/a/a;->N:F

    .line 236
    .line 237
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    float-to-double v1, v1

    .line 242
    iget-wide v8, p0, Lcom/beizi/ad/a/a/a;->t:D

    .line 243
    .line 244
    cmpl-double v10, v1, v8

    .line 245
    .line 246
    if-ltz v10, :cond_7

    .line 247
    .line 248
    iget v1, p0, Lcom/beizi/ad/a/a/a;->Q:F

    .line 249
    .line 250
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    float-to-double v1, v1

    .line 255
    iget-wide v8, p0, Lcom/beizi/ad/a/a/a;->t:D

    .line 256
    .line 257
    cmpl-double v10, v1, v8

    .line 258
    .line 259
    if-lez v10, :cond_7

    .line 260
    .line 261
    return v7

    .line 262
    :cond_7
    iget-wide v1, p0, Lcom/beizi/ad/a/a/a;->u:D

    .line 263
    .line 264
    cmpl-double v8, v1, v4

    .line 265
    .line 266
    if-lez v8, :cond_b

    .line 267
    .line 268
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->f:Ljava/lang/String;

    .line 269
    .line 270
    iget-object v2, p0, Lcom/beizi/ad/a/a/a;->x:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    const/4 v2, 0x2

    .line 277
    if-eqz v1, :cond_8

    .line 278
    .line 279
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->p:[F

    .line 280
    .line 281
    aget v1, v1, v2

    .line 282
    .line 283
    cmpl-float v2, v1, v6

    .line 284
    .line 285
    if-lez v2, :cond_b

    .line 286
    .line 287
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    float-to-double v1, v1

    .line 292
    iget-wide v3, p0, Lcom/beizi/ad/a/a/a;->u:D

    .line 293
    .line 294
    cmpl-double v5, v1, v3

    .line 295
    .line 296
    if-ltz v5, :cond_b

    .line 297
    .line 298
    return v7

    .line 299
    :cond_8
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->e:Ljava/lang/String;

    .line 300
    .line 301
    iget-object v4, p0, Lcom/beizi/ad/a/a/a;->x:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_9

    .line 308
    .line 309
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->p:[F

    .line 310
    .line 311
    aget v1, v1, v2

    .line 312
    .line 313
    cmpg-float v2, v1, v6

    .line 314
    .line 315
    if-gez v2, :cond_b

    .line 316
    .line 317
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    float-to-double v1, v1

    .line 322
    iget-wide v3, p0, Lcom/beizi/ad/a/a/a;->u:D

    .line 323
    .line 324
    cmpl-double v5, v1, v3

    .line 325
    .line 326
    if-ltz v5, :cond_b

    .line 327
    .line 328
    return v7

    .line 329
    :cond_9
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->d:Ljava/lang/String;

    .line 330
    .line 331
    iget-object v4, p0, Lcom/beizi/ad/a/a/a;->x:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-eqz v1, :cond_a

    .line 338
    .line 339
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->p:[F

    .line 340
    .line 341
    aget v1, v1, v2

    .line 342
    .line 343
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    float-to-double v1, v1

    .line 348
    iget-wide v3, p0, Lcom/beizi/ad/a/a/a;->u:D

    .line 349
    .line 350
    cmpl-double v5, v1, v3

    .line 351
    .line 352
    if-ltz v5, :cond_b

    .line 353
    .line 354
    return v7

    .line 355
    :cond_a
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->x:Ljava/lang/String;

    .line 356
    .line 357
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-eqz v1, :cond_b

    .line 362
    .line 363
    iget v1, p0, Lcom/beizi/ad/a/a/a;->O:F

    .line 364
    .line 365
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    float-to-double v1, v1

    .line 370
    iget-wide v3, p0, Lcom/beizi/ad/a/a/a;->u:D

    .line 371
    .line 372
    cmpl-double v5, v1, v3

    .line 373
    .line 374
    if-ltz v5, :cond_b

    .line 375
    .line 376
    iget v1, p0, Lcom/beizi/ad/a/a/a;->R:F

    .line 377
    .line 378
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    float-to-double v1, v1

    .line 383
    iget-wide v3, p0, Lcom/beizi/ad/a/a/a;->u:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 384
    .line 385
    cmpl-double v5, v1, v3

    .line 386
    .line 387
    if-lez v5, :cond_b

    .line 388
    .line 389
    return v7

    .line 390
    :catch_0
    move-exception v1

    .line 391
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 392
    .line 393
    .line 394
    :cond_b
    return v0
.end method

.method private o()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->B:Lcom/beizi/ad/a/a/a$a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/beizi/ad/a/a/a;->C:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/beizi/ad/a/a/a;->g:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "onEulerAngleHappened"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/beizi/ad/a/a/a;->b()V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/beizi/ad/a/a/a;->y:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->E:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v0, v1, v2}, Lcom/beizi/ad/internal/e/l;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->B:Lcom/beizi/ad/a/a/a$a;

    .line 40
    .line 41
    invoke-interface {v0}, Lcom/beizi/ad/a/a/a$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 4

    .line 8
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

    .line 9
    iget-boolean v0, p0, Lcom/beizi/ad/a/a/a;->D:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/ad/a/a/a;->K:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/beizi/ad/a/a/a;->C:Z

    .line 11
    invoke-direct {p0}, Lcom/beizi/ad/a/a/a;->k()V

    .line 12
    invoke-direct {p0}, Lcom/beizi/ad/a/a/a;->f()V

    .line 13
    invoke-direct {p0}, Lcom/beizi/ad/a/a/a;->l()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 10

    if-eqz p1, :cond_e

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/beizi/ad/a/a/a;->K:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 16
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    sget v2, Lcom/beizi/fusion/R$mipmap;->beizi_interaction_icon_euler_angle:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    iget-object v2, p0, Lcom/beizi/ad/a/a/a;->k:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;->getStyle()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleStyleBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 21
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleStyleBean;->getImgs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 23
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/beizi/ad/a/a/a;->L:Ljava/lang/String;

    .line 24
    :cond_1
    iget-object v2, p0, Lcom/beizi/ad/a/a/a;->L:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 25
    iget-object v2, p0, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/beizi/ad/internal/e/h;->a(Landroid/content/Context;)Lcom/beizi/ad/internal/e/h;

    move-result-object v2

    iget-object v3, p0, Lcom/beizi/ad/a/a/a;->L:Ljava/lang/String;

    new-instance v4, Lcom/beizi/ad/a/a/a$2;

    invoke-direct {v4, p0, v0}, Lcom/beizi/ad/a/a/a$2;-><init>(Lcom/beizi/ad/a/a/a;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3, v4}, Lcom/beizi/ad/internal/e/h;->b(Ljava/lang/String;Lcom/beizi/ad/internal/e/h$a;)V

    .line 26
    :cond_2
    invoke-direct {p0, p1}, Lcom/beizi/ad/a/a/a;->b(Landroid/view/ViewGroup;)[I

    move-result-object v2

    .line 27
    instance-of v3, p1, Landroid/widget/RelativeLayout;

    const/16 v4, 0x11

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, -0x2

    const/4 v9, -0x1

    if-eqz v3, :cond_5

    .line 28
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 29
    aget v1, v2, v1

    if-lez v1, :cond_3

    .line 30
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 31
    :cond_3
    aget v1, v2, v7

    if-lez v1, :cond_4

    .line 32
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 33
    :cond_4
    aget v1, v2, v6

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 34
    aget v1, v2, v5

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 35
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 36
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 37
    :cond_5
    instance-of v3, p1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_8

    .line 38
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 39
    aget v1, v2, v1

    if-lez v1, :cond_6

    .line 40
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 41
    :cond_6
    aget v1, v2, v7

    if-lez v1, :cond_7

    .line 42
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 43
    :cond_7
    aget v1, v2, v6

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 44
    aget v1, v2, v5

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 45
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 46
    :cond_8
    instance-of v3, p1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_b

    .line 47
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41880000    # 17.0f

    invoke-direct {v3, v9, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 48
    aget v1, v2, v1

    if-lez v1, :cond_9

    .line 49
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 50
    :cond_9
    aget v1, v2, v7

    if-lez v1, :cond_a

    .line 51
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 52
    :cond_a
    aget v1, v2, v6

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 53
    aget v1, v2, v5

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 54
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 55
    :cond_b
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 56
    aget v1, v2, v1

    if-lez v1, :cond_c

    .line 57
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 58
    :cond_c
    aget v1, v2, v7

    if-lez v1, :cond_d

    .line 59
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    :cond_d
    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    :goto_0
    invoke-virtual {p0, v0}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_1
    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 7

    .line 63
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, "rotationX"

    const/4 v4, 0x0

    .line 66
    iget v0, p0, Lcom/beizi/ad/a/a/a;->G:F

    neg-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotationX"

    .line 67
    iget v0, p0, Lcom/beizi/ad/a/a/a;->G:F

    neg-float v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "rotationX"

    const/4 v4, 0x0

    .line 69
    iget v5, p0, Lcom/beizi/ad/a/a/a;->G:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotationX"

    .line 70
    iget v4, p0, Lcom/beizi/ad/a/a/a;->G:F

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    goto :goto_0

    :cond_1
    const-string v3, "rotationX"

    const/4 v4, 0x0

    .line 71
    iget v5, p0, Lcom/beizi/ad/a/a/a;->G:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotationX"

    .line 72
    iget v4, p0, Lcom/beizi/ad/a/a/a;->G:F

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotationX"

    const/4 v4, 0x0

    .line 73
    iget v0, p0, Lcom/beizi/ad/a/a/a;->G:F

    neg-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotationX"

    .line 74
    iget v0, p0, Lcom/beizi/ad/a/a/a;->G:F

    neg-float v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    .line 75
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 76
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "rotationY"

    const/4 v4, 0x0

    .line 77
    iget v0, p0, Lcom/beizi/ad/a/a/a;->H:F

    neg-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotationY"

    .line 78
    iget v0, p0, Lcom/beizi/ad/a/a/a;->H:F

    neg-float v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    goto :goto_1

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v3, "rotationY"

    const/4 v4, 0x0

    .line 80
    iget v5, p0, Lcom/beizi/ad/a/a/a;->H:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotationY"

    .line 81
    iget v4, p0, Lcom/beizi/ad/a/a/a;->H:F

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    goto :goto_1

    :cond_4
    const-string v3, "rotationY"

    const/4 v4, 0x0

    .line 82
    iget v5, p0, Lcom/beizi/ad/a/a/a;->H:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotationY"

    .line 83
    iget v4, p0, Lcom/beizi/ad/a/a/a;->H:F

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotationY"

    const/4 v4, 0x0

    .line 84
    iget v0, p0, Lcom/beizi/ad/a/a/a;->H:F

    neg-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotationY"

    .line 85
    iget v0, p0, Lcom/beizi/ad/a/a/a;->H:F

    neg-float v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    .line 86
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 87
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v3, "rotation"

    const/4 v4, 0x0

    .line 88
    iget v0, p0, Lcom/beizi/ad/a/a/a;->I:F

    neg-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotation"

    .line 89
    iget v0, p0, Lcom/beizi/ad/a/a/a;->I:F

    neg-float v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    goto :goto_2

    .line 90
    :cond_6
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v3, "rotation"

    const/4 v4, 0x0

    .line 91
    iget v5, p0, Lcom/beizi/ad/a/a/a;->I:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotation"

    .line 92
    iget v4, p0, Lcom/beizi/ad/a/a/a;->I:F

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    goto :goto_2

    :cond_7
    const-string v3, "rotation"

    const/4 v4, 0x0

    .line 93
    iget v5, p0, Lcom/beizi/ad/a/a/a;->I:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotation"

    .line 94
    iget v4, p0, Lcom/beizi/ad/a/a/a;->I:F

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotation"

    const/4 v4, 0x0

    .line 95
    iget v0, p0, Lcom/beizi/ad/a/a/a;->I:F

    neg-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    const-string v3, "rotation"

    .line 96
    iget v0, p0, Lcom/beizi/ad/a/a/a;->I:F

    neg-float v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/beizi/ad/a/a/a;->a(Landroid/widget/ImageView;Ljava/util/List;Ljava/lang/String;FF)V

    .line 97
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/beizi/ad/a/a/a;->J:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lcom/beizi/ad/a/a/a;->J:Landroid/animation/AnimatorSet;

    .line 99
    :cond_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 100
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/beizi/ad/a/a/a;->J:Landroid/animation/AnimatorSet;

    .line 101
    new-instance v0, Lcom/beizi/ad/a/a/a$3;

    invoke-direct {v0, p0}, Lcom/beizi/ad/a/a/a$3;-><init>(Lcom/beizi/ad/a/a/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 102
    iget-object p1, p0, Lcom/beizi/ad/a/a/a;->J:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 103
    iget-object p1, p0, Lcom/beizi/ad/a/a/a;->J:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_3
    return-void
.end method

.method public a(Lcom/beizi/ad/a/a/a$a;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/beizi/ad/a/a/a;->B:Lcom/beizi/ad/a/a/a$a;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/beizi/ad/a/a/a;->C:Z

    .line 4
    invoke-direct {p0}, Lcom/beizi/ad/a/a/a;->k()V

    .line 5
    invoke-direct {p0}, Lcom/beizi/ad/a/a/a;->m()V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/ad/a/a/a;->L:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/ad/a/a/a;->m()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/beizi/ad/a/a/a;->i:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/beizi/ad/a/a/a;->j:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/beizi/ad/a/a/a;->k:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/beizi/ad/a/a/a;->l:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/beizi/ad/a/a/a;->m:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/beizi/ad/a/a/a;->n:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/beizi/ad/a/a/a;->h:Landroid/content/Context;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/beizi/ad/a/a/a;->B:Lcom/beizi/ad/a/a/a$a;

    .line 20
    .line 21
    sput-object v0, Lcom/beizi/ad/a/a/a;->q:Landroid/hardware/SensorManager;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/beizi/ad/a/a/a;->r:Landroid/hardware/Sensor;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/ad/a/a/a;->J:Landroid/animation/AnimatorSet;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iput-object v0, p0, Lcom/beizi/ad/a/a/a;->J:Landroid/animation/AnimatorSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
