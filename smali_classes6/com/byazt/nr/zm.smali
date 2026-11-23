.class public Lcom/byazt/nr/zm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x274,
        0x1e2
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/nr/zm$ve;,
        Lcom/byazt/nr/zm$tt;,
        Lcom/byazt/nr/zm$c;
    }
.end annotation


# static fields
.field public static tx:Lcom/byazt/nr/yv;


# instance fields
.field public a:Z

.field public aw:Z

.field public b:Lcom/byazt/nr/zm$ve;

.field public bm:I

.field public bx:Z

.field public final c:J

.field public cu:Lorg/json/JSONObject;

.field public d:F

.field public da:I

.field public eo:F

.field public gr:I

.field public final gt:J

.field public volatile gu:Z

.field public h:F

.field public hd:I

.field public i:F

.field public ic:F

.field public kk:Landroid/content/Context;

.field public kp:F

.field public l:I

.field public lo:I

.field public lr:I

.field public lt:Z

.field public m:Landroid/hardware/Sensor;

.field public md:J

.field public my:I

.field public n:F

.field public nb:Z

.field public nu:Landroid/hardware/Sensor;

.field public final or:F

.field public p:[F

.field public pf:F

.field public pu:I

.field public q:Z

.field public qp:Z

.field public volatile qy:Z

.field public rh:F

.field public volatile rl:J

.field public sl:Lcom/byazt/nr/sl;

.field public volatile sp:J

.field public sv:F

.field public t:Lcom/byazt/nr/zm$c;

.field public tk:I

.field public to:I

.field public volatile tt:J

.field public u:Lcom/byazt/nr/zm$tt;

.field public uj:F

.field public v:I

.field public ve:F

.field public x:F

.field public yp:Landroid/hardware/Sensor;

.field public yv:F

.field public z:Landroid/hardware/Sensor;

.field public zb:[F

.field public final zm:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x7d0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/byazt/nr/zm;->c:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/byazt/nr/zm;->a:Z

    .line 10
    .line 11
    const/high16 v1, 0x41500000    # 13.0f

    .line 12
    .line 13
    iput v1, p0, Lcom/byazt/nr/zm;->x:F

    .line 14
    .line 15
    const/high16 v1, 0x42480000    # 50.0f

    .line 16
    .line 17
    iput v1, p0, Lcom/byazt/nr/zm;->i:F

    .line 18
    .line 19
    iput v0, p0, Lcom/byazt/nr/zm;->da:I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/byazt/nr/zm;->t:Lcom/byazt/nr/zm$c;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/byazt/nr/zm;->u:Lcom/byazt/nr/zm$tt;

    .line 27
    .line 28
    const-wide/16 v1, 0x1f4

    .line 29
    .line 30
    iput-wide v1, p0, Lcom/byazt/nr/zm;->gt:J

    .line 31
    .line 32
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    iput-wide v1, p0, Lcom/byazt/nr/zm;->rl:J

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/byazt/nr/zm;->qy:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/byazt/nr/zm;->gu:Z

    .line 39
    .line 40
    const v3, 0x3089705f    # 1.0E-9f

    .line 41
    .line 42
    .line 43
    iput v3, p0, Lcom/byazt/nr/zm;->zm:F

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    new-array v4, v3, [F

    .line 47
    .line 48
    iput-object v4, p0, Lcom/byazt/nr/zm;->p:[F

    .line 49
    .line 50
    iput-wide v1, p0, Lcom/byazt/nr/zm;->md:J

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    iput v1, p0, Lcom/byazt/nr/zm;->h:F

    .line 54
    .line 55
    const/high16 v2, 0x40800000    # 4.0f

    .line 56
    .line 57
    iput v2, p0, Lcom/byazt/nr/zm;->d:F

    .line 58
    .line 59
    iput v1, p0, Lcom/byazt/nr/zm;->eo:F

    .line 60
    .line 61
    new-array v2, v3, [F

    .line 62
    .line 63
    iput-object v2, p0, Lcom/byazt/nr/zm;->zb:[F

    .line 64
    .line 65
    iput v1, p0, Lcom/byazt/nr/zm;->or:F

    .line 66
    .line 67
    iput-boolean v0, p0, Lcom/byazt/nr/zm;->qp:Z

    .line 68
    .line 69
    iput-boolean v0, p0, Lcom/byazt/nr/zm;->nb:Z

    .line 70
    .line 71
    iput-boolean v0, p0, Lcom/byazt/nr/zm;->bx:Z

    .line 72
    .line 73
    iput-boolean v0, p0, Lcom/byazt/nr/zm;->aw:Z

    .line 74
    .line 75
    iput v0, p0, Lcom/byazt/nr/zm;->hd:I

    .line 76
    .line 77
    iput v0, p0, Lcom/byazt/nr/zm;->bm:I

    .line 78
    .line 79
    iput v0, p0, Lcom/byazt/nr/zm;->lr:I

    .line 80
    .line 81
    iput v0, p0, Lcom/byazt/nr/zm;->l:I

    .line 82
    .line 83
    iput v0, p0, Lcom/byazt/nr/zm;->lo:I

    .line 84
    .line 85
    iput v0, p0, Lcom/byazt/nr/zm;->pu:I

    .line 86
    .line 87
    iput-boolean v0, p0, Lcom/byazt/nr/zm;->lt:Z

    .line 88
    .line 89
    iput v0, p0, Lcom/byazt/nr/zm;->to:I

    .line 90
    .line 91
    iput v0, p0, Lcom/byazt/nr/zm;->tk:I

    .line 92
    .line 93
    iput v1, p0, Lcom/byazt/nr/zm;->kp:F

    .line 94
    .line 95
    iput-boolean p3, p0, Lcom/byazt/nr/zm;->q:Z

    .line 96
    .line 97
    iput p2, p0, Lcom/byazt/nr/zm;->gr:I

    .line 98
    .line 99
    if-nez p1, :cond_0

    .line 100
    .line 101
    return-void

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    iput-object p2, p0, Lcom/byazt/nr/zm;->kk:Landroid/content/Context;

    .line 107
    .line 108
    if-nez p2, :cond_1

    .line 109
    .line 110
    return-void

    .line 111
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v0, "cus:"

    .line 114
    .line 115
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    const-string v0, "xgc_cus"

    .line 126
    .line 127
    invoke-static {v0, p2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    if-eqz p3, :cond_2

    .line 131
    .line 132
    invoke-static {p1}, Lcom/byazt/nr/n;->c(Landroid/content/Context;)Lcom/byazt/nr/n;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iput-object p1, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    .line 137
    .line 138
    :cond_2
    return-void
.end method

.method private a(F)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method private a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/byazt/nr/zm;->rl:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/byazt/nr/zm;->qy:Z

    .line 4
    iput-boolean v0, p0, Lcom/byazt/nr/zm;->gu:Z

    .line 5
    iput v0, p0, Lcom/byazt/nr/zm;->hd:I

    .line 6
    iput v0, p0, Lcom/byazt/nr/zm;->bm:I

    .line 7
    iput v0, p0, Lcom/byazt/nr/zm;->lr:I

    .line 8
    iput v0, p0, Lcom/byazt/nr/zm;->l:I

    .line 9
    iput v0, p0, Lcom/byazt/nr/zm;->lo:I

    .line 10
    iput v0, p0, Lcom/byazt/nr/zm;->pu:I

    return-void
.end method

.method private c(D)F
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_0

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    :cond_0
    const-wide/high16 p1, 0x4049000000000000L    # 50.0

    :cond_1
    double-to-float p1, p1

    return p1
.end method

.method private c(FFF)F
    .locals 0

    .line 71
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 72
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private c(FI)I
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0, p1}, Lcom/byazt/nr/zm;->a(F)I

    move-result p1

    return p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    const/4 p1, 0x1

    :cond_2
    return p1
.end method

.method private c(FFFF)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/byazt/nr/zm;->zb:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float p1, p1, p4

    add-float/2addr v2, p1

    aput v2, v0, v1

    const/4 p1, 0x1

    .line 54
    aget v1, v0, p1

    mul-float p2, p2, p4

    add-float/2addr v1, p2

    aput v1, v0, p1

    const/4 p1, 0x2

    .line 55
    aget p2, v0, p1

    mul-float p3, p3, p4

    add-float/2addr p2, p3

    aput p2, v0, p1

    return-void
.end method

.method private c(IIIZ)V
    .locals 0

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 110
    iput p1, p0, Lcom/byazt/nr/zm;->hd:I

    .line 111
    iput p1, p0, Lcom/byazt/nr/zm;->bm:I

    .line 112
    iput p1, p0, Lcom/byazt/nr/zm;->lr:I

    .line 113
    iput p1, p0, Lcom/byazt/nr/zm;->l:I

    .line 114
    iput p1, p0, Lcom/byazt/nr/zm;->lo:I

    .line 115
    iput p1, p0, Lcom/byazt/nr/zm;->pu:I

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 116
    iget p1, p0, Lcom/byazt/nr/zm;->hd:I

    :cond_1
    iput p1, p0, Lcom/byazt/nr/zm;->hd:I

    if-nez p2, :cond_2

    .line 117
    iget p2, p0, Lcom/byazt/nr/zm;->bm:I

    :cond_2
    iput p2, p0, Lcom/byazt/nr/zm;->bm:I

    if-nez p3, :cond_3

    .line 118
    iget p3, p0, Lcom/byazt/nr/zm;->lr:I

    :cond_3
    iput p3, p0, Lcom/byazt/nr/zm;->lr:I

    return-void
.end method

.method private c(I[F)V
    .locals 2

    .line 120
    invoke-static {}, Lcom/byazt/nr/gr;->c()Lcom/byazt/nr/gr;

    move-result-object v0

    iget v1, p0, Lcom/byazt/nr/zm;->v:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/byazt/nr/gr;->c(II[F)V

    return-void
.end method

.method private c(Landroid/hardware/SensorEvent;)V
    .locals 10

    .line 19
    iget-wide v0, p0, Lcom/byazt/nr/zm;->md:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 20
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    .line 21
    aget v6, v2, v5

    const/4 v7, 0x2

    .line 22
    aget v2, v2, v7

    .line 23
    iget-wide v8, p1, Landroid/hardware/SensorEvent;->timestamp:J

    sub-long/2addr v8, v0

    long-to-float v0, v8

    const v1, 0x3089705f    # 1.0E-9f

    mul-float v0, v0, v1

    .line 24
    iget v1, p0, Lcom/byazt/nr/zm;->h:F

    const/4 v8, 0x0

    cmpl-float v9, v1, v8

    if-eqz v9, :cond_2

    .line 25
    invoke-direct {p0, v1, v4}, Lcom/byazt/nr/zm;->tt(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/byazt/nr/zm;->h:F

    invoke-direct {p0, v1, v6}, Lcom/byazt/nr/zm;->tt(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/byazt/nr/zm;->h:F

    .line 26
    invoke-direct {p0, v1, v2}, Lcom/byazt/nr/zm;->tt(FF)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-direct {p0, v4, v6, v2, v0}, Lcom/byazt/nr/zm;->c(FFFF)V

    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    invoke-direct {p0, v5}, Lcom/byazt/nr/zm;->tt(Z)V

    goto :goto_1

    .line 29
    :cond_2
    iget v1, p0, Lcom/byazt/nr/zm;->kp:F

    cmpl-float v8, v1, v8

    if-eqz v8, :cond_3

    .line 30
    iget v8, p0, Lcom/byazt/nr/zm;->eo:F

    cmpg-float v1, v8, v1

    if-ltz v1, :cond_3

    .line 31
    invoke-direct {p0, v5}, Lcom/byazt/nr/zm;->tt(Z)V

    goto :goto_1

    .line 32
    :cond_3
    invoke-direct {p0, v4, v6, v2, v0}, Lcom/byazt/nr/zm;->c(FFFF)V

    .line 33
    :goto_1
    iget v0, p0, Lcom/byazt/nr/zm;->my:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 34
    iget v0, p0, Lcom/byazt/nr/zm;->i:F

    invoke-direct {p0, v0}, Lcom/byazt/nr/zm;->sp(F)V

    goto :goto_2

    .line 35
    :cond_4
    iget v0, p0, Lcom/byazt/nr/zm;->i:F

    invoke-direct {p0, v0}, Lcom/byazt/nr/zm;->uj(F)V

    .line 36
    :goto_2
    iget-object v0, p0, Lcom/byazt/nr/zm;->u:Lcom/byazt/nr/zm$tt;

    if-eqz v0, :cond_5

    .line 37
    iget-object v1, p0, Lcom/byazt/nr/zm;->zb:[F

    aget v2, v1, v3

    aget v3, v1, v5

    aget v1, v1, v7

    invoke-interface {v0, v2, v3, v1}, Lcom/byazt/nr/zm$tt;->c(FFF)V

    .line 38
    :cond_5
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/byazt/nr/zm;->md:J

    return-void
.end method

.method public static c(Lcom/byazt/nr/yv;)V
    .locals 0

    .line 14
    sput-object p0, Lcom/byazt/nr/zm;->tx:Lcom/byazt/nr/yv;

    return-void
.end method

.method private c(ZDLandroid/hardware/SensorEvent;)V
    .locals 4

    .line 73
    invoke-direct {p0}, Lcom/byazt/nr/zm;->x()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 74
    invoke-direct {p0, v1}, Lcom/byazt/nr/zm;->sp(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/byazt/nr/zm;->rl:J

    .line 76
    iput-boolean v1, p0, Lcom/byazt/nr/zm;->gu:Z

    double-to-float p2, p2

    .line 77
    invoke-direct {p0, p2}, Lcom/byazt/nr/zm;->n(F)V

    goto :goto_0

    .line 78
    :cond_1
    iget-boolean p2, p0, Lcom/byazt/nr/zm;->gu:Z

    if-eqz p2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v2, p0, Lcom/byazt/nr/zm;->rl:J

    sub-long/2addr p2, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, p2, v2

    if-ltz v0, :cond_2

    const/4 p2, 0x0

    .line 79
    iput-boolean p2, p0, Lcom/byazt/nr/zm;->qy:Z

    .line 80
    invoke-direct {p0}, Lcom/byazt/nr/zm;->i()V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 81
    iget-object p1, p4, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v1, p1}, Lcom/byazt/nr/zm;->c(I[F)V

    :cond_3
    return-void
.end method

.method private c(ZLandroid/hardware/SensorEvent;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object p1, p2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    .line 83
    aget v1, p1, v0

    iget v2, p0, Lcom/byazt/nr/zm;->hd:I

    invoke-direct {p0, v1, v2}, Lcom/byazt/nr/zm;->c(FI)I

    move-result v1

    const/4 v2, 0x1

    .line 84
    aget v3, p1, v2

    iget v4, p0, Lcom/byazt/nr/zm;->bm:I

    invoke-direct {p0, v3, v4}, Lcom/byazt/nr/zm;->c(FI)I

    move-result v3

    const/4 v4, 0x2

    .line 85
    aget p1, p1, v4

    iget v4, p0, Lcom/byazt/nr/zm;->lr:I

    invoke-direct {p0, p1, v4}, Lcom/byazt/nr/zm;->c(FI)I

    move-result p1

    .line 86
    invoke-direct {p0, v1, v3, p1, v0}, Lcom/byazt/nr/zm;->tt(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-direct {p0, v1, v3, p1, v2}, Lcom/byazt/nr/zm;->c(IIIZ)V

    const/4 p1, 0x3

    .line 88
    invoke-direct {p0, p1}, Lcom/byazt/nr/zm;->sp(I)V

    goto :goto_3

    .line 89
    :cond_1
    iget v0, p0, Lcom/byazt/nr/zm;->hd:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/byazt/nr/zm;->hd:I

    if-lez v1, :cond_2

    goto :goto_0

    .line 90
    :cond_2
    iget v1, p0, Lcom/byazt/nr/zm;->l:I

    :goto_0
    iput v1, p0, Lcom/byazt/nr/zm;->l:I

    .line 91
    iget v0, p0, Lcom/byazt/nr/zm;->bm:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/byazt/nr/zm;->bm:I

    if-lez v3, :cond_3

    goto :goto_1

    .line 92
    :cond_3
    iget v3, p0, Lcom/byazt/nr/zm;->lo:I

    :goto_1
    iput v3, p0, Lcom/byazt/nr/zm;->lo:I

    .line 93
    iget v0, p0, Lcom/byazt/nr/zm;->lr:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/byazt/nr/zm;->lr:I

    if-lez p1, :cond_4

    goto :goto_2

    .line 94
    :cond_4
    iget p1, p0, Lcom/byazt/nr/zm;->pu:I

    :goto_2
    iput p1, p0, Lcom/byazt/nr/zm;->pu:I

    .line 95
    :goto_3
    iget-object p1, p2, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v2, p1}, Lcom/byazt/nr/zm;->c(I[F)V

    return-void
.end method

.method private c(FF)Z
    .locals 1

    .line 2
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(II)Z
    .locals 0

    .line 3
    or-int/2addr p1, p2

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(III)Z
    .locals 1

    .line 4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    or-int/2addr p1, p3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic c(Lcom/byazt/nr/zm;)Z
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/byazt/nr/zm;->uj()Z

    move-result p0

    return p0
.end method

.method private c(ZF)Z
    .locals 8

    .line 39
    iget-object v0, p0, Lcom/byazt/nr/zm;->zb:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 40
    iget-object v2, p0, Lcom/byazt/nr/zm;->zb:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 41
    iget-object v4, p0, Lcom/byazt/nr/zm;->zb:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 42
    iget-boolean v6, p0, Lcom/byazt/nr/zm;->qp:Z

    if-eqz v6, :cond_4

    .line 43
    iget-boolean p2, p0, Lcom/byazt/nr/zm;->nb:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/byazt/nr/zm;->pf:F

    invoke-direct {p0, v0, p2}, Lcom/byazt/nr/zm;->c(FF)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 44
    :goto_0
    iget-boolean v0, p0, Lcom/byazt/nr/zm;->bx:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/byazt/nr/zm;->sv:F

    invoke-direct {p0, v2, v0}, Lcom/byazt/nr/zm;->c(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 45
    :goto_1
    iget-boolean v2, p0, Lcom/byazt/nr/zm;->aw:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/byazt/nr/zm;->ic:F

    invoke-direct {p0, v4, v2}, Lcom/byazt/nr/zm;->c(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez p2, :cond_3

    if-nez v0, :cond_3

    if-eqz v3, :cond_6

    .line 46
    :cond_3
    iget-object v1, p0, Lcom/byazt/nr/zm;->zb:[F

    invoke-direct {p0, v5, v1}, Lcom/byazt/nr/zm;->c(I[F)V

    .line 47
    invoke-direct {p0, p1, p2, v0, v3}, Lcom/byazt/nr/zm;->c(ZZZZ)Z

    move-result p1

    move v1, p1

    goto :goto_3

    .line 48
    :cond_4
    invoke-direct {p0, v0, p2}, Lcom/byazt/nr/zm;->c(FF)Z

    move-result v0

    .line 49
    invoke-direct {p0, v2, p2}, Lcom/byazt/nr/zm;->c(FF)Z

    move-result v2

    .line 50
    invoke-direct {p0, v4, p2}, Lcom/byazt/nr/zm;->c(FF)Z

    move-result p2

    if-nez v0, :cond_5

    if-nez v2, :cond_5

    if-eqz p2, :cond_6

    .line 51
    :cond_5
    iget-object v1, p0, Lcom/byazt/nr/zm;->zb:[F

    invoke-direct {p0, v5, v1}, Lcom/byazt/nr/zm;->c(I[F)V

    .line 52
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/byazt/nr/zm;->c(ZZZZ)Z

    move-result v1

    :cond_6
    :goto_3
    return v1
.end method

.method private c(ZZZZ)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 96
    invoke-direct {p0, v1}, Lcom/byazt/nr/zm;->tt(Z)V

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 97
    iget-object p1, p0, Lcom/byazt/nr/zm;->zb:[F

    aget p1, p1, v1

    invoke-direct {p0, p1}, Lcom/byazt/nr/zm;->a(F)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_2

    .line 98
    iget-object v2, p0, Lcom/byazt/nr/zm;->zb:[F

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/byazt/nr/zm;->a(F)I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz p4, :cond_3

    .line 99
    iget-object v3, p0, Lcom/byazt/nr/zm;->zb:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lcom/byazt/nr/zm;->a(F)I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 100
    :goto_2
    iget v4, p0, Lcom/byazt/nr/zm;->my:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_4

    .line 101
    invoke-direct {p0, v1}, Lcom/byazt/nr/zm;->tt(Z)V

    .line 102
    :cond_4
    iget v4, p0, Lcom/byazt/nr/zm;->hd:I

    invoke-direct {p0, p1, v4}, Lcom/byazt/nr/zm;->c(II)Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, p0, Lcom/byazt/nr/zm;->bm:I

    invoke-direct {p0, v2, v4}, Lcom/byazt/nr/zm;->c(II)Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, p0, Lcom/byazt/nr/zm;->lr:I

    .line 103
    invoke-direct {p0, v3, v4}, Lcom/byazt/nr/zm;->c(II)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    .line 104
    :cond_5
    iget v4, p0, Lcom/byazt/nr/zm;->tk:I

    if-ne v4, v0, :cond_7

    if-nez p2, :cond_6

    if-nez p3, :cond_6

    if-eqz p4, :cond_8

    .line 105
    :cond_6
    iput p1, p0, Lcom/byazt/nr/zm;->hd:I

    .line 106
    iput v2, p0, Lcom/byazt/nr/zm;->bm:I

    .line 107
    iput v3, p0, Lcom/byazt/nr/zm;->lr:I

    goto :goto_3

    .line 108
    :cond_7
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/byazt/nr/zm;->c(IIIZ)V

    :cond_8
    :goto_3
    return v1

    .line 109
    :cond_9
    :goto_4
    invoke-direct {p0, p1, v2, v3, v0}, Lcom/byazt/nr/zm;->c(IIIZ)V

    return v0
.end method

.method private da()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/nr/gr;->c()Lcom/byazt/nr/gr;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/byazt/nr/zm;->v:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/nr/gr;->ve(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private getType()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/nr/zm;->gr:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    return v0
.end method

.method private i()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/byazt/nr/zm;->sp(I)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/byazt/nr/zm;->rl:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/byazt/nr/zm;->gu:Z

    return-void
.end method

.method private i(I)V
    .locals 3

    .line 4
    :try_start_0
    iput p1, p0, Lcom/byazt/nr/zm;->v:I

    .line 5
    invoke-static {}, Lcom/byazt/nr/gr;->c()Lcom/byazt/nr/gr;

    move-result-object p1

    iget v0, p0, Lcom/byazt/nr/zm;->v:I

    const-string v1, "calculation_method"

    iget v2, p0, Lcom/byazt/nr/zm;->da:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/nr/gr;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/byazt/nr/gr;->c()Lcom/byazt/nr/gr;

    move-result-object p1

    iget v0, p0, Lcom/byazt/nr/zm;->v:I

    const-string v1, "calculation_method_twist"

    iget v2, p0, Lcom/byazt/nr/zm;->my:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/nr/gr;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcom/byazt/nr/gr;->c()Lcom/byazt/nr/gr;

    move-result-object p1

    iget v0, p0, Lcom/byazt/nr/zm;->v:I

    const-string v1, "shake_threshold"

    iget v2, p0, Lcom/byazt/nr/zm;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/nr/gr;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/byazt/nr/gr;->c()Lcom/byazt/nr/gr;

    move-result-object p1

    iget v0, p0, Lcom/byazt/nr/zm;->v:I

    const-string v1, "twist_threshold"

    iget v2, p0, Lcom/byazt/nr/zm;->i:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/nr/gr;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/byazt/nr/gr;->c()Lcom/byazt/nr/gr;

    move-result-object p1

    iget v0, p0, Lcom/byazt/nr/zm;->v:I

    const-string v1, "twist_single_threshold"

    iget-boolean v2, p0, Lcom/byazt/nr/zm;->qp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/nr/gr;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lcom/byazt/nr/gr;->c()Lcom/byazt/nr/gr;

    move-result-object p1

    iget v0, p0, Lcom/byazt/nr/zm;->v:I

    const-string v1, "twist_x_threshold"

    iget v2, p0, Lcom/byazt/nr/zm;->pf:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/nr/gr;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/byazt/nr/gr;->c()Lcom/byazt/nr/gr;

    move-result-object p1

    iget v0, p0, Lcom/byazt/nr/zm;->v:I

    const-string v1, "twist_y_threshold"

    iget v2, p0, Lcom/byazt/nr/zm;->sv:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/nr/gr;->c(ILjava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lcom/byazt/nr/gr;->c()Lcom/byazt/nr/gr;

    move-result-object p1

    iget v0, p0, Lcom/byazt/nr/zm;->v:I

    const-string v1, "twist_z_threshold"

    iget v2, p0, Lcom/byazt/nr/zm;->ic:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/nr/gr;->c(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p0}, Lcom/byazt/nr/sl;->c(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method private n(F)V
    .locals 5

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/byazt/nr/zm;->rl:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/nr/zm;->qy:Z

    .line 6
    invoke-direct {p0}, Lcom/byazt/nr/zm;->i()V

    return-void

    .line 7
    :cond_0
    iget v0, p0, Lcom/byazt/nr/zm;->rh:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/byazt/nr/zm;->qy:Z

    .line 9
    invoke-direct {p0}, Lcom/byazt/nr/zm;->i()V

    :cond_1
    return-void
.end method

.method private sp()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/byazt/nr/zm;->hd:I

    .line 2
    iput v0, p0, Lcom/byazt/nr/zm;->bm:I

    .line 3
    iput v0, p0, Lcom/byazt/nr/zm;->lr:I

    return-void
.end method

.method private sp(F)V
    .locals 5

    .line 8
    iget v0, p0, Lcom/byazt/nr/zm;->my:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/byazt/nr/zm;->c(ZF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/byazt/nr/zm;->sp:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x7d0

    cmp-long p1, v0, v3

    if-lez p1, :cond_2

    .line 11
    invoke-direct {p0, v2}, Lcom/byazt/nr/zm;->tt(Z)V

    .line 12
    iget-object p1, p0, Lcom/byazt/nr/zm;->t:Lcom/byazt/nr/zm$c;

    if-eqz p1, :cond_1

    const/16 p1, 0xd

    .line 13
    invoke-direct {p0, p1}, Lcom/byazt/nr/zm;->x(I)V

    .line 14
    iget-object p1, p0, Lcom/byazt/nr/zm;->t:Lcom/byazt/nr/zm$c;

    invoke-direct {p0}, Lcom/byazt/nr/zm;->getType()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/byazt/nr/zm$c;->c(I)V

    .line 15
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/nr/zm;->sp:J

    :cond_2
    return-void
.end method

.method private sp(I)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/nr/zm;->t:Lcom/byazt/nr/zm$c;

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/nr/zm;->x(I)V

    .line 6
    iget-object p1, p0, Lcom/byazt/nr/zm;->t:Lcom/byazt/nr/zm$c;

    invoke-direct {p0}, Lcom/byazt/nr/zm;->getType()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/byazt/nr/zm$c;->c(I)V

    .line 7
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/nr/zm;->tt:J

    return-void
.end method

.method private tt(Landroid/hardware/SensorEvent;)V
    .locals 9

    .line 13
    iget v0, p0, Lcom/byazt/nr/zm;->yv:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_9

    .line 14
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v2, v2

    sub-float/2addr v2, v0

    const v0, 0x3089705f    # 1.0E-9f

    mul-float v2, v2, v0

    .line 15
    iget-object v0, p0, Lcom/byazt/nr/zm;->p:[F

    const/4 v3, 0x0

    aget v4, v0, v3

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v5, v3

    mul-float v6, v6, v2

    add-float/2addr v4, v6

    aput v4, v0, v3

    const/4 v6, 0x1

    .line 16
    aget v7, v0, v6

    aget v8, v5, v6

    mul-float v8, v8, v2

    add-float/2addr v7, v8

    aput v7, v0, v6

    const/4 v7, 0x2

    .line 17
    aget v8, v0, v7

    aget v5, v5, v7

    mul-float v5, v5, v2

    add-float/2addr v8, v5

    aput v8, v0, v7

    float-to-double v4, v4

    .line 18
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 19
    iget-object v2, p0, Lcom/byazt/nr/zm;->p:[F

    aget v2, v2, v6

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 20
    iget-object v4, p0, Lcom/byazt/nr/zm;->p:[F

    aget v4, v4, v7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 21
    iget-boolean v5, p0, Lcom/byazt/nr/zm;->qp:Z

    if-eqz v5, :cond_4

    .line 22
    iget-boolean v5, p0, Lcom/byazt/nr/zm;->nb:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/byazt/nr/zm;->pf:F

    invoke-direct {p0, v0, v5}, Lcom/byazt/nr/zm;->c(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-boolean v5, p0, Lcom/byazt/nr/zm;->bx:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/byazt/nr/zm;->sv:F

    invoke-direct {p0, v2, v5}, Lcom/byazt/nr/zm;->c(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_1
    iget-boolean v5, p0, Lcom/byazt/nr/zm;->aw:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/byazt/nr/zm;->ic:F

    invoke-direct {p0, v4, v5}, Lcom/byazt/nr/zm;->c(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v0, :cond_3

    if-nez v2, :cond_3

    if-eqz v4, :cond_5

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/byazt/nr/zm;->p:[F

    invoke-direct {p0, v7, v0}, Lcom/byazt/nr/zm;->c(I[F)V

    .line 26
    iget-object v0, p0, Lcom/byazt/nr/zm;->p:[F

    aput v1, v0, v3

    .line 27
    aput v1, v0, v6

    .line 28
    aput v1, v0, v7

    goto :goto_4

    .line 29
    :cond_4
    iget v5, p0, Lcom/byazt/nr/zm;->i:F

    invoke-direct {p0, v0, v5}, Lcom/byazt/nr/zm;->c(FF)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/byazt/nr/zm;->i:F

    invoke-direct {p0, v2, v0}, Lcom/byazt/nr/zm;->c(FF)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/byazt/nr/zm;->i:F

    invoke-direct {p0, v4, v0}, Lcom/byazt/nr/zm;->c(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    .line 30
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/byazt/nr/zm;->p:[F

    invoke-direct {p0, v7, v0}, Lcom/byazt/nr/zm;->c(I[F)V

    .line 31
    iget-object v0, p0, Lcom/byazt/nr/zm;->p:[F

    aput v1, v0, v3

    .line 32
    aput v1, v0, v6

    .line 33
    aput v1, v0, v7

    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_8

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/byazt/nr/zm;->sp:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x7d0

    cmp-long v2, v0, v4

    if-lez v2, :cond_8

    .line 35
    iget-object v0, p0, Lcom/byazt/nr/zm;->t:Lcom/byazt/nr/zm$c;

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    .line 36
    invoke-direct {p0, v0}, Lcom/byazt/nr/zm;->x(I)V

    .line 37
    iget-object v0, p0, Lcom/byazt/nr/zm;->t:Lcom/byazt/nr/zm$c;

    invoke-direct {p0}, Lcom/byazt/nr/zm;->getType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/byazt/nr/zm$c;->c(I)V

    .line 38
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/nr/zm;->sp:J

    .line 39
    :cond_8
    iget-object v0, p0, Lcom/byazt/nr/zm;->u:Lcom/byazt/nr/zm$tt;

    if-eqz v0, :cond_9

    .line 40
    iget-object v1, p0, Lcom/byazt/nr/zm;->p:[F

    aget v2, v1, v3

    aget v3, v1, v6

    aget v1, v1, v7

    invoke-interface {v0, v2, v3, v1}, Lcom/byazt/nr/zm$tt;->c(FFF)V

    .line 41
    :cond_9
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float p1, v0

    iput p1, p0, Lcom/byazt/nr/zm;->yv:F

    return-void
.end method

.method private tt(Z)V
    .locals 2

    .line 43
    iget-object p1, p0, Lcom/byazt/nr/zm;->zb:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 44
    aput v1, p1, v0

    const/4 v0, 0x2

    .line 45
    aput v1, p1, v0

    return-void
.end method

.method private tt(ZLandroid/hardware/SensorEvent;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object p1, p2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    .line 51
    aget v0, p1, v0

    iget v1, p0, Lcom/byazt/nr/zm;->hd:I

    invoke-direct {p0, v0, v1}, Lcom/byazt/nr/zm;->c(FI)I

    move-result v0

    const/4 v1, 0x1

    .line 52
    aget v2, p1, v1

    iget v3, p0, Lcom/byazt/nr/zm;->bm:I

    invoke-direct {p0, v2, v3}, Lcom/byazt/nr/zm;->c(FI)I

    move-result v2

    const/4 v3, 0x2

    .line 53
    aget p1, p1, v3

    iget v4, p0, Lcom/byazt/nr/zm;->lr:I

    invoke-direct {p0, p1, v4}, Lcom/byazt/nr/zm;->c(FI)I

    move-result p1

    .line 54
    invoke-direct {p0, v0, v2, p1, v1}, Lcom/byazt/nr/zm;->tt(IIIZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    invoke-direct {p0, v0, v2, p1, v1}, Lcom/byazt/nr/zm;->c(IIIZ)V

    .line 56
    invoke-direct {p0, v3}, Lcom/byazt/nr/zm;->sp(I)V

    goto :goto_0

    .line 57
    :cond_1
    iget v3, p0, Lcom/byazt/nr/zm;->tk:I

    if-ne v3, v1, :cond_2

    .line 58
    iput v0, p0, Lcom/byazt/nr/zm;->hd:I

    .line 59
    iput v2, p0, Lcom/byazt/nr/zm;->bm:I

    .line 60
    iput p1, p0, Lcom/byazt/nr/zm;->lr:I

    goto :goto_0

    .line 61
    :cond_2
    iget v3, p0, Lcom/byazt/nr/zm;->hd:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/byazt/nr/zm;->hd:I

    .line 62
    iget v0, p0, Lcom/byazt/nr/zm;->bm:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/byazt/nr/zm;->bm:I

    .line 63
    iget v0, p0, Lcom/byazt/nr/zm;->lr:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/byazt/nr/zm;->lr:I

    .line 64
    :goto_0
    iget-object p1, p2, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v1, p1}, Lcom/byazt/nr/zm;->c(I[F)V

    return-void
.end method

.method private tt()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget v2, p0, Lcom/byazt/nr/zm;->da:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/byazt/nr/zm;->ve()Z

    move-result v0

    return v0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/byazt/nr/zm;->yp:Landroid/hardware/Sensor;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 5
    invoke-interface {v0, v2}, Lcom/byazt/nr/sl;->c(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/nr/zm;->yp:Landroid/hardware/Sensor;

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    iget-object v2, p0, Lcom/byazt/nr/zm;->yp:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-interface {v0, p0, v2, v3}, Lcom/byazt/nr/sl;->c(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    .line 7
    invoke-direct {p0}, Lcom/byazt/nr/zm;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v1
.end method

.method private tt(FF)Z
    .locals 0

    .line 42
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private tt(IIIZ)Z
    .locals 4

    .line 65
    iget v0, p0, Lcom/byazt/nr/zm;->to:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    if-eqz p4, :cond_0

    .line 66
    iget p4, p0, Lcom/byazt/nr/zm;->hd:I

    invoke-direct {p0, p1, p4}, Lcom/byazt/nr/zm;->c(II)Z

    move-result p1

    .line 67
    iget p4, p0, Lcom/byazt/nr/zm;->bm:I

    invoke-direct {p0, p2, p4}, Lcom/byazt/nr/zm;->c(II)Z

    move-result p2

    .line 68
    iget p4, p0, Lcom/byazt/nr/zm;->lr:I

    invoke-direct {p0, p3, p4}, Lcom/byazt/nr/zm;->c(II)Z

    move-result p3

    goto :goto_0

    .line 69
    :cond_0
    iget p4, p0, Lcom/byazt/nr/zm;->hd:I

    iget v0, p0, Lcom/byazt/nr/zm;->l:I

    invoke-direct {p0, p1, p4, v0}, Lcom/byazt/nr/zm;->c(III)Z

    move-result p1

    .line 70
    iget p4, p0, Lcom/byazt/nr/zm;->bm:I

    iget v0, p0, Lcom/byazt/nr/zm;->lo:I

    invoke-direct {p0, p2, p4, v0}, Lcom/byazt/nr/zm;->c(III)Z

    move-result p2

    .line 71
    iget p4, p0, Lcom/byazt/nr/zm;->lr:I

    iget v0, p0, Lcom/byazt/nr/zm;->pu:I

    invoke-direct {p0, p3, p4, v0}, Lcom/byazt/nr/zm;->c(III)Z

    move-result p3

    :goto_0
    if-nez p1, :cond_a

    if-nez p2, :cond_a

    if-eqz p3, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_2
    if-eqz p4, :cond_3

    .line 72
    iget p4, p0, Lcom/byazt/nr/zm;->hd:I

    invoke-direct {p0, p1, p4}, Lcom/byazt/nr/zm;->c(II)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/byazt/nr/zm;->bm:I

    invoke-direct {p0, p2, p1}, Lcom/byazt/nr/zm;->c(II)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/byazt/nr/zm;->lr:I

    .line 73
    invoke-direct {p0, p3, p1}, Lcom/byazt/nr/zm;->c(II)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    .line 74
    :cond_3
    iget p4, p0, Lcom/byazt/nr/zm;->hd:I

    iget v0, p0, Lcom/byazt/nr/zm;->l:I

    invoke-direct {p0, p1, p4, v0}, Lcom/byazt/nr/zm;->c(III)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/byazt/nr/zm;->bm:I

    iget p4, p0, Lcom/byazt/nr/zm;->lo:I

    .line 75
    invoke-direct {p0, p2, p1, p4}, Lcom/byazt/nr/zm;->c(III)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/byazt/nr/zm;->lr:I

    iget p2, p0, Lcom/byazt/nr/zm;->pu:I

    .line 76
    invoke-direct {p0, p3, p1, p2}, Lcom/byazt/nr/zm;->c(III)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    .line 77
    :cond_4
    iget p2, p0, Lcom/byazt/nr/zm;->hd:I

    if-eqz p4, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/byazt/nr/zm;->c(II)Z

    move-result p1

    goto :goto_1

    :cond_5
    iget p3, p0, Lcom/byazt/nr/zm;->l:I

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/nr/zm;->c(III)Z

    move-result p1

    :goto_1
    move v1, p1

    goto :goto_2

    .line 79
    :cond_6
    iget p1, p0, Lcom/byazt/nr/zm;->bm:I

    if-eqz p4, :cond_7

    invoke-direct {p0, p2, p1}, Lcom/byazt/nr/zm;->c(II)Z

    move-result p1

    goto :goto_1

    :cond_7
    iget p3, p0, Lcom/byazt/nr/zm;->lo:I

    .line 80
    invoke-direct {p0, p2, p1, p3}, Lcom/byazt/nr/zm;->c(III)Z

    move-result p1

    goto :goto_1

    .line 81
    :cond_8
    iget p1, p0, Lcom/byazt/nr/zm;->lr:I

    if-eqz p4, :cond_9

    invoke-direct {p0, p3, p1}, Lcom/byazt/nr/zm;->c(II)Z

    move-result p1

    goto :goto_1

    :cond_9
    iget p2, p0, Lcom/byazt/nr/zm;->pu:I

    .line 82
    invoke-direct {p0, p3, p1, p2}, Lcom/byazt/nr/zm;->c(III)Z

    move-result p1

    goto :goto_1

    :cond_a
    :goto_2
    return v1
.end method

.method private uj(F)V
    .locals 5

    .line 8
    iget v0, p0, Lcom/byazt/nr/zm;->my:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/byazt/nr/zm;->c(ZF)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/byazt/nr/zm;->sp:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long p1, v1, v3

    if-lez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/byazt/nr/zm;->t:Lcom/byazt/nr/zm$c;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    const/16 p1, 0xc

    goto :goto_1

    :cond_1
    const/16 p1, 0xb

    .line 12
    :goto_1
    invoke-direct {p0, p1}, Lcom/byazt/nr/zm;->x(I)V

    .line 13
    iget-object p1, p0, Lcom/byazt/nr/zm;->t:Lcom/byazt/nr/zm$c;

    invoke-direct {p0}, Lcom/byazt/nr/zm;->getType()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/byazt/nr/zm$c;->c(I)V

    .line 14
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/nr/zm;->sp:J

    :cond_3
    return-void
.end method

.method private uj()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/nr/zm;->lt:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget v0, p0, Lcom/byazt/nr/zm;->gr:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/byazt/nr/zm;->tt()Z

    move-result v0

    return v0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/byazt/nr/zm;->ve()Z

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method private ve()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget v2, p0, Lcom/byazt/nr/zm;->my:I

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/byazt/nr/zm;->z:Landroid/hardware/Sensor;

    if-nez v2, :cond_1

    const/16 v2, 0xf

    .line 4
    invoke-interface {v0, v2}, Lcom/byazt/nr/sl;->c(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/nr/zm;->z:Landroid/hardware/Sensor;

    .line 5
    :cond_1
    iput-boolean v1, p0, Lcom/byazt/nr/zm;->a:Z

    .line 6
    iget-object v0, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    iget-object v2, p0, Lcom/byazt/nr/zm;->z:Landroid/hardware/Sensor;

    invoke-interface {v0, p0, v2, v3}, Lcom/byazt/nr/sl;->c(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    .line 7
    :cond_2
    iget v0, p0, Lcom/byazt/nr/zm;->my:I

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eq v0, v2, :cond_3

    if-eq v0, v4, :cond_3

    if-eq v0, v5, :cond_3

    const/4 v2, 0x7

    if-ne v0, v2, :cond_8

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/byazt/nr/zm;->m:Landroid/hardware/Sensor;

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    invoke-interface {v0, v5}, Lcom/byazt/nr/sl;->c(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/nr/zm;->m:Landroid/hardware/Sensor;

    .line 10
    :cond_4
    iget v0, p0, Lcom/byazt/nr/zm;->d:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/byazt/nr/zm;->my:I

    if-eq v2, v4, :cond_5

    if-ne v2, v5, :cond_7

    :cond_5
    float-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 11
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lcom/byazt/nr/zm;->kp:F

    .line 12
    iget-object v0, p0, Lcom/byazt/nr/zm;->nu:Landroid/hardware/Sensor;

    if-nez v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcom/byazt/nr/sl;->c(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/nr/zm;->nu:Landroid/hardware/Sensor;

    .line 14
    :cond_6
    iget-object v0, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    iget-object v2, p0, Lcom/byazt/nr/zm;->nu:Landroid/hardware/Sensor;

    invoke-interface {v0, p0, v2, v3}, Lcom/byazt/nr/sl;->c(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    move v1, v0

    .line 15
    :cond_7
    iget-object v0, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    iget-object v2, p0, Lcom/byazt/nr/zm;->m:Landroid/hardware/Sensor;

    invoke-interface {v0, p0, v2, v3}, Lcom/byazt/nr/sl;->c(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    move v1, v0

    .line 16
    :cond_8
    invoke-direct {p0}, Lcom/byazt/nr/zm;->sp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v1
.end method

.method private x(I)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/byazt/nr/gr;->c()Lcom/byazt/nr/gr;

    move-result-object v0

    iget v1, p0, Lcom/byazt/nr/zm;->v:I

    invoke-virtual {v0, v1, p1}, Lcom/byazt/nr/gr;->c(II)V

    return-void
.end method

.method private x()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/nr/zm;->rh:F

    iget v1, p0, Lcom/byazt/nr/zm;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_3

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/byazt/nr/zm;->m:Landroid/hardware/Sensor;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {v0, v2}, Lcom/byazt/nr/sl;->c(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/nr/zm;->m:Landroid/hardware/Sensor;

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/byazt/nr/zm;->m:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    .line 15
    iput p1, p0, Lcom/byazt/nr/zm;->my:I

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/byazt/nr/zm;->my:I

    return-void
.end method

.method public c(F)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/byazt/nr/zm;->x:F

    return-void
.end method

.method public c(Lcom/byazt/nr/zm$c;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/byazt/nr/zm;->t:Lcom/byazt/nr/zm$c;

    return-void
.end method

.method public c(Lcom/byazt/nr/zm$tt;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/byazt/nr/zm;->u:Lcom/byazt/nr/zm$tt;

    return-void
.end method

.method public c(Lcom/byazt/nr/zm$ve;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/byazt/nr/zm;->b:Lcom/byazt/nr/zm$ve;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 6

    .line 58
    iget v0, p0, Lcom/byazt/nr/zm;->gr:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/byazt/nr/zm;->cu:Lorg/json/JSONObject;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 60
    iput-boolean v0, p0, Lcom/byazt/nr/zm;->nb:Z

    .line 61
    iput-boolean v0, p0, Lcom/byazt/nr/zm;->bx:Z

    .line 62
    iput-boolean v0, p0, Lcom/byazt/nr/zm;->aw:Z

    goto :goto_0

    :cond_1
    const-string v1, "x_threshold"

    .line 63
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/nr/zm;->nb:Z

    .line 64
    iget-object p1, p0, Lcom/byazt/nr/zm;->cu:Lorg/json/JSONObject;

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/byazt/nr/zm;->c(D)F

    move-result p1

    iput p1, p0, Lcom/byazt/nr/zm;->pf:F

    .line 65
    iget-object p1, p0, Lcom/byazt/nr/zm;->cu:Lorg/json/JSONObject;

    const-string v1, "y_threshold"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/nr/zm;->bx:Z

    .line 66
    iget-object p1, p0, Lcom/byazt/nr/zm;->cu:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/byazt/nr/zm;->c(D)F

    move-result p1

    iput p1, p0, Lcom/byazt/nr/zm;->sv:F

    .line 67
    iget-object p1, p0, Lcom/byazt/nr/zm;->cu:Lorg/json/JSONObject;

    const-string v1, "z_threshold"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/nr/zm;->aw:Z

    .line 68
    iget-object p1, p0, Lcom/byazt/nr/zm;->cu:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/byazt/nr/zm;->c(D)F

    move-result p1

    iput p1, p0, Lcom/byazt/nr/zm;->ic:F

    .line 69
    :goto_0
    iget-boolean p1, p0, Lcom/byazt/nr/zm;->nb:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/byazt/nr/zm;->bx:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/byazt/nr/zm;->aw:Z

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/byazt/nr/zm;->qp:Z

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " m:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/byazt/nr/zm;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " equ:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xgcc"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1, p0}, Lcom/byazt/nr/sl;->c(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    return-void

    .line 10
    :cond_1
    iget-boolean p1, p0, Lcom/byazt/nr/zm;->q:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/byazt/nr/zm;->kk:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 11
    invoke-static {p1}, Lcom/byazt/nr/n;->c(Landroid/content/Context;)Lcom/byazt/nr/n;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/nr/zm;->sl:Lcom/byazt/nr/sl;

    :cond_2
    return-void
.end method

.method public c()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/byazt/nr/zm;->qy:Z

    return v0
.end method

.method public c(I)Z
    .locals 3

    .line 15
    invoke-direct {p0, p1}, Lcom/byazt/nr/zm;->i(I)V

    if-lez p1, :cond_0

    .line 16
    sget-object v0, Lcom/byazt/nr/zm;->tx:Lcom/byazt/nr/yv;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/byazt/nr/yv;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    sget-object v0, Lcom/byazt/nr/zm;->tx:Lcom/byazt/nr/yv;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v2, Lcom/byazt/nr/zm$1;

    invoke-direct {v2, p0}, Lcom/byazt/nr/zm$1;-><init>(Lcom/byazt/nr/zm;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/byazt/nr/yv;->c(IILjava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/byazt/nr/zm;->uj()Z

    move-result p1

    return p1
.end method

.method public n(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/nr/zm;->da:I

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    iget-object v2, v0, Lcom/byazt/nr/zm;->b:Lcom/byazt/nr/zm$ve;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-interface {v2}, Lcom/byazt/nr/zm$ve;->c()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 18
    .line 19
    if-eqz v3, :cond_1b

    .line 20
    .line 21
    array-length v4, v3

    .line 22
    const/4 v5, 0x3

    .line 23
    if-ge v4, v5, :cond_1

    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_1
    const/4 v4, 0x0

    .line 28
    aget v6, v3, v4

    .line 29
    .line 30
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/4 v7, 0x1

    .line 35
    aget v8, v3, v7

    .line 36
    .line 37
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    const/4 v9, 0x2

    .line 42
    aget v10, v3, v9

    .line 43
    .line 44
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    const-wide/16 v11, 0x7d0

    .line 49
    .line 50
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 51
    .line 52
    if-eq v2, v7, :cond_12

    .line 53
    .line 54
    const/4 v6, 0x4

    .line 55
    if-eq v2, v6, :cond_e

    .line 56
    .line 57
    const/16 v6, 0xa

    .line 58
    .line 59
    if-eq v2, v6, :cond_d

    .line 60
    .line 61
    const/16 v1, 0xf

    .line 62
    .line 63
    if-eq v2, v1, :cond_2

    .line 64
    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    :cond_2
    aget v1, v3, v4

    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    aget v2, v3, v7

    .line 74
    .line 75
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    aget v6, v3, v9

    .line 80
    .line 81
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    iget-object v8, v0, Lcom/byazt/nr/zm;->u:Lcom/byazt/nr/zm$tt;

    .line 86
    .line 87
    if-eqz v8, :cond_3

    .line 88
    .line 89
    aget v10, v3, v4

    .line 90
    .line 91
    aget v13, v3, v7

    .line 92
    .line 93
    aget v3, v3, v9

    .line 94
    .line 95
    invoke-interface {v8, v10, v13, v3}, Lcom/byazt/nr/zm$tt;->c(FFF)V

    .line 96
    .line 97
    .line 98
    :cond_3
    const/4 v3, 0x0

    .line 99
    cmpl-float v8, v1, v3

    .line 100
    .line 101
    if-nez v8, :cond_4

    .line 102
    .line 103
    cmpl-float v8, v2, v3

    .line 104
    .line 105
    if-nez v8, :cond_4

    .line 106
    .line 107
    cmpl-float v3, v6, v3

    .line 108
    .line 109
    if-nez v3, :cond_4

    .line 110
    .line 111
    return-void

    .line 112
    :cond_4
    iget-boolean v3, v0, Lcom/byazt/nr/zm;->a:Z

    .line 113
    .line 114
    if-nez v3, :cond_5

    .line 115
    .line 116
    iput-boolean v7, v0, Lcom/byazt/nr/zm;->a:Z

    .line 117
    .line 118
    iput v1, v0, Lcom/byazt/nr/zm;->ve:F

    .line 119
    .line 120
    iput v2, v0, Lcom/byazt/nr/zm;->uj:F

    .line 121
    .line 122
    iput v6, v0, Lcom/byazt/nr/zm;->n:F

    .line 123
    .line 124
    return-void

    .line 125
    :cond_5
    iget v3, v0, Lcom/byazt/nr/zm;->ve:F

    .line 126
    .line 127
    sub-float/2addr v1, v3

    .line 128
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    const/high16 v3, 0x43340000    # 180.0f

    .line 133
    .line 134
    mul-float v1, v1, v3

    .line 135
    .line 136
    iget v8, v0, Lcom/byazt/nr/zm;->uj:F

    .line 137
    .line 138
    sub-float/2addr v2, v8

    .line 139
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    mul-float v2, v2, v3

    .line 144
    .line 145
    iget v8, v0, Lcom/byazt/nr/zm;->n:F

    .line 146
    .line 147
    sub-float/2addr v6, v8

    .line 148
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    mul-float v6, v6, v3

    .line 153
    .line 154
    new-array v3, v5, [F

    .line 155
    .line 156
    aput v1, v3, v4

    .line 157
    .line 158
    aput v2, v3, v7

    .line 159
    .line 160
    aput v6, v3, v9

    .line 161
    .line 162
    iget-boolean v5, v0, Lcom/byazt/nr/zm;->qp:Z

    .line 163
    .line 164
    const/16 v8, 0xb

    .line 165
    .line 166
    if-eqz v5, :cond_b

    .line 167
    .line 168
    iget-boolean v5, v0, Lcom/byazt/nr/zm;->nb:Z

    .line 169
    .line 170
    if-eqz v5, :cond_6

    .line 171
    .line 172
    iget v5, v0, Lcom/byazt/nr/zm;->pf:F

    .line 173
    .line 174
    cmpl-float v1, v1, v5

    .line 175
    .line 176
    if-lez v1, :cond_6

    .line 177
    .line 178
    const/4 v1, 0x1

    .line 179
    goto :goto_0

    .line 180
    :cond_6
    const/4 v1, 0x0

    .line 181
    :goto_0
    iget-boolean v5, v0, Lcom/byazt/nr/zm;->bx:Z

    .line 182
    .line 183
    if-eqz v5, :cond_7

    .line 184
    .line 185
    iget v5, v0, Lcom/byazt/nr/zm;->sv:F

    .line 186
    .line 187
    cmpl-float v2, v2, v5

    .line 188
    .line 189
    if-lez v2, :cond_7

    .line 190
    .line 191
    const/4 v2, 0x1

    .line 192
    goto :goto_1

    .line 193
    :cond_7
    const/4 v2, 0x0

    .line 194
    :goto_1
    iget-boolean v5, v0, Lcom/byazt/nr/zm;->aw:Z

    .line 195
    .line 196
    if-eqz v5, :cond_8

    .line 197
    .line 198
    iget v5, v0, Lcom/byazt/nr/zm;->ic:F

    .line 199
    .line 200
    cmpl-float v5, v6, v5

    .line 201
    .line 202
    if-lez v5, :cond_8

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_8
    const/4 v7, 0x0

    .line 206
    :goto_2
    if-nez v1, :cond_9

    .line 207
    .line 208
    if-nez v2, :cond_9

    .line 209
    .line 210
    if-eqz v7, :cond_a

    .line 211
    .line 212
    :cond_9
    iget-object v1, v0, Lcom/byazt/nr/zm;->t:Lcom/byazt/nr/zm$c;

    .line 213
    .line 214
    if-eqz v1, :cond_a

    .line 215
    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 217
    .line 218
    .line 219
    move-result-wide v1

    .line 220
    iget-wide v5, v0, Lcom/byazt/nr/zm;->sp:J

    .line 221
    .line 222
    sub-long/2addr v1, v5

    .line 223
    cmp-long v5, v1, v11

    .line 224
    .line 225
    if-lez v5, :cond_a

    .line 226
    .line 227
    invoke-direct {p0, v9, v3}, Lcom/byazt/nr/zm;->c(I[F)V

    .line 228
    .line 229
    .line 230
    invoke-direct {p0, v8}, Lcom/byazt/nr/zm;->x(I)V

    .line 231
    .line 232
    .line 233
    iget-object v1, v0, Lcom/byazt/nr/zm;->t:Lcom/byazt/nr/zm$c;

    .line 234
    .line 235
    invoke-direct {p0}, Lcom/byazt/nr/zm;->getType()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    invoke-interface {v1, v2}, Lcom/byazt/nr/zm$c;->c(I)V

    .line 240
    .line 241
    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 243
    .line 244
    .line 245
    move-result-wide v1

    .line 246
    iput-wide v1, v0, Lcom/byazt/nr/zm;->sp:J

    .line 247
    .line 248
    iput-boolean v4, v0, Lcom/byazt/nr/zm;->a:Z

    .line 249
    .line 250
    :cond_a
    return-void

    .line 251
    :cond_b
    iget v5, v0, Lcom/byazt/nr/zm;->i:F

    .line 252
    .line 253
    cmpl-float v1, v1, v5

    .line 254
    .line 255
    if-gtz v1, :cond_c

    .line 256
    .line 257
    cmpl-float v1, v2, v5

    .line 258
    .line 259
    if-gtz v1, :cond_c

    .line 260
    .line 261
    cmpl-float v1, v6, v5

    .line 262
    .line 263
    if-lez v1, :cond_10

    .line 264
    .line 265
    :cond_c
    iget-object v1, v0, Lcom/byazt/nr/zm;->t:Lcom/byazt/nr/zm$c;

    .line 266
    .line 267
    if-eqz v1, :cond_10

    .line 268
    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 270
    .line 271
    .line 272
    move-result-wide v1

    .line 273
    iget-wide v5, v0, Lcom/byazt/nr/zm;->sp:J

    .line 274
    .line 275
    sub-long/2addr v1, v5

    .line 276
    cmp-long v5, v1, v11

    .line 277
    .line 278
    if-lez v5, :cond_10

    .line 279
    .line 280
    invoke-direct {p0, v9, v3}, Lcom/byazt/nr/zm;->c(I[F)V

    .line 281
    .line 282
    .line 283
    invoke-direct {p0, v8}, Lcom/byazt/nr/zm;->x(I)V

    .line 284
    .line 285
    .line 286
    iget-object v1, v0, Lcom/byazt/nr/zm;->t:Lcom/byazt/nr/zm$c;

    .line 287
    .line 288
    invoke-direct {p0}, Lcom/byazt/nr/zm;->getType()I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    invoke-interface {v1, v2}, Lcom/byazt/nr/zm$c;->c(I)V

    .line 293
    .line 294
    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 296
    .line 297
    .line 298
    move-result-wide v1

    .line 299
    iput-wide v1, v0, Lcom/byazt/nr/zm;->sp:J

    .line 300
    .line 301
    iput-boolean v4, v0, Lcom/byazt/nr/zm;->a:Z

    .line 302
    .line 303
    return-void

    .line 304
    :cond_d
    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 305
    .line 306
    aget v2, v1, v4

    .line 307
    .line 308
    aget v3, v1, v7

    .line 309
    .line 310
    aget v1, v1, v9

    .line 311
    .line 312
    float-to-double v4, v2

    .line 313
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 314
    .line 315
    .line 316
    move-result-wide v4

    .line 317
    float-to-double v2, v3

    .line 318
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 319
    .line 320
    .line 321
    move-result-wide v2

    .line 322
    add-double/2addr v4, v2

    .line 323
    float-to-double v1, v1

    .line 324
    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 325
    .line 326
    .line 327
    move-result-wide v1

    .line 328
    add-double/2addr v4, v1

    .line 329
    double-to-float v1, v4

    .line 330
    iput v1, v0, Lcom/byazt/nr/zm;->eo:F

    .line 331
    .line 332
    goto :goto_3

    .line 333
    :cond_e
    iget v2, v0, Lcom/byazt/nr/zm;->my:I

    .line 334
    .line 335
    if-ne v2, v5, :cond_f

    .line 336
    .line 337
    invoke-direct/range {p0 .. p1}, Lcom/byazt/nr/zm;->tt(Landroid/hardware/SensorEvent;)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :cond_f
    if-eq v2, v9, :cond_11

    .line 342
    .line 343
    if-eq v2, v6, :cond_11

    .line 344
    .line 345
    const/4 v3, 0x7

    .line 346
    if-ne v2, v3, :cond_10

    .line 347
    .line 348
    goto :goto_4

    .line 349
    :cond_10
    :goto_3
    return-void

    .line 350
    :cond_11
    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/byazt/nr/zm;->c(Landroid/hardware/SensorEvent;)V

    .line 351
    .line 352
    .line 353
    return-void

    .line 354
    :cond_12
    iget-object v2, v0, Lcom/byazt/nr/zm;->t:Lcom/byazt/nr/zm$c;

    .line 355
    .line 356
    if-eqz v2, :cond_1b

    .line 357
    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 359
    .line 360
    .line 361
    move-result-wide v2

    .line 362
    iget-wide v13, v0, Lcom/byazt/nr/zm;->tt:J

    .line 363
    .line 364
    sub-long/2addr v2, v13

    .line 365
    cmp-long v13, v2, v11

    .line 366
    .line 367
    if-gtz v13, :cond_13

    .line 368
    .line 369
    goto/16 :goto_5

    .line 370
    .line 371
    :cond_13
    iget v2, v0, Lcom/byazt/nr/zm;->da:I

    .line 372
    .line 373
    if-eq v2, v7, :cond_19

    .line 374
    .line 375
    if-eq v2, v9, :cond_17

    .line 376
    .line 377
    if-eq v2, v5, :cond_15

    .line 378
    .line 379
    invoke-direct {p0, v6, v8, v10}, Lcom/byazt/nr/zm;->c(FFF)F

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    float-to-double v2, v2

    .line 384
    iget v5, v0, Lcom/byazt/nr/zm;->x:F

    .line 385
    .line 386
    float-to-double v5, v5

    .line 387
    cmpl-double v8, v2, v5

    .line 388
    .line 389
    if-lez v8, :cond_14

    .line 390
    .line 391
    const/4 v4, 0x1

    .line 392
    :cond_14
    invoke-direct {p0, v4, v2, v3, v1}, Lcom/byazt/nr/zm;->c(ZDLandroid/hardware/SensorEvent;)V

    .line 393
    .line 394
    .line 395
    return-void

    .line 396
    :cond_15
    float-to-double v2, v6

    .line 397
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 398
    .line 399
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 400
    .line 401
    .line 402
    move-result-wide v2

    .line 403
    float-to-double v8, v8

    .line 404
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 405
    .line 406
    .line 407
    move-result-wide v8

    .line 408
    add-double/2addr v2, v8

    .line 409
    float-to-double v8, v10

    .line 410
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 411
    .line 412
    .line 413
    move-result-wide v5

    .line 414
    add-double/2addr v2, v5

    .line 415
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 416
    .line 417
    .line 418
    move-result-wide v2

    .line 419
    iget v5, v0, Lcom/byazt/nr/zm;->x:F

    .line 420
    .line 421
    float-to-double v5, v5

    .line 422
    cmpl-double v8, v2, v5

    .line 423
    .line 424
    if-lez v8, :cond_16

    .line 425
    .line 426
    const/4 v4, 0x1

    .line 427
    :cond_16
    invoke-direct {p0, v4, v1}, Lcom/byazt/nr/zm;->c(ZLandroid/hardware/SensorEvent;)V

    .line 428
    .line 429
    .line 430
    return-void

    .line 431
    :cond_17
    float-to-double v2, v6

    .line 432
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 433
    .line 434
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 435
    .line 436
    .line 437
    move-result-wide v2

    .line 438
    float-to-double v8, v8

    .line 439
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 440
    .line 441
    .line 442
    move-result-wide v8

    .line 443
    add-double/2addr v2, v8

    .line 444
    float-to-double v8, v10

    .line 445
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 446
    .line 447
    .line 448
    move-result-wide v5

    .line 449
    add-double/2addr v2, v5

    .line 450
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 451
    .line 452
    .line 453
    move-result-wide v2

    .line 454
    iget v5, v0, Lcom/byazt/nr/zm;->x:F

    .line 455
    .line 456
    float-to-double v5, v5

    .line 457
    cmpl-double v8, v2, v5

    .line 458
    .line 459
    if-lez v8, :cond_18

    .line 460
    .line 461
    const/4 v4, 0x1

    .line 462
    :cond_18
    invoke-direct {p0, v4, v1}, Lcom/byazt/nr/zm;->tt(ZLandroid/hardware/SensorEvent;)V

    .line 463
    .line 464
    .line 465
    return-void

    .line 466
    :cond_19
    float-to-double v2, v6

    .line 467
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 468
    .line 469
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 470
    .line 471
    .line 472
    move-result-wide v2

    .line 473
    float-to-double v8, v8

    .line 474
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 475
    .line 476
    .line 477
    move-result-wide v8

    .line 478
    add-double/2addr v2, v8

    .line 479
    float-to-double v8, v10

    .line 480
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 481
    .line 482
    .line 483
    move-result-wide v5

    .line 484
    add-double/2addr v2, v5

    .line 485
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 486
    .line 487
    .line 488
    move-result-wide v2

    .line 489
    iget v5, v0, Lcom/byazt/nr/zm;->x:F

    .line 490
    .line 491
    float-to-double v5, v5

    .line 492
    cmpl-double v8, v2, v5

    .line 493
    .line 494
    if-lez v8, :cond_1a

    .line 495
    .line 496
    const/4 v4, 0x1

    .line 497
    :cond_1a
    invoke-direct {p0, v4, v2, v3, v1}, Lcom/byazt/nr/zm;->c(ZDLandroid/hardware/SensorEvent;)V

    .line 498
    .line 499
    .line 500
    :cond_1b
    :goto_5
    return-void
.end method

.method public tt(F)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/byazt/nr/zm;->i:F

    return-void
.end method

.method public tt(I)V
    .locals 2

    .line 8
    invoke-direct {p0}, Lcom/byazt/nr/zm;->n()V

    .line 9
    iput p1, p0, Lcom/byazt/nr/zm;->v:I

    .line 10
    sget-object v0, Lcom/byazt/nr/zm;->tx:Lcom/byazt/nr/yv;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/byazt/nr/yv;->c(II)V

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/byazt/nr/zm;->da()V

    return-void
.end method

.method public tt(Lorg/json/JSONObject;)V
    .locals 2

    .line 47
    iget v0, p0, Lcom/byazt/nr/zm;->gr:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 48
    iput v0, p0, Lcom/byazt/nr/zm;->tk:I

    return-void

    :cond_1
    const-string v1, "double_direct_match"

    .line 49
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/nr/zm;->tk:I

    return-void
.end method

.method public uj(I)V
    .locals 1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/byazt/nr/zm;->lt:Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/byazt/nr/zm;->tt(I)V

    return-void
.end method

.method public ve(F)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/byazt/nr/zm;->rh:F

    return-void
.end method

.method public ve(I)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/byazt/nr/zm;->lt:Z

    .line 18
    invoke-virtual {p0, p1}, Lcom/byazt/nr/zm;->c(I)Z

    return-void
.end method

.method public ve(Lorg/json/JSONObject;)V
    .locals 2

    .line 19
    iget v0, p0, Lcom/byazt/nr/zm;->gr:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 20
    iput v0, p0, Lcom/byazt/nr/zm;->to:I

    .line 21
    iput v0, p0, Lcom/byazt/nr/zm;->tk:I

    return-void

    :cond_1
    const-string v1, "double_direct_conf"

    .line 22
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/byazt/nr/zm;->to:I

    const-string v1, "double_direct_match"

    .line 23
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/nr/zm;->tk:I

    return-void
.end method
