.class public Lcom/byazt/fcd/ve;
.super Lcom/byazt/fcd/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/fcd/ve$c;
    }
.end annotation


# instance fields
.field public final aw:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public bm:Lcom/byazt/dn/c;

.field public final bx:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public cu:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/iym/tt;",
            ">;"
        }
    .end annotation
.end field

.field public eo:I

.field public hd:Lcom/byazt/iym/n;

.field public final ic:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public lr:Lcom/byazt/qmz/c;

.field public nb:I

.field public or:I

.field public final pf:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public qp:I

.field public final sv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public zb:I


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/fcd/c;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/byazt/fcd/ve;->eo:I

    .line 13
    .line 14
    iput p1, p0, Lcom/byazt/fcd/ve;->zb:I

    .line 15
    .line 16
    iput p1, p0, Lcom/byazt/fcd/ve;->or:I

    .line 17
    .line 18
    iput p1, p0, Lcom/byazt/fcd/ve;->cu:I

    .line 19
    .line 20
    iput p1, p0, Lcom/byazt/fcd/ve;->qp:I

    .line 21
    .line 22
    iput p1, p0, Lcom/byazt/fcd/ve;->nb:I

    .line 23
    .line 24
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/byazt/fcd/ve;->pf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lcom/byazt/fcd/ve;->bx:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lcom/byazt/fcd/ve;->sv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lcom/byazt/fcd/ve;->aw:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/byazt/fcd/ve;->ic:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    return-void
.end method

.method public static synthetic a(Lcom/byazt/fcd/ve;)Lcom/byazt/iym/n;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/fcd/ve;->hd:Lcom/byazt/iym/n;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/fcd/ve;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/fcd/ve;->cu:I

    return p1
.end method

.method public static synthetic c(Lcom/byazt/fcd/ve;Lcom/byazt/iym/n;)Lcom/byazt/iym/n;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/fcd/ve;->hd:Lcom/byazt/iym/n;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/fcd/ve;)Lcom/byazt/qmz/c;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/fcd/ve;->lr:Lcom/byazt/qmz/c;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/fcd/ve;Lcom/byazt/qmz/c;)Lcom/byazt/qmz/c;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/fcd/ve;->lr:Lcom/byazt/qmz/c;

    return-object p1
.end method

.method public static c(Lcom/byazt/ete/ic;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/lt;->c(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->hl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static synthetic da(Lcom/byazt/fcd/ve;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/fcd/ve;->cu:I

    .line 2
    .line 3
    return p0
.end method

.method private f()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->yv()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/byazt/biq/ve;->ve()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-int/2addr v1, v0

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/4 v8, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v8, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/byazt/ete/lt;->uj(Lcom/byazt/ete/ic;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v3, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 30
    .line 31
    invoke-static {v3}, Lcom/byazt/ete/lt;->n(Lcom/byazt/ete/ic;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {p0, v0}, Lcom/byazt/fcd/c;->a(Z)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    iget-object v5, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 40
    .line 41
    invoke-static {v5}, Lcom/byazt/ete/lt;->x(Lcom/byazt/ete/ic;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const-string v6, "s"

    .line 46
    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    if-lez v4, :cond_1

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const-string v1, "\u5956\u52b1\u5df2\u9886\u53d6"

    .line 68
    .line 69
    :goto_1
    move-object v5, v1

    .line 70
    :cond_2
    :goto_2
    const/4 v4, 0x0

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    const-string v5, "\u9886\u53d6\u6210\u529f"

    .line 73
    .line 74
    if-nez v1, :cond_5

    .line 75
    .line 76
    if-lez v4, :cond_4

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v4, "s\u540e\u53ef\u9886\u53d6\u5956\u52b1"

    .line 87
    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    :cond_4
    const/4 v4, 0x1

    .line 96
    goto :goto_3

    .line 97
    :cond_5
    if-lez v4, :cond_2

    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    goto :goto_2

    .line 115
    :goto_3
    invoke-virtual {p0, v2}, Lcom/byazt/fcd/c;->a(Z)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {p0, v1}, Lcom/byazt/fcd/c;->tt(I)V

    .line 120
    .line 121
    .line 122
    if-eqz v8, :cond_6

    .line 123
    .line 124
    if-nez v3, :cond_6

    .line 125
    .line 126
    const/4 v7, 0x1

    .line 127
    goto :goto_4

    .line 128
    :cond_6
    const/4 v7, 0x0

    .line 129
    :goto_4
    if-eqz v8, :cond_7

    .line 130
    .line 131
    if-ne v3, v2, :cond_7

    .line 132
    .line 133
    const-string v1, "\u8df3\u8fc7"

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_7
    const/4 v1, 0x0

    .line 137
    :goto_5
    move-object v6, v1

    .line 138
    iget-object v3, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 139
    .line 140
    invoke-virtual/range {v3 .. v8}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/byazt/fcd/ve;->lr:Lcom/byazt/qmz/c;

    .line 144
    .line 145
    if-eqz v1, :cond_8

    .line 146
    .line 147
    iget-object v2, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 148
    .line 149
    invoke-virtual {v2}, Lcom/byazt/biq/ve;->c()J

    .line 150
    .line 151
    .line 152
    move-result-wide v2

    .line 153
    const-wide/16 v4, 0x3e8

    .line 154
    .line 155
    div-long/2addr v2, v4

    .line 156
    long-to-int v3, v2

    .line 157
    iget-object v2, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/byazt/biq/ve;->n()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    iget-object v4, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 164
    .line 165
    invoke-virtual {v4}, Lcom/byazt/biq/ve;->tt()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    invoke-virtual {p0, v0}, Lcom/byazt/fcd/c;->a(Z)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/byazt/qmz/c;->c(IIII)V

    .line 174
    .line 175
    .line 176
    :cond_8
    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/ve;->hd:Lcom/byazt/iym/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/iym/n;->qp()Lcom/byazt/dh/ve;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    .line 13
    .line 14
    iget v3, p0, Lcom/byazt/fcd/ve;->cu:I

    .line 15
    .line 16
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/byazt/iym/tt;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v2}, Lcom/byazt/iym/tt;->da()Lcom/byazt/jzl/a;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v2, v1

    .line 34
    :goto_1
    iget-object v3, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    .line 35
    .line 36
    invoke-virtual {v3, v1, v0, v2}, Lcom/byazt/kcl/a;->c(Lcom/byazt/ete/ic;Lcom/byazt/dh/ve;Lcom/byazt/jzl/a;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->x()Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/a;->tt(Ljava/util/Map;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private hj()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/byazt/fcd/ve;->cu:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    .line 14
    .line 15
    iget v1, p0, Lcom/byazt/fcd/ve;->cu:I

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/byazt/iym/tt;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/byazt/iym/tt;->t()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    .line 29
    .line 30
    iget v1, p0, Lcom/byazt/fcd/ve;->cu:I

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/byazt/iym/tt;

    .line 39
    .line 40
    iget v1, p0, Lcom/byazt/fcd/c;->n:I

    .line 41
    .line 42
    int-to-float v1, v1

    .line 43
    iget v2, p0, Lcom/byazt/fcd/c;->a:I

    .line 44
    .line 45
    int-to-float v2, v2

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/byazt/iym/tt;->c(FF)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public static synthetic i(Lcom/byazt/fcd/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/fcd/ve;->bx:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private ir()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/byazt/ete/lt;->x(Lcom/byazt/ete/ic;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_a

    .line 10
    .line 11
    iget v1, v0, Lcom/byazt/fcd/ve;->cu:I

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    add-int/2addr v1, v2

    .line 15
    iget-object v3, v0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    iget v3, v0, Lcom/byazt/fcd/ve;->cu:I

    .line 22
    .line 23
    add-int/2addr v3, v2

    .line 24
    iget-object v4, v0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v12, 0x0

    .line 31
    if-lt v3, v4, :cond_0

    .line 32
    .line 33
    const/4 v15, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v15, 0x0

    .line 36
    :goto_0
    iget v3, v0, Lcom/byazt/fcd/ve;->cu:I

    .line 37
    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v3, 0x0

    .line 43
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/fcd/ve;->j()I

    .line 44
    .line 45
    .line 46
    move-result v14

    .line 47
    iget-object v4, v0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/byazt/biq/ve;->n()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    iget v5, v0, Lcom/byazt/fcd/ve;->or:I

    .line 54
    .line 55
    sub-int/2addr v4, v5

    .line 56
    iget-object v5, v0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 57
    .line 58
    invoke-static {v5}, Lcom/byazt/ete/lt;->z(Lcom/byazt/ete/ic;)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-ge v4, v5, :cond_2

    .line 63
    .line 64
    const/4 v10, 0x1

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    const/4 v10, 0x0

    .line 67
    :goto_2
    iget-object v2, v0, Lcom/byazt/fcd/ve;->sv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const/4 v4, 0x0

    .line 74
    if-eqz v2, :cond_8

    .line 75
    .line 76
    if-eqz v10, :cond_3

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    :goto_3
    move v7, v1

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, "/"

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    if-eqz v10, :cond_5

    .line 107
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    if-eqz v3, :cond_4

    .line 114
    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v5, "\u53ef\u770b"

    .line 118
    .line 119
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v5, "\u4e2a\u89c6\u9891,\u5f53\u524d "

    .line 126
    .line 127
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    goto :goto_4

    .line 135
    :cond_4
    const-string v3, "\u6b63\u5728\u64ad\u653e "

    .line 136
    .line 137
    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    goto :goto_6

    .line 148
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    if-nez v15, :cond_6

    .line 154
    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v5, "\u79d2\u540e\u64ad\u653e "

    .line 164
    .line 165
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    goto :goto_5

    .line 173
    :cond_6
    const-string v3, ""

    .line 174
    .line 175
    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    :goto_6
    iget-object v2, v0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 186
    .line 187
    iget-object v3, v0, Lcom/byazt/fcd/ve;->aw:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_7

    .line 194
    .line 195
    const-string v4, "\u53d6\u6d88"

    .line 196
    .line 197
    :cond_7
    iget-object v3, v0, Lcom/byazt/fcd/ve;->aw:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 198
    .line 199
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    invoke-virtual {v2, v1, v4, v3}, Lcom/byazt/kcl/n;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 204
    .line 205
    .line 206
    iget-object v4, v0, Lcom/byazt/fcd/ve;->lr:Lcom/byazt/qmz/c;

    .line 207
    .line 208
    if-eqz v4, :cond_9

    .line 209
    .line 210
    const/4 v9, 0x1

    .line 211
    iget-object v1, v0, Lcom/byazt/fcd/ve;->aw:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    move v5, v14

    .line 218
    move v6, v15

    .line 219
    invoke-virtual/range {v4 .. v11}, Lcom/byazt/qmz/c;->c(IZIIZZZ)V

    .line 220
    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_8
    iget-object v1, v0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 224
    .line 225
    invoke-virtual {v1, v4, v4, v12}, Lcom/byazt/kcl/n;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    .line 227
    .line 228
    iget-object v13, v0, Lcom/byazt/fcd/ve;->lr:Lcom/byazt/qmz/c;

    .line 229
    .line 230
    if-eqz v13, :cond_9

    .line 231
    .line 232
    const/4 v1, 0x0

    .line 233
    const/16 v16, 0x0

    .line 234
    .line 235
    const/16 v17, 0x0

    .line 236
    .line 237
    const/16 v18, 0x0

    .line 238
    .line 239
    const/16 v19, 0x0

    .line 240
    .line 241
    const/16 v20, 0x0

    .line 242
    .line 243
    move v2, v14

    .line 244
    move v14, v1

    .line 245
    invoke-virtual/range {v13 .. v20}, Lcom/byazt/qmz/c;->c(IZIIZZZ)V

    .line 246
    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_9
    :goto_7
    move v2, v14

    .line 250
    :goto_8
    if-nez v2, :cond_a

    .line 251
    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/fcd/ve;->dz()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-nez v1, :cond_a

    .line 257
    .line 258
    invoke-virtual {v0, v12}, Lcom/byazt/fcd/ve;->i(Z)V

    .line 259
    .line 260
    .line 261
    :cond_a
    iget-object v1, v0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 262
    .line 263
    invoke-virtual {v1}, Lcom/byazt/biq/ve;->n()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    iget-object v2, v0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 268
    .line 269
    invoke-static {v2}, Lcom/byazt/ete/lt;->i(Lcom/byazt/ete/ic;)I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-le v1, v2, :cond_b

    .line 274
    .line 275
    iget-object v1, v0, Lcom/byazt/fcd/ve;->bx:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-nez v1, :cond_b

    .line 282
    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/byazt/fcd/ve;->ma()Lcom/byazt/dqg/uj;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    if-eqz v1, :cond_b

    .line 288
    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/byazt/fcd/ve;->ma()Lcom/byazt/dqg/uj;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v1}, Lcom/byazt/dqg/uj;->n()V

    .line 294
    .line 295
    .line 296
    :cond_b
    return-void
.end method

.method private ma()Lcom/byazt/dqg/uj;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/byazt/dqg/uj;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/byazt/dqg/uj;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public static synthetic n(Lcom/byazt/fcd/ve;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/fcd/ve;->qp:I

    return p0
.end method

.method public static synthetic n(Lcom/byazt/fcd/ve;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/fcd/ve;->zb:I

    return p1
.end method

.method public static synthetic sl(Lcom/byazt/fcd/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/fcd/ve;->aw:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/fcd/ve;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/fcd/ve;->nb:I

    return p0
.end method

.method public static synthetic t(Lcom/byazt/fcd/ve;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/fcd/ve;->eo:I

    .line 2
    .line 3
    return p0
.end method

.method public static tt(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    const/16 p0, 0x8

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/fcd/ve;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/fcd/ve;->qp:I

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/fcd/ve;)Lcom/byazt/dqg/uj;
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/byazt/fcd/ve;->ma()Lcom/byazt/dqg/uj;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/byazt/fcd/ve;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/fcd/ve;->zb:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic uj(Lcom/byazt/fcd/ve;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/fcd/ve;->eo:I

    return p1
.end method

.method public static synthetic uj(Lcom/byazt/fcd/ve;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/fcd/ve;->hj()V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/fcd/ve;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/fcd/ve;->nb:I

    return p1
.end method

.method public static synthetic ve(Lcom/byazt/fcd/ve;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/fcd/ve;->g()V

    return-void
.end method

.method public static synthetic x(Lcom/byazt/fcd/ve;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    return-object p0
.end method

.method private yf()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/ve;->hd:Lcom/byazt/iym/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/iym/n;->nb()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    .line 13
    .line 14
    iget v1, p0, Lcom/byazt/fcd/ve;->cu:I

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/byazt/iym/tt;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/iym/tt;->uj()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    iget v1, p0, Lcom/byazt/fcd/ve;->eo:I

    .line 29
    .line 30
    add-int/2addr v1, v0

    .line 31
    iput v1, p0, Lcom/byazt/fcd/ve;->eo:I

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/byazt/ete/lt;->ve(Lcom/byazt/ete/ic;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget v1, p0, Lcom/byazt/fcd/ve;->zb:I

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x1

    .line 43
    if-gt v0, v1, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x0

    .line 48
    :goto_0
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/byazt/fcd/ve;->pf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->uj(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->t()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/byazt/fcd/ve;->pf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget v0, p0, Lcom/byazt/fcd/ve;->zb:I

    .line 74
    .line 75
    iget v1, p0, Lcom/byazt/fcd/ve;->eo:I

    .line 76
    .line 77
    if-ge v0, v1, :cond_4

    .line 78
    .line 79
    add-int/2addr v0, v3

    .line 80
    iput v0, p0, Lcom/byazt/fcd/ve;->zb:I

    .line 81
    .line 82
    :cond_4
    return-void
.end method

.method public static synthetic yp(Lcom/byazt/fcd/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/fcd/ve;->sv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public aw()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/fcd/ve;->zb:I

    .line 2
    .line 3
    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bx()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/lt;->ve(Lcom/byazt/ete/ic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/byazt/fcd/ve;->zb:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public c(Z)Lcom/byazt/dqg/tt;
    .locals 4

    .line 7
    new-instance v0, Lcom/byazt/dqg/uj;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-direct {v0, v1, v2, p1}, Lcom/byazt/dqg/uj;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 8
    iget v1, p0, Lcom/byazt/fcd/c;->n:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 9
    iget v2, p0, Lcom/byazt/fcd/c;->a:I

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, p1, v3

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_0

    cmpg-float v1, v2, v3

    if-gez v1, :cond_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->gt()[F

    move-result-object p1

    .line 11
    :cond_1
    invoke-virtual {v0, p1}, Lcom/byazt/dqg/uj;->c([F)V

    .line 12
    iput-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    return-object v0
.end method

.method public c(Lcom/byazt/ete/ic;Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->sv()V

    .line 14
    invoke-static {p1}, Lcom/byazt/ete/lt;->x(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/byazt/qq/ve;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-direct {v0, v1, p1}, Lcom/byazt/qq/ve;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/byazt/qq/n;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-direct {v0, v1, p1}, Lcom/byazt/qq/n;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->sv()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/qq/c;->c(I)V

    .line 16
    new-instance p1, Lcom/byazt/fcd/ve$5;

    invoke-direct {p1, p0, p2}, Lcom/byazt/fcd/ve$5;-><init>(Lcom/byazt/fcd/ve;Lcom/byazt/qq/da;)V

    invoke-virtual {v0, p1}, Lcom/byazt/qq/c;->tt(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/byazt/fcd/c;->c(Landroid/view/View;)V

    .line 26
    iget-object v0, p0, Lcom/byazt/fcd/ve;->hd:Lcom/byazt/iym/n;

    invoke-virtual {v0, p1}, Lcom/byazt/iym/n;->c(Landroid/view/View;)V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-super {p0, p1}, Lcom/byazt/fcd/c;->c(Ljava/util/Map;)V

    .line 18
    iget v0, p0, Lcom/byazt/fcd/ve;->qp:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "group_pos"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/byazt/fcd/ve;->hd:Lcom/byazt/iym/n;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/byazt/iym/n;->eo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "duration"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 3

    .line 21
    invoke-super {p0, p1}, Lcom/byazt/fcd/c;->c(Lorg/json/JSONObject;)V

    :try_start_0
    const-string v0, "group_pos"

    .line 22
    iget v1, p0, Lcom/byazt/fcd/ve;->cu:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "duration"

    .line 23
    iget-object v1, p0, Lcom/byazt/fcd/ve;->hd:Lcom/byazt/iym/n;

    invoke-virtual {v1}, Lcom/byazt/iym/n;->eo()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 24
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public dz()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/fcd/ve;->cu:I

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/byazt/iym/tt;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/byazt/ete/xd;->sp(Lcom/byazt/ete/ic;)D

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-static {v0}, Lcom/byazt/ete/lt;->tt(Lcom/byazt/ete/ic;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    int-to-long v3, v0

    .line 28
    cmp-long v0, v1, v3

    .line 29
    .line 30
    if-gtz v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    return v0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    return v0
.end method

.method public eo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/fcd/ve;->tt(Lcom/byazt/ete/ic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public gu()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->cu()Z

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
    :try_start_0
    invoke-direct {p0}, Lcom/byazt/fcd/ve;->ma()Lcom/byazt/dqg/uj;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/byazt/dqg/uj;->tt()Lcom/byazt/kt/RecyclerView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Lcom/byazt/fcd/ve;->qp:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/kt/RecyclerView;->ve(I)Lcom/byazt/kt/RecyclerView$gu;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/byazt/iym/n;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/iym/n;->md()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "cubic  resume exception:"

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public i()Landroid/view/View;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/byazt/vfu/a;->da(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public i(Z)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->cu()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/byazt/fcd/ve;->cu:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    invoke-virtual {v0}, Lcom/byazt/biq/ve;->n()I

    move-result v0

    iput v0, p0, Lcom/byazt/fcd/ve;->or:I

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/byazt/fcd/ve;->ic:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/lt;->a(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    .line 7
    invoke-direct {p0}, Lcom/byazt/fcd/ve;->ma()Lcom/byazt/dqg/uj;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/byazt/fcd/ve;->ma()Lcom/byazt/dqg/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/dqg/uj;->tt()Lcom/byazt/kt/RecyclerView;

    move-result-object p1

    iget v0, p0, Lcom/byazt/fcd/ve;->qp:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/byazt/kt/RecyclerView;->tt(I)V

    :cond_4
    return-void
.end method

.method public iu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/lt;->m(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/byazt/fcd/c;->m:Z

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public j()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/fcd/ve;->cu:I

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/byazt/iym/tt;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/byazt/ete/xd;->sp(Lcom/byazt/ete/ic;)D

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-static {v0}, Lcom/byazt/ete/lt;->tt(Lcom/byazt/ete/ic;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    int-to-long v3, v0

    .line 28
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    long-to-int v1, v0

    .line 33
    invoke-virtual {p0}, Lcom/byazt/fcd/ve;->dz()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v1, v0

    .line 38
    iget v0, p0, Lcom/byazt/fcd/ve;->or:I

    .line 39
    .line 40
    add-int/2addr v1, v0

    .line 41
    iget-object v0, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/byazt/biq/ve;->n()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sub-int/2addr v1, v0

    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    return v0
.end method

.method public kk()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public lt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/ve;->sv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/ve;->ic:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/byazt/fcd/ve;->r()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/byazt/iym/tt;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/byazt/iym/tt;->x()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/byazt/fcd/ve;->ma()Lcom/byazt/dqg/uj;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/byazt/fcd/ve;->ma()Lcom/byazt/dqg/uj;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/byazt/dqg/uj;->ve()Lcom/byazt/iym/c;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/byazt/iym/c;->uj()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public n(Z)V
    .locals 2

    .line 3
    invoke-super {p0, p1}, Lcom/byazt/fcd/c;->n(Z)V

    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/ve;->hd:Lcom/byazt/iym/n;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/iym/n;->ve(Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/iym/tt;

    .line 7
    invoke-virtual {v1, p1}, Lcom/byazt/iym/tt;->c(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public q()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->wn()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->wn()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x3

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->wn()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x7

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    return v0

    .line 31
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 32
    return v0
.end method

.method public qy()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/byazt/fcd/ve;->ma()Lcom/byazt/dqg/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/dqg/uj;->tt()Lcom/byazt/kt/RecyclerView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/byazt/fcd/ve;->qp:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/kt/RecyclerView;->ve(I)Lcom/byazt/kt/RecyclerView$gu;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/byazt/iym/n;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/iym/n;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "cubic pause exception:"

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public r()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/fcd/ve;->f()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/fcd/ve;->yf()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/fcd/ve;->ir()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public s()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->c(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->fe()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0, v2}, Lcom/byazt/kcl/n;->tt(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->ve(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->n(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/byazt/ete/lt;->sl(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->c(Z)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/byazt/dn/c;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/byazt/dn/c;-><init>(Lcom/byazt/ete/ic;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/byazt/fcd/ve;->bm:Lcom/byazt/dn/c;

    .line 54
    .line 55
    new-instance v1, Lcom/byazt/fcd/ve$1;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/byazt/fcd/ve$1;-><init>(Lcom/byazt/fcd/ve;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/byazt/dn/c;->c(Lcom/byazt/xl/sp;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/byazt/fcd/ve;->bm:Lcom/byazt/dn/c;

    .line 64
    .line 65
    new-instance v1, Lcom/byazt/fcd/ve$2;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/byazt/fcd/ve$2;-><init>(Lcom/byazt/fcd/ve;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/byazt/dn/c;->c(Lcom/byazt/xl/x;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/byazt/fcd/ve;->bm:Lcom/byazt/dn/c;

    .line 74
    .line 75
    new-instance v1, Lcom/byazt/fcd/ve$3;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lcom/byazt/fcd/ve$3;-><init>(Lcom/byazt/fcd/ve;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/byazt/dn/c;->c(Lcom/byazt/kdw/tt;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/byazt/fcd/ve;->bm:Lcom/byazt/dn/c;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/byazt/ete/lt;->sl(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/byazt/ete/lt;->t(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    iget v5, p0, Lcom/byazt/fcd/c;->n:I

    .line 98
    .line 99
    const/4 v6, 0x0

    .line 100
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/byazt/ete/lt;->u(Lcom/byazt/ete/ic;)I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    invoke-virtual/range {v2 .. v7}, Lcom/byazt/dn/c;->c(Ljava/lang/String;Ljava/lang/String;III)V

    .line 107
    .line 108
    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/fcd/ve;->r()V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public sp(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/byazt/fcd/ve;->bx()I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/lt;->sp(Lcom/byazt/ete/ic;)I

    move-result p1

    iget v0, p0, Lcom/byazt/fcd/ve;->zb:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public to()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/lt;->x(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public ve()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->ve(Z)V

    .line 4
    invoke-direct {p0}, Lcom/byazt/fcd/ve;->ma()Lcom/byazt/dqg/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/byazt/fcd/ve;->ma()Lcom/byazt/dqg/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/dqg/uj;->ve()Lcom/byazt/iym/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/byazt/iym/c;->c(Ljava/util/List;)V

    .line 6
    invoke-direct {p0}, Lcom/byazt/fcd/ve;->ma()Lcom/byazt/dqg/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/dqg/uj;->uj()Lcom/byazt/iym/ve;

    move-result-object v0

    new-instance v1, Lcom/byazt/fcd/ve$4;

    invoke-direct {v1, p0}, Lcom/byazt/fcd/ve$4;-><init>(Lcom/byazt/fcd/ve;)V

    invoke-virtual {v0, v1}, Lcom/byazt/iym/ve;->c(Lcom/byazt/iym/ve$c;)V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 10

    .line 2
    invoke-super {p0}, Lcom/byazt/fcd/c;->x()V

    .line 3
    iget-object v0, p0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    new-instance v7, Lcom/byazt/iym/tt;

    iget-object v2, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v3, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    iget-object v4, p0, Lcom/byazt/fcd/c;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/byazt/fcd/ve;->q()Z

    move-result v5

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/byazt/iym/tt;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->hl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    new-instance v9, Lcom/byazt/iym/tt;

    iget-object v4, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/ic;

    move-result-object v5

    iget-object v6, p0, Lcom/byazt/fcd/c;->t:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/byazt/fcd/ve;->q()Z

    move-result v7

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/byazt/iym/tt;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V

    .line 9
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/ve;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/iym/tt;

    .line 12
    iget-boolean v2, p0, Lcom/byazt/fcd/c;->u:Z

    invoke-virtual {v1, v2}, Lcom/byazt/iym/tt;->c(Z)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/ve;->aw:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/ete/lt;->yp(Lcom/byazt/ete/ic;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public zm()V
    .locals 11

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->zm()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    const-string v2, "visible"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v2

    .line 17
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v2, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Lcom/byazt/kcl/tt;->c(Lorg/json/JSONObject;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/byazt/fcd/ve;->to()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/byazt/fcd/ve;->qy()V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/ve;->sv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v2, v2, v1}, Lcom/byazt/kcl/n;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/byazt/fcd/ve;->lr:Lcom/byazt/qmz/c;

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x1

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x0

    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v10, 0x0

    .line 56
    invoke-virtual/range {v3 .. v10}, Lcom/byazt/qmz/c;->c(IZIIZZZ)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/byazt/fcd/ve;->lr:Lcom/byazt/qmz/c;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/byazt/biq/ve;->c()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    const-wide/16 v4, 0x3e8

    .line 68
    .line 69
    div-long/2addr v2, v4

    .line 70
    long-to-int v3, v2

    .line 71
    iget-object v2, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/byazt/biq/ve;->n()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    iget-object v4, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/byazt/biq/ve;->tt()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {p0, v1}, Lcom/byazt/fcd/c;->a(Z)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/byazt/qmz/c;->c(IIII)V

    .line 88
    .line 89
    .line 90
    :cond_1
    return-void
.end method
