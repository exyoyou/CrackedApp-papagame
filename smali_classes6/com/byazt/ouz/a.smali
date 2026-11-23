.class public Lcom/byazt/ouz/a;
.super Lcom/byazt/hkv/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x22
    }
.end annotation


# instance fields
.field public da:Lcom/byazt/ete/gr;

.field public sl:Z

.field public t:I

.field public u:I

.field public yp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/hkv/tt;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/byazt/ouz/a;->t:I

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/byazt/ouz/a;->u:I

    .line 9
    .line 10
    iput p1, p0, Lcom/byazt/ouz/a;->yp:I

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/byazt/ouz/a;->sl:Z

    .line 14
    .line 15
    return-void
.end method

.method private c(Ljava/lang/String;B)Lcom/byazt/ete/i;
    .locals 16

    move-object/from16 v0, p0

    .line 5
    iget-object v1, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    invoke-virtual {v1}, Lcom/byazt/ete/da;->da()Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;)[I

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 7
    array-length v6, v2

    if-ne v6, v3, :cond_0

    .line 8
    aget v6, v2, v5

    .line 9
    aget v7, v2, v4

    .line 10
    iget v8, v0, Lcom/byazt/ouz/a;->t:I

    if-nez v8, :cond_1

    iget-boolean v8, v0, Lcom/byazt/ouz/a;->sl:Z

    if-eqz v8, :cond_1

    .line 11
    iget-object v8, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    iget-object v9, v0, Lcom/byazt/hkv/uj;->a:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/byazt/ete/da;->nu()F

    move-result v10

    invoke-static {v9, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v9

    add-int/2addr v9, v6

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/byazt/ete/da;->c(F)V

    .line 12
    iget-object v8, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    iget-object v9, v0, Lcom/byazt/hkv/uj;->a:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/byazt/ete/da;->rh()F

    move-result v11

    invoke-static {v9, v11}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v9

    add-int/2addr v9, v7

    int-to-float v9, v9

    sub-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/byazt/ete/da;->tt(F)V

    .line 13
    iget-object v8, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    iget-object v9, v0, Lcom/byazt/hkv/uj;->a:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/byazt/ete/da;->my()F

    move-result v11

    invoke-static {v9, v11}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v9

    add-int/2addr v9, v6

    int-to-float v9, v9

    sub-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/byazt/ete/da;->ve(F)V

    .line 14
    iget-object v8, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    iget-object v9, v0, Lcom/byazt/hkv/uj;->a:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/byazt/ete/da;->gt()F

    move-result v11

    invoke-static {v9, v11}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v9

    add-int/2addr v9, v7

    int-to-float v9, v9

    sub-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/byazt/ete/da;->uj(F)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 15
    :cond_1
    :goto_0
    iget-object v8, v0, Lcom/byazt/hkv/uj;->a:Landroid/content/Context;

    invoke-static {v8}, Lcom/byazt/aas/pf;->a(Landroid/content/Context;)F

    move-result v8

    const-string v9, "device_info_new"

    .line 16
    invoke-static {v9}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/byazt/dna/u;

    .line 17
    invoke-interface {v9}, Lcom/byazt/dna/u;->getDisplayDpi()I

    move-result v9

    .line 18
    iget-object v10, v0, Lcom/byazt/hkv/uj;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/byazt/aas/pf;->sp(Landroid/content/Context;)F

    move-result v10

    const/4 v11, -0x1

    .line 19
    filled-new-array {v11, v11}, [I

    move-result-object v12

    .line 20
    filled-new-array {v11, v11}, [I

    move-result-object v11

    .line 21
    iget-object v13, v0, Lcom/byazt/ouz/a;->da:Lcom/byazt/ete/gr;

    if-eqz v13, :cond_3

    iget-boolean v14, v0, Lcom/byazt/ouz/a;->sl:Z

    if-eqz v14, :cond_3

    .line 22
    iget-object v14, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    iget-wide v3, v13, Lcom/byazt/ete/gr;->n:J

    invoke-virtual {v14, v3, v4}, Lcom/byazt/ete/da;->c(J)V

    .line 23
    iget-object v3, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    iget-object v4, v0, Lcom/byazt/ouz/a;->da:Lcom/byazt/ete/gr;

    iget-wide v13, v4, Lcom/byazt/ete/gr;->a:J

    invoke-virtual {v3, v13, v14}, Lcom/byazt/ete/da;->tt(J)V

    .line 24
    iget v3, v0, Lcom/byazt/ouz/a;->t:I

    if-nez v3, :cond_2

    .line 25
    iget-object v3, v0, Lcom/byazt/hkv/uj;->a:Landroid/content/Context;

    iget-object v4, v0, Lcom/byazt/ouz/a;->da:Lcom/byazt/ete/gr;

    iget v4, v4, Lcom/byazt/ete/gr;->sp:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v3, v6

    aput v3, v12, v5

    .line 26
    iget-object v3, v0, Lcom/byazt/hkv/uj;->a:Landroid/content/Context;

    iget-object v4, v0, Lcom/byazt/ouz/a;->da:Lcom/byazt/ete/gr;

    iget v4, v4, Lcom/byazt/ete/gr;->x:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v3, v7

    const/4 v4, 0x1

    aput v3, v12, v4

    .line 27
    iget-object v3, v0, Lcom/byazt/hkv/uj;->a:Landroid/content/Context;

    iget-object v4, v0, Lcom/byazt/ouz/a;->da:Lcom/byazt/ete/gr;

    iget v4, v4, Lcom/byazt/ete/gr;->i:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    .line 28
    iget-object v4, v0, Lcom/byazt/hkv/uj;->a:Landroid/content/Context;

    iget-object v6, v0, Lcom/byazt/ouz/a;->da:Lcom/byazt/ete/gr;

    iget v6, v6, Lcom/byazt/ete/gr;->da:I

    int-to-float v6, v6

    invoke-static {v4, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    const/4 v6, 0x1

    goto :goto_1

    .line 29
    :cond_2
    iget-object v3, v0, Lcom/byazt/ouz/a;->da:Lcom/byazt/ete/gr;

    iget v4, v3, Lcom/byazt/ete/gr;->sp:I

    aput v4, v12, v5

    .line 30
    iget v4, v3, Lcom/byazt/ete/gr;->x:I

    const/4 v6, 0x1

    aput v4, v12, v6

    .line 31
    iget v4, v3, Lcom/byazt/ete/gr;->i:I

    .line 32
    iget v3, v3, Lcom/byazt/ete/gr;->da:I

    move v15, v4

    move v4, v3

    move v3, v15

    .line 33
    :goto_1
    aput v3, v11, v5

    .line 34
    aput v4, v11, v6

    .line 35
    iget-object v7, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    invoke-virtual {v7}, Lcom/byazt/ete/da;->i()Landroid/view/View;

    move-result-object v7

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    if-eqz v7, :cond_4

    .line 36
    invoke-static {v7}, Lcom/byazt/aas/pf;->c(Landroid/view/View;)[I

    move-result-object v12

    .line 37
    invoke-static {v7}, Lcom/byazt/aas/pf;->ve(Landroid/view/View;)[I

    move-result-object v11

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    .line 38
    :cond_4
    :goto_2
    iput v5, v0, Lcom/byazt/ouz/a;->t:I

    .line 39
    new-instance v3, Lcom/byazt/ete/i$c;

    invoke-direct {v3}, Lcom/byazt/ete/i$c;-><init>()V

    iget-object v4, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 40
    invoke-virtual {v4}, Lcom/byazt/ete/da;->nu()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/byazt/ete/i$c;->a(F)Lcom/byazt/ete/i$c;

    move-result-object v3

    iget-object v4, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 41
    invoke-virtual {v4}, Lcom/byazt/ete/da;->rh()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/byazt/ete/i$c;->n(F)Lcom/byazt/ete/i$c;

    move-result-object v3

    iget-object v4, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 42
    invoke-virtual {v4}, Lcom/byazt/ete/da;->my()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/byazt/ete/i$c;->uj(F)Lcom/byazt/ete/i$c;

    move-result-object v3

    iget-object v4, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 43
    invoke-virtual {v4}, Lcom/byazt/ete/da;->gt()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/byazt/ete/i$c;->ve(F)Lcom/byazt/ete/i$c;

    move-result-object v3

    iget-object v4, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 44
    invoke-virtual {v4}, Lcom/byazt/ete/da;->z()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/byazt/ete/i$c;->tt(J)Lcom/byazt/ete/i$c;

    move-result-object v3

    iget-object v4, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 45
    invoke-virtual {v4}, Lcom/byazt/ete/da;->m()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/byazt/ete/i$c;->c(J)Lcom/byazt/ete/i$c;

    move-result-object v3

    .line 46
    invoke-virtual {v3, v2}, Lcom/byazt/ete/i$c;->tt([I)Lcom/byazt/ete/i$c;

    move-result-object v2

    .line 47
    invoke-virtual {v2, v12}, Lcom/byazt/ete/i$c;->c([I)Lcom/byazt/ete/i$c;

    move-result-object v2

    .line 48
    invoke-static {v1}, Lcom/byazt/aas/pf;->ve(Landroid/view/View;)[I

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/byazt/ete/i$c;->ve([I)Lcom/byazt/ete/i$c;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v11}, Lcom/byazt/ete/i$c;->uj([I)Lcom/byazt/ete/i$c;

    move-result-object v1

    iget-object v2, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 50
    invoke-virtual {v2}, Lcom/byazt/ete/da;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/ete/i$c;->uj(I)Lcom/byazt/ete/i$c;

    move-result-object v1

    iget-object v2, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 51
    invoke-virtual {v2}, Lcom/byazt/ete/da;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/ete/i$c;->n(I)Lcom/byazt/ete/i$c;

    move-result-object v1

    iget-object v2, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 52
    invoke-virtual {v2}, Lcom/byazt/ete/da;->sp()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/ete/i$c;->a(I)Lcom/byazt/ete/i$c;

    move-result-object v1

    .line 53
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/omf/x;->tt()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x2

    :goto_3
    invoke-virtual {v1, v3}, Lcom/byazt/ete/i$c;->ve(I)Lcom/byazt/ete/i$c;

    move-result-object v1

    iget-object v2, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 54
    invoke-virtual {v2}, Lcom/byazt/ete/da;->u()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/ete/i$c;->c(Landroid/util/SparseArray;)Lcom/byazt/ete/i$c;

    move-result-object v1

    move-object/from16 v2, p1

    .line 55
    invoke-virtual {v1, v2}, Lcom/byazt/ete/i$c;->c(Ljava/lang/String;)Lcom/byazt/ete/i$c;

    move-result-object v1

    .line 56
    invoke-virtual {v1, v8}, Lcom/byazt/ete/i$c;->c(F)Lcom/byazt/ete/i$c;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v9}, Lcom/byazt/ete/i$c;->tt(I)Lcom/byazt/ete/i$c;

    move-result-object v1

    iget v2, v0, Lcom/byazt/ouz/a;->u:I

    .line 58
    invoke-virtual {v1, v2}, Lcom/byazt/ete/i$c;->sp(I)Lcom/byazt/ete/i$c;

    move-result-object v1

    iget v2, v0, Lcom/byazt/ouz/a;->yp:I

    .line 59
    invoke-virtual {v1, v2}, Lcom/byazt/ete/i$c;->x(I)Lcom/byazt/ete/i$c;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v10}, Lcom/byazt/ete/i$c;->tt(F)Lcom/byazt/ete/i$c;

    move-result-object v1

    move/from16 v2, p2

    .line 61
    invoke-virtual {v1, v2}, Lcom/byazt/ete/i$c;->tt(B)Lcom/byazt/ete/i$c;

    move-result-object v1

    iget-object v2, v0, Lcom/byazt/hkv/uj;->sp:Lcom/byazt/ete/da;

    .line 62
    invoke-virtual {v2}, Lcom/byazt/ete/da;->ve()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/ete/i$c;->c(B)Lcom/byazt/ete/i$c;

    move-result-object v1

    iget-object v2, v0, Lcom/byazt/hkv/tt;->c:Lcom/byazt/ete/ic;

    .line 63
    invoke-static {v2}, Lcom/byazt/wz/x;->tt(Lcom/byazt/ete/ic;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/ete/i$c;->c(I)Lcom/byazt/ete/i$c;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/byazt/ete/i$c;->c()Lcom/byazt/ete/i;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public c(Landroid/view/View;Lcom/byazt/ete/da;)V
    .locals 3

    .line 1
    const-class v0, Lcom/byazt/vis/c;

    invoke-virtual {p0, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/vis/c;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/ete/da;->tt()B

    move-result v1

    .line 3
    :goto_0
    invoke-virtual {v0}, Lcom/byazt/vis/c;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/byazt/ouz/a;->c(Ljava/lang/String;B)Lcom/byazt/ete/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/vis/c;->c(Lcom/byazt/ete/i;)V

    .line 4
    invoke-super {p0, p1, p2}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/gr;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/byazt/ouz/a;->da:Lcom/byazt/ete/gr;

    return-void
.end method

.method public n(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ouz/a;->t:I

    .line 2
    .line 3
    return-void
.end method

.method public uj()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/byazt/ouz/a;->yp:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/ouz/a;->sl:Z

    .line 6
    .line 7
    return-void
.end method

.method public ve()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/byazt/ouz/a;->u:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/ouz/a;->sl:Z

    .line 6
    .line 7
    return-void
.end method
