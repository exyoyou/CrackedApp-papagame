.class Lcom/beizi/fusion/work/b/a$1;
.super Lcom/beizi/ad/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/b/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/work/b/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/beizi/ad/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 4
    invoke-super {p0}, Lcom/beizi/ad/a;->a()V

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    sget-object v1, Lcom/beizi/fusion/e/a;->b:Lcom/beizi/fusion/e/a;

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/b/a;->b(Lcom/beizi/fusion/work/b/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->C(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/ad/v2/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->C(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/ad/v2/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/work/b/a;->a(Lcom/beizi/fusion/work/b/a;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->C(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/ad/v2/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->i()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/b/a;->a(Lcom/beizi/fusion/work/b/a;Z)Z

    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->q(Lcom/beizi/fusion/work/b/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->C(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/ad/v2/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->j()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/work/b/a;->a(Lcom/beizi/fusion/work/b/a;J)J

    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->D(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->s(Lcom/beizi/fusion/work/b/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {v2}, Lcom/beizi/fusion/work/b/a;->s(Lcom/beizi/fusion/work/b/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 15
    iget-object v2, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {v2}, Lcom/beizi/fusion/work/b/a;->E(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->F(Lcom/beizi/fusion/work/b/a;)V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->G(Lcom/beizi/fusion/work/b/a;)V

    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->H(Lcom/beizi/fusion/work/b/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->I(Lcom/beizi/fusion/work/b/a;)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->J(Lcom/beizi/fusion/work/b/a;)V

    .line 21
    :goto_1
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->K(Lcom/beizi/fusion/work/b/a;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/beizi/ad/a;->a(I)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showBeiZiInterstitialAd onAdFailedToLoad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/beizi/fusion/work/b/a;->a(Lcom/beizi/fusion/work/b/a;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 22
    invoke-super {p0, p1}, Lcom/beizi/ad/a;->a(Ljava/lang/String;)V

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->L(Lcom/beizi/fusion/work/b/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    iget-object v1, v1, Lcom/beizi/fusion/work/b/a;->n:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->M(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setComplain(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/b/a;->N(Lcom/beizi/fusion/work/b/a;)V

    .line 26
    iget-object p1, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/b/a;->O(Lcom/beizi/fusion/work/b/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/beizi/ad/a;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 5
    .line 6
    sget-object v1, Lcom/beizi/fusion/e/a;->c:Lcom/beizi/fusion/e/a;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/b/a;->a(Lcom/beizi/fusion/work/b/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->q(Lcom/beizi/fusion/work/b/a;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->r(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/fusion/events/EventBean;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "1"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->s(Lcom/beizi/fusion/work/b/a;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    const-wide/16 v2, 0x0

    .line 37
    .line 38
    cmp-long v4, v0, v2

    .line 39
    .line 40
    if-lez v4, :cond_0

    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iget-object v2, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 47
    .line 48
    invoke-static {v2}, Lcom/beizi/fusion/work/b/a;->s(Lcom/beizi/fusion/work/b/a;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    sub-long/2addr v0, v2

    .line 53
    iget-object v2, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/beizi/fusion/work/b/a;->t(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/fusion/events/EventBean;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->u(Lcom/beizi/fusion/work/b/a;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->v(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/fusion/c/e;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->w(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/fusion/c/e;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/4 v1, 0x2

    .line 90
    if-eq v0, v1, :cond_2

    .line 91
    .line 92
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->x(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/fusion/c/e;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/beizi/fusion/work/b/a;->f()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->b(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->y(Lcom/beizi/fusion/work/b/a;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->z(Lcom/beizi/fusion/work/b/a;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->A(Lcom/beizi/fusion/work/b/a;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 123
    .line 124
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->B(Lcom/beizi/fusion/work/b/a;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->a(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/fusion/c/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->b(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/fusion/c/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->c(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/fusion/c/e;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/beizi/fusion/work/b/a;->f()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->c(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->d(Lcom/beizi/fusion/work/b/a;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/beizi/ad/a;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->e(Lcom/beizi/fusion/work/b/a;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->f(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->h(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/fusion/events/EventBean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/beizi/fusion/work/b/a;->g(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getCallBackStrategyUuid()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setCallBackStrategyUuid(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->i(Lcom/beizi/fusion/work/b/a;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->j(Lcom/beizi/fusion/work/b/a;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->e(Lcom/beizi/fusion/work/b/a;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->k(Lcom/beizi/fusion/work/b/a;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->l(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/fusion/c/e;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->m(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/fusion/c/e;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v1, 0x2

    .line 85
    if-eq v0, v1, :cond_2

    .line 86
    .line 87
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->n(Lcom/beizi/fusion/work/b/a;)Lcom/beizi/fusion/c/e;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/beizi/fusion/work/b/a;->f()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->d(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->o(Lcom/beizi/fusion/work/b/a;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/beizi/fusion/work/b/a$1;->a:Lcom/beizi/fusion/work/b/a;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/beizi/fusion/work/b/a;->p(Lcom/beizi/fusion/work/b/a;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
