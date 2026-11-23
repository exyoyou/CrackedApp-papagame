.class public Lcom/byazt/hz/t;
.super Lcom/byazt/hz/da;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zq/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x42
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/hz/t$c;
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/uhf/tt;

.field public final gt:Lcom/byazt/zq/ve;

.field public m:Lcom/byazt/nf/c;

.field public my:Z

.field public final rl:Lcom/byazt/zq/tt;

.field public tt:Lcom/byazt/uhf/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/hz/da;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/hz/t;->my:Z

    .line 6
    .line 7
    new-instance p1, Lcom/byazt/hz/t$4;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/byazt/hz/t$4;-><init>(Lcom/byazt/hz/t;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/byazt/hz/t;->gt:Lcom/byazt/zq/ve;

    .line 13
    .line 14
    new-instance p1, Lcom/byazt/hz/t$c;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p1, p0, v0}, Lcom/byazt/hz/t$c;-><init>(Lcom/byazt/hz/t;Lcom/byazt/hz/t$1;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/byazt/hz/t;->rl:Lcom/byazt/zq/tt;

    .line 21
    .line 22
    return-void
.end method

.method public static c(Lcom/byazt/ll/tt;Lcom/byazt/bo/c;Lcom/byazt/yl/ve;Ljava/util/Map;)Lcom/byazt/bo/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ll/tt;",
            "Lcom/byazt/bo/c;",
            "Lcom/byazt/yl/ve;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/byazt/bo/c;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 34
    :cond_0
    new-instance v0, Lcom/byazt/hz/t$2;

    invoke-direct {v0, p1, p3, p0, p2}, Lcom/byazt/hz/t$2;-><init>(Lcom/byazt/bo/c;Ljava/util/Map;Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;)V

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/hz/t;)Lcom/byazt/uhf/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hz/t;->tt:Lcom/byazt/uhf/c;

    return-object p0
.end method

.method private c(Lcom/byazt/bo/c;I)V
    .locals 15

    move-object v0, p0

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 24
    iget-object v3, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-static {v3}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    :goto_0
    move-object v9, v3

    move-wide v10, v4

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 27
    invoke-interface/range {p1 .. p1}, Lcom/byazt/bo/c;->uj()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "reason"

    .line 28
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v4, "errorCode"

    .line 30
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 31
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    const-string v4, "errorMsg"

    .line 32
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move v13, v1

    move-object v14, v2

    move v12, v3

    goto :goto_2

    :cond_3
    const-string v2, ""

    move-object v14, v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 33
    :goto_2
    iget-object v6, v0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v7, v0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    move/from16 v8, p2

    invoke-static/range {v6 .. v14}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/hz/t;Lcom/byazt/bo/c;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/hz/t;->c(Lcom/byazt/bo/c;I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/hz/t;Lcom/byazt/pp/c;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/hz/t;->ve(Lcom/byazt/pp/c;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/hz/t;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/hz/t;->my:Z

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/hz/t;)Lcom/byazt/nf/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hz/t;->m:Lcom/byazt/nf/c;

    return-object p0
.end method

.method private tt(Lcom/byazt/bo/c;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/byazt/hz/t;->m:Lcom/byazt/nf/c;

    invoke-virtual {v0}, Lcom/byazt/nf/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/hz/t;->m:Lcom/byazt/nf/c;

    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v0, p1, v1}, Lcom/byazt/nf/c;->c(Lcom/byazt/bo/c;Lcom/byazt/yl/ve;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/hz/t;->tt:Lcom/byazt/uhf/c;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/byazt/hz/t;->c(Lcom/byazt/ll/tt;Lcom/byazt/bo/c;Lcom/byazt/yl/ve;Ljava/util/Map;)Lcom/byazt/bo/c;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/byazt/uhf/c;->c(Lcom/byazt/bo/c;)V

    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, v3, p1}, Lcom/byazt/hz/t;->c(Lcom/byazt/bo/c;I)V

    :cond_1
    return-void
.end method

.method private ve(Lcom/byazt/pp/c;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/byazt/hz/t$3;

    invoke-direct {v0, p0, p1}, Lcom/byazt/hz/t$3;-><init>(Lcom/byazt/hz/t;Lcom/byazt/pp/c;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->ve(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 13

    .line 1
    invoke-static {}, Lcom/byazt/vx/yp;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v1, "pangle"

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {}, Lcom/byazt/vx/yp;->tt()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lcom/byazt/vx/nu;->c()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    const/4 v4, 0x1

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-static/range {v1 .. v6}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;IIILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    iget-object v7, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 45
    .line 46
    iget-object v8, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 47
    .line 48
    const/4 v9, 0x3

    .line 49
    const/4 v10, 0x0

    .line 50
    const/4 v11, 0x0

    .line 51
    const/4 v12, 0x0

    .line 52
    invoke-static/range {v7 .. v12}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;IIILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/hz/da;->zm()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/byazt/hz/da;->yv()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/byazt/hz/t;->m:Lcom/byazt/nf/c;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/byazt/nf/c;->c()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lcom/byazt/hz/t;->m:Lcom/byazt/nf/c;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/byazt/nf/c;->tt()V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object v0, p0, Lcom/byazt/hz/t;->tt:Lcom/byazt/uhf/c;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-interface {v0}, Lcom/byazt/uhf/c;->a()V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void

    .line 85
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/hz/da;->yv()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/byazt/hz/t;->m:Lcom/byazt/nf/c;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/byazt/nf/c;->c()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    iget-object v0, p0, Lcom/byazt/hz/t;->m:Lcom/byazt/nf/c;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/byazt/nf/c;->tt()V

    .line 99
    .line 100
    .line 101
    :cond_5
    iget-object v0, p0, Lcom/byazt/hz/t;->tt:Lcom/byazt/uhf/c;

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    invoke-interface {v0}, Lcom/byazt/uhf/c;->a()V

    .line 106
    .line 107
    .line 108
    :cond_6
    return-void
.end method

.method public c()V
    .locals 12

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/byazt/hz/t;->my:Z

    .line 36
    invoke-static {}, Lcom/byazt/vx/yp;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz v1, :cond_1

    const-string v3, "pangle"

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-static {}, Lcom/byazt/vx/yp;->tt()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p0, v0}, Lcom/byazt/hz/da;->c(Z)V

    .line 40
    new-instance v0, Lcom/byazt/pp/c;

    const v1, 0x9c7f

    invoke-static {v1}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/byazt/vx/nu;->c()Ljava/lang/String;

    move-result-object v11

    .line 42
    iget-object v3, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v4, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v5, v0

    invoke-static/range {v3 .. v11}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/pp/c;IILjava/lang/String;JLjava/lang/String;)V

    .line 43
    invoke-direct {p0, v0}, Lcom/byazt/hz/t;->ve(Lcom/byazt/pp/c;)V

    return-void

    .line 44
    :cond_0
    invoke-static {}, Lcom/byazt/vx/yp;->uj()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-static {}, Lcom/byazt/vx/nu;->c()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_1
    move-object v9, v2

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/byazt/hz/t;->tt:Lcom/byazt/uhf/c;

    if-eqz v1, :cond_2

    .line 47
    invoke-interface {v1}, Lcom/byazt/uhf/c;->c()V

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/byazt/hz/t;->m:Lcom/byazt/nf/c;

    invoke-virtual {v1}, Lcom/byazt/nf/c;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    iget-object v1, p0, Lcom/byazt/hz/t;->m:Lcom/byazt/nf/c;

    new-instance v3, Lcom/byazt/hz/t$5;

    invoke-direct {v3, p0}, Lcom/byazt/hz/t$5;-><init>(Lcom/byazt/hz/t;)V

    invoke-virtual {v1, v3}, Lcom/byazt/nf/c;->c(Lcom/byazt/nf/c$tt;)V

    .line 50
    iget-object v1, p0, Lcom/byazt/hz/t;->m:Lcom/byazt/nf/c;

    iget-object v3, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    iget-object v4, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v1, v3, v4}, Lcom/byazt/nf/c;->c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;)V

    .line 51
    :cond_3
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/byazt/hr/u;->sp(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz v1, :cond_4

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    const-string v4, "show_listen"

    invoke-static {v3, v4}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "adSlotId\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v3

    invoke-static {v3}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TTMediationSDK"

    invoke-static {v3, v1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/byazt/hr/sl;->c()Lcom/byazt/hr/sl;

    move-result-object v1

    iget-object v3, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v4}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/byazt/hr/sl;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_4
    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {p0, v1}, Lcom/byazt/hz/da;->c(Lcom/byazt/iz/tt;)V

    .line 56
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {p0, v1}, Lcom/byazt/hz/da;->ve(Lcom/byazt/yl/ve;)V

    .line 57
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz v1, :cond_5

    .line 58
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdnName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v4}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/byazt/xx/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 60
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-static {v1}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 61
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    move-wide v7, v5

    move-object v6, v2

    goto :goto_1

    :cond_6
    const-wide/16 v3, -0x1

    move-object v6, v2

    move-wide v7, v3

    .line 63
    :goto_1
    iget-object v3, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v4, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->gt()I

    move-result v11

    .line 65
    invoke-static/range {v3 .. v11}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JLjava/lang/String;ZI)V

    .line 66
    iget-object v1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/bg/c;->sp(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/bg/c;->ve(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v2

    iget-object v3, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/psp/uj;->c(ILjava/lang/String;ID)V

    .line 69
    iget-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-static {v0, v1}, Lcom/byazt/oi/ve;->c(Ljava/lang/String;Lcom/byazt/yl/ve;)V

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0, v0}, Lcom/byazt/hz/t;->c(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 10
    new-instance v0, Lcom/byazt/hz/t$1;

    invoke-direct {v0, p0}, Lcom/byazt/hz/t$1;-><init>(Lcom/byazt/hz/t;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/byazt/hz/da;->c(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;Lcom/byazt/hz/da$c;)V

    .line 11
    iget-object p1, p0, Lcom/byazt/hz/t;->tt:Lcom/byazt/uhf/c;

    if-nez p1, :cond_0

    const-string p1, "TTMediationSDK"

    const-string p2, "\u6ce8\u610f\uff1a\u672a\u8bbe\u7f6eGMRewardedAdListener\uff0c\u5c06\u6536\u4e0d\u5230\u5e7f\u544a\u64ad\u653e/\u70b9\u51fb/\u5173\u95ed\u7b49\u56de\u8c03\u4fe1\u606f"

    .line 12
    invoke-static {p1, p2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {p0, p1}, Lcom/byazt/hz/tt;->c(Lcom/byazt/yl/ve;)V

    return-void
.end method

.method public c(Lcom/byazt/bo/c;)V
    .locals 7
    .param p1    # Lcom/byazt/bo/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    invoke-static {}, Lcom/byazt/vx/yp;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_2

    const-string v1, "pangle"

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    invoke-static {}, Lcom/byazt/vx/yp;->tt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/byazt/vx/nu;->c()Ljava/lang/String;

    move-result-object v6

    .line 80
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v2, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;IIILjava/lang/String;)V

    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/byazt/vx/yp;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-static {}, Lcom/byazt/vx/nu;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 83
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v2, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;IIILjava/lang/String;)V

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/hz/da;->zm()Z

    move-result v0

    if-nez v0, :cond_3

    .line 85
    invoke-direct {p0, p1}, Lcom/byazt/hz/t;->tt(Lcom/byazt/bo/c;)V

    :cond_3
    return-void

    .line 86
    :cond_4
    invoke-direct {p0, p1}, Lcom/byazt/hz/t;->tt(Lcom/byazt/bo/c;)V

    return-void
.end method

.method public c(Lcom/byazt/ll/tt;Lcom/byazt/uhf/tt;)V
    .locals 1
    .param p2    # Lcom/byazt/uhf/tt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-virtual {p0, p1}, Lcom/byazt/hz/tt;->c(Lcom/byazt/ll/tt;)V

    .line 6
    new-instance p1, Lcom/byazt/nf/c;

    iget-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/byazt/nf/c;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/byazt/hz/t;->m:Lcom/byazt/nf/c;

    .line 7
    iput-object p2, p0, Lcom/byazt/hz/t;->c:Lcom/byazt/uhf/tt;

    .line 8
    iput-object p0, p0, Lcom/byazt/hz/tt;->i:Lcom/byazt/zq/a;

    .line 9
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->i()Lcom/byazt/om/sp;

    return-void
.end method

.method public c(Lcom/byazt/pp/c;)V
    .locals 13
    .param p1    # Lcom/byazt/pp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 71
    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-static {v2}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    :goto_0
    move-object v10, v2

    move-wide v11, v3

    .line 74
    iget-object v5, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v6, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v7, p1

    invoke-static/range {v5 .. v12}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/pp/c;IILjava/lang/String;J)V

    .line 75
    invoke-direct {p0, p1}, Lcom/byazt/hz/t;->ve(Lcom/byazt/pp/c;)V

    return-void
.end method

.method public c(Lcom/byazt/uhf/c;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/byazt/hz/t;->tt:Lcom/byazt/uhf/c;

    return-void
.end method

.method public c(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getSubAdType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getSubAdType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 17
    iget-object v0, p0, Lcom/byazt/hz/t;->rl:Lcom/byazt/zq/tt;

    iput-object v0, p0, Lcom/byazt/hz/tt;->i:Lcom/byazt/zq/a;

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getSubAdType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 19
    iget-object v0, p0, Lcom/byazt/hz/t;->gt:Lcom/byazt/zq/ve;

    iput-object v0, p0, Lcom/byazt/hz/tt;->i:Lcom/byazt/zq/a;

    goto :goto_0

    .line 20
    :cond_1
    iput-object p0, p0, Lcom/byazt/hz/tt;->i:Lcom/byazt/zq/a;

    .line 21
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/byazt/hz/da;->c(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f_()Lcom/byazt/pp/ve;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/hz/t;->my:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-super {p0}, Lcom/byazt/hz/tt;->f_()Lcom/byazt/pp/ve;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public i_()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/bg/c;->n(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/byazt/vx/yp;->c()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string v2, "pangle"

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-static {}, Lcom/byazt/vx/yp;->tt()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    invoke-static {}, Lcom/byazt/vx/nu;->c()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 46
    .line 47
    const/4 v4, 0x5

    .line 48
    const/4 v5, 0x1

    .line 49
    const/4 v6, 0x0

    .line 50
    invoke-static/range {v2 .. v7}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;IIILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    invoke-static {}, Lcom/byazt/vx/yp;->n()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-static {}, Lcom/byazt/vx/nu;->c()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move-object v0, v1

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/hz/da;->zm()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_2

    .line 71
    .line 72
    iget-object v2, p0, Lcom/byazt/hz/t;->tt:Lcom/byazt/uhf/c;

    .line 73
    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-interface {v2}, Lcom/byazt/uhf/c;->i_()V

    .line 77
    .line 78
    .line 79
    :cond_2
    move-object v8, v0

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/byazt/hz/t;->tt:Lcom/byazt/uhf/c;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-interface {v0}, Lcom/byazt/uhf/c;->i_()V

    .line 86
    .line 87
    .line 88
    :cond_4
    move-object v8, v1

    .line 89
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    .line 107
    .line 108
    move-result-wide v4

    .line 109
    sub-long/2addr v4, v2

    .line 110
    move-wide v6, v4

    .line 111
    move-object v5, v1

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    const-wide/16 v2, -0x1

    .line 114
    .line 115
    move-object v5, v1

    .line 116
    move-wide v6, v2

    .line 117
    :goto_2
    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 118
    .line 119
    iget-object v3, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->isClickListenRepeatOnce()Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    invoke-static/range {v2 .. v9}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JLjava/lang/String;Z)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public j_()V
    .locals 13

    .line 1
    invoke-static {}, Lcom/byazt/vx/yp;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v1, "pangle"

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {}, Lcom/byazt/vx/yp;->tt()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lcom/byazt/vx/nu;->c()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    const/4 v4, 0x1

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-static/range {v1 .. v6}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;IIILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    iget-object v7, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 45
    .line 46
    iget-object v8, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 47
    .line 48
    const/4 v9, 0x2

    .line 49
    const/4 v10, 0x0

    .line 50
    const/4 v11, 0x0

    .line 51
    const/4 v12, 0x0

    .line 52
    invoke-static/range {v7 .. v12}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;IIILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/hz/da;->zm()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/byazt/hz/da;->yv()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/byazt/hz/t;->tt:Lcom/byazt/uhf/c;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-interface {v0}, Lcom/byazt/uhf/c;->j_()V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void

    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/hz/da;->yv()V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/byazt/hz/t;->tt:Lcom/byazt/uhf/c;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-interface {v0}, Lcom/byazt/uhf/c;->j_()V

    .line 80
    .line 81
    .line 82
    :cond_4
    return-void
.end method

.method public n()V
    .locals 13

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    sub-long/2addr v3, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    const-wide/16 v3, -0x1

    .line 25
    .line 26
    :goto_0
    move-object v10, v2

    .line 27
    move-wide v11, v3

    .line 28
    iget-object v5, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 29
    .line 30
    iget-object v6, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x2

    .line 34
    const/4 v9, 0x0

    .line 35
    invoke-static/range {v5 .. v12}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/pp/c;IILjava/lang/String;J)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/hz/t;->tt:Lcom/byazt/uhf/c;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/byazt/uhf/c;->n()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public sp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/t;->c:Lcom/byazt/uhf/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/uhf/tt;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public tt(Lcom/byazt/pp/c;)V
    .locals 1
    .param p1    # Lcom/byazt/pp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/t;->c:Lcom/byazt/uhf/tt;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/uhf/tt;->c(Lcom/byazt/pp/c;)V

    :cond_0
    return-void
.end method

.method public uj()V
    .locals 13

    .line 1
    invoke-static {}, Lcom/byazt/vx/yp;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v1, "pangle"

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {}, Lcom/byazt/vx/yp;->tt()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lcom/byazt/vx/nu;->c()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    const/4 v4, 0x1

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-static/range {v1 .. v6}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;IIILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    iget-object v7, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 45
    .line 46
    iget-object v8, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 47
    .line 48
    const/4 v9, 0x1

    .line 49
    const/4 v10, 0x0

    .line 50
    const/4 v11, 0x0

    .line 51
    const/4 v12, 0x0

    .line 52
    invoke-static/range {v7 .. v12}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;IIILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/hz/da;->zm()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/byazt/hz/da;->yv()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/byazt/hz/t;->m:Lcom/byazt/nf/c;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/byazt/nf/c;->c()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lcom/byazt/hz/t;->m:Lcom/byazt/nf/c;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/byazt/nf/c;->n()V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object v0, p0, Lcom/byazt/hz/t;->tt:Lcom/byazt/uhf/c;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-interface {v0}, Lcom/byazt/uhf/c;->uj()V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void

    .line 85
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/hz/da;->yv()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/byazt/hz/t;->m:Lcom/byazt/nf/c;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/byazt/nf/c;->c()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    const-string v0, "GROMORE_SS_REWARD_VERIFY"

    .line 97
    .line 98
    const-string v1, "onVideoComplete\u56de\u8c03\uff0cM\u5ba2\u6237\u7aef\u8c03\u7528M\u670d\u52a1\u7aef\u6fc0\u52b1\u56de\u8c03....."

    .line 99
    .line 100
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/byazt/hz/t;->m:Lcom/byazt/nf/c;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/byazt/nf/c;->n()V

    .line 106
    .line 107
    .line 108
    :cond_5
    iget-object v0, p0, Lcom/byazt/hz/t;->tt:Lcom/byazt/uhf/c;

    .line 109
    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    invoke-interface {v0}, Lcom/byazt/uhf/c;->uj()V

    .line 113
    .line 114
    .line 115
    :cond_6
    return-void
.end method

.method public ve()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v1

    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/byazt/iz/tt;->c(Z)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v4}, Lcom/byazt/ll/tt;->n()I

    move-result v5

    iget-object v6, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual/range {v1 .. v6}, Lcom/byazt/hk/c;->c(Ljava/util/List;Ljava/lang/String;Lcom/byazt/ll/tt;ILcom/byazt/yl/ve;)V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/byazt/hz/da;->ve()V

    .line 4
    iget-object v0, p0, Lcom/byazt/hz/t;->m:Lcom/byazt/nf/c;

    invoke-virtual {v0}, Lcom/byazt/nf/c;->ve()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/byazt/hz/t;->c:Lcom/byazt/uhf/tt;

    .line 6
    iput-object v0, p0, Lcom/byazt/hz/t;->tt:Lcom/byazt/uhf/c;

    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/t;->c:Lcom/byazt/uhf/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/uhf/tt;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
