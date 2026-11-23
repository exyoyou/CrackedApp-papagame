.class Lcom/beizi/fusion/work/e/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/e/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/work/e/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    sget-object v1, Lcom/beizi/fusion/e/a;->b:Lcom/beizi/fusion/e/a;

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/e/a;->a(Lcom/beizi/fusion/work/e/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->a(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/ad/v2/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->a(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/ad/v2/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/work/e/a;->a(Lcom/beizi/fusion/work/e/a;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->a(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/ad/v2/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->i()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/beizi/fusion/work/e/a;->a(Lcom/beizi/fusion/work/e/a;Z)Z

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showBeiZiRewardedVideoAd onAdLoaded isUseCacheAd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v1}, Lcom/beizi/fusion/work/e/a;->b(Lcom/beizi/fusion/work/e/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->b(Lcom/beizi/fusion/work/e/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->a(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/ad/v2/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/ad/v2/a/a;->j()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/work/e/a;->a(Lcom/beizi/fusion/work/e/a;J)J

    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->c(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->d(Lcom/beizi/fusion/work/e/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v2}, Lcom/beizi/fusion/work/e/a;->d(Lcom/beizi/fusion/work/e/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 12
    iget-object v2, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v2}, Lcom/beizi/fusion/work/e/a;->e(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->f(Lcom/beizi/fusion/work/e/a;)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->g(Lcom/beizi/fusion/work/e/a;)V

    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->h(Lcom/beizi/fusion/work/e/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->i(Lcom/beizi/fusion/work/e/a;)V

    goto :goto_1

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->j(Lcom/beizi/fusion/work/e/a;)V

    .line 18
    :goto_1
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->k(Lcom/beizi/fusion/work/e/a;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showBeiZiRewardedVideoAd onAdFailedToLoad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/beizi/fusion/work/e/a;->a(Lcom/beizi/fusion/work/e/a;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->Q(Lcom/beizi/fusion/work/e/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    iget-object v1, v1, Lcom/beizi/fusion/work/e/a;->n:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->R(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setComplain(Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/e/a;->S(Lcom/beizi/fusion/work/e/a;)V

    .line 27
    iget-object p1, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/e/a;->T(Lcom/beizi/fusion/work/e/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 21
    iget-object p1, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/e/a;->N(Lcom/beizi/fusion/work/e/a;)V

    .line 22
    iget-object p1, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/e/a;->O(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/c/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    invoke-static {p1}, Lcom/beizi/fusion/work/e/a;->P(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beizi/fusion/c/e;->k()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->l(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/c/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->m(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/c/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->m()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/fusion/e/a;->c:Lcom/beizi/fusion/e/a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/fusion/work/e/a;->b(Lcom/beizi/fusion/work/e/a;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->b(Lcom/beizi/fusion/work/e/a;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->n(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/events/EventBean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "1"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->d(Lcom/beizi/fusion/work/e/a;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    cmp-long v4, v0, v2

    .line 36
    .line 37
    if-lez v4, :cond_0

    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iget-object v2, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/beizi/fusion/work/e/a;->d(Lcom/beizi/fusion/work/e/a;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    sub-long/2addr v0, v2

    .line 50
    iget-object v2, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/beizi/fusion/work/e/a;->o(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/events/EventBean;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->p(Lcom/beizi/fusion/work/e/a;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->q(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/c/e;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->r(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/c/e;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v1, 0x2

    .line 87
    if-eq v0, v1, :cond_2

    .line 88
    .line 89
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->s(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/c/e;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/beizi/fusion/work/e/a;->f()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->b(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->t(Lcom/beizi/fusion/work/e/a;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->u(Lcom/beizi/fusion/work/e/a;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->v(Lcom/beizi/fusion/work/e/a;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->w(Lcom/beizi/fusion/work/e/a;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->x(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/c/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->y(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/c/e;

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
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->z(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/c/e;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/beizi/fusion/work/e/a;->f()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->A(Lcom/beizi/fusion/work/e/a;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->B(Lcom/beizi/fusion/work/e/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->C(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->E(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/events/EventBean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/beizi/fusion/work/e/a;->D(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getCallBackStrategyUuid()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setCallBackStrategyUuid(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->F(Lcom/beizi/fusion/work/e/a;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->G(Lcom/beizi/fusion/work/e/a;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->B(Lcom/beizi/fusion/work/e/a;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->H(Lcom/beizi/fusion/work/e/a;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->I(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/c/e;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->J(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/c/e;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v1, 0x2

    .line 82
    if-eq v0, v1, :cond_2

    .line 83
    .line 84
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->K(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/c/e;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/beizi/fusion/work/e/a;->f()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->d(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->L(Lcom/beizi/fusion/work/e/a;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->M(Lcom/beizi/fusion/work/e/a;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->U(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/c/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->V(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/c/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->l()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->W(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/c/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/e/a$1;->a:Lcom/beizi/fusion/work/e/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/work/e/a;->X(Lcom/beizi/fusion/work/e/a;)Lcom/beizi/fusion/c/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->n()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
