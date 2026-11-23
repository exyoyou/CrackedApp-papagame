.class public Lcom/byazt/fcd/x;
.super Lcom/byazt/fcd/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x47
    }
.end annotation


# instance fields
.field public final bx:Lcom/byazt/zd/tt;

.field public final cu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public final eo:I

.field public final nb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final or:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public pf:Lcom/byazt/yqb/c;

.field public final qp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public zb:J


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/fcd/c;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x4

    .line 5
    iput p1, p0, Lcom/byazt/fcd/x;->eo:I

    .line 6
    .line 7
    const-wide/16 p1, 0x4

    .line 8
    .line 9
    iput-wide p1, p0, Lcom/byazt/fcd/x;->zb:J

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/byazt/fcd/x;->or:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/byazt/fcd/x;->cu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/byazt/fcd/x;->qp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/byazt/fcd/x;->nb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/byazt/fcd/x;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 46
    .line 47
    new-instance p1, Lcom/byazt/fcd/x$1;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lcom/byazt/fcd/x$1;-><init>(Lcom/byazt/fcd/x;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/byazt/fcd/x;->bx:Lcom/byazt/zd/tt;

    .line 53
    .line 54
    return-void
.end method

.method public static synthetic c(Lcom/byazt/fcd/x;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/fcd/x;->qp:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private c(IJJZ)V
    .locals 4

    if-eqz p6, :cond_0

    const/4 p2, 0x3

    if-gt p1, p2, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/byazt/fcd/x;->yf()V

    return-void

    :cond_0
    if-lez p1, :cond_2

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    cmp-long p1, v0, p2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    sub-long/2addr v0, p4

    const-wide/16 p1, 0x0

    cmp-long p3, v0, p1

    if-lez p3, :cond_2

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 p3, 0xc80

    cmp-long p5, p1, p3

    if-gtz p5, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/byazt/fcd/x;->yf()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/byazt/ete/b;->c(Lcom/byazt/ete/ic;)Z

    move-result p0

    return p0
.end method

.method private dz()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->n(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->sv()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/fcd/x;->pf:Lcom/byazt/yqb/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/yqb/c;->ve()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->qy()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/x;->or:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/fcd/x;->j()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/fcd/x;->ir()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private ir()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/x;->cu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/byazt/fcd/x;->zb:J

    .line 11
    .line 12
    const-wide/16 v2, 0x1

    .line 13
    .line 14
    sub-long/2addr v0, v2

    .line 15
    iput-wide v0, p0, Lcom/byazt/fcd/x;->zb:J

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v4, v0, v2

    .line 20
    .line 21
    if-nez v4, :cond_2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/byazt/fcd/x;->pf:Lcom/byazt/yqb/c;

    .line 24
    .line 25
    invoke-virtual {v2, v0, v1}, Lcom/byazt/yqb/c;->c(J)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/fcd/x;->qp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->sp()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/fcd/x;->pf:Lcom/byazt/yqb/c;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/byazt/fcd/c;->gu:Lcom/byazt/ouz/n;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/byazt/yqb/c;->c(Lcom/byazt/hkv/tt;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/x;->pf:Lcom/byazt/yqb/c;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/byazt/fcd/c;->x:Lcom/byazt/hkv/n;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/byazt/yqb/c;->c(Lcom/byazt/hkv/tt;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    cmp-long v4, v0, v2

    .line 57
    .line 58
    if-lez v4, :cond_3

    .line 59
    .line 60
    iget-object v2, p0, Lcom/byazt/fcd/x;->pf:Lcom/byazt/yqb/c;

    .line 61
    .line 62
    invoke-virtual {v2, v0, v1}, Lcom/byazt/yqb/c;->c(J)V

    .line 63
    .line 64
    .line 65
    :cond_3
    return-void
.end method

.method private ma()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/x;->or:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    const/16 p0, 0xa

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/fcd/x;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/fcd/x;->dz()V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/fcd/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/fcd/x;->ma()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic ve(Lcom/byazt/fcd/x;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/fcd/x;->nb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method private yf()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/x;->cu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/x;->pf:Lcom/byazt/yqb/c;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/yqb/c;->c()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cu()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->cu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "\u5956\u52b1\u5df2\u9886\u53d6"

    .line 8
    .line 9
    const-string v3, "\u8df3\u8fc7"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public eo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/fcd/x;->tt(Lcom/byazt/ete/ic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/x;->cu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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
    iget-object v0, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->h()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    long-to-int v1, v0

    .line 17
    iget-object v0, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->gt()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    long-to-int v0, v2

    .line 24
    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/byazt/ete/b;->ve(Lcom/byazt/ete/ic;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eq v2, v3, :cond_3

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    if-eq v2, v3, :cond_2

    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    if-eq v2, v3, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->pf()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    int-to-long v6, v0

    .line 45
    int-to-long v8, v1

    .line 46
    const/4 v10, 0x1

    .line 47
    move-object v4, p0

    .line 48
    invoke-direct/range {v4 .. v10}, Lcom/byazt/fcd/x;->c(IJJZ)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/byazt/ete/b;->uj(Lcom/byazt/ete/ic;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    int-to-float v3, v0

    .line 59
    const v4, 0x3a83126f    # 0.001f

    .line 60
    .line 61
    .line 62
    mul-float v3, v3, v4

    .line 63
    .line 64
    const v4, 0x3c23d70a    # 0.01f

    .line 65
    .line 66
    .line 67
    mul-float v3, v3, v4

    .line 68
    .line 69
    int-to-float v2, v2

    .line 70
    mul-float v3, v3, v2

    .line 71
    .line 72
    float-to-int v5, v3

    .line 73
    int-to-long v6, v0

    .line 74
    int-to-long v8, v1

    .line 75
    const/4 v10, 0x0

    .line 76
    move-object v4, p0

    .line 77
    invoke-direct/range {v4 .. v10}, Lcom/byazt/fcd/x;->c(IJJZ)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/byazt/ete/b;->uj(Lcom/byazt/ete/ic;)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    int-to-long v4, v0

    .line 88
    iget-object v0, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/byazt/biq/ve;->n()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    int-to-long v0, v0

    .line 95
    const-wide/16 v6, 0x3e8

    .line 96
    .line 97
    mul-long v6, v6, v0

    .line 98
    .line 99
    const/4 v8, 0x0

    .line 100
    move-object v2, p0

    .line 101
    invoke-direct/range {v2 .. v8}, Lcom/byazt/fcd/x;->c(IJJZ)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public kk()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public os()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public oz()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public qp()Lcom/byazt/zd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/x;->bx:Lcom/byazt/zd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/fcd/x;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->yv()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->ic()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-gt v0, v2, :cond_1

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/byazt/fcd/c;->z:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    :cond_1
    sput v1, Lcom/byazt/fh/a;->c:I

    .line 34
    .line 35
    :cond_2
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Lcom/byazt/fcd/c;->a(Z)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/byazt/fcd/c;->tt(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->sv()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sput v0, Lcom/byazt/fh/a;->c:I

    .line 48
    .line 49
    return-void
.end method

.method public rl()V
    .locals 13

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->rl()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/fcd/c;->m:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/byazt/kcl/a;->h()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    const-wide/16 v3, 0x3e8

    .line 14
    .line 15
    div-long/2addr v1, v3

    .line 16
    long-to-int v2, v1

    .line 17
    iget-object v1, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/byazt/biq/ve;->ve()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ge v2, v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->lo()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v6, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 37
    const/4 v6, 0x1

    .line 38
    :goto_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->eo()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v7, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    const-string v10, "\u8df3\u8fc7"

    .line 51
    .line 52
    const/4 v11, 0x0

    .line 53
    const/4 v12, 0x1

    .line 54
    invoke-virtual/range {v7 .. v12}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->md()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-object v1, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/byazt/kcl/a;->c()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    iget-object v1, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, "s"

    .line 84
    .line 85
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-eqz v6, :cond_3

    .line 93
    .line 94
    const-string v0, "\u8df3\u8fc7"

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    const-string v0, ""

    .line 98
    .line 99
    :goto_2
    move-object v4, v0

    .line 100
    const/4 v5, 0x0

    .line 101
    invoke-virtual/range {v1 .. v6}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 102
    .line 103
    .line 104
    :cond_4
    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->n(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->a(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->n(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->ve(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->tt(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->c(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->bm()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public tx()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public y()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->gu:Lcom/byazt/ouz/n;

    .line 2
    .line 3
    const-class v1, Lcom/byazt/vis/c;

    .line 4
    .line 5
    const-class v2, Lcom/byazt/nat/c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/byazt/nat/c;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/byazt/fcd/x;->bx:Lcom/byazt/zd/tt;

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Lcom/byazt/nat/c;->c(Lcom/byazt/zd/tt;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/fcd/c;->gu:Lcom/byazt/ouz/n;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/byazt/vis/c;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/byazt/fcd/x;->bx:Lcom/byazt/zd/tt;

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Lcom/byazt/vis/c;->c(Lcom/byazt/zd/tt;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->x:Lcom/byazt/hkv/n;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/byazt/nat/c;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/byazt/fcd/x;->bx:Lcom/byazt/zd/tt;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/byazt/nat/c;->c(Lcom/byazt/zd/tt;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/byazt/fcd/c;->x:Lcom/byazt/hkv/n;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/byazt/vis/c;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/byazt/fcd/x;->bx:Lcom/byazt/zd/tt;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/byazt/vis/c;->c(Lcom/byazt/zd/tt;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    new-instance v0, Lcom/byazt/yqb/c;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/byazt/fcd/x;->bx:Lcom/byazt/zd/tt;

    .line 68
    .line 69
    invoke-direct {v0, v1, v2, v3}, Lcom/byazt/yqb/c;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Lcom/byazt/zd/tt;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/byazt/fcd/x;->pf:Lcom/byazt/yqb/c;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->or()Lcom/byazt/dqg/RewardFullBaseLayout;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/byazt/dqg/RewardFullBaseLayout;->getSceneFrameContainer()Landroid/widget/FrameLayout;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->or()Lcom/byazt/dqg/RewardFullBaseLayout;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/byazt/dqg/RewardFullBaseLayout;->getSceneFrame()Landroid/widget/FrameLayout;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/byazt/yqb/c;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/byazt/fcd/x;->or:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 100
    .line 101
    invoke-static {v1}, Lcom/byazt/ete/b;->ve(Lcom/byazt/ete/ic;)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    const/4 v2, 0x1

    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    const/4 v1, 0x1

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    const/4 v1, 0x0

    .line 111
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/byazt/fcd/x;->or:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    iput-boolean v2, p0, Lcom/byazt/fcd/c;->m:Z

    .line 123
    .line 124
    :cond_3
    return-void
.end method

.method public zm()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/byazt/fcd/c;->zm()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "\u5956\u52b1\u5df2\u9886\u53d6"

    .line 8
    .line 9
    const-string v3, "\u8df3\u8fc7"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
