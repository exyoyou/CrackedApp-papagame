.class Lcom/nineoldandroids/animation/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Lcom/nineoldandroids/animation/j;

.field c:Lcom/nineoldandroids/animation/j;

.field d:Landroid/view/animation/Interpolator;

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nineoldandroids/animation/j;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/nineoldandroids/animation/p;


# direct methods
.method public varargs constructor <init>([Lcom/nineoldandroids/animation/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    iput v0, p0, Lcom/nineoldandroids/animation/k;->a:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/nineoldandroids/animation/j;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/nineoldandroids/animation/k;->b:Lcom/nineoldandroids/animation/j;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 33
    .line 34
    iget v0, p0, Lcom/nineoldandroids/animation/k;->a:I

    .line 35
    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/nineoldandroids/animation/j;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/nineoldandroids/animation/k;->c:Lcom/nineoldandroids/animation/j;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/j;->d()Landroid/view/animation/Interpolator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/nineoldandroids/animation/k;->d:Landroid/view/animation/Interpolator;

    .line 51
    .line 52
    return-void
.end method

.method public static varargs c([F)Lcom/nineoldandroids/animation/k;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v1, v1, [Lcom/nineoldandroids/animation/j$a;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v0, v4, :cond_0

    .line 13
    .line 14
    invoke-static {v2}, Lcom/nineoldandroids/animation/j;->g(F)Lcom/nineoldandroids/animation/j;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/nineoldandroids/animation/j$a;

    .line 19
    .line 20
    aput-object v0, v1, v3

    .line 21
    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    .line 24
    aget p0, p0, v3

    .line 25
    .line 26
    invoke-static {v0, p0}, Lcom/nineoldandroids/animation/j;->h(FF)Lcom/nineoldandroids/animation/j;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/nineoldandroids/animation/j$a;

    .line 31
    .line 32
    aput-object p0, v1, v4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    aget v5, p0, v3

    .line 36
    .line 37
    invoke-static {v2, v5}, Lcom/nineoldandroids/animation/j;->h(FF)Lcom/nineoldandroids/animation/j;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/nineoldandroids/animation/j$a;

    .line 42
    .line 43
    aput-object v2, v1, v3

    .line 44
    .line 45
    :goto_0
    if-ge v4, v0, :cond_1

    .line 46
    .line 47
    int-to-float v2, v4

    .line 48
    add-int/lit8 v3, v0, -0x1

    .line 49
    .line 50
    int-to-float v3, v3

    .line 51
    div-float/2addr v2, v3

    .line 52
    aget v3, p0, v4

    .line 53
    .line 54
    invoke-static {v2, v3}, Lcom/nineoldandroids/animation/j;->h(FF)Lcom/nineoldandroids/animation/j;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/nineoldandroids/animation/j$a;

    .line 59
    .line 60
    aput-object v2, v1, v4

    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    new-instance p0, Lcom/nineoldandroids/animation/g;

    .line 66
    .line 67
    invoke-direct {p0, v1}, Lcom/nineoldandroids/animation/g;-><init>([Lcom/nineoldandroids/animation/j$a;)V

    .line 68
    .line 69
    .line 70
    return-object p0
.end method

.method public static varargs d([I)Lcom/nineoldandroids/animation/k;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v1, v1, [Lcom/nineoldandroids/animation/j$b;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v0, v4, :cond_0

    .line 13
    .line 14
    invoke-static {v2}, Lcom/nineoldandroids/animation/j;->i(F)Lcom/nineoldandroids/animation/j;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/nineoldandroids/animation/j$b;

    .line 19
    .line 20
    aput-object v0, v1, v3

    .line 21
    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    .line 24
    aget p0, p0, v3

    .line 25
    .line 26
    invoke-static {v0, p0}, Lcom/nineoldandroids/animation/j;->j(FI)Lcom/nineoldandroids/animation/j;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/nineoldandroids/animation/j$b;

    .line 31
    .line 32
    aput-object p0, v1, v4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    aget v5, p0, v3

    .line 36
    .line 37
    invoke-static {v2, v5}, Lcom/nineoldandroids/animation/j;->j(FI)Lcom/nineoldandroids/animation/j;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/nineoldandroids/animation/j$b;

    .line 42
    .line 43
    aput-object v2, v1, v3

    .line 44
    .line 45
    :goto_0
    if-ge v4, v0, :cond_1

    .line 46
    .line 47
    int-to-float v2, v4

    .line 48
    add-int/lit8 v3, v0, -0x1

    .line 49
    .line 50
    int-to-float v3, v3

    .line 51
    div-float/2addr v2, v3

    .line 52
    aget v3, p0, v4

    .line 53
    .line 54
    invoke-static {v2, v3}, Lcom/nineoldandroids/animation/j;->j(FI)Lcom/nineoldandroids/animation/j;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/nineoldandroids/animation/j$b;

    .line 59
    .line 60
    aput-object v2, v1, v4

    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    new-instance p0, Lcom/nineoldandroids/animation/i;

    .line 66
    .line 67
    invoke-direct {p0, v1}, Lcom/nineoldandroids/animation/i;-><init>([Lcom/nineoldandroids/animation/j$b;)V

    .line 68
    .line 69
    .line 70
    return-object p0
.end method

.method public static varargs e([Lcom/nineoldandroids/animation/j;)Lcom/nineoldandroids/animation/k;
    .locals 9

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    .line 9
    aget-object v6, p0, v2

    .line 10
    .line 11
    instance-of v7, v6, Lcom/nineoldandroids/animation/j$a;

    .line 12
    .line 13
    const/4 v8, 0x1

    .line 14
    if-eqz v7, :cond_0

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    instance-of v6, v6, Lcom/nineoldandroids/animation/j$b;

    .line 19
    .line 20
    if-eqz v6, :cond_1

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v5, 0x1

    .line 25
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    if-eqz v3, :cond_4

    .line 29
    .line 30
    if-nez v4, :cond_4

    .line 31
    .line 32
    if-nez v5, :cond_4

    .line 33
    .line 34
    new-array v2, v0, [Lcom/nineoldandroids/animation/j$a;

    .line 35
    .line 36
    :goto_2
    if-ge v1, v0, :cond_3

    .line 37
    .line 38
    aget-object v3, p0, v1

    .line 39
    .line 40
    check-cast v3, Lcom/nineoldandroids/animation/j$a;

    .line 41
    .line 42
    aput-object v3, v2, v1

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    new-instance p0, Lcom/nineoldandroids/animation/g;

    .line 48
    .line 49
    invoke-direct {p0, v2}, Lcom/nineoldandroids/animation/g;-><init>([Lcom/nineoldandroids/animation/j$a;)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_4
    if-eqz v4, :cond_6

    .line 54
    .line 55
    if-nez v3, :cond_6

    .line 56
    .line 57
    if-nez v5, :cond_6

    .line 58
    .line 59
    new-array v2, v0, [Lcom/nineoldandroids/animation/j$b;

    .line 60
    .line 61
    :goto_3
    if-ge v1, v0, :cond_5

    .line 62
    .line 63
    aget-object v3, p0, v1

    .line 64
    .line 65
    check-cast v3, Lcom/nineoldandroids/animation/j$b;

    .line 66
    .line 67
    aput-object v3, v2, v1

    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_5
    new-instance p0, Lcom/nineoldandroids/animation/i;

    .line 73
    .line 74
    invoke-direct {p0, v2}, Lcom/nineoldandroids/animation/i;-><init>([Lcom/nineoldandroids/animation/j$b;)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_6
    new-instance v0, Lcom/nineoldandroids/animation/k;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/nineoldandroids/animation/k;-><init>([Lcom/nineoldandroids/animation/j;)V

    .line 81
    .line 82
    .line 83
    return-object v0
.end method

.method public static varargs f([Ljava/lang/Object;)Lcom/nineoldandroids/animation/k;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v1, v1, [Lcom/nineoldandroids/animation/j$c;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v0, v4, :cond_0

    .line 13
    .line 14
    invoke-static {v2}, Lcom/nineoldandroids/animation/j;->k(F)Lcom/nineoldandroids/animation/j;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/nineoldandroids/animation/j$c;

    .line 19
    .line 20
    aput-object v0, v1, v3

    .line 21
    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    .line 24
    aget-object p0, p0, v3

    .line 25
    .line 26
    invoke-static {v0, p0}, Lcom/nineoldandroids/animation/j;->l(FLjava/lang/Object;)Lcom/nineoldandroids/animation/j;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/nineoldandroids/animation/j$c;

    .line 31
    .line 32
    aput-object p0, v1, v4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    aget-object v5, p0, v3

    .line 36
    .line 37
    invoke-static {v2, v5}, Lcom/nineoldandroids/animation/j;->l(FLjava/lang/Object;)Lcom/nineoldandroids/animation/j;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/nineoldandroids/animation/j$c;

    .line 42
    .line 43
    aput-object v2, v1, v3

    .line 44
    .line 45
    :goto_0
    if-ge v4, v0, :cond_1

    .line 46
    .line 47
    int-to-float v2, v4

    .line 48
    add-int/lit8 v3, v0, -0x1

    .line 49
    .line 50
    int-to-float v3, v3

    .line 51
    div-float/2addr v2, v3

    .line 52
    aget-object v3, p0, v4

    .line 53
    .line 54
    invoke-static {v2, v3}, Lcom/nineoldandroids/animation/j;->l(FLjava/lang/Object;)Lcom/nineoldandroids/animation/j;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/nineoldandroids/animation/j$c;

    .line 59
    .line 60
    aput-object v2, v1, v4

    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    new-instance p0, Lcom/nineoldandroids/animation/k;

    .line 66
    .line 67
    invoke-direct {p0, v1}, Lcom/nineoldandroids/animation/k;-><init>([Lcom/nineoldandroids/animation/j;)V

    .line 68
    .line 69
    .line 70
    return-object p0
.end method


# virtual methods
.method public a()Lcom/nineoldandroids/animation/k;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v2, v1, [Lcom/nineoldandroids/animation/j;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Lcom/nineoldandroids/animation/j;

    .line 17
    .line 18
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/j;->a()Lcom/nineoldandroids/animation/j;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    aput-object v4, v2, v3

    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lcom/nineoldandroids/animation/k;

    .line 28
    .line 29
    invoke-direct {v0, v2}, Lcom/nineoldandroids/animation/k;-><init>([Lcom/nineoldandroids/animation/j;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public b(F)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/nineoldandroids/animation/k;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->d:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->f:Lcom/nineoldandroids/animation/p;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/nineoldandroids/animation/k;->b:Lcom/nineoldandroids/animation/j;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j;->e()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/nineoldandroids/animation/k;->c:Lcom/nineoldandroids/animation/j;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/j;->e()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v0, p1, v1, v2}, Lcom/nineoldandroids/animation/p;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_1
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x1

    .line 35
    cmpg-float v2, p1, v2

    .line 36
    .line 37
    if-gtz v2, :cond_3

    .line 38
    .line 39
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/nineoldandroids/animation/j;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j;->d()Landroid/view/animation/Interpolator;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/nineoldandroids/animation/k;->b:Lcom/nineoldandroids/animation/j;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j;->b()F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    sub-float/2addr p1, v1

    .line 64
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j;->b()F

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    sub-float/2addr v2, v1

    .line 69
    div-float/2addr p1, v2

    .line 70
    iget-object v1, p0, Lcom/nineoldandroids/animation/k;->f:Lcom/nineoldandroids/animation/p;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/nineoldandroids/animation/k;->b:Lcom/nineoldandroids/animation/j;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/j;->e()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j;->e()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {v1, p1, v2, v0}, Lcom/nineoldandroids/animation/p;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 88
    .line 89
    cmpl-float v2, p1, v2

    .line 90
    .line 91
    if-ltz v2, :cond_5

    .line 92
    .line 93
    iget-object v2, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 94
    .line 95
    sub-int/2addr v0, v1

    .line 96
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/nineoldandroids/animation/j;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/nineoldandroids/animation/k;->c:Lcom/nineoldandroids/animation/j;

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j;->d()Landroid/view/animation/Interpolator;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    :cond_4
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j;->b()F

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    sub-float/2addr p1, v1

    .line 119
    iget-object v2, p0, Lcom/nineoldandroids/animation/k;->c:Lcom/nineoldandroids/animation/j;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/j;->b()F

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    sub-float/2addr v2, v1

    .line 126
    div-float/2addr p1, v2

    .line 127
    iget-object v1, p0, Lcom/nineoldandroids/animation/k;->f:Lcom/nineoldandroids/animation/p;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j;->e()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v2, p0, Lcom/nineoldandroids/animation/k;->c:Lcom/nineoldandroids/animation/j;

    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/j;->e()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-interface {v1, p1, v0, v2}, Lcom/nineoldandroids/animation/p;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    return-object p1

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->b:Lcom/nineoldandroids/animation/j;

    .line 145
    .line 146
    :goto_0
    iget v1, p0, Lcom/nineoldandroids/animation/k;->a:I

    .line 147
    .line 148
    if-ge v3, v1, :cond_8

    .line 149
    .line 150
    iget-object v1, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Lcom/nineoldandroids/animation/j;

    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j;->b()F

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    cmpg-float v2, p1, v2

    .line 163
    .line 164
    if-gez v2, :cond_7

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j;->d()Landroid/view/animation/Interpolator;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    if-eqz v2, :cond_6

    .line 171
    .line 172
    invoke-interface {v2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    :cond_6
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j;->b()F

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    sub-float/2addr p1, v2

    .line 181
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j;->b()F

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    sub-float/2addr v3, v2

    .line 186
    div-float/2addr p1, v3

    .line 187
    iget-object v2, p0, Lcom/nineoldandroids/animation/k;->f:Lcom/nineoldandroids/animation/p;

    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j;->e()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j;->e()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-interface {v2, p1, v0, v1}, Lcom/nineoldandroids/animation/p;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    return-object p1

    .line 202
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 203
    .line 204
    move-object v0, v1

    .line 205
    goto :goto_0

    .line 206
    :cond_8
    iget-object p1, p0, Lcom/nineoldandroids/animation/k;->c:Lcom/nineoldandroids/animation/j;

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/j;->e()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/k;->a()Lcom/nineoldandroids/animation/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public g(Lcom/nineoldandroids/animation/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/animation/k;->f:Lcom/nineoldandroids/animation/p;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lcom/nineoldandroids/animation/k;->a:I

    .line 5
    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/nineoldandroids/animation/j;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j;->e()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, "  "

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-object v0
.end method
