.class public final Lcom/join/mgps/zxing/camera/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/String; = "c"

.field private static final l:I = 0x1a4

.field private static final m:I = 0x1a4

.field private static final n:I = 0x320

.field private static final o:I = 0x1e0

.field private static p:Lcom/join/mgps/zxing/camera/c;

.field static final q:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/join/mgps/zxing/camera/b;

.field private c:Landroid/hardware/Camera;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Z

.field private g:Z

.field private final h:Z

.field private final i:Lcom/join/mgps/zxing/camera/g;

.field private final j:Lcom/join/mgps/zxing/camera/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const/16 v0, 0x2710

    .line 9
    .line 10
    :goto_0
    sput v0, Lcom/join/mgps/zxing/camera/c;->q:I

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/zxing/camera/c;->a:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lcom/join/mgps/zxing/camera/b;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/join/mgps/zxing/camera/b;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    .line 12
    .line 13
    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v1, 0x3

    .line 20
    if-le p1, v1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/zxing/camera/c;->h:Z

    .line 26
    .line 27
    new-instance v1, Lcom/join/mgps/zxing/camera/g;

    .line 28
    .line 29
    invoke-direct {v1, v0, p1}, Lcom/join/mgps/zxing/camera/g;-><init>(Lcom/join/mgps/zxing/camera/b;Z)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/join/mgps/zxing/camera/c;->i:Lcom/join/mgps/zxing/camera/g;

    .line 33
    .line 34
    new-instance p1, Lcom/join/mgps/zxing/camera/a;

    .line 35
    .line 36
    invoke-direct {p1}, Lcom/join/mgps/zxing/camera/a;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/join/mgps/zxing/camera/c;->j:Lcom/join/mgps/zxing/camera/a;

    .line 40
    .line 41
    return-void
.end method

.method public static c()Lcom/join/mgps/zxing/camera/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/zxing/camera/c;->p:Lcom/join/mgps/zxing/camera/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static g(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/zxing/camera/c;->p:Lcom/join/mgps/zxing/camera/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/zxing/camera/c;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/zxing/camera/c;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/join/mgps/zxing/camera/c;->p:Lcom/join/mgps/zxing/camera/c;

    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public a([BII)Lcom/join/mgps/zxing/camera/f;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "width",
            "height"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/zxing/camera/c;->f()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/zxing/camera/b;->f()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/join/mgps/zxing/camera/b;->g()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/16 v3, 0x10

    .line 18
    .line 19
    if-eq v1, v3, :cond_1

    .line 20
    .line 21
    const/16 v3, 0x11

    .line 22
    .line 23
    if-eq v1, v3, :cond_1

    .line 24
    .line 25
    const-string v3, "yuv420p"

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    new-instance v1, Lcom/join/mgps/zxing/camera/f;

    .line 34
    .line 35
    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    move-object v4, v1

    .line 48
    move-object v5, p1

    .line 49
    move v6, p2

    .line 50
    move v7, p3

    .line 51
    invoke-direct/range {v4 .. v11}, Lcom/join/mgps/zxing/camera/f;-><init>([BIIIIII)V

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string p3, "Unsupported picture format: "

    .line 63
    .line 64
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const/16 p3, 0x2f

    .line 71
    .line 72
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_1
    new-instance v8, Lcom/join/mgps/zxing/camera/f;

    .line 87
    .line 88
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 89
    .line 90
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    move-object v0, v8

    .line 101
    move-object v1, p1

    .line 102
    move v2, p2

    .line 103
    move v3, p3

    .line 104
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/zxing/camera/f;-><init>([BIIIIII)V

    .line 105
    .line 106
    .line 107
    return-object v8
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/join/mgps/zxing/camera/d;->a()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public d()Landroid/graphics/Rect;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/zxing/camera/b;->h()Landroid/graphics/Point;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    .line 8
    .line 9
    if-nez v1, :cond_a

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 21
    .line 22
    mul-int/lit8 v2, v2, 0x3

    .line 23
    .line 24
    div-int/lit8 v2, v2, 0x4

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v2, 0x0

    .line 28
    :goto_0
    const/16 v3, 0x1a4

    .line 29
    .line 30
    if-ge v2, v3, :cond_2

    .line 31
    .line 32
    const/16 v2, 0x1a4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/16 v4, 0x320

    .line 36
    .line 37
    if-le v2, v4, :cond_3

    .line 38
    .line 39
    const/16 v2, 0x320

    .line 40
    .line 41
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 42
    .line 43
    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 44
    .line 45
    mul-int/lit8 v4, v4, 0x3

    .line 46
    .line 47
    div-int/lit8 v4, v4, 0x4

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    const/4 v4, 0x0

    .line 51
    :goto_2
    if-ge v4, v3, :cond_5

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_5
    const/16 v3, 0x1e0

    .line 55
    .line 56
    if-le v4, v3, :cond_6

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_6
    move v3, v4

    .line 60
    :goto_3
    if-eqz v0, :cond_7

    .line 61
    .line 62
    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 63
    .line 64
    sub-int/2addr v4, v2

    .line 65
    div-int/lit8 v4, v4, 0x2

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_7
    const/4 v4, 0x0

    .line 69
    :goto_4
    if-eqz v0, :cond_8

    .line 70
    .line 71
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 72
    .line 73
    sub-int/2addr v0, v3

    .line 74
    div-int/lit8 v0, v0, 0x2

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_8
    const/4 v0, 0x0

    .line 78
    :goto_5
    iget-object v5, p0, Lcom/join/mgps/zxing/camera/c;->a:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    .line 89
    .line 90
    const/4 v6, 0x1

    .line 91
    if-ne v5, v6, :cond_9

    .line 92
    .line 93
    new-instance v5, Landroid/graphics/Rect;

    .line 94
    .line 95
    add-int/2addr v4, v4

    .line 96
    add-int/2addr v4, v2

    .line 97
    add-int/2addr v3, v0

    .line 98
    invoke-direct {v5, v1, v0, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 99
    .line 100
    .line 101
    iput-object v5, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_9
    new-instance v1, Landroid/graphics/Rect;

    .line 105
    .line 106
    add-int/2addr v2, v4

    .line 107
    add-int/2addr v3, v0

    .line 108
    invoke-direct {v1, v4, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    .line 112
    .line 113
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v1, "Calculated framing rect: "

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    .line 129
    .line 130
    return-object v0
.end method

.method public e()Landroid/graphics/Rect;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    const/high16 v1, 0x43b40000    # 360.0f

    .line 14
    .line 15
    mul-float v1, v1, v0

    .line 16
    .line 17
    float-to-int v1, v1

    .line 18
    const/high16 v2, 0x43700000    # 240.0f

    .line 19
    .line 20
    mul-float v0, v0, v2

    .line 21
    .line 22
    float-to-int v0, v0

    .line 23
    iget-object v2, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/join/mgps/zxing/camera/b;->h()Landroid/graphics/Point;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    .line 30
    .line 31
    if-nez v3, :cond_5

    .line 32
    .line 33
    iget-object v3, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 34
    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    return-object v0

    .line 39
    :cond_0
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 40
    .line 41
    mul-int/lit8 v4, v3, 0x3

    .line 42
    .line 43
    div-int/lit8 v4, v4, 0x4

    .line 44
    .line 45
    const/16 v5, 0xf0

    .line 46
    .line 47
    if-ge v4, v5, :cond_1

    .line 48
    .line 49
    const/16 v1, 0xf0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    if-le v4, v1, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move v1, v4

    .line 56
    :goto_0
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 57
    .line 58
    mul-int/lit8 v4, v2, 0x3

    .line 59
    .line 60
    div-int/lit8 v4, v4, 0x4

    .line 61
    .line 62
    if-ge v4, v5, :cond_3

    .line 63
    .line 64
    const/16 v0, 0xf0

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    if-le v4, v0, :cond_4

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    move v0, v4

    .line 71
    :goto_1
    sub-int/2addr v3, v1

    .line 72
    div-int/lit8 v3, v3, 0x2

    .line 73
    .line 74
    sub-int/2addr v2, v0

    .line 75
    div-int/lit8 v2, v2, 0x2

    .line 76
    .line 77
    new-instance v4, Landroid/graphics/Rect;

    .line 78
    .line 79
    add-int/2addr v1, v3

    .line 80
    add-int/2addr v0, v2

    .line 81
    invoke-direct {v4, v3, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 82
    .line 83
    .line 84
    iput-object v4, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    .line 85
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v1, "Calculated framing rect: "

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->d:Landroid/graphics/Rect;

    .line 102
    .line 103
    return-object v0
.end method

.method public f()Landroid/graphics/Rect;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->e:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/zxing/camera/c;->d()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/zxing/camera/b;->c()Landroid/graphics/Point;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/join/mgps/zxing/camera/b;->h()Landroid/graphics/Point;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/join/mgps/zxing/camera/c;->a:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    if-ne v3, v4, :cond_0

    .line 40
    .line 41
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 44
    .line 45
    mul-int v3, v3, v4

    .line 46
    .line 47
    iget v5, v2, Landroid/graphics/Point;->x:I

    .line 48
    .line 49
    div-int/2addr v3, v5

    .line 50
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 51
    .line 52
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 53
    .line 54
    mul-int v3, v3, v4

    .line 55
    .line 56
    div-int/2addr v3, v5

    .line 57
    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 58
    .line 59
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 60
    .line 61
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 62
    .line 63
    mul-int v3, v3, v1

    .line 64
    .line 65
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 66
    .line 67
    div-int/2addr v3, v2

    .line 68
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 69
    .line 70
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 71
    .line 72
    mul-int v3, v3, v1

    .line 73
    .line 74
    div-int/2addr v3, v2

    .line 75
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    if-eqz v2, :cond_1

    .line 79
    .line 80
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 81
    .line 82
    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 83
    .line 84
    mul-int v3, v3, v4

    .line 85
    .line 86
    iget v5, v2, Landroid/graphics/Point;->x:I

    .line 87
    .line 88
    div-int/2addr v3, v5

    .line 89
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 90
    .line 91
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 92
    .line 93
    mul-int v3, v3, v4

    .line 94
    .line 95
    div-int/2addr v3, v5

    .line 96
    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 97
    .line 98
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 99
    .line 100
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 101
    .line 102
    mul-int v3, v3, v1

    .line 103
    .line 104
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 105
    .line 106
    div-int/2addr v3, v2

    .line 107
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 108
    .line 109
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 110
    .line 111
    mul-int v3, v3, v1

    .line 112
    .line 113
    div-int/2addr v3, v2

    .line 114
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 118
    .line 119
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 120
    .line 121
    mul-int v2, v2, v3

    .line 122
    .line 123
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 124
    .line 125
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 126
    .line 127
    mul-int v2, v2, v3

    .line 128
    .line 129
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 130
    .line 131
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 132
    .line 133
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 134
    .line 135
    mul-int v2, v2, v1

    .line 136
    .line 137
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 138
    .line 139
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 140
    .line 141
    mul-int v2, v2, v1

    .line 142
    .line 143
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 144
    .line 145
    :goto_0
    iput-object v0, p0, Lcom/join/mgps/zxing/camera/c;->e:Landroid/graphics/Rect;

    .line 146
    .line 147
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->e:Landroid/graphics/Rect;

    .line 148
    .line 149
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 14
    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/join/mgps/zxing/camera/c;->f:Z

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/join/mgps/zxing/camera/c;->f:Z

    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/join/mgps/zxing/camera/b;->i(Landroid/hardware/Camera;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/join/mgps/zxing/camera/b;->j(Landroid/hardware/Camera;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/join/mgps/zxing/camera/d;->b()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public i(Landroid/view/SurfaceHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "angle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "continuous-picture"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    nop

    .line 29
    :goto_0
    iget-boolean p1, p0, Lcom/join/mgps/zxing/camera/c;->f:Z

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/join/mgps/zxing/camera/c;->f:Z

    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/join/mgps/zxing/camera/b;->i(Landroid/hardware/Camera;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/zxing/camera/c;->b:Lcom/join/mgps/zxing/camera/b;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 46
    .line 47
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/zxing/camera/b;->k(Landroid/hardware/Camera;I)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/join/mgps/zxing/camera/d;->b()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    :goto_1
    return-void
.end method

.method public j(Landroid/os/Handler;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "message"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/zxing/camera/c;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->j:Lcom/join/mgps/zxing/camera/a;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/zxing/camera/a;->a(Landroid/os/Handler;I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/zxing/camera/c;->j:Lcom/join/mgps/zxing/camera/a;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public k(Landroid/os/Handler;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "message"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/zxing/camera/c;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->i:Lcom/join/mgps/zxing/camera/g;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/zxing/camera/g;->a(Landroid/os/Handler;I)V

    .line 12
    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/join/mgps/zxing/camera/c;->h:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/join/mgps/zxing/camera/c;->i:Lcom/join/mgps/zxing/camera/g;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/join/mgps/zxing/camera/c;->i:Lcom/join/mgps/zxing/camera/g;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/join/mgps/zxing/camera/c;->g:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/zxing/camera/c;->g:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/join/mgps/zxing/camera/c;->g:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/join/mgps/zxing/camera/c;->h:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->c:Landroid/hardware/Camera;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->i:Lcom/join/mgps/zxing/camera/g;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/zxing/camera/g;->a(Landroid/os/Handler;I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/c;->j:Lcom/join/mgps/zxing/camera/a;

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/zxing/camera/a;->a(Landroid/os/Handler;I)V

    .line 31
    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/join/mgps/zxing/camera/c;->g:Z

    .line 34
    .line 35
    :cond_1
    return-void
.end method
