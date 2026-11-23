.class public Lcom/byazt/gt/c$c;
.super Lcom/byazt/xj/c$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc3,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/gt/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public aw:Z

.field public bx:Z

.field public cu:I

.field public d:F

.field public eo:I

.field public h:I

.field public hd:Z

.field public ic:Z

.field public md:F

.field public nb:F

.field public or:I

.field public p:F

.field public pf:Z

.field public qp:I

.field public sv:Z

.field public yv:I

.field public zb:I


# direct methods
.method public constructor <init>(Lcom/byazt/xj/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/xj/c$c;-><init>(Lcom/byazt/xj/c;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/byazt/gt/c$c;->yv:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/byazt/gt/c$c;->p:F

    .line 9
    .line 10
    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    iput p1, p0, Lcom/byazt/gt/c$c;->md:F

    .line 13
    .line 14
    sget-object p1, Lcom/byazt/bj/c;->c:Lcom/byazt/bj/c;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/byazt/bj/c;->c()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/byazt/gt/c$c;->h:I

    .line 21
    .line 22
    const/high16 p1, -0x40800000    # -1.0f

    .line 23
    .line 24
    iput p1, p0, Lcom/byazt/gt/c$c;->d:F

    .line 25
    .line 26
    sget-object p1, Lcom/byazt/bj/u;->tt:Lcom/byazt/bj/u;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/byazt/bj/u;->c()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/byazt/gt/c$c;->eo:I

    .line 33
    .line 34
    return-void
.end method

.method private uj()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/xj/c$c;->zm:Lcom/byazt/xj/c;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/byazt/gt/c;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lcom/byazt/gt/c;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/gt/c;->kk()Lcom/byazt/bj/n;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/byazt/bj/n;->ve:Lcom/byazt/bj/n;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/high16 v3, -0x40000000    # -2.0f

    .line 17
    .line 18
    const/4 v4, -0x2

    .line 19
    const/high16 v5, 0x3f800000    # 1.0f

    .line 20
    .line 21
    const/high16 v6, -0x40800000    # -1.0f

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/xj/c$c;->zm:Lcom/byazt/xj/c;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->or()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne v0, v4, :cond_0

    .line 32
    .line 33
    iget v0, p0, Lcom/byazt/xj/c$c;->c:F

    .line 34
    .line 35
    cmpl-float v0, v0, v6

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/xj/c$c;->zm:Lcom/byazt/xj/c;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->hd()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    iput v3, p0, Lcom/byazt/xj/c$c;->c:F

    .line 48
    .line 49
    iput v5, p0, Lcom/byazt/gt/c$c;->md:F

    .line 50
    .line 51
    iput v5, p0, Lcom/byazt/gt/c$c;->p:F

    .line 52
    .line 53
    iput-boolean v2, p0, Lcom/byazt/gt/c$c;->pf:Z

    .line 54
    .line 55
    iput v6, p0, Lcom/byazt/gt/c$c;->d:F

    .line 56
    .line 57
    :cond_0
    iget-object v0, p0, Lcom/byazt/xj/c$c;->zm:Lcom/byazt/xj/c;

    .line 58
    .line 59
    check-cast v0, Lcom/byazt/gt/c;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/byazt/gt/c;->kk()Lcom/byazt/bj/n;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v1, Lcom/byazt/bj/n;->c:Lcom/byazt/bj/n;

    .line 66
    .line 67
    if-ne v0, v1, :cond_1

    .line 68
    .line 69
    iget-object v0, p0, Lcom/byazt/xj/c$c;->zm:Lcom/byazt/xj/c;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->cu()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-ne v0, v4, :cond_1

    .line 76
    .line 77
    iget v0, p0, Lcom/byazt/xj/c$c;->tt:F

    .line 78
    .line 79
    cmpl-float v0, v0, v6

    .line 80
    .line 81
    if-nez v0, :cond_1

    .line 82
    .line 83
    iget-object v0, p0, Lcom/byazt/xj/c$c;->zm:Lcom/byazt/xj/c;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->hd()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    iput v3, p0, Lcom/byazt/xj/c$c;->tt:F

    .line 92
    .line 93
    iput v5, p0, Lcom/byazt/gt/c$c;->md:F

    .line 94
    .line 95
    iput v5, p0, Lcom/byazt/gt/c$c;->p:F

    .line 96
    .line 97
    iput-boolean v2, p0, Lcom/byazt/gt/c$c;->pf:Z

    .line 98
    .line 99
    iput v6, p0, Lcom/byazt/gt/c$c;->d:F

    .line 100
    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic c()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/gt/c$c;->tt()Lcom/byazt/gt/YogaLayout$c;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/xj/c$c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "alignSelf"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "flexGrow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "flexShrink"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "position"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_4
    const-string v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_5
    const-string v0, "ratio"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v0, "order"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_7
    const-string v0, "left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_8
    const-string v0, "top"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_9
    const-string v0, "bottom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_a
    const-string v0, "flexBasis"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x0

    :goto_0
    const/4 p2, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 5
    :pswitch_0
    invoke-static {p3}, Lcom/byazt/bj/c;->c(Ljava/lang/String;)Lcom/byazt/bj/c;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/byazt/bj/c;->c()I

    move-result p1

    iput p1, p0, Lcom/byazt/gt/c$c;->h:I

    return-void

    .line 7
    :pswitch_1
    invoke-static {p3, p2}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/gt/c$c;->p:F

    return-void

    :pswitch_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    invoke-static {p3, p1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/gt/c$c;->md:F

    return-void

    .line 9
    :pswitch_3
    invoke-static {p3}, Lcom/byazt/bj/u;->c(Ljava/lang/String;)Lcom/byazt/bj/u;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/byazt/bj/u;->c()I

    move-result p1

    iput p1, p0, Lcom/byazt/gt/c$c;->eo:I

    return-void

    .line 11
    :pswitch_4
    iput-boolean v2, p0, Lcom/byazt/gt/c$c;->ic:Z

    .line 12
    invoke-static {p3, v1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/byazt/gt/c$c;->qp:I

    return-void

    .line 13
    :pswitch_5
    iput-boolean v2, p0, Lcom/byazt/gt/c$c;->hd:Z

    .line 14
    invoke-static {p3, p2}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/gt/c$c;->nb:F

    :goto_1
    return-void

    .line 15
    :pswitch_6
    invoke-static {p3, v2}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/byazt/gt/c$c;->yv:I

    return-void

    .line 16
    :pswitch_7
    iput-boolean v2, p0, Lcom/byazt/gt/c$c;->aw:Z

    .line 17
    invoke-static {p3, v1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/byazt/gt/c$c;->cu:I

    return-void

    .line 18
    :pswitch_8
    iput-boolean v2, p0, Lcom/byazt/gt/c$c;->bx:Z

    .line 19
    invoke-static {p3, v1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/byazt/gt/c$c;->zb:I

    return-void

    .line 20
    :pswitch_9
    iput-boolean v2, p0, Lcom/byazt/gt/c$c;->sv:Z

    .line 21
    invoke-static {p3, v1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/byazt/gt/c$c;->or:I

    return-void

    .line 22
    :pswitch_a
    iput-boolean v2, p0, Lcom/byazt/gt/c$c;->pf:Z

    const/high16 p2, -0x40800000    # -1.0f

    .line 23
    invoke-static {p3, p2}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/byazt/gt/c$c;->d:F

    .line 24
    invoke-static {p1, p2}, Lcom/byazt/cd/x;->c(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/byazt/gt/c$c;->d:F

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a52083b -> :sswitch_a
        -0x527265d5 -> :sswitch_9
        0x1c155 -> :sswitch_8
        0x32a007 -> :sswitch_7
        0x651874e -> :sswitch_6
        0x674500b -> :sswitch_5
        0x677c21c -> :sswitch_4
        0x2c929929 -> :sswitch_3
        0x3d759362 -> :sswitch_2
        0x67ef5bac -> :sswitch_1
        0x6953cff1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LayoutParams{mOrder="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/byazt/gt/c$c;->yv:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mFlexGrow="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/byazt/gt/c$c;->p:F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mFlexShrink="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/byazt/gt/c$c;->md:F

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mAlignSelf="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/byazt/gt/c$c;->h:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", mFlexBasis="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/byazt/gt/c$c;->d:F

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", mPosition="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/byazt/gt/c$c;->eo:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", mTop="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/byazt/gt/c$c;->zb:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", mBottom="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/byazt/gt/c$c;->or:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", mLeft="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/byazt/gt/c$c;->cu:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", mRight="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lcom/byazt/gt/c$c;->qp:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const/16 v1, 0x7d

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0
.end method

.method public tt()Lcom/byazt/gt/YogaLayout$c;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/byazt/gt/c$c;->uj()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/gt/YogaLayout$c;

    .line 5
    .line 6
    iget v1, p0, Lcom/byazt/xj/c$c;->c:F

    .line 7
    .line 8
    float-to-int v1, v1

    .line 9
    iget v2, p0, Lcom/byazt/xj/c$c;->tt:F

    .line 10
    .line 11
    float-to-int v2, v2

    .line 12
    invoke-direct {v0, v1, v2}, Lcom/byazt/gt/YogaLayout$c;-><init>(II)V

    .line 13
    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/byazt/xj/c$c;->gt:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget v1, p0, Lcom/byazt/xj/c$c;->a:F

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v1, p0, Lcom/byazt/xj/c$c;->n:F

    .line 23
    .line 24
    :goto_0
    float-to-int v1, v1

    .line 25
    int-to-float v1, v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout$c;->t(F)V

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/byazt/xj/c$c;->rl:Z

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget v1, p0, Lcom/byazt/xj/c$c;->sp:F

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget v1, p0, Lcom/byazt/xj/c$c;->n:F

    .line 37
    .line 38
    :goto_1
    float-to-int v1, v1

    .line 39
    int-to-float v1, v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout$c;->yp(F)V

    .line 41
    .line 42
    .line 43
    iget-boolean v1, p0, Lcom/byazt/xj/c$c;->qy:Z

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget v1, p0, Lcom/byazt/xj/c$c;->x:F

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    iget v1, p0, Lcom/byazt/xj/c$c;->n:F

    .line 51
    .line 52
    :goto_2
    float-to-int v1, v1

    .line 53
    int-to-float v1, v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout$c;->sl(F)V

    .line 55
    .line 56
    .line 57
    iget-boolean v1, p0, Lcom/byazt/xj/c$c;->gu:Z

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    iget v1, p0, Lcom/byazt/xj/c$c;->i:F

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    iget v1, p0, Lcom/byazt/xj/c$c;->n:F

    .line 65
    .line 66
    :goto_3
    float-to-int v1, v1

    .line 67
    int-to-float v1, v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout$c;->u(F)V

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/byazt/gt/c$c;->yv:I

    .line 72
    .line 73
    int-to-float v1, v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout$c;->c(F)V

    .line 75
    .line 76
    .line 77
    iget v1, p0, Lcom/byazt/gt/c$c;->h:I

    .line 78
    .line 79
    int-to-float v1, v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout$c;->n(F)V

    .line 81
    .line 82
    .line 83
    iget v1, p0, Lcom/byazt/gt/c$c;->p:F

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout$c;->tt(F)V

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/byazt/gt/c$c;->md:F

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout$c;->ve(F)V

    .line 91
    .line 92
    .line 93
    iget v1, p0, Lcom/byazt/xj/c$c;->ve:F

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout$c;->m(F)V

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lcom/byazt/xj/c$c;->uj:F

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout$c;->nu(F)V

    .line 101
    .line 102
    .line 103
    iget-boolean v1, p0, Lcom/byazt/gt/c$c;->pf:Z

    .line 104
    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    iget v1, p0, Lcom/byazt/gt/c$c;->d:F

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout$c;->uj(F)V

    .line 110
    .line 111
    .line 112
    :cond_4
    iget v1, p0, Lcom/byazt/gt/c$c;->eo:I

    .line 113
    .line 114
    int-to-float v1, v1

    .line 115
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout$c;->a(F)V

    .line 116
    .line 117
    .line 118
    iget-boolean v1, p0, Lcom/byazt/gt/c$c;->bx:Z

    .line 119
    .line 120
    if-eqz v1, :cond_5

    .line 121
    .line 122
    iget v1, p0, Lcom/byazt/gt/c$c;->zb:I

    .line 123
    .line 124
    int-to-float v1, v1

    .line 125
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout$c;->sp(F)V

    .line 126
    .line 127
    .line 128
    :cond_5
    iget-boolean v1, p0, Lcom/byazt/gt/c$c;->sv:Z

    .line 129
    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    iget v1, p0, Lcom/byazt/gt/c$c;->or:I

    .line 133
    .line 134
    int-to-float v1, v1

    .line 135
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout$c;->i(F)V

    .line 136
    .line 137
    .line 138
    :cond_6
    iget-boolean v1, p0, Lcom/byazt/gt/c$c;->aw:Z

    .line 139
    .line 140
    if-eqz v1, :cond_7

    .line 141
    .line 142
    iget v1, p0, Lcom/byazt/gt/c$c;->cu:I

    .line 143
    .line 144
    int-to-float v1, v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout$c;->x(F)V

    .line 146
    .line 147
    .line 148
    :cond_7
    iget-boolean v1, p0, Lcom/byazt/gt/c$c;->ic:Z

    .line 149
    .line 150
    if-eqz v1, :cond_8

    .line 151
    .line 152
    iget v1, p0, Lcom/byazt/gt/c$c;->qp:I

    .line 153
    .line 154
    int-to-float v1, v1

    .line 155
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout$c;->da(F)V

    .line 156
    .line 157
    .line 158
    :cond_8
    iget-boolean v1, p0, Lcom/byazt/gt/c$c;->hd:Z

    .line 159
    .line 160
    if-eqz v1, :cond_9

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/byazt/gt/c$c;->ve()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_9

    .line 167
    .line 168
    iget v1, p0, Lcom/byazt/gt/c$c;->nb:F

    .line 169
    .line 170
    const/4 v2, 0x0

    .line 171
    cmpl-float v3, v1, v2

    .line 172
    .line 173
    if-lez v3, :cond_9

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Lcom/byazt/gt/YogaLayout$c;->z(F)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v2}, Lcom/byazt/gt/YogaLayout$c;->ve(F)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v2}, Lcom/byazt/gt/YogaLayout$c;->tt(F)V

    .line 182
    .line 183
    .line 184
    :cond_9
    return-object v0
.end method

.method public ve()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/byazt/xj/c$c;->c:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, -0x40800000    # -1.0f

    .line 5
    .line 6
    cmpl-float v3, v0, v2

    .line 7
    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    iget v3, p0, Lcom/byazt/xj/c$c;->tt:F

    .line 11
    .line 12
    cmpl-float v2, v3, v2

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    const/high16 v2, -0x40000000    # -2.0f

    .line 18
    .line 19
    cmpl-float v0, v0, v2

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget v0, p0, Lcom/byazt/xj/c$c;->tt:F

    .line 24
    .line 25
    cmpl-float v0, v0, v2

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v1

    .line 31
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 32
    return v0
.end method
