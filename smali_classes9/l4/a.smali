.class public Ll4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final a:I = 0x1

.field private static final b:F = 0.33333334f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/image/e;)F
    .locals 7
    .param p1    # Lcom/facebook/imagepipeline/common/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "rotationOptions",
            "resizeOptions",
            "encodedImage"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/e;->M(Lcom/facebook/imagepipeline/image/e;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/facebook/common/internal/i;->d(Ljava/lang/Boolean;)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_5

    .line 13
    .line 14
    iget v0, p1, Lcom/facebook/imagepipeline/common/e;->b:I

    .line 15
    .line 16
    if-lez v0, :cond_5

    .line 17
    .line 18
    iget v0, p1, Lcom/facebook/imagepipeline/common/e;->a:I

    .line 19
    .line 20
    if-lez v0, :cond_5

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/e;->I()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_5

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/e;->l()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_0
    invoke-static {p0, p2}, Ll4/a;->d(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/e;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    const/16 v0, 0x5a

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    const/4 v2, 0x1

    .line 44
    if-eq p0, v0, :cond_2

    .line 45
    .line 46
    const/16 v0, 0x10e

    .line 47
    .line 48
    if-ne p0, v0, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 p0, 0x0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 54
    :goto_1
    if-eqz p0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/e;->l()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/e;->I()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    :goto_2
    if-eqz p0, :cond_4

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/e;->I()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/e;->l()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    :goto_3
    iget p2, p1, Lcom/facebook/imagepipeline/common/e;->a:I

    .line 77
    .line 78
    int-to-float p2, p2

    .line 79
    int-to-float v3, v0

    .line 80
    div-float/2addr p2, v3

    .line 81
    iget v3, p1, Lcom/facebook/imagepipeline/common/e;->b:I

    .line 82
    .line 83
    int-to-float v3, v3

    .line 84
    int-to-float v4, p0

    .line 85
    div-float/2addr v3, v4

    .line 86
    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    const/4 v5, 0x7

    .line 91
    new-array v5, v5, [Ljava/lang/Object;

    .line 92
    .line 93
    iget v6, p1, Lcom/facebook/imagepipeline/common/e;->a:I

    .line 94
    .line 95
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    aput-object v6, v5, v1

    .line 100
    .line 101
    iget p1, p1, Lcom/facebook/imagepipeline/common/e;->b:I

    .line 102
    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    aput-object p1, v5, v2

    .line 108
    .line 109
    const/4 p1, 0x2

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    aput-object v0, v5, p1

    .line 115
    .line 116
    const/4 p1, 0x3

    .line 117
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    aput-object p0, v5, p1

    .line 122
    .line 123
    const/4 p0, 0x4

    .line 124
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    aput-object p1, v5, p0

    .line 129
    .line 130
    const/4 p0, 0x5

    .line 131
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    aput-object p1, v5, p0

    .line 136
    .line 137
    const/4 p0, 0x6

    .line 138
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    aput-object p1, v5, p0

    .line 143
    .line 144
    const-string p0, "DownsampleUtil"

    .line 145
    .line 146
    const-string p1, "Downsample - Specified size: %dx%d, image size: %dx%d ratio: %.1f x %.1f, ratio: %.3f"

    .line 147
    .line 148
    invoke-static {p0, p1, v5}, Li3/a;->i0(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    return v4

    .line 152
    :cond_5
    :goto_4
    const/high16 p0, 0x3f800000    # 1.0f

    .line 153
    .line 154
    return p0
.end method

.method public static b(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/image/e;I)I
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/common/e;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "rotationOptions",
            "resizeOptions",
            "encodedImage",
            "maxBitmapSize"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/e;->M(Lcom/facebook/imagepipeline/image/e;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {p0, p1, p2}, Ll4/a;->a(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/image/e;)F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/e;->o()Lcom/facebook/imageformat/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    invoke-static {p0}, Ll4/a;->f(F)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-static {p0}, Ll4/a;->e(F)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/e;->l()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/e;->I()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget p1, p1, Lcom/facebook/imagepipeline/common/e;->c:F

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    int-to-float p1, p3

    .line 48
    :goto_1
    div-int p3, v0, p0

    .line 49
    .line 50
    int-to-float p3, p3

    .line 51
    cmpl-float p3, p3, p1

    .line 52
    .line 53
    if-lez p3, :cond_4

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/e;->o()Lcom/facebook/imageformat/c;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    sget-object v1, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    .line 60
    .line 61
    if-ne p3, v1, :cond_3

    .line 62
    .line 63
    mul-int/lit8 p0, p0, 0x2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    add-int/lit8 p0, p0, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    return p0
.end method

.method public static c(Lcom/facebook/imagepipeline/image/e;II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "encodedImage",
            "pixelSize",
            "maxBitmapSizeInBytes"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->I()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/e;->l()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    mul-int v1, v1, p0

    .line 14
    .line 15
    mul-int v1, v1, p1

    .line 16
    .line 17
    :goto_0
    div-int p0, v1, v0

    .line 18
    .line 19
    div-int/2addr p0, v0

    .line 20
    if-le p0, p2, :cond_0

    .line 21
    .line 22
    mul-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return v0
.end method

.method private static d(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/e;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "rotationOptions",
            "encodedImage"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/RotationOptions;->h()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->s()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const/16 p1, 0x5a

    .line 16
    .line 17
    if-eq p0, p1, :cond_1

    .line 18
    .line 19
    const/16 p1, 0xb4

    .line 20
    .line 21
    if-eq p0, p1, :cond_1

    .line 22
    .line 23
    const/16 p1, 0x10e

    .line 24
    .line 25
    if-ne p0, p1, :cond_2

    .line 26
    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/facebook/common/internal/i;->d(Ljava/lang/Boolean;)V

    .line 33
    .line 34
    .line 35
    return p0
.end method

.method public static e(F)I
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ratio"
        }
    .end annotation

    .line 1
    const v0, 0x3f2aaaab

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    cmpl-float v0, p0, v0

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    :goto_0
    int-to-double v2, v0

    .line 12
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 13
    .line 14
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    sub-double/2addr v4, v2

    .line 19
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 20
    .line 21
    div-double v4, v6, v4

    .line 22
    .line 23
    div-double/2addr v6, v2

    .line 24
    const-wide v2, 0x3fd5555560000000L    # 0.3333333432674408

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    mul-double v4, v4, v2

    .line 30
    .line 31
    add-double/2addr v6, v4

    .line 32
    float-to-double v2, p0

    .line 33
    cmpg-double v4, v6, v2

    .line 34
    .line 35
    if-gtz v4, :cond_1

    .line 36
    .line 37
    sub-int/2addr v0, v1

    .line 38
    return v0

    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0
.end method

.method public static f(F)I
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ratio"
        }
    .end annotation

    .line 1
    const v0, 0x3f2aaaab

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    mul-int/lit8 v1, v0, 0x2

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    const-wide v2, 0x3fd5555560000000L    # 0.3333333432674408

    mul-double v2, v2, v4

    add-double/2addr v4, v2

    float-to-double v2, p0

    cmpg-double v6, v4, v2

    if-gtz v6, :cond_1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static g(I)I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sampleSize"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    :goto_0
    if-lt v0, p0, :cond_0

    return v0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method
