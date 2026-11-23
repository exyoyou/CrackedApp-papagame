.class public Lcom/facebook/imagepipeline/common/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field private static final m:Lcom/facebook/imagepipeline/common/c;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Landroid/graphics/Bitmap$Config;

.field public final h:Landroid/graphics/Bitmap$Config;

.field public final i:Lcom/facebook/imagepipeline/decoder/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final j:Lm4/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final k:Landroid/graphics/ColorSpace;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/common/c;->b()Lcom/facebook/imagepipeline/common/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/d;->a()Lcom/facebook/imagepipeline/common/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/facebook/imagepipeline/common/c;->m:Lcom/facebook/imagepipeline/common/c;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/common/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/d;->l()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/facebook/imagepipeline/common/c;->a:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/d;->k()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/facebook/imagepipeline/common/c;->b:I

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/d;->h()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->c:Z

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/d;->n()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->d:Z

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/d;->g()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->e:Z

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/d;->j()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->f:Z

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/d;->c()Landroid/graphics/Bitmap$Config;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/facebook/imagepipeline/common/c;->g:Landroid/graphics/Bitmap$Config;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/d;->b()Landroid/graphics/Bitmap$Config;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/facebook/imagepipeline/common/c;->h:Landroid/graphics/Bitmap$Config;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/d;->f()Lcom/facebook/imagepipeline/decoder/b;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/facebook/imagepipeline/common/c;->i:Lcom/facebook/imagepipeline/decoder/b;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/d;->d()Lm4/a;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/facebook/imagepipeline/common/c;->j:Lm4/a;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/d;->e()Landroid/graphics/ColorSpace;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/facebook/imagepipeline/common/c;->k:Landroid/graphics/ColorSpace;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/d;->i()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/c;->l:Z

    .line 75
    .line 76
    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/common/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/common/c;->m:Lcom/facebook/imagepipeline/common/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b()Lcom/facebook/imagepipeline/common/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/common/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/imagepipeline/common/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method protected c()Lcom/facebook/common/internal/h$b;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/h;->e(Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "minDecodeIntervalMs"

    .line 6
    .line 7
    iget v2, p0, Lcom/facebook/imagepipeline/common/c;->a:I

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/h$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "maxDimensionPx"

    .line 14
    .line 15
    iget v2, p0, Lcom/facebook/imagepipeline/common/c;->b:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/h$b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "decodePreviewFrame"

    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/c;->c:Z

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/h$b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "useLastFrameForPreview"

    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/c;->d:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/h$b;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "decodeAllFrames"

    .line 38
    .line 39
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/c;->e:Z

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/h$b;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "forceStaticImage"

    .line 46
    .line 47
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/c;->f:Z

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/h$b;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/facebook/imagepipeline/common/c;->g:Landroid/graphics/Bitmap$Config;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v2, "bitmapConfigName"

    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/facebook/imagepipeline/common/c;->h:Landroid/graphics/Bitmap$Config;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "animatedBitmapConfigName"

    .line 72
    .line 73
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "customImageDecoder"

    .line 78
    .line 79
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/c;->i:Lcom/facebook/imagepipeline/decoder/b;

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "bitmapTransformation"

    .line 86
    .line 87
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/c;->j:Lm4/a;

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "colorSpace"

    .line 94
    .line 95
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/c;->k:Landroid/graphics/ColorSpace;

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_d

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    check-cast p1, Lcom/facebook/imagepipeline/common/c;

    .line 20
    .line 21
    iget v2, p0, Lcom/facebook/imagepipeline/common/c;->a:I

    .line 22
    .line 23
    iget v3, p1, Lcom/facebook/imagepipeline/common/c;->a:I

    .line 24
    .line 25
    if-eq v2, v3, :cond_2

    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    iget v2, p0, Lcom/facebook/imagepipeline/common/c;->b:I

    .line 29
    .line 30
    iget v3, p1, Lcom/facebook/imagepipeline/common/c;->b:I

    .line 31
    .line 32
    if-eq v2, v3, :cond_3

    .line 33
    .line 34
    return v1

    .line 35
    :cond_3
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/c;->c:Z

    .line 36
    .line 37
    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/c;->c:Z

    .line 38
    .line 39
    if-eq v2, v3, :cond_4

    .line 40
    .line 41
    return v1

    .line 42
    :cond_4
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/c;->d:Z

    .line 43
    .line 44
    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/c;->d:Z

    .line 45
    .line 46
    if-eq v2, v3, :cond_5

    .line 47
    .line 48
    return v1

    .line 49
    :cond_5
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/c;->e:Z

    .line 50
    .line 51
    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/c;->e:Z

    .line 52
    .line 53
    if-eq v2, v3, :cond_6

    .line 54
    .line 55
    return v1

    .line 56
    :cond_6
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/c;->f:Z

    .line 57
    .line 58
    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/c;->f:Z

    .line 59
    .line 60
    if-eq v2, v3, :cond_7

    .line 61
    .line 62
    return v1

    .line 63
    :cond_7
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/c;->l:Z

    .line 64
    .line 65
    if-nez v2, :cond_8

    .line 66
    .line 67
    iget-object v3, p0, Lcom/facebook/imagepipeline/common/c;->g:Landroid/graphics/Bitmap$Config;

    .line 68
    .line 69
    iget-object v4, p1, Lcom/facebook/imagepipeline/common/c;->g:Landroid/graphics/Bitmap$Config;

    .line 70
    .line 71
    if-eq v3, v4, :cond_8

    .line 72
    .line 73
    return v1

    .line 74
    :cond_8
    if-nez v2, :cond_9

    .line 75
    .line 76
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/c;->h:Landroid/graphics/Bitmap$Config;

    .line 77
    .line 78
    iget-object v3, p1, Lcom/facebook/imagepipeline/common/c;->h:Landroid/graphics/Bitmap$Config;

    .line 79
    .line 80
    if-eq v2, v3, :cond_9

    .line 81
    .line 82
    return v1

    .line 83
    :cond_9
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/c;->i:Lcom/facebook/imagepipeline/decoder/b;

    .line 84
    .line 85
    iget-object v3, p1, Lcom/facebook/imagepipeline/common/c;->i:Lcom/facebook/imagepipeline/decoder/b;

    .line 86
    .line 87
    if-eq v2, v3, :cond_a

    .line 88
    .line 89
    return v1

    .line 90
    :cond_a
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/c;->j:Lm4/a;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/facebook/imagepipeline/common/c;->j:Lm4/a;

    .line 93
    .line 94
    if-eq v2, v3, :cond_b

    .line 95
    .line 96
    return v1

    .line 97
    :cond_b
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/c;->k:Landroid/graphics/ColorSpace;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/facebook/imagepipeline/common/c;->k:Landroid/graphics/ColorSpace;

    .line 100
    .line 101
    if-eq v2, p1, :cond_c

    .line 102
    .line 103
    return v1

    .line 104
    :cond_c
    return v0

    .line 105
    :cond_d
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/common/c;->a:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lcom/facebook/imagepipeline/common/c;->b:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/c;->c:Z

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/c;->d:Z

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/c;->e:Z

    .line 21
    .line 22
    add-int/2addr v0, v1

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/c;->f:Z

    .line 26
    .line 27
    add-int/2addr v0, v1

    .line 28
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/c;->l:Z

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    iget-object v1, p0, Lcom/facebook/imagepipeline/common/c;->g:Landroid/graphics/Bitmap$Config;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/2addr v0, v1

    .line 41
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/c;->l:Z

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    mul-int/lit8 v0, v0, 0x1f

    .line 47
    .line 48
    iget-object v1, p0, Lcom/facebook/imagepipeline/common/c;->h:Landroid/graphics/Bitmap$Config;

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v1, 0x0

    .line 58
    :goto_0
    add-int/2addr v0, v1

    .line 59
    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    .line 60
    .line 61
    iget-object v1, p0, Lcom/facebook/imagepipeline/common/c;->i:Lcom/facebook/imagepipeline/decoder/b;

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const/4 v1, 0x0

    .line 71
    :goto_1
    add-int/2addr v0, v1

    .line 72
    mul-int/lit8 v0, v0, 0x1f

    .line 73
    .line 74
    iget-object v1, p0, Lcom/facebook/imagepipeline/common/c;->j:Lm4/a;

    .line 75
    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    const/4 v1, 0x0

    .line 84
    :goto_2
    add-int/2addr v0, v1

    .line 85
    mul-int/lit8 v0, v0, 0x1f

    .line 86
    .line 87
    iget-object v1, p0, Lcom/facebook/imagepipeline/common/c;->k:Landroid/graphics/ColorSpace;

    .line 88
    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    invoke-static {v1}, Lcom/facebook/imagepipeline/common/b;->a(Landroid/graphics/ColorSpace;)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    :cond_5
    add-int/2addr v0, v2

    .line 96
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ImageDecodeOptions{"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/c;->c()Lcom/facebook/common/internal/h$b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/facebook/common/internal/h$b;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "}"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
