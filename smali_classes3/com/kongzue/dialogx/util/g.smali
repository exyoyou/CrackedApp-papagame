.class public Lcom/kongzue/dialogx/util/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Z = true


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/g;->d:F

    .line 2
    .line 3
    return v0
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/g;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public c()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/g;->a:F

    .line 2
    .line 3
    return v0
.end method

.method public d()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/g;->b:F

    .line 2
    .line 3
    return v0
.end method

.method public e([I)Z
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x2

    .line 5
    if-ne v0, v3, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/kongzue/dialogx/util/g;->a:F

    .line 8
    .line 9
    aget v3, p1, v2

    .line 10
    .line 11
    int-to-float v3, v3

    .line 12
    cmpl-float v0, v0, v3

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lcom/kongzue/dialogx/util/g;->b:F

    .line 17
    .line 18
    aget p1, p1, v1

    .line 19
    .line 20
    int-to-float p1, p1

    .line 21
    cmpl-float p1, v0, p1

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    return v1

    .line 28
    :cond_1
    array-length v0, p1

    .line 29
    const/4 v4, 0x4

    .line 30
    if-ne v0, v4, :cond_3

    .line 31
    .line 32
    iget v0, p0, Lcom/kongzue/dialogx/util/g;->a:F

    .line 33
    .line 34
    aget v4, p1, v2

    .line 35
    .line 36
    int-to-float v4, v4

    .line 37
    cmpl-float v0, v0, v4

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget v0, p0, Lcom/kongzue/dialogx/util/g;->b:F

    .line 42
    .line 43
    aget v4, p1, v1

    .line 44
    .line 45
    int-to-float v4, v4

    .line 46
    cmpl-float v0, v0, v4

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    iget v0, p0, Lcom/kongzue/dialogx/util/g;->c:F

    .line 51
    .line 52
    aget v3, p1, v3

    .line 53
    .line 54
    int-to-float v3, v3

    .line 55
    cmpl-float v0, v0, v3

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    iget v0, p0, Lcom/kongzue/dialogx/util/g;->d:F

    .line 60
    .line 61
    const/4 v3, 0x3

    .line 62
    aget p1, p1, v3

    .line 63
    .line 64
    int-to-float p1, p1

    .line 65
    cmpl-float p1, v0, p1

    .line 66
    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const/4 v1, 0x0

    .line 71
    :goto_1
    return v1

    .line 72
    :cond_3
    return v2
.end method

.method public f([I)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x2

    .line 5
    if-ne v0, v3, :cond_2

    .line 6
    .line 7
    sget-boolean v0, Lcom/kongzue/dialogx/util/g;->e:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    aget v0, p1, v2

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    iput v0, p0, Lcom/kongzue/dialogx/util/g;->a:F

    .line 17
    .line 18
    :cond_0
    aget v0, p1, v1

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    int-to-float v0, v0

    .line 23
    iput v0, p0, Lcom/kongzue/dialogx/util/g;->b:F

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    aget v0, p1, v2

    .line 27
    .line 28
    int-to-float v0, v0

    .line 29
    iput v0, p0, Lcom/kongzue/dialogx/util/g;->a:F

    .line 30
    .line 31
    aget v0, p1, v1

    .line 32
    .line 33
    int-to-float v0, v0

    .line 34
    iput v0, p0, Lcom/kongzue/dialogx/util/g;->b:F

    .line 35
    .line 36
    :cond_2
    :goto_0
    array-length v0, p1

    .line 37
    const/4 v4, 0x4

    .line 38
    if-ne v0, v4, :cond_6

    .line 39
    .line 40
    sget-boolean v0, Lcom/kongzue/dialogx/util/g;->e:Z

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    aget v0, p1, v2

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    int-to-float v0, v0

    .line 49
    iput v0, p0, Lcom/kongzue/dialogx/util/g;->a:F

    .line 50
    .line 51
    :cond_3
    aget v0, p1, v1

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    int-to-float v0, v0

    .line 56
    iput v0, p0, Lcom/kongzue/dialogx/util/g;->b:F

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    aget v0, p1, v2

    .line 60
    .line 61
    int-to-float v0, v0

    .line 62
    iput v0, p0, Lcom/kongzue/dialogx/util/g;->a:F

    .line 63
    .line 64
    aget v0, p1, v1

    .line 65
    .line 66
    int-to-float v0, v0

    .line 67
    iput v0, p0, Lcom/kongzue/dialogx/util/g;->b:F

    .line 68
    .line 69
    :cond_5
    :goto_1
    aget v0, p1, v3

    .line 70
    .line 71
    int-to-float v0, v0

    .line 72
    iput v0, p0, Lcom/kongzue/dialogx/util/g;->c:F

    .line 73
    .line 74
    const/4 v0, 0x3

    .line 75
    aget p1, p1, v0

    .line 76
    .line 77
    int-to-float p1, p1

    .line 78
    iput p1, p0, Lcom/kongzue/dialogx/util/g;->d:F

    .line 79
    .line 80
    :cond_6
    return-void
.end method

.method public g(F)Lcom/kongzue/dialogx/util/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/g;->d:F

    .line 2
    .line 3
    return-object p0
.end method

.method public h(F)Lcom/kongzue/dialogx/util/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/g;->c:F

    .line 2
    .line 3
    return-object p0
.end method

.method public i(F)Lcom/kongzue/dialogx/util/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/g;->a:F

    .line 2
    .line 3
    return-object p0
.end method

.method public j(F)Lcom/kongzue/dialogx/util/g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/g;->b:F

    .line 2
    .line 3
    return-object p0
.end method
