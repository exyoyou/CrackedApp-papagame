.class public Lcom/byazt/hk/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/db/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83d,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/hk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/byazt/nbs/i;

.field public c:I

.field public n:Lcom/byazt/dv/tt;

.field public sp:J

.field public final synthetic tt:Lcom/byazt/hk/c;

.field public uj:Lcom/byazt/nbs/da;

.field public final ve:Lcom/byazt/ll/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/hk/c;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/dv/tt;Lcom/byazt/nbs/i;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hk/c$c;->tt:Lcom/byazt/hk/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/hk/c$c;->ve:Lcom/byazt/ll/tt;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/hk/c$c;->uj:Lcom/byazt/nbs/da;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/hk/c$c;->n:Lcom/byazt/dv/tt;

    .line 11
    .line 12
    iput p6, p0, Lcom/byazt/hk/c$c;->c:I

    .line 13
    .line 14
    iput-object p5, p0, Lcom/byazt/hk/c$c;->a:Lcom/byazt/nbs/i;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    iput-wide p1, p0, Lcom/byazt/hk/c$c;->sp:J

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public nativeDislikeClick(Lcom/byazt/yl/ve;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public notifyLoadFail(Lcom/byazt/pp/c;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-object v2, v0, Lcom/byazt/hk/c$c;->uj:Lcom/byazt/nbs/da;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "--==-- \u5e7f\u544a\u590d\u7528:show\u65f6\u9884\u8bf7\u6c42\u5e7f\u544aload\u5931\u8d25 --- "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v3, v0, Lcom/byazt/hk/c$c;->uj:Lcom/byazt/nbs/da;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->nu()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, ", "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v4, v0, Lcom/byazt/hk/c$c;->uj:Lcom/byazt/nbs/da;

    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v3, v0, Lcom/byazt/hk/c$c;->uj:Lcom/byazt/nbs/da;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/byazt/nbs/da;->u()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iget-object v4, v0, Lcom/byazt/hk/c$c;->uj:Lcom/byazt/nbs/da;

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/byazt/nbs/da;->a()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-static {v3, v4}, Lcom/byazt/yl/c;->c(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, ", errCode: "

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget v3, v1, Lcom/byazt/pp/c;->ve:I

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v3, ",msg="

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v3, v1, Lcom/byazt/pp/c;->uj:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const-string v3, "TTMediationSDK"

    .line 87
    .line 88
    invoke-static {v3, v2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v2, v0, Lcom/byazt/hk/c$c;->n:Lcom/byazt/dv/tt;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/byazt/dv/tt;->pf()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const-string v3, "is_dex_adapter"

    .line 102
    .line 103
    invoke-virtual {v1, v3, v2}, Lcom/byazt/pp/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_0
    iget-object v2, v0, Lcom/byazt/hk/c$c;->ve:Lcom/byazt/ll/tt;

    .line 107
    .line 108
    iget-object v3, v0, Lcom/byazt/hk/c$c;->uj:Lcom/byazt/nbs/da;

    .line 109
    .line 110
    iget v4, v0, Lcom/byazt/hk/c$c;->c:I

    .line 111
    .line 112
    const/4 v5, 0x4

    .line 113
    const/4 v6, 0x1

    .line 114
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    iget-object v8, v0, Lcom/byazt/hk/c$c;->uj:Lcom/byazt/nbs/da;

    .line 119
    .line 120
    invoke-virtual {v8}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-virtual {v7, v8}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    .line 130
    .line 131
    move-result-wide v8

    .line 132
    iget-wide v10, v0, Lcom/byazt/hk/c$c;->sp:J

    .line 133
    .line 134
    sub-long/2addr v8, v10

    .line 135
    const/4 v10, 0x0

    .line 136
    const/4 v11, 0x0

    .line 137
    const/4 v12, 0x0

    .line 138
    const-wide/16 v13, 0x0

    .line 139
    .line 140
    move-object/from16 v1, p1

    .line 141
    .line 142
    invoke-static/range {v1 .. v14}, Lcom/byazt/ng/a;->c(Lcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public notifyLoadSuccess(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-lez v2, :cond_4

    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/byazt/yl/ve;

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    iget-object v5, v0, Lcom/byazt/hk/c$c;->uj:Lcom/byazt/nbs/da;

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    iget-object v6, v0, Lcom/byazt/hk/c$c;->tt:Lcom/byazt/hk/c;

    .line 41
    .line 42
    invoke-virtual {v5}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v6, v5}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const-string v5, ""

    .line 52
    .line 53
    :goto_1
    iget-object v6, v0, Lcom/byazt/hk/c$c;->ve:Lcom/byazt/ll/tt;

    .line 54
    .line 55
    iget-object v7, v0, Lcom/byazt/hk/c$c;->n:Lcom/byazt/dv/tt;

    .line 56
    .line 57
    iget-object v8, v0, Lcom/byazt/hk/c$c;->a:Lcom/byazt/nbs/i;

    .line 58
    .line 59
    invoke-static {v4, v6, v7, v8, v5}, Lcom/byazt/qv/ve;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/dv/tt;Lcom/byazt/nbs/i;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 63
    .line 64
    .line 65
    move-result-wide v5

    .line 66
    invoke-virtual {v4, v5, v6}, Lcom/byazt/yl/ve;->setFillTime(J)V

    .line 67
    .line 68
    .line 69
    new-instance v5, Lcom/byazt/ix/sp;

    .line 70
    .line 71
    const-wide/16 v6, 0x0

    .line 72
    .line 73
    iget-object v8, v0, Lcom/byazt/hk/c$c;->ve:Lcom/byazt/ll/tt;

    .line 74
    .line 75
    invoke-direct {v5, v4, v6, v7, v8}, Lcom/byazt/ix/sp;-><init>(Lcom/byazt/yl/ve;JLcom/byazt/ll/tt;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    const/4 v4, 0x0

    .line 87
    if-lez v3, :cond_3

    .line 88
    .line 89
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lcom/byazt/ix/sp;

    .line 94
    .line 95
    iget-object v3, v3, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    .line 96
    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v6, "--==-- \u5e7f\u544a\u590d\u7528:show\u65f6\u9884\u8bf7\u6c42\u5e7f\u544aload\u6210\u529f --- "

    .line 100
    .line 101
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v6, ", adType: "

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdType()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getSubAdType()I

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    invoke-static {v6, v7}, Lcom/byazt/yl/c;->c(II)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v6, ", adnSlotId: "

    .line 132
    .line 133
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v6, ", ad\u4e2a\u6570: "

    .line 144
    .line 145
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    const-string v6, "TTMediationSDK"

    .line 160
    .line 161
    invoke-static {v6, v5}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v5, v0, Lcom/byazt/hk/c$c;->tt:Lcom/byazt/hk/c;

    .line 165
    .line 166
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v5, v3, v2, v4}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Ljava/util/List;Z)V

    .line 171
    .line 172
    .line 173
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    move-object v3, v2

    .line 178
    check-cast v3, Lcom/byazt/yl/ve;

    .line 179
    .line 180
    const/16 v4, 0x4e20

    .line 181
    .line 182
    const-string v5, "load success"

    .line 183
    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 185
    .line 186
    .line 187
    move-result-wide v6

    .line 188
    iget-wide v8, v0, Lcom/byazt/hk/c$c;->sp:J

    .line 189
    .line 190
    sub-long/2addr v6, v8

    .line 191
    iget-object v8, v0, Lcom/byazt/hk/c$c;->ve:Lcom/byazt/ll/tt;

    .line 192
    .line 193
    iget v9, v0, Lcom/byazt/hk/c$c;->c:I

    .line 194
    .line 195
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    const/4 v11, 0x0

    .line 200
    const/4 v12, 0x0

    .line 201
    const-wide/16 v13, -0x1

    .line 202
    .line 203
    const-wide/16 v15, -0x1

    .line 204
    .line 205
    invoke-static/range {v3 .. v16}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;ILjava/lang/String;JLcom/byazt/ll/tt;IIILjava/lang/String;JJ)V

    .line 206
    .line 207
    .line 208
    :cond_4
    return-void
.end method

.method public notifyVideoCache(Ljava/util/List;Lcom/byazt/pp/c;)V
    .locals 5
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

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-lez p2, :cond_3

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/byazt/yl/ve;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/hk/c$c;->uj:Lcom/byazt/nbs/da;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/byazt/hk/c$c;->tt:Lcom/byazt/hk/c;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v2, v1}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const-string v1, ""

    .line 41
    .line 42
    :goto_1
    iget-object v2, p0, Lcom/byazt/hk/c$c;->ve:Lcom/byazt/ll/tt;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/byazt/hk/c$c;->n:Lcom/byazt/dv/tt;

    .line 45
    .line 46
    iget-object v4, p0, Lcom/byazt/hk/c$c;->a:Lcom/byazt/nbs/i;

    .line 47
    .line 48
    invoke-static {v0, v2, v3, v4, v1}, Lcom/byazt/qv/ve;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/dv/tt;Lcom/byazt/nbs/i;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setCacheSuccess(Z)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 p2, 0x0

    .line 57
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Lcom/byazt/yl/ve;

    .line 62
    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "--==-- \u5e7f\u544a\u590d\u7528:show\u65f6\u9884\u8bf7\u6c42\u5e7f\u544acache\u6210\u529f --- "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, ", adType: "

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getAdType()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getSubAdType()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-static {v1, v2}, Lcom/byazt/yl/c;->c(II)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v1, ", adnSlotId: "

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, ", ad\u4e2a\u6570: "

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-string v0, "TTMediationSDK"

    .line 128
    .line 129
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    iget-object p1, p0, Lcom/byazt/hk/c$c;->ve:Lcom/byazt/ll/tt;

    .line 133
    .line 134
    iget-object v0, p0, Lcom/byazt/hk/c$c;->uj:Lcom/byazt/nbs/da;

    .line 135
    .line 136
    invoke-static {p1, p2, v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Lcom/byazt/nbs/da;)V

    .line 137
    .line 138
    .line 139
    :cond_3
    return-void
.end method
