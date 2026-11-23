.class public abstract Lcom/byazt/hz/da;
.super Lcom/byazt/hz/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x48
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/hz/da$c;
    }
.end annotation


# instance fields
.field public nu:Z

.field public rh:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/hz/tt;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/hz/da;->nu:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/byazt/hz/da;->rh:Z

    .line 8
    .line 9
    return-void
.end method

.method private c(Ljava/util/List;Ljava/util/List;ZLandroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;Z",
            "Landroid/app/Activity;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p2}, Lcom/byazt/hz/tt;->tt(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p2

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/nbs/da;

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byazt/yl/ve;

    if-eqz v6, :cond_2

    if-eqz p3, :cond_1

    .line 44
    invoke-virtual {v6}, Lcom/byazt/yl/ve;->isCacheSuccess()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 45
    invoke-direct {p0, v6, p4, p5, p6}, Lcom/byazt/hz/da;->tt(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v4

    .line 46
    :cond_1
    invoke-direct {p0, v6, p4, p5, p6}, Lcom/byazt/hz/da;->tt(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v4

    .line 47
    :cond_2
    invoke-virtual {v1}, Lcom/byazt/nbs/da;->gt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v1

    iget-object v6, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v7, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v7}, Lcom/byazt/ll/tt;->n()I

    move-result v7

    invoke-virtual {v1, v6, v5, v7}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v1

    iget-object v6, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v1, v5, v6, v3}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;Z)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 50
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->n()I

    move-result v6

    invoke-virtual {v1, v5, v2, v6}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 52
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ix/sp;

    iget-object v1, v1, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_3

    .line 53
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->isCacheSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-direct {p0, v1, p4, p5, p6}, Lcom/byazt/hz/da;->ve(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    .line 55
    :cond_3
    invoke-direct {p0, v1, p4, p5, p6}, Lcom/byazt/hz/da;->ve(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_4
    if-eqz p3, :cond_7

    .line 56
    iget-object p3, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-nez p3, :cond_7

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/byazt/nbs/da;

    if-eqz p3, :cond_5

    .line 58
    invoke-virtual {p3}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yl/ve;

    if-eqz v1, :cond_6

    .line 60
    invoke-direct {p0, v1, p4, p5, p6}, Lcom/byazt/hz/da;->tt(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v4

    .line 61
    :cond_6
    invoke-virtual {p3}, Lcom/byazt/nbs/da;->gt()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 62
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object p3

    iget-object v1, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v5}, Lcom/byazt/ll/tt;->n()I

    move-result v5

    invoke-virtual {p3, v1, v0, v5}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 63
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object p3

    iget-object v1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {p3, v0, v1, v3}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;Z)I

    move-result p3

    if-ne p3, v2, :cond_5

    .line 64
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object p3

    iget-object v1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v1}, Lcom/byazt/ll/tt;->n()I

    move-result v5

    invoke-virtual {p3, v0, v1, v5}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;I)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 65
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 66
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/byazt/ix/sp;

    iget-object p3, p3, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    if-eqz p3, :cond_5

    .line 67
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/byazt/hz/da;->ve(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    return v4

    :cond_7
    return v3
.end method

.method private tt(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->isHasShown()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/byazt/hz/da;->rl()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    const-string v2, ",isReady()\uff1a"

    .line 21
    .line 22
    const-string v3, "\u5f31\u7f51\u60c5\u51b5\u4e0b\u6ca1\u6709\u7f13\u5b58\u597d\u7684\u5e7f\u544a,\u90a3\u4e48\u76f4\u63a5\u6839\u636e\u4f18\u5148\u7ea7\u5c55\u793a\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    .line 23
    .line 24
    const-string v4, "TTMediationSDK"

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/byazt/hz/da;->uj(Lcom/byazt/yl/ve;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdType()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getSubAdType()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-static {v0, v5, v6}, Lcom/byazt/cz/c;->c(Ljava/lang/String;II)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v5, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-static {v5, v6}, Lcom/byazt/eu/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-static {v3}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v4, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/byazt/hz/da;->c(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return v1

    .line 107
    :cond_0
    const-string p1, "--==--- \u63d2\u5168\u5c4f\u8f6e\u64ad\u4e2d\uff0c\u4e0d\u80fd\u8f6e\u64ad\u7684\u81ea\u5b9a\u4e49adn\u8df3\u8fc7"

    .line 108
    .line 109
    invoke-static {v4, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    iget-object v5, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-static {v5, v6}, Lcom/byazt/eu/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    invoke-static {v3}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v2, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {p1, v2}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v4, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/byazt/hz/da;->c(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return v1

    .line 168
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 169
    return p1
.end method

.method private uj(Lcom/byazt/yl/ve;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->isCustomAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getIsRefresh()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_1
    :goto_0
    return v1
.end method

.method private ve(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/byazt/hz/da;->rl()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ",isReady()\uff1a"

    const-string v3, "\u5f31\u7f51\u60c5\u51b5\u4e0b\u6ca1\u6709\u7f13\u5b58\u597d\u7684\u5e7f\u544a,\u90a3\u4e48\u76f4\u63a5\u6839\u636e\u4f18\u5148\u7ea7\u5c55\u793a\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    const-string v4, "TTMediationSDK"

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/hz/da;->uj(Lcom/byazt/yl/ve;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v5

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getSubAdType()I

    move-result v6

    invoke-static {v0, v5, v6}, Lcom/byazt/cz/c;->c(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/byazt/eu/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v3

    invoke-static {v3}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v2}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v4, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/byazt/hz/tt;->tt(Lcom/byazt/yl/ve;)V

    .line 12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/byazt/hz/da;->c(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string p1, "--==--- cache \u63d2\u5168\u5c4f\u8f6e\u64ad\u4e2d\uff0c\u4e0d\u80fd\u8f6e\u64ad\u7684\u81ea\u5b9a\u4e49adn\u8df3\u8fc7"

    .line 13
    invoke-static {v4, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/byazt/eu/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v3

    invoke-static {v3}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v2}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v4, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/byazt/hz/tt;->tt(Lcom/byazt/yl/ve;)V

    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/byazt/hz/da;->c(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public c(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;Lcom/byazt/hz/da$c;)V
    .locals 11

    .line 14
    invoke-virtual {p0}, Lcom/byazt/hz/da;->rl()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;)V

    .line 16
    iget-boolean v0, p0, Lcom/byazt/hz/tt;->t:Z

    if-eqz v0, :cond_1

    .line 17
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {v2, p1, v1}, Lcom/byazt/ng/a;->c(Ljava/util/List;Lcom/byazt/ll/tt;I)V

    if-eqz p4, :cond_0

    .line 18
    invoke-interface {p4}, Lcom/byazt/hz/da$c;->c()V

    :cond_0
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/hz/tt;->tt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {v2, p1, v0}, Lcom/byazt/ng/a;->c(Ljava/util/List;Lcom/byazt/ll/tt;I)V

    if-eqz p4, :cond_2

    .line 21
    invoke-interface {p4}, Lcom/byazt/hz/da$c;->c()V

    :cond_2
    return-void

    .line 22
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->u()Z

    move-result v0

    .line 23
    iget-object v3, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/byazt/iz/tt;->c(Z)Ljava/util/List;

    move-result-object v10

    .line 24
    iget-object v3, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v3, v10}, Lcom/byazt/iz/tt;->c(Ljava/util/List;)V

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->tt()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v4, v2

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 26
    invoke-static {v3}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_1
    if-eqz v4, :cond_4

    .line 27
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    move-object v3, p0

    move-object v5, v10

    move v6, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    .line 28
    invoke-direct/range {v3 .. v9}, Lcom/byazt/hz/da;->c(Ljava/util/List;Ljava/util/List;ZLandroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    if-eqz v10, :cond_9

    .line 29
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 30
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/yl/ve;

    if-eqz v3, :cond_5

    if-eqz v0, :cond_6

    .line 31
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->isCacheSuccess()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 32
    :cond_6
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/byazt/hz/da;->tt(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-void

    :cond_7
    if-eqz v0, :cond_9

    .line 33
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-nez v0, :cond_9

    .line 34
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/yl/ve;

    if-eqz v2, :cond_8

    .line 35
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/byazt/hz/da;->tt(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-void

    .line 36
    :cond_9
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {v10, p1, v1}, Lcom/byazt/ng/a;->c(Ljava/util/List;Lcom/byazt/ll/tt;I)V

    if-eqz p4, :cond_a

    .line 37
    invoke-interface {p4}, Lcom/byazt/hz/da$c;->c()V

    :cond_a
    return-void
.end method

.method public c(Lcom/byazt/iz/tt;)V
    .locals 13

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 3
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 4
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x1

    goto :goto_3

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->adnHasAdVideoCachedApi()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isCacheSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object v0

    iget-object v5, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v6, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v6}, Lcom/byazt/ll/tt;->n()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/byazt/ix/uj;->ve(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 6
    :goto_1
    iget-object v5, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    if-eqz v5, :cond_4

    .line 7
    invoke-virtual {v5}, Lcom/byazt/ll/tt;->my()I

    move-result v5

    if-eq v5, v3, :cond_3

    iget-object v3, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v3}, Lcom/byazt/ll/tt;->my()I

    move-result v3

    if-ne v3, v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->m()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v0

    .line 9
    :goto_2
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    move v9, v2

    .line 10
    :goto_3
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->canAdReuse()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v3}, Lcom/byazt/ll/tt;->n()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 11
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v5

    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->zb()Ljava/util/Map;

    move-result-object v1

    move-object v8, v1

    goto :goto_4

    :cond_6
    move-object v8, v0

    :goto_4
    if-eqz p1, :cond_7

    .line 12
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->or()Lcom/byazt/yf/sl;

    move-result-object p1

    move-object v10, p1

    goto :goto_5

    :cond_7
    move-object v10, v0

    :goto_5
    const/4 v11, 0x0

    iget-object p1, p0, Lcom/byazt/hz/tt;->x:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v12, p1

    check-cast v12, Landroid/content/Context;

    .line 13
    invoke-virtual/range {v5 .. v12}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;Ljava/util/Map;ZLcom/byazt/yf/sl;Lcom/byazt/nbs/i;Landroid/content/Context;)V

    :cond_8
    return-void
.end method

.method public c(Lcom/byazt/yl/ve;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 39
    new-instance p1, Lcom/byazt/hz/da$2;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/byazt/hz/da$2;-><init>(Lcom/byazt/hz/da;Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/byazt/eu/n;->ve(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/hz/da;->nu:Z

    return-void
.end method

.method public p()Z
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->tt()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    move-object v8, v0

    .line 6
    goto :goto_1

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->sl()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->t()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 32
    .line 33
    iget-boolean v5, p0, Lcom/byazt/hz/tt;->t:Z

    .line 34
    .line 35
    iget-object v6, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->n()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-static/range {v1 .. v8}, Lcom/byazt/vx/t;->c(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/ll/tt;ZLjava/lang/String;ILjava/util/List;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    return v0
.end method

.method public rl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ve()V
    .locals 0

    .line 3
    invoke-super {p0}, Lcom/byazt/hz/tt;->ve()V

    return-void
.end method

.method public ve(Lcom/byazt/yl/ve;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v0}, Lcom/byazt/ll/tt;->tk()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/byazt/hz/da$1;

    invoke-direct {v0, p0, p1}, Lcom/byazt/hz/da$1;-><init>(Lcom/byazt/hz/da;Lcom/byazt/yl/ve;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->ve(Ljava/lang/Runnable;)V

    return-void
.end method

.method public yv()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->tk()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/byazt/hz/tt;->x:Ljava/lang/ref/SoftReference;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/content/Context;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/byazt/ll/tt;->n()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/ix/uj;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public zm()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/hz/da;->nu:Z

    .line 2
    .line 3
    return v0
.end method
