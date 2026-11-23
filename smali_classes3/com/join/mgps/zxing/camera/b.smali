.class final Lcom/join/mgps/zxing/camera/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "b"

.field private static final g:I = 0x1b

.field private static final h:I = 0x1e

.field private static final i:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/join/mgps/zxing/camera/b;->i:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
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
    iput-object p1, p0, Lcom/join/mgps/zxing/camera/b;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private static a(Ljava/lang/CharSequence;I)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stringValues",
            "tenDesiredZoom"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/zxing/camera/b;->i:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    aget-object v3, p0, v1

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    :try_start_0
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 19
    .line 20
    .line 21
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    .line 23
    .line 24
    mul-double v5, v5, v3

    .line 25
    .line 26
    double-to-int v5, v5

    .line 27
    int-to-double v6, p1

    .line 28
    sub-double/2addr v6, v3

    .line 29
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    sub-int v6, p1, v2

    .line 34
    .line 35
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    int-to-double v6, v6

    .line 40
    cmpg-double v8, v3, v6

    .line 41
    .line 42
    if-gez v8, :cond_0

    .line 43
    .line 44
    move v2, v5

    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    return p1

    .line 49
    :cond_1
    return v2
.end method

.method private static b(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previewSizeValueString",
            "screenResolution"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/zxing/camera/b;->i:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    const/4 v1, 0x0

    .line 9
    const v2, 0x7fffffff

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    :goto_0
    if-ge v3, v0, :cond_3

    .line 16
    .line 17
    aget-object v6, p0, v3

    .line 18
    .line 19
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    const/16 v7, 0x78

    .line 24
    .line 25
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    const-string v8, "Bad preview-size: "

    .line 30
    .line 31
    if-gez v7, :cond_0

    .line 32
    .line 33
    new-instance v7, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :try_start_0
    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    add-int/lit8 v7, v7, 0x1

    .line 54
    .line 55
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    iget v7, p1, Landroid/graphics/Point;->x:I

    .line 64
    .line 65
    sub-int v7, v9, v7

    .line 66
    .line 67
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    iget v8, p1, Landroid/graphics/Point;->y:I

    .line 72
    .line 73
    sub-int v8, v6, v8

    .line 74
    .line 75
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    add-int/2addr v7, v8

    .line 80
    if-nez v7, :cond_1

    .line 81
    .line 82
    move v5, v6

    .line 83
    move v4, v9

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    if-ge v7, v2, :cond_2

    .line 86
    .line 87
    move v5, v6

    .line 88
    move v2, v7

    .line 89
    move v4, v9

    .line 90
    goto :goto_1

    .line 91
    :catch_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    :goto_2
    if-lez v4, :cond_4

    .line 106
    .line 107
    if-lez v5, :cond_4

    .line 108
    .line 109
    new-instance p0, Landroid/graphics/Point;

    .line 110
    .line 111
    invoke-direct {p0, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 112
    .line 113
    .line 114
    return-object p0

    .line 115
    :cond_4
    const/4 p0, 0x0

    .line 116
    return-object p0
.end method

.method private static d(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "screenResolution"
        }
    .end annotation

    .line 1
    const-string v0, "preview-size-values"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "preview-size-value"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "preview-size-values parameter: "

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/join/mgps/zxing/camera/b;->b(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    :goto_0
    if-nez p0, :cond_2

    .line 37
    .line 38
    new-instance p0, Landroid/graphics/Point;

    .line 39
    .line 40
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 41
    .line 42
    shr-int/lit8 v0, v0, 0x3

    .line 43
    .line 44
    shl-int/lit8 v0, v0, 0x3

    .line 45
    .line 46
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 47
    .line 48
    shr-int/lit8 p1, p1, 0x3

    .line 49
    .line 50
    shl-int/lit8 p1, p1, 0x3

    .line 51
    .line 52
    invoke-direct {p0, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-object p0
.end method

.method public static e()I
    .locals 1

    .line 1
    const/16 v0, 0x1e

    return v0
.end method

.method private m(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Behold II"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "flash-value"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget v0, Lcom/join/mgps/zxing/camera/c;->q:I

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    const-string v0, "flash-mode"

    .line 28
    .line 29
    const-string v1, "off"

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private n(Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 1
    const-string v0, "zoom-supported"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v0, "max-zoom"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    .line 23
    .line 24
    const/16 v3, 0x1b

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 29
    .line 30
    .line 31
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    mul-double v4, v4, v1

    .line 33
    .line 34
    double-to-int v4, v4

    .line 35
    if-le v3, v4, :cond_1

    .line 36
    .line 37
    move v3, v4

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v5, "Bad max-zoom: "

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    const-string v4, "taking-picture-zoom-max"

    .line 53
    .line 54
    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    if-le v3, v5, :cond_2

    .line 65
    .line 66
    move v3, v5

    .line 67
    goto :goto_1

    .line 68
    :catch_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v6, "Bad taking-picture-zoom-max: "

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_1
    const-string v5, "mot-zoom-values"

    .line 82
    .line 83
    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    invoke-static {v5, v3}, Lcom/join/mgps/zxing/camera/b;->a(Ljava/lang/CharSequence;I)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    :cond_3
    const-string v6, "mot-zoom-step"

    .line 94
    .line 95
    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    if-eqz v6, :cond_4

    .line 100
    .line 101
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 106
    .line 107
    .line 108
    move-result-wide v6

    .line 109
    mul-double v6, v6, v1

    .line 110
    .line 111
    double-to-int v6, v6

    .line 112
    const/4 v7, 0x1

    .line 113
    if-le v6, v7, :cond_4

    .line 114
    .line 115
    rem-int v6, v3, v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 116
    .line 117
    sub-int/2addr v3, v6

    .line 118
    goto :goto_2

    .line 119
    :catch_2
    nop

    .line 120
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 121
    .line 122
    if-eqz v5, :cond_6

    .line 123
    .line 124
    :cond_5
    int-to-double v5, v3

    .line 125
    div-double/2addr v5, v1

    .line 126
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v1, "zoom"

    .line 131
    .line 132
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_6
    if-eqz v4, :cond_7

    .line 136
    .line 137
    const-string v0, "taking-picture-zoom"

    .line 138
    .line 139
    invoke-virtual {p1, v0, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 140
    .line 141
    .line 142
    :cond_7
    return-void
.end method


# virtual methods
.method c()Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/b;->c:Landroid/graphics/Point;

    .line 2
    .line 3
    return-object v0
.end method

.method f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/zxing/camera/b;->d:I

    .line 2
    .line 3
    return v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/b;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method h()Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/b;->b:Landroid/graphics/Point;

    .line 2
    .line 3
    return-object v0
.end method

.method i(Landroid/hardware/Camera;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/join/mgps/zxing/camera/b;->d:I

    .line 10
    .line 11
    const-string v0, "preview-format"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/zxing/camera/b;->e:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/b;->a:Landroid/content/Context;

    .line 20
    .line 21
    const-string v1, "window"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/view/WindowManager;

    .line 28
    .line 29
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    new-instance v2, Landroid/graphics/Point;

    .line 42
    .line 43
    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/join/mgps/zxing/camera/b;->b:Landroid/graphics/Point;

    .line 47
    .line 48
    new-instance v0, Landroid/graphics/Point;

    .line 49
    .line 50
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/mgps/zxing/camera/b;->b:Landroid/graphics/Point;

    .line 54
    .line 55
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 56
    .line 57
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 58
    .line 59
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 60
    .line 61
    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 62
    .line 63
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 64
    .line 65
    iget v3, v1, Landroid/graphics/Point;->y:I

    .line 66
    .line 67
    if-ge v2, v3, :cond_0

    .line 68
    .line 69
    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 70
    .line 71
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 72
    .line 73
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 74
    .line 75
    :cond_0
    invoke-static {p1, v0}, Lcom/join/mgps/zxing/camera/b;->d(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/join/mgps/zxing/camera/b;->c:Landroid/graphics/Point;

    .line 80
    .line 81
    return-void
.end method

.method j(Landroid/hardware/Camera;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x2

    .line 14
    if-le v2, v3, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    div-int/2addr v2, v3

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    div-int/2addr v2, v3

    .line 29
    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/hardware/Camera$Size;

    .line 34
    .line 35
    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    .line 36
    .line 37
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/hardware/Camera$Size;

    .line 42
    .line 43
    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    .line 44
    .line 45
    iget-object v2, p0, Lcom/join/mgps/zxing/camera/b;->c:Landroid/graphics/Point;

    .line 46
    .line 47
    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 48
    .line 49
    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 50
    .line 51
    invoke-virtual {v0, v3, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v0}, Lcom/join/mgps/zxing/camera/b;->m(Landroid/hardware/Camera$Parameters;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v0}, Lcom/join/mgps/zxing/camera/b;->n(Landroid/hardware/Camera$Parameters;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method k(Landroid/hardware/Camera;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camera",
            "angle"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/join/mgps/zxing/camera/b;->c:Landroid/graphics/Point;

    .line 10
    .line 11
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 12
    .line 13
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Landroid/hardware/Camera$Size;

    .line 30
    .line 31
    iget v5, v4, Landroid/hardware/Camera$Size;->height:I

    .line 32
    .line 33
    const/16 v6, 0x1e0

    .line 34
    .line 35
    if-ne v5, v6, :cond_0

    .line 36
    .line 37
    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    .line 38
    .line 39
    const/16 v5, 0x320

    .line 40
    .line 41
    if-ne v4, v5, :cond_0

    .line 42
    .line 43
    const/16 v2, 0x1e0

    .line 44
    .line 45
    const/16 v3, 0x320

    .line 46
    .line 47
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/zxing/camera/b;->c:Landroid/graphics/Point;

    .line 48
    .line 49
    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 50
    .line 51
    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "Setting preview size: "

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/join/mgps/zxing/camera/b;->c:Landroid/graphics/Point;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/zxing/camera/b;->c:Landroid/graphics/Point;

    .line 69
    .line 70
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 71
    .line 72
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 73
    .line 74
    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, v0}, Lcom/join/mgps/zxing/camera/b;->m(Landroid/hardware/Camera$Parameters;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v0}, Lcom/join/mgps/zxing/camera/b;->n(Landroid/hardware/Camera$Parameters;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/zxing/camera/b;->l(Landroid/hardware/Camera;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method protected l(Landroid/hardware/Camera;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camera",
            "angle"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "setDisplayOrientation"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v3, v2, [Ljava/lang/Class;

    .line 9
    .line 10
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    aput-object v4, v3, v5

    .line 14
    .line 15
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-array v1, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    aput-object p2, v1, v5

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    :cond_0
    return-void
.end method
