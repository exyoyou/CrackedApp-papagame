.class public Lcom/kongzue/dialogx/util/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/kongzue/dialogx/util/k;->c:I

    const v0, -0x201e1b

    const v1, -0xc5c5c6

    .line 3
    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/util/k;->d:[I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x201e1b

    const v1, -0xc5c5c6

    .line 5
    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/kongzue/dialogx/util/k;->d:[I

    .line 6
    iput p1, p0, Lcom/kongzue/dialogx/util/k;->a:I

    .line 7
    iput p2, p0, Lcom/kongzue/dialogx/util/k;->b:I

    .line 8
    iput p3, p0, Lcom/kongzue/dialogx/util/k;->c:I

    return-void
.end method

.method private b(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float p2, p2, p1

    .line 12
    .line 13
    const/high16 p1, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p2, p1

    .line 16
    float-to-int p1, p2

    .line 17
    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/kongzue/dialogx/util/k;->c(Z)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Landroid/graphics/drawable/InsetDrawable;

    .line 18
    .line 19
    iget v0, p0, Lcom/kongzue/dialogx/util/k;->a:I

    .line 20
    .line 21
    int-to-float v0, v0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/kongzue/dialogx/util/k;->b(Landroid/content/Context;F)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    iget v0, p0, Lcom/kongzue/dialogx/util/k;->b:I

    .line 28
    .line 29
    int-to-float v0, v0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/kongzue/dialogx/util/k;->b(Landroid/content/Context;F)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x0

    .line 35
    move-object v0, p2

    .line 36
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 37
    .line 38
    .line 39
    return-object p2
.end method

.method public c(Z)I
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/kongzue/dialogx/util/k;->d:[I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aget p1, p1, v0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/kongzue/dialogx/util/k;->d:[I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aget p1, p1, v0

    .line 13
    .line 14
    :goto_0
    return p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/k;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/k;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/k;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public g(I)Lcom/kongzue/dialogx/util/k;
    .locals 0

    .line 1
    filled-new-array {p1, p1}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/kongzue/dialogx/util/k;->d:[I

    .line 6
    .line 7
    return-object p0
.end method

.method public h(ZI)Lcom/kongzue/dialogx/util/k;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/kongzue/dialogx/util/k;->d:[I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aput p2, p1, v0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/kongzue/dialogx/util/k;->d:[I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput p2, p1, v0

    .line 13
    .line 14
    :goto_0
    return-object p0
.end method

.method public i(I)Lcom/kongzue/dialogx/util/k;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/k;->a:I

    .line 2
    .line 3
    return-object p0
.end method

.method public j(I)Lcom/kongzue/dialogx/util/k;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/k;->b:I

    .line 2
    .line 3
    return-object p0
.end method

.method public k(I)Lcom/kongzue/dialogx/util/k;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/k;->c:I

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ItemDivider{left(dp)="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/kongzue/dialogx/util/k;->a:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", right(dp)="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/kongzue/dialogx/util/k;->b:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", width(px)="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/kongzue/dialogx/util/k;->c:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", color(light)="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    new-array v2, v1, [Ljava/lang/Object;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/kongzue/dialogx/util/k;->d:[I

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    aget v3, v3, v4

    .line 48
    .line 49
    const v5, 0xffffff

    .line 50
    .line 51
    .line 52
    and-int/2addr v3, v5

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    aput-object v3, v2, v4

    .line 58
    .line 59
    const-string v3, "#%06X"

    .line 60
    .line 61
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v2, ", color(night)="

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    new-array v2, v1, [Ljava/lang/Object;

    .line 74
    .line 75
    iget-object v6, p0, Lcom/kongzue/dialogx/util/k;->d:[I

    .line 76
    .line 77
    aget v1, v6, v1

    .line 78
    .line 79
    and-int/2addr v1, v5

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    aput-object v1, v2, v4

    .line 85
    .line 86
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const/16 v1, 0x7d

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    return-object v0
.end method
