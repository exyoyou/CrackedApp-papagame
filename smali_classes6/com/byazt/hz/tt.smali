.class public abstract Lcom/byazt/hz/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ul/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0xd
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/ll/tt;

.field public final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/byazt/nbs/da;",
            ">;"
        }
    .end annotation
.end field

.field public da:Z

.field public i:Lcom/byazt/zq/a;

.field public n:Ljava/lang/String;

.field public sl:I

.field public sp:Lcom/byazt/nbs/tt;

.field public volatile t:Z

.field public final tt:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/byazt/nbs/da;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lcom/byazt/zh/tt;

.field public uj:Lcom/byazt/yl/ve;

.field public ve:Lcom/byazt/iz/tt;

.field public x:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public yp:Lcom/byazt/ocd/tt;

.field public final z:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/byazt/nbs/da;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/hz/tt;->da:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/hz/tt;->sl:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/byazt/hz/tt;->t:Z

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/hz/tt$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/byazt/hz/tt$1;-><init>(Lcom/byazt/hz/tt;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/hz/tt;->c:Ljava/util/Comparator;

    .line 17
    .line 18
    new-instance v0, Lcom/byazt/hz/tt$2;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/byazt/hz/tt$2;-><init>(Lcom/byazt/hz/tt;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/hz/tt;->z:Ljava/util/Comparator;

    .line 24
    .line 25
    new-instance v0, Lcom/byazt/hz/tt$3;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/byazt/hz/tt$3;-><init>(Lcom/byazt/hz/tt;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/byazt/hz/tt;->tt:Ljava/util/Comparator;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/byazt/hz/tt;->x:Ljava/lang/ref/SoftReference;

    .line 38
    .line 39
    return-void
.end method

.method private c(Lcom/byazt/nbs/da;)Lcom/byazt/yl/ve;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->d()Lcom/byazt/nbs/x;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->d()Lcom/byazt/nbs/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/nbs/x;->ve()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 78
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v2}, Lcom/byazt/iz/tt;->sl()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/yl/ve;

    if-eqz v3, :cond_3

    .line 80
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    .line 81
    :cond_4
    iget-object v2, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v2}, Lcom/byazt/iz/tt;->t()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/yl/ve;

    if-eqz v3, :cond_5

    .line 82
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-object v3

    .line 83
    :cond_6
    iget-object v2, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v2}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/yl/ve;

    if-eqz v3, :cond_7

    .line 84
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->isServerBiddingAd()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 85
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    return-object v3

    .line 86
    :cond_8
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    return-object v3

    :cond_9
    return-object v0
.end method

.method private n(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_4

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/byazt/nbs/da;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->cu()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->zb()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->qp()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->or()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 59
    .line 60
    .line 61
    new-instance v4, Lcom/byazt/nbs/da;

    .line 62
    .line 63
    invoke-direct {v4}, Lcom/byazt/nbs/da;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v4, v5}, Lcom/byazt/nbs/da;->n(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->my()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    invoke-virtual {v4, v5}, Lcom/byazt/nbs/da;->da(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v4, v5}, Lcom/byazt/nbs/da;->ve(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->x()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    invoke-virtual {v4, v5}, Lcom/byazt/nbs/da;->uj(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->sp()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v4, v5}, Lcom/byazt/nbs/da;->c(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->yv()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    invoke-virtual {v4, v5}, Lcom/byazt/nbs/da;->sl(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->p()I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    invoke-virtual {v4, v5}, Lcom/byazt/nbs/da;->t(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->u()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-virtual {v4, v5}, Lcom/byazt/nbs/da;->i(I)V

    .line 120
    .line 121
    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->gr()D

    .line 128
    .line 129
    .line 130
    move-result-wide v6

    .line 131
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v4, v5}, Lcom/byazt/nbs/da;->sp(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->yp()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v4, v5}, Lcom/byazt/nbs/da;->tt(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->md()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {v4, v5}, Lcom/byazt/nbs/da;->x(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->h()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v4, v5}, Lcom/byazt/nbs/da;->i(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->d()Lcom/byazt/nbs/x;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v4, v5}, Lcom/byazt/nbs/da;->c(Lcom/byazt/nbs/x;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->gu()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v4, v3}, Lcom/byazt/nbs/da;->a(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {p0, v4}, Lcom/byazt/hz/tt;->c(Lcom/byazt/nbs/da;)Lcom/byazt/yl/ve;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    if-eqz v3, :cond_3

    .line 181
    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getBiddingCpmWithOutExchangeRate()D

    .line 188
    .line 189
    .line 190
    move-result-wide v6

    .line 191
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v4, v3}, Lcom/byazt/nbs/da;->sp(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_4
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/byazt/hz/tt;->tt:Ljava/util/Comparator;

    .line 210
    .line 211
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/byazt/hz/tt;->c:Ljava/util/Comparator;

    .line 215
    .line 216
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 217
    .line 218
    .line 219
    const/4 v0, 0x0

    .line 220
    invoke-interface {p1, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 221
    .line 222
    .line 223
    return-object p1
.end method

.method public static tt(Ljava/lang/String;)I
    .locals 2

    .line 2
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/hr/u;->x(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "TTMediationSDK"

    if-nez v0, :cond_0

    const-string p0, "--==--: \u547d\u4e2d\u5c55\u793a\u9891\u6b21"

    .line 3
    invoke-static {v1, p0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0xcd169

    return p0

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/hr/u;->ve(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "--==--: \u547d\u4e2d\u5c55\u793a\u95f4\u9694"

    .line 5
    invoke-static {v1, p0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0xcd16a

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private uj(Lcom/byazt/yl/ve;)V
    .locals 16
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_c

    .line 1
    iget-object v2, v0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/yl/ve;->getAdnName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xiaomi"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "ecpm"

    if-eqz v2, :cond_1

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v4

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, v2}, Lcom/byazt/yl/ve;->bidWinNotify(Ljava/util/Map;)V

    return-void

    .line 6
    :cond_1
    iget-object v2, v0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->or()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/yl/ve;->isMultiBiddingAd()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/yl/ve;->isClientBiddingAd()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/yl/ve;->isServerBiddingAd()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 8
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/yl/ve;->getAdnName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "baidu"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/qe/ve;->iu()Z

    move-result v5

    const-string v6, "bid_t"

    const-wide/16 v7, 0x3e8

    const-string v9, "ad_time"

    const/4 v10, 0x7

    const-string v11, "ad_t"

    const-string v12, "adn"

    const/16 v13, 0xa

    if-eqz v5, :cond_5

    .line 11
    invoke-direct/range {p0 .. p1}, Lcom/byazt/hz/tt;->ve(Lcom/byazt/yl/ve;)Lcom/byazt/yl/ve;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 12
    invoke-virtual {v5}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v4

    double-to-int v4, v4

    .line 13
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 18
    :cond_5
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/qe/ve;->j()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 19
    invoke-direct/range {p0 .. p1}, Lcom/byazt/hz/tt;->ve(Lcom/byazt/yl/ve;)Lcom/byazt/yl/ve;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 20
    invoke-virtual {v5}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v4

    double-to-int v4, v4

    .line 21
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v14

    double-to-int v14, v14

    .line 22
    new-instance v15, Ljava/security/SecureRandom;

    invoke-direct {v15}, Ljava/security/SecureRandom;-><init>()V

    const/16 v5, 0x15

    invoke-virtual {v15, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, v13

    .line 23
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v7, "-------baidu_bid_win firstAdEcpm = "

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " secondAdEcpm ="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " randomNumber = "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TTMediationSDK"

    invoke-static {v8, v7}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr v14, v5

    .line 24
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 30
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 35
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/yl/ve;->getAdnName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ks"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 36
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 37
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/qe/ve;->dz()Z

    move-result v3

    const-string v5, "lossBidEcpm"

    const-string v6, "bidEcpm"

    if-eqz v3, :cond_a

    .line 38
    invoke-direct/range {p0 .. p1}, Lcom/byazt/hz/tt;->ve(Lcom/byazt/yl/ve;)Lcom/byazt/yl/ve;

    move-result-object v3

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_9

    .line 40
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v3

    goto :goto_0

    :cond_9
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 41
    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_b
    const/4 v2, 0x0

    .line 43
    :goto_1
    invoke-virtual {v1, v2}, Lcom/byazt/yl/ve;->bidWinNotify(Ljava/util/Map;)V

    :cond_c
    :goto_2
    return-void
.end method

.method private uj(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;)Z"
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/nbs/da;

    .line 45
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->gu()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private ve(Lcom/byazt/yl/ve;)Lcom/byazt/yl/ve;
    .locals 10

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v1}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v1}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v1}, Lcom/byazt/iz/tt;->t()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v1}, Lcom/byazt/iz/tt;->t()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v1}, Lcom/byazt/iz/tt;->t()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v1}, Lcom/byazt/iz/tt;->sl()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v1}, Lcom/byazt/iz/tt;->sl()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v1}, Lcom/byazt/iz/tt;->sl()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/high16 v3, 0x10000000000000L

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yl/ve;

    .line 15
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v7

    cmpg-double v9, v5, v7

    if-gez v9, :cond_3

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v5

    cmpl-double v7, v5, v3

    if-lez v7, :cond_3

    .line 16
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v2

    move-wide v3, v2

    move-object v2, v1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method private ve(Ljava/util/List;)Lcom/byazt/yl/ve;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)",
            "Lcom/byazt/yl/ve;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/yl/ve;

    return-object p1

    .line 20
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/high16 v1, 0x10000000000000L

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/yl/ve;

    .line 21
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v4

    cmpl-double v6, v4, v1

    if-lez v6, :cond_1

    .line 22
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v0

    move-wide v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static ve(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/byazt/vx/my;

    invoke-direct {v0}, Lcom/byazt/vx/my;-><init>()V

    const-string v1, "prime_rit"

    .line 24
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public c(Lcom/byazt/ll/tt;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/hz/tt;->x:Ljava/lang/ref/SoftReference;

    invoke-static {v0, p1, p0}, Lcom/byazt/iz/tt;->c(Ljava/lang/ref/SoftReference;Lcom/byazt/ll/tt;Lcom/byazt/ul/c;)Lcom/byazt/iz/tt;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 4
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->zb()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->nu()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "allow_show_close_btn"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    return-void
.end method

.method public c(Lcom/byazt/ocd/tt;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/byazt/hz/tt;->yp:Lcom/byazt/ocd/tt;

    return-void
.end method

.method public c(Lcom/byazt/yl/ve;)V
    .locals 3

    .line 8
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->aw()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {}, Lcom/byazt/vx/nu;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Ljava/lang/String;I)V

    return-void
.end method

.method public c(Lcom/byazt/yl/ve;Lcom/byazt/yl/ve;I)V
    .locals 19
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz v1, :cond_c

    .line 23
    iget-object v2, v0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    if-eqz v2, :cond_c

    if-gtz p3, :cond_0

    goto/16 :goto_5

    .line 24
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/yl/ve;->getAdnName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xiaomi"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "reason"

    const-string v5, "ecpm"

    if-eqz v2, :cond_2

    .line 25
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v6

    double-to-long v6, v6

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    .line 27
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "\u5176\u4ed6"

    .line 28
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "adn_id"

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v1, v2}, Lcom/byazt/yl/ve;->bidLoseNotify(Ljava/util/Map;)V

    return-void

    .line 31
    :cond_2
    iget-object v2, v0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->or()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 32
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v6, "bidding_lose_reason"

    .line 33
    invoke-static/range {p3 .. p3}, Lcom/byazt/sq/tt;->c(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "bidding_lose_reason_NUM"

    .line 34
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/yl/ve;->getAdnName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "baidu"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 36
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/qe/ve;->iu()Z

    move-result v6

    const-string v9, "is_c"

    const-string v10, "is_s"

    const/16 v11, 0xcb

    const-string v12, "bid_t"

    const-wide/16 v13, 0x3e8

    const-string v15, "ad_time"

    const/16 v16, 0x7

    const-string v7, "ad_t"

    const/16 v17, 0xa

    const-string v8, "adn"

    if-eqz v6, :cond_5

    move-object v6, v4

    if-eqz p1, :cond_4

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v3

    double-to-int v3, v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 38
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v13

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_5
    move-object v6, v4

    .line 46
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/qe/ve;->j()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_7

    move-object/from16 v18, v12

    if-eqz p1, :cond_6

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v11

    double-to-int v11, v11

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    .line 48
    :goto_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v11, v18

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xcb

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_7
    move-object v11, v12

    const/4 v12, 0x0

    .line 56
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xcb

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 64
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/yl/ve;->getAdnName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ks"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 65
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/qe/ve;->dz()Z

    move-result v3

    const-string v4, "other"

    const-string v5, "adnName"

    const-string v6, "adType"

    const-string v7, "bidEcpm"

    const-string v8, "failureCode"

    if-eqz v3, :cond_a

    const/4 v3, 0x2

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_9

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v8

    goto :goto_3

    :cond_9
    const-wide/16 v8, 0x0

    :goto_3
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    const/4 v3, 0x2

    const/4 v9, 0x0

    .line 70
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_b
    :goto_4
    invoke-virtual {v1, v2}, Lcom/byazt/yl/ve;->bidLoseNotify(Ljava/util/Map;)V

    :cond_c
    :goto_5
    return-void
.end method

.method public c(Lcom/byazt/zh/tt;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/byazt/hz/tt;->u:Lcom/byazt/zh/tt;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 6
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    iget-object v1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    iget-object v2, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v2}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/byazt/pl/c;->c(Lcom/byazt/ll/tt;Lcom/byazt/nbs/tt;Ljava/util/List;Ljava/util/List;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yl/ve;

    .line 15
    invoke-direct {p0, v1}, Lcom/byazt/hz/tt;->uj(Lcom/byazt/yl/ve;)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 17
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v1}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    invoke-direct {p0, p1}, Lcom/byazt/hz/tt;->ve(Ljava/util/List;)Lcom/byazt/yl/ve;

    move-result-object v1

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/yl/ve;

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/yl/ve;

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    if-ne v4, v2, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_3

    .line 22
    invoke-virtual {p0, v1, v2, v5}, Lcom/byazt/hz/tt;->c(Lcom/byazt/yl/ve;Lcom/byazt/yl/ve;I)V

    goto :goto_1

    :cond_6
    :goto_3
    return-void
.end method

.method public c(Ljava/util/List;Lcom/byazt/pp/c;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/byazt/pp/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Lcom/byazt/pp/c;",
            ")V"
        }
    .end annotation

    .line 2
    return-void
.end method

.method public da()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/pp/tt;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->md()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f_()Lcom/byazt/pp/ve;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/vx/z;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-static {v0, v1, v2}, Lcom/byazt/vx/t;->c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Z)Lcom/byazt/pp/ve;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public gt()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->tt()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
.end method

.method public i()Lcom/byazt/om/sp;
    .locals 4

    .line 1
    const-string v0, "TTMediationSDK"

    .line 2
    .line 3
    const-string v1, "ad load start....."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/byazt/qe/ve;->aw()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Lcom/byazt/vx/nu;->c()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x3

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static {v3, v0, v1, v2}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/byazt/om/sl;

    .line 39
    .line 40
    invoke-direct {v1}, Lcom/byazt/om/sl;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/byazt/om/t;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/byazt/om/t;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    new-instance v1, Lcom/byazt/om/n;

    .line 55
    .line 56
    invoke-direct {v1}, Lcom/byazt/om/n;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    new-instance v1, Lcom/byazt/om/ve;

    .line 63
    .line 64
    invoke-direct {v1}, Lcom/byazt/om/ve;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    new-instance v1, Lcom/byazt/om/u;

    .line 71
    .line 72
    invoke-direct {v1}, Lcom/byazt/om/u;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/byazt/om/a;

    .line 79
    .line 80
    invoke-direct {v1}, Lcom/byazt/om/a;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    new-instance v1, Lcom/byazt/om/x;

    .line 87
    .line 88
    invoke-direct {v1}, Lcom/byazt/om/x;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    new-instance v1, Lcom/byazt/om/tt;

    .line 95
    .line 96
    invoke-direct {v1}, Lcom/byazt/om/tt;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    new-instance v1, Lcom/byazt/om/uj;

    .line 103
    .line 104
    invoke-direct {v1}, Lcom/byazt/om/uj;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    new-instance v1, Lcom/byazt/om/sp;

    .line 111
    .line 112
    invoke-direct {v1, v0}, Lcom/byazt/om/sp;-><init>(Ljava/util/List;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 116
    .line 117
    invoke-virtual {v1, v0}, Lcom/byazt/om/sp;->c(Lcom/byazt/iz/tt;)V

    .line 118
    .line 119
    .line 120
    return-object v1
.end method

.method public m()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getInteractionType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public my()Lcom/byazt/ll/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public nu()Ljava/util/Map;
    .locals 4
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
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/hz/tt;->ve(Ljava/lang/String;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getExtraMsg()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getExtraMsg()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-static {}, Lcom/byazt/vx/z;->c()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    iget-object v1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    invoke-static {v1, v2, v3}, Lcom/byazt/vx/t;->c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Z)Lcom/byazt/pp/ve;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/byazt/vx/z;->c(Lcom/byazt/pp/ve;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_4

    .line 79
    .line 80
    const-string v2, "get_show_ecpm_info"

    .line 81
    .line 82
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_4
    return-object v0
.end method

.method public rh()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->n()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public sl()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/pp/ve;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/qe/ve;->or()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/byazt/yl/ve;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    iget-object v3, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-static {v3, v2, v4}, Lcom/byazt/vx/t;->c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Z)Lcom/byazt/pp/ve;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return-object v0
.end method

.method public sp()V
    .locals 0

    return-void
.end method

.method public t()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/pp/ve;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/qe/ve;->or()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v2}, Lcom/byazt/iz/tt;->c(Z)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/byazt/yl/ve;

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iget-object v4, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 44
    .line 45
    invoke-static {v4, v3, v2}, Lcom/byazt/vx/t;->c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Z)Lcom/byazt/pp/ve;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return-object v0
.end method

.method public tt(Ljava/util/List;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/byazt/yl/ve;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yl/ve;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public tt()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    if-eqz v1, :cond_11

    iget-object v2, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Lcom/byazt/iz/tt;->da()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->md()Ljava/util/Map;

    move-result-object v1

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 18
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {v2}, Lcom/byazt/oi/tt;->c(Ljava/util/List;)V

    .line 20
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_7

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 21
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 22
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_5

    .line 23
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, -0x64

    const/4 v8, 0x1

    if-ne v6, v7, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-ge v6, v7, :cond_4

    const/4 v5, 0x1

    .line 24
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 25
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    :goto_2
    if-nez v4, :cond_a

    .line 26
    iget-object v1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->or()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v1}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/vx/p;->tt(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 27
    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v1}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/yl/ve;

    .line 28
    iget-object v3, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->isMultiBiddingAd()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->isClientBiddingAd()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 29
    :cond_9
    iget-object v3, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/byazt/nbs/tt;->a(Ljava/lang/String;)Lcom/byazt/nbs/da;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 30
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    if-nez v5, :cond_b

    .line 31
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->yp()Ljava/util/List;

    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 35
    :cond_c
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/nbs/da;

    if-nez v2, :cond_c

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 38
    :cond_d
    iget-object v1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->zb()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->or()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_5

    .line 39
    :cond_e
    invoke-direct {p0, v0}, Lcom/byazt/hz/tt;->uj(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 40
    iget-object v1, p0, Lcom/byazt/hz/tt;->tt:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_6

    .line 41
    :cond_f
    iget-object v1, p0, Lcom/byazt/hz/tt;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_6

    .line 42
    :cond_10
    :goto_5
    invoke-direct {p0, v0}, Lcom/byazt/hz/tt;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_11
    :goto_6
    return-object v0
.end method

.method public tt(Lcom/byazt/pp/c;)V
    .locals 0
    .param p1    # Lcom/byazt/pp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public tt(Lcom/byazt/yl/ve;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/byazt/yl/ve;->getMediationRitReqType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    .line 11
    invoke-virtual {p1, v1}, Lcom/byazt/yl/ve;->setMediationRitReqType(I)V

    .line 12
    invoke-virtual {p1, v0}, Lcom/byazt/yl/ve;->setMediationRitReqTypeSrc(I)V

    return-void
.end method

.method public u()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/vx/qy;->ve(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/byazt/vx/qy;->tt(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, "setting \u4e0b\u53d1\u662f\u5426\u4e3a\u5f31\u7f51\u6267\u884c\uff1a"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Lcom/byazt/qe/ve;->m()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, "\uff0c\u5f53\u524d\u7f51\u7edc\u73af\u5883\uff1a2G-type="

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, ",3G-type="

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "TTMediationSDK"

    .line 68
    .line 69
    invoke-static {v3, v2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/byazt/qe/ve;->m()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    if-nez v0, :cond_0

    .line 83
    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    :cond_0
    const/4 v0, 0x1

    .line 87
    return v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    .line 89
    return v0
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->onDestroy()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->sv()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/byazt/hz/tt;->i:Lcom/byazt/zq/a;

    return-void
.end method

.method public x()V
    .locals 0

    return-void
.end method

.method public yp()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->l()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->l()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->l()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/byazt/nbs/da;

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/byazt/nbs/da;->my()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/16 v4, 0x64

    .line 58
    .line 59
    if-ne v3, v4, :cond_1

    .line 60
    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    return-object v0

    .line 66
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 67
    return-object v0
.end method

.method public z()Lcom/byazt/pp/ve;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->tk()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/byazt/qe/ve;->or()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, v2}, Lcom/byazt/iz/tt;->c(Z)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/byazt/yl/ve;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 47
    .line 48
    invoke-static {v2, v0, v1}, Lcom/byazt/vx/t;->c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Z)Lcom/byazt/pp/ve;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    :cond_2
    :goto_0
    return-object v1
.end method
