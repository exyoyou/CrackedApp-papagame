.class public abstract Lcom/byazt/fcd/c;
.super Lcom/byazt/fcd/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x14
    }
.end annotation


# instance fields
.field public a:I

.field public final c:Lcom/byazt/lcf/TTBaseVideoActivity;

.field public final d:Lcom/byazt/ouz/sl;

.field public da:Lcom/byazt/dqg/n;

.field public gr:Lcom/byazt/kcl/c;

.field public gt:Lcom/byazt/kcl/tt;

.field public gu:Lcom/byazt/ouz/n;

.field public h:Lcom/byazt/biq/ve;

.field public i:Lcom/byazt/dqg/tt;

.field public m:Z

.field public md:I

.field public my:Lcom/byazt/kcl/a;

.field public n:I

.field public nu:Z

.field public p:Z

.field public qy:Lcom/byazt/ouz/a;

.field public rh:Lcom/byazt/kcl/n;

.field public rl:Lcom/byazt/kcl/uj;

.field public sl:Lcom/byazt/go/AbstractEndCardFrameLayout;

.field public sp:I

.field public t:Ljava/lang/String;

.field public tt:Lcom/byazt/ete/ic;

.field public u:Z

.field public uj:F

.field public ve:I

.field public x:Lcom/byazt/hkv/n;

.field public yp:Z

.field public yv:Z

.field public z:Z

.field public zm:I


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/fcd/tt;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/byazt/fcd/c;->sp:I

    .line 6
    .line 7
    const/4 v0, -0x5

    .line 8
    iput v0, p0, Lcom/byazt/fcd/c;->zm:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/byazt/fcd/c;->yv:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/byazt/fcd/c;->p:Z

    .line 14
    .line 15
    const/high16 v0, -0x80000000

    .line 16
    .line 17
    iput v0, p0, Lcom/byazt/fcd/c;->md:I

    .line 18
    .line 19
    new-instance v0, Lcom/byazt/fcd/c$1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/byazt/fcd/c$1;-><init>(Lcom/byazt/fcd/c;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/byazt/fcd/c;->d:Lcom/byazt/ouz/sl;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->by()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/byazt/fcd/c;->ve:I

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->fr()F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/byazt/fcd/c;->uj:F

    .line 41
    .line 42
    return-void
.end method

.method private c(Lcom/byazt/ete/ic;)Z
    .locals 4

    .line 26
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->i()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->gr()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method private da(Z)I
    .locals 17

    move-object/from16 v0, p0

    .line 4
    iget-object v1, v0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    invoke-virtual {v1}, Lcom/byazt/kcl/a;->h()J

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/fcd/c;->l()I

    move-result v9

    int-to-long v9, v9

    mul-long v9, v9, v7

    add-long/2addr v1, v9

    .line 6
    invoke-static {}, Lcom/byazt/ete/kp;->c()J

    move-result-wide v9

    iget-object v11, v0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    invoke-virtual {v11}, Lcom/byazt/kcl/a;->p()D

    move-result-wide v11

    mul-double v11, v11, v3

    iget-object v3, v0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->cs()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    mul-double v11, v11, v3

    double-to-long v3, v11

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 7
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 8
    div-long v3, v1, v7

    long-to-int v4, v3

    int-to-long v3, v4

    .line 9
    rem-long/2addr v1, v7

    long-to-int v2, v1

    const/16 v1, 0x1f4

    if-le v2, v1, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    move-wide v1, v5

    :goto_0
    add-long/2addr v3, v1

    .line 10
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    return v2

    .line 11
    :cond_1
    invoke-static {}, Lcom/byazt/ete/kp;->c()J

    move-result-wide v9

    iget-object v11, v0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    invoke-virtual {v11}, Lcom/byazt/kcl/a;->p()D

    move-result-wide v11

    mul-double v11, v11, v3

    double-to-long v11, v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/fcd/c;->l()I

    move-result v11

    int-to-long v11, v11

    mul-long v11, v11, v7

    .line 13
    iget-object v13, v0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    invoke-virtual {v13}, Lcom/byazt/kcl/a;->p()D

    move-result-wide v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v13, v15

    mul-double v13, v13, v3

    double-to-long v3, v13

    cmp-long v13, v3, v5

    if-lez v13, :cond_2

    sub-long/2addr v7, v3

    sub-long/2addr v1, v7

    :cond_2
    add-long/2addr v1, v11

    sub-long/2addr v9, v1

    long-to-float v1, v9

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 14
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private dz()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->h()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/byazt/kcl/a;->p()D

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    mul-double v2, v2, v4

    .line 19
    .line 20
    double-to-long v2, v2

    .line 21
    sub-long/2addr v2, v0

    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    const-wide/16 v2, 0x3e8

    .line 29
    .line 30
    div-long v4, v0, v2

    .line 31
    .line 32
    long-to-int v5, v4

    .line 33
    rem-long/2addr v0, v2

    .line 34
    long-to-int v1, v0

    .line 35
    const/16 v0, 0x1f4

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    if-le v1, v0, :cond_0

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    add-int/2addr v5, v0

    .line 44
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->l()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    sub-int/2addr v5, v0

    .line 49
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    return v0
.end method

.method private i(Z)I
    .locals 9

    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->cs()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 9
    invoke-static {p1}, Lcom/byazt/ete/xd;->sp(Lcom/byazt/ete/ic;)D

    move-result-wide v3

    float-to-double v5, v0

    mul-double v3, v3, v5

    invoke-static {}, Lcom/byazt/ete/kp;->c()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 10
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->yv()I

    move-result p1

    int-to-double v5, p1

    sub-double/2addr v3, v5

    .line 11
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    :goto_0
    double-to-int p1, v0

    return p1

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/xd;->sp(Lcom/byazt/ete/ic;)D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/byazt/fcd/c;->yv()I

    move-result p1

    int-to-double v5, p1

    sub-double/2addr v3, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->c(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->a(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->n(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->ve(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/byazt/fcd/tt;->s()V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public a(Z)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/byazt/fcd/tt;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->bx()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget p1, p0, Lcom/byazt/fcd/c;->zm:I

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/fcd/tt;->oz()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/byazt/fcd/tt;->x(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/fcd/c;->i(Z)I

    move-result p1

    return p1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->ic()I

    move-result p1

    invoke-virtual {p0}, Lcom/byazt/fcd/c;->yv()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Lcom/byazt/fcd/c;->sp(Z)I

    move-result p1

    return p1
.end method

.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public aw()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->h()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x3e8

    .line 8
    .line 9
    div-long/2addr v0, v2

    .line 10
    long-to-int v1, v0

    .line 11
    return v1
.end method

.method public bm()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/byazt/fcd/c;->yp:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p0, Lcom/byazt/fcd/c;->ve:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v0, v2, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/byazt/ete/kp;->gu(Lcom/byazt/ete/ic;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->fr()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/high16 v3, 0x42c80000    # 100.0f

    .line 27
    .line 28
    cmpl-float v0, v0, v3

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    return v2

    .line 33
    :cond_1
    return v1
.end method

.method public bx()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/byazt/fcd/c;->da(Z)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public c(Z)Lcom/byazt/dqg/tt;
    .locals 3

    .line 20
    iget v0, p0, Lcom/byazt/fcd/c;->uj:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcom/byazt/dqg/sp;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-direct {v0, v1, v2, p1}, Lcom/byazt/dqg/sp;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V

    iput-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/byazt/dqg/ve;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-direct {v0, v1, v2, p1}, Lcom/byazt/dqg/ve;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V

    iput-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 23
    :goto_0
    iget-object p1, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    return-object p1
.end method

.method public c()Lcom/byazt/kcl/n;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    return-object v0
.end method

.method public c(Lcom/byazt/ete/ic;Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
    .locals 2

    .line 29
    new-instance v0, Lcom/byazt/qq/ve;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-direct {v0, v1, p1}, Lcom/byazt/qq/ve;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V

    .line 30
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->sv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/qq/c;->c(I)V

    .line 31
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->nb()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/qq/c;->tt(I)V

    .line 32
    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->eo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/qq/tt;->ve(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->zb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/qq/tt;->uj(Ljava/lang/String;)V

    .line 34
    iget-boolean v1, p0, Lcom/byazt/fcd/c;->yv:Z

    invoke-virtual {v0, v1}, Lcom/byazt/qq/c;->ve(Z)V

    .line 35
    invoke-static {p1}, Lcom/byazt/ete/kp;->p(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object p1, p1, Lcom/byazt/lcf/TTBaseVideoActivity;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/byazt/qq/c;->uj(Z)V

    .line 36
    iget-object p1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->sv()V

    .line 37
    new-instance p1, Lcom/byazt/fcd/c$6;

    invoke-direct {p1, p0, p2}, Lcom/byazt/fcd/c$6;-><init>(Lcom/byazt/fcd/c;Lcom/byazt/qq/da;)V

    invoke-virtual {v0, p1}, Lcom/byazt/qq/c;->tt(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;

    move-result-object p1

    return-object p1
.end method

.method public c(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(II)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/byazt/fcd/c;->n:I

    .line 25
    iput p2, p0, Lcom/byazt/fcd/c;->a:I

    return-void
.end method

.method public c(IILandroid/content/Intent;)V
    .locals 0

    .line 2
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final c(Lcom/byazt/hkv/n;)V
    .locals 12

    .line 16
    iput-object p1, p0, Lcom/byazt/fcd/c;->x:Lcom/byazt/hkv/n;

    .line 17
    new-instance p1, Lcom/byazt/fcd/c$2;

    iget-object v2, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v3, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    iget-object v4, p0, Lcom/byazt/fcd/c;->t:Ljava/lang/String;

    invoke-static {v4}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v5

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/byazt/fcd/c$2;-><init>(Lcom/byazt/fcd/c;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/byazt/fcd/c;->qy:Lcom/byazt/ouz/a;

    .line 18
    new-instance p1, Lcom/byazt/fcd/c$3;

    iget-object v8, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v9, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    iget-object v10, p0, Lcom/byazt/fcd/c;->t:Ljava/lang/String;

    invoke-static {v10}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v11

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/byazt/fcd/c$3;-><init>(Lcom/byazt/fcd/c;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/byazt/fcd/c;->gu:Lcom/byazt/ouz/n;

    .line 19
    iget-object p1, p0, Lcom/byazt/fcd/c;->sl:Lcom/byazt/go/AbstractEndCardFrameLayout;

    iget-object v0, p0, Lcom/byazt/fcd/c;->x:Lcom/byazt/hkv/n;

    invoke-virtual {p1, v0}, Lcom/byazt/go/AbstractEndCardFrameLayout;->setClickListener(Lcom/byazt/hkv/tt;)V

    return-void
.end method

.method public c(Lcom/byazt/kcl/n;Lcom/byazt/kcl/a;Lcom/byazt/kcl/tt;Lcom/byazt/kcl/uj;Lcom/byazt/kcl/c;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 7
    iput-object p2, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    .line 8
    iput-object p3, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    .line 9
    iput-object p4, p0, Lcom/byazt/fcd/c;->rl:Lcom/byazt/kcl/uj;

    .line 10
    iput-object p5, p0, Lcom/byazt/fcd/c;->gr:Lcom/byazt/kcl/c;

    return-void
.end method

.method public c(Ljava/lang/String;ZZLcom/byazt/biq/ve;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/byazt/fcd/c;->t:Ljava/lang/String;

    .line 12
    iput-boolean p2, p0, Lcom/byazt/fcd/c;->u:Z

    .line 13
    iput-boolean p3, p0, Lcom/byazt/fcd/c;->yp:Z

    .line 14
    iput-object p4, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    return-void
.end method

.method public c(Ljava/util/Map;)V
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

    .line 4
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 5
    return-void
.end method

.method public cu()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/fcd/c;->z:Z

    .line 3
    .line 4
    return-void
.end method

.method public da()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->sl:Lcom/byazt/go/AbstractEndCardFrameLayout;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/byazt/go/CommonEndCardFrameLayout;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-direct {v0, v1, v2}, Lcom/byazt/go/CommonEndCardFrameLayout;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    iput-object v0, p0, Lcom/byazt/fcd/c;->sl:Lcom/byazt/go/AbstractEndCardFrameLayout;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->sl:Lcom/byazt/go/AbstractEndCardFrameLayout;

    return-object v0
.end method

.method public eo()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final gr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/fcd/c;->sp:I

    .line 2
    .line 3
    return v0
.end method

.method public gt()[F
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/aas/pf;->da(Landroid/content/Context;)F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lcom/byazt/fcd/c;->a:I

    .line 12
    .line 13
    int-to-float v1, v1

    .line 14
    iget v2, p0, Lcom/byazt/fcd/c;->n:I

    .line 15
    .line 16
    int-to-float v2, v2

    .line 17
    iget v3, p0, Lcom/byazt/fcd/c;->ve:I

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    if-ne v3, v5, :cond_0

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v6, 0x0

    .line 26
    :goto_0
    cmpl-float v7, v1, v2

    .line 27
    .line 28
    if-lez v7, :cond_1

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v7, 0x0

    .line 33
    :goto_1
    if-eq v6, v7, :cond_2

    .line 34
    .line 35
    add-float/2addr v1, v2

    .line 36
    sub-float v2, v1, v2

    .line 37
    .line 38
    sub-float/2addr v1, v2

    .line 39
    :cond_2
    if-ne v3, v5, :cond_3

    .line 40
    .line 41
    int-to-float v0, v0

    .line 42
    sub-float/2addr v1, v0

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    int-to-float v0, v0

    .line 45
    sub-float/2addr v2, v0

    .line 46
    :goto_2
    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [F

    .line 48
    .line 49
    aput v2, v0, v4

    .line 50
    .line 51
    aput v1, v0, v5

    .line 52
    .line 53
    return-object v0
.end method

.method public gu()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/byazt/fcd/c;->zm:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->sv()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/byazt/fcd/c;->zm:I

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lcom/byazt/fcd/c;->zm:I

    .line 14
    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    iput v0, p0, Lcom/byazt/fcd/c;->zm:I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget v3, p0, Lcom/byazt/fcd/c;->zm:I

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, "s"

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x1

    .line 45
    const/4 v6, 0x1

    .line 46
    invoke-virtual/range {v1 .. v6}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    if-nez v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->uj(I)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    const-string v4, "\u5956\u52b1\u5df2\u9886\u53d6"

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x1

    .line 65
    const/4 v7, 0x1

    .line 66
    invoke-virtual/range {v2 .. v7}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void
.end method

.method public hd()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/byazt/fcd/c;->nu:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1a

    .line 9
    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 24
    .line 25
    .line 26
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 27
    .line 28
    const/high16 v3, -0x78000000

    .line 29
    .line 30
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    .line 35
    .line 36
    const/high16 v2, -0x1000000

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 39
    .line 40
    .line 41
    const/high16 v2, 0x4000000

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/byazt/aas/pf;->sp(Landroid/app/Activity;)V

    .line 49
    .line 50
    .line 51
    iput-boolean v1, p0, Lcom/byazt/fcd/c;->nu:Z

    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public i()Landroid/view/View;
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/fcd/c;->uj:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->kp()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->cf()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/byazt/vfu/a;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/byazt/vfu/a;->uj(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/byazt/vfu/a;->ve(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public ic()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/aas/rl;->ve(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/aas/rl;->n(Lcom/byazt/ete/ic;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/ete/kp;->z(Lcom/byazt/ete/ic;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public kp()Landroid/view/View;
    .locals 6

    .line 1
    iget v0, p0, Lcom/byazt/fcd/c;->uj:F

    .line 2
    .line 3
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 4
    .line 5
    mul-float v0, v0, v1

    .line 6
    .line 7
    float-to-int v0, v0

    .line 8
    iget v1, p0, Lcom/byazt/fcd/c;->ve:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/16 v3, 0x5dc

    .line 12
    .line 13
    const/16 v4, 0x3e8

    .line 14
    .line 15
    const/16 v5, 0x29a

    .line 16
    .line 17
    if-ne v1, v2, :cond_4

    .line 18
    .line 19
    if-eq v0, v5, :cond_3

    .line 20
    .line 21
    if-eq v0, v4, :cond_2

    .line 22
    .line 23
    if-eq v0, v3, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x6f1

    .line 26
    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/byazt/vfu/a;->md(Landroid/content/Context;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/byazt/vfu/a;->p(Landroid/content/Context;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/byazt/vfu/a;->zm(Landroid/content/Context;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/byazt/vfu/a;->yv(Landroid/content/Context;)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/byazt/vfu/a;->gr(Landroid/content/Context;)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    const/16 v1, 0x232

    .line 65
    .line 66
    if-eq v0, v1, :cond_8

    .line 67
    .line 68
    if-eq v0, v5, :cond_7

    .line 69
    .line 70
    if-eq v0, v4, :cond_6

    .line 71
    .line 72
    if-eq v0, v3, :cond_5

    .line 73
    .line 74
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/byazt/vfu/a;->zb(Landroid/content/Context;)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_0

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/byazt/vfu/a;->d(Landroid/content/Context;)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_0

    .line 88
    :cond_6
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/byazt/vfu/a;->yv(Landroid/content/Context;)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    goto :goto_0

    .line 95
    :cond_7
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/byazt/vfu/a;->h(Landroid/content/Context;)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    goto :goto_0

    .line 102
    :cond_8
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/byazt/vfu/a;->eo(Landroid/content/Context;)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :goto_0
    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/biq/ve;->tt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public lo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/biq/ve;->ve()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public lr()Lcom/byazt/ouz/sl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->d:Lcom/byazt/ouz/sl;

    .line 2
    .line 3
    return-object v0
.end method

.method public lt()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->sl:Lcom/byazt/go/AbstractEndCardFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/go/AbstractEndCardFrameLayout;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/dqg/n;->uj()V

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/fcd/tt;->q()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->cu()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->gu()V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public md()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/biq/ve;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public my()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/my;->uj(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/fcd/c;->sl:Lcom/byazt/go/AbstractEndCardFrameLayout;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/go/AbstractEndCardFrameLayout;->getVideoArea()Landroid/widget/FrameLayout;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->a()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/byazt/dqg/n;->a()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/byazt/dqg/n;->c()Landroid/widget/FrameLayout;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/byazt/dqg/tt;->t()Landroid/widget/FrameLayout;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public n()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->sp(I)V

    .line 2
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    invoke-virtual {p0}, Lcom/byazt/fcd/tt;->tx()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/kcl/n;->c(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3
    iget v2, p0, Lcom/byazt/fcd/c;->n:I

    int-to-float v2, v2

    aput v2, v0, v1

    .line 4
    iget v3, p0, Lcom/byazt/fcd/c;->a:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v0, v4

    const/high16 v5, 0x41200000    # 10.0f

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_0

    cmpg-float v2, v3, v5

    if-gez v2, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->gt()[F

    move-result-object v0

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v2}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result v2

    .line 7
    iget-object v3, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v3}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x7

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    .line 8
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aget v5, v0, v1

    aget v0, v0, v4

    iget-object v6, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 9
    invoke-static {v3, v2, v5, v0, v6}, Lcom/byazt/aas/md;->c(ILjava/lang/String;FFLcom/byazt/ete/ic;)Lcom/byazt/dj/tt;

    move-result-object v9

    .line 10
    iget-object v7, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    iget-object v8, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    iget-object v10, p0, Lcom/byazt/fcd/c;->t:Ljava/lang/String;

    iget-boolean v11, p0, Lcom/byazt/fcd/c;->u:Z

    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v7 .. v12}, Lcom/byazt/dqg/n;->c(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;ZLjava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->ve(Z)V

    .line 12
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    invoke-virtual {v0, v4}, Lcom/byazt/dqg/n;->ve(Z)V

    .line 13
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    iget-object v1, p0, Lcom/byazt/fcd/c;->d:Lcom/byazt/ouz/sl;

    invoke-virtual {v0, v1}, Lcom/byazt/dqg/n;->c(Lcom/byazt/ouz/sl;)V

    .line 14
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    new-instance v1, Lcom/byazt/fcd/c$4;

    invoke-direct {v1, p0}, Lcom/byazt/fcd/c$4;-><init>(Lcom/byazt/fcd/c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/dqg/n;->c(Lcom/byazt/ouz/c;)V

    .line 15
    iget-object v0, p0, Lcom/byazt/fcd/c;->qy:Lcom/byazt/ouz/a;

    const-class v1, Lcom/byazt/vis/c;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/vis/c;

    iget-object v2, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->ic()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 16
    iget-object v0, p0, Lcom/byazt/fcd/c;->gu:Lcom/byazt/ouz/n;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/vis/c;

    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->ic()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 17
    iget-object v0, p0, Lcom/byazt/fcd/c;->qy:Lcom/byazt/ouz/a;

    const-class v1, Lcom/byazt/vis/ve;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/vis/ve;

    .line 18
    iget-object v2, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v2, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/vis/ve;)V

    .line 19
    iget-object v0, p0, Lcom/byazt/fcd/c;->gu:Lcom/byazt/ouz/n;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/vis/ve;

    .line 20
    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v1, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/vis/ve;)V

    .line 21
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    iget-object v1, p0, Lcom/byazt/fcd/c;->qy:Lcom/byazt/ouz/a;

    iget-object v2, p0, Lcom/byazt/fcd/c;->gu:Lcom/byazt/ouz/n;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/dqg/n;->c(Lcom/byazt/ouz/a;Lcom/byazt/ouz/n;)V

    .line 22
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    invoke-virtual {v0}, Lcom/byazt/dqg/n;->x()V

    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 23
    iput-boolean p1, p0, Lcom/byazt/fcd/c;->u:Z

    .line 24
    iget-object v0, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    invoke-virtual {v0, p1}, Lcom/byazt/kcl/a;->ve(Z)V

    return-void
.end method

.method public nb()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/fcd/tt;->oz()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->yv()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->aw()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->l()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    :goto_0
    return v0
.end method

.method public nu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dqg/tt;->m()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->fe()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->tt(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/byazt/fcd/tt;->kk()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->n(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->a(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->n(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public or()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/biq/ve;->n()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public pf()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/fcd/tt;->v()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->bx()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lcom/byazt/fcd/c;->zm:I

    .line 16
    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/fcd/tt;->oz()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->cs()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    const/high16 v1, 0x42c80000    # 100.0f

    .line 34
    .line 35
    div-float/2addr v0, v1

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v1}, Lcom/byazt/fcd/tt;->x(Z)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, v0}, Lcom/byazt/fcd/c;->i(Z)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    return v0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->ic()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    int-to-float v1, v1

    .line 54
    mul-float v1, v1, v0

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->yv()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    int-to-float v0, v0

    .line 61
    sub-float/2addr v1, v0

    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    float-to-int v0, v0

    .line 68
    return v0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->bx()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    return v0
.end method

.method public pu()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/fcd/c;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public qp()Lcom/byazt/zd/tt;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public qy()V
    .locals 0

    return-void
.end method

.method public rh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rl()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/n;->c(Lcom/byazt/biq/ve;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/fcd/c;->yp:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/byazt/fcd/c;->my:Lcom/byazt/kcl/a;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/byazt/kcl/a;->h()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    const-wide/16 v3, 0x3e8

    .line 23
    .line 24
    div-long/2addr v1, v3

    .line 25
    long-to-int v2, v1

    .line 26
    invoke-virtual {v0, v2}, Lcom/byazt/dqg/tt;->tt(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public sl()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/vfu/a;->n(Landroid/content/Context;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public sp(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/fcd/c;->da(Z)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/byazt/fcd/c;->dz()I

    move-result p1

    return p1
.end method

.method public sp()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/dqg/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sv()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/fcd/c;->md:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/byazt/fcd/c;->a(Z)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :cond_0
    return v0
.end method

.method public t()Lcom/byazt/dqg/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/dqg/n;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/dqg/n;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 9
    .line 10
    return-object v0
.end method

.method public tk()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/dqg/n;->c(Lcom/byazt/biq/ve;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/fcd/tt;->v()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->bx()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->h()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/fcd/tt;->r()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public to()Z
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
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->bx()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    return v0
.end method

.method public tt()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/byazt/fcd/tt;->y()V

    .line 3
    invoke-virtual {p0}, Lcom/byazt/fcd/tt;->os()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/byazt/ete/kp;->c(Lcom/byazt/ete/ic;Z)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/byazt/fcd/c;->j()V

    .line 6
    invoke-virtual {p0}, Lcom/byazt/fcd/tt;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->tt()V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->n()V

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->gt()V

    .line 11
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->ve()V

    return-void
.end method

.method public tt(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/byazt/fcd/c;->md:I

    return-void
.end method

.method public tt(Ljava/util/Map;)V
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

    .line 1
    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 12
    iget-object p1, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/byazt/dqg/n;->n()V

    :cond_0
    return-void
.end method

.method public u()Lcom/byazt/go/AbstractEndCardFrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->sl:Lcom/byazt/go/AbstractEndCardFrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    invoke-virtual {v0}, Lcom/byazt/dqg/n;->a()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    invoke-virtual {v1}, Lcom/byazt/kcl/tt;->cu()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->nu()V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    iget-object v2, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    invoke-virtual {v2}, Lcom/byazt/dqg/n;->t()Lcom/byazt/xl/yp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/kcl/tt;->c(Lcom/byazt/xl/yp;)V

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    invoke-virtual {v1}, Lcom/byazt/dqg/n;->c()Landroid/widget/FrameLayout;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/byazt/dqg/tt;->ve(Z)V

    .line 7
    iget-object v1, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    invoke-virtual {v1, v0}, Lcom/byazt/dqg/n;->ve(Z)V

    .line 8
    iget-object v1, p0, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    invoke-virtual {p0}, Lcom/byazt/fcd/tt;->tx()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/byazt/kcl/n;->c(Z)V

    .line 9
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->a()V

    return-void
.end method

.method public uj(Z)V
    .locals 5

    .line 10
    iget v0, p0, Lcom/byazt/fcd/c;->uj:F

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    .line 11
    iget p1, p0, Lcom/byazt/fcd/c;->ve:I

    if-ne p1, v4, :cond_0

    .line 12
    iget-object p1, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    invoke-virtual {p1, v2}, Lcom/byazt/dqg/tt;->uj(I)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 14
    iget-object p1, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    invoke-virtual {p1, v2}, Lcom/byazt/dqg/tt;->a(I)V

    return-void

    .line 15
    :cond_1
    iget p1, p0, Lcom/byazt/fcd/c;->ve:I

    if-ne p1, v4, :cond_6

    goto :goto_1

    :cond_2
    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 16
    iget v1, p0, Lcom/byazt/fcd/c;->ve:I

    if-ne v1, v4, :cond_5

    const/16 v1, 0x29a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x5dc

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6f1

    if-eq v0, v1, :cond_4

    .line 17
    iget-object v0, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Lcom/byazt/dqg/tt;->uj(I)V

    return-void

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    invoke-virtual {p1, v3}, Lcom/byazt/dqg/tt;->uj(I)V

    return-void

    .line 19
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/byazt/fcd/c;->i:Lcom/byazt/dqg/tt;

    invoke-virtual {p1, v3}, Lcom/byazt/dqg/tt;->uj(I)V

    :cond_6
    return-void
.end method

.method public ve()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->uj()V

    return-void
.end method

.method public ve(I)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    invoke-virtual {v0, p1}, Lcom/byazt/biq/ve;->c(I)V

    return-void
.end method

.method public ve(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->fr()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ogz/sl;->da(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/byazt/fcd/c;->yp:Z

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    sget-boolean v0, Lcom/byazt/yzg/a;->ve:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/byazt/yzg/a;->tt:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-direct {p0, v0}, Lcom/byazt/fcd/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 6
    sput-boolean p1, Lcom/byazt/yzg/a;->tt:Z

    .line 7
    sput-boolean p1, Lcom/byazt/yzg/a;->ve:Z

    .line 8
    iget-object p1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->finish()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 9
    sget-boolean p1, Lcom/byazt/yzg/a;->ve:Z

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->finish()V

    return-void

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/byazt/fcd/c;->gt:Lcom/byazt/kcl/tt;

    invoke-virtual {p1}, Lcom/byazt/kcl/tt;->eo()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/byazt/yzg/a;->ve:Z

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->finish()V

    :cond_3
    return-void
.end method

.method public x()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/byazt/fcd/c;->yp:Z

    .line 2
    .line 3
    const/high16 v1, 0x42c80000    # 100.0f

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    instance-of v0, p0, Lcom/byazt/fcd/da;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/byazt/ete/kp;->gu(Lcom/byazt/ete/ic;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    :cond_0
    iget v2, p0, Lcom/byazt/fcd/c;->uj:F

    .line 20
    .line 21
    cmpl-float v2, v2, v1

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v3, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-eqz v3, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->hd()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->or()Lcom/byazt/dqg/RewardFullBaseLayout;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/high16 v2, -0x1000000

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 44
    .line 45
    .line 46
    :goto_1
    instance-of v0, p0, Lcom/byazt/fcd/da;

    .line 47
    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    iget v0, p0, Lcom/byazt/fcd/c;->uj:F

    .line 51
    .line 52
    cmpl-float v0, v0, v1

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Lcom/byazt/fcd/c$5;

    .line 67
    .line 68
    invoke-direct {v1, p0, v0}, Lcom/byazt/fcd/c$5;-><init>(Lcom/byazt/fcd/c;Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    :catchall_0
    :cond_4
    return-void
.end method

.method public yp()V
    .locals 0

    return-void
.end method

.method public yv()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/biq/ve;->n()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/byazt/fcd/c;->h:Lcom/byazt/biq/ve;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/byazt/biq/ve;->tt()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/c;->da:Lcom/byazt/dqg/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/dqg/n;->z()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public zb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zm()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/byazt/fcd/c;->to()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method
