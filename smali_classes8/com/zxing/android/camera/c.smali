.class public final Lcom/zxing/android/camera/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final m:Ljava/lang/String; = "c"

.field private static final n:I = 0xf0

.field private static final o:I = 0xf0

.field private static final p:I = 0x190

.field private static final q:I = 0x190

.field public static final r:Ljava/lang/String; = "preferences_reverse_image"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/zxing/android/camera/b;

.field private c:Landroid/hardware/Camera;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private final k:Lcom/zxing/android/camera/f;

.field private final l:Lcom/zxing/android/camera/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/zxing/android/camera/c;->a:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lcom/zxing/android/camera/b;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/zxing/android/camera/b;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/zxing/android/camera/c;->b:Lcom/zxing/android/camera/b;

    .line 12
    .line 13
    new-instance p1, Lcom/zxing/android/camera/f;

    .line 14
    .line 15
    invoke-direct {p1, v0}, Lcom/zxing/android/camera/f;-><init>(Lcom/zxing/android/camera/b;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/zxing/android/camera/c;->k:Lcom/zxing/android/camera/f;

    .line 19
    .line 20
    new-instance p1, Lcom/zxing/android/camera/a;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/zxing/android/camera/a;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/zxing/android/camera/c;->l:Lcom/zxing/android/camera/a;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public a([BII)Lcom/zxing/android/camera/e;
    .locals 10
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
    invoke-virtual {p0}, Lcom/zxing/android/camera/c;->d()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance v9, Lcom/zxing/android/camera/e;

    .line 10
    .line 11
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 12
    .line 13
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    iget-boolean v8, p0, Lcom/zxing/android/camera/c;->h:Z

    .line 24
    .line 25
    move-object v0, v9

    .line 26
    move-object v1, p1

    .line 27
    move v2, p2

    .line 28
    move v3, p3

    .line 29
    invoke-direct/range {v0 .. v8}, Lcom/zxing/android/camera/e;-><init>([BIIIIIIZ)V

    .line 30
    .line 31
    .line 32
    return-object v9
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/zxing/android/camera/c;->d:Landroid/graphics/Rect;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/zxing/android/camera/c;->e:Landroid/graphics/Rect;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public c()Landroid/graphics/Rect;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->d:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/zxing/android/camera/c;->b:Lcom/zxing/android/camera/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/zxing/android/camera/b;->e()Landroid/graphics/Point;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 18
    .line 19
    mul-int/lit8 v2, v1, 0x3

    .line 20
    .line 21
    div-int/lit8 v2, v2, 0x4

    .line 22
    .line 23
    const/16 v3, 0x190

    .line 24
    .line 25
    const/16 v4, 0xf0

    .line 26
    .line 27
    if-ge v2, v4, :cond_1

    .line 28
    .line 29
    const/16 v2, 0xf0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-le v2, v3, :cond_2

    .line 33
    .line 34
    const/16 v2, 0x190

    .line 35
    .line 36
    :cond_2
    :goto_0
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 37
    .line 38
    mul-int/lit8 v5, v0, 0x3

    .line 39
    .line 40
    div-int/lit8 v5, v5, 0x4

    .line 41
    .line 42
    if-ge v5, v4, :cond_3

    .line 43
    .line 44
    const/16 v3, 0xf0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    if-le v5, v3, :cond_4

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    move v3, v5

    .line 51
    :goto_1
    sub-int/2addr v1, v2

    .line 52
    div-int/lit8 v1, v1, 0x2

    .line 53
    .line 54
    sub-int/2addr v0, v3

    .line 55
    mul-int/lit8 v0, v0, 0x2

    .line 56
    .line 57
    div-int/lit8 v0, v0, 0x5

    .line 58
    .line 59
    new-instance v4, Landroid/graphics/Rect;

    .line 60
    .line 61
    add-int/2addr v2, v1

    .line 62
    add-int/2addr v3, v0

    .line 63
    invoke-direct {v4, v1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 64
    .line 65
    .line 66
    iput-object v4, p0, Lcom/zxing/android/camera/c;->d:Landroid/graphics/Rect;

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v1, "Calculated framing rect: "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/zxing/android/camera/c;->d:Landroid/graphics/Rect;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    :cond_5
    iget-object v0, p0, Lcom/zxing/android/camera/c;->d:Landroid/graphics/Rect;

    .line 84
    .line 85
    return-object v0
.end method

.method public d()Landroid/graphics/Rect;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->e:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/zxing/android/camera/c;->c()Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/zxing/android/camera/c;->b:Lcom/zxing/android/camera/b;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/zxing/android/camera/b;->d()Landroid/graphics/Point;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v2, p0, Lcom/zxing/android/camera/c;->b:Lcom/zxing/android/camera/b;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/zxing/android/camera/b;->e()Landroid/graphics/Point;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 31
    .line 32
    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 33
    .line 34
    mul-int v3, v3, v4

    .line 35
    .line 36
    iget v5, v2, Landroid/graphics/Point;->x:I

    .line 37
    .line 38
    div-int/2addr v3, v5

    .line 39
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 40
    .line 41
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 42
    .line 43
    mul-int v3, v3, v4

    .line 44
    .line 45
    div-int/2addr v3, v5

    .line 46
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 47
    .line 48
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 49
    .line 50
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 51
    .line 52
    mul-int v3, v3, v0

    .line 53
    .line 54
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 55
    .line 56
    div-int/2addr v3, v2

    .line 57
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 58
    .line 59
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 60
    .line 61
    mul-int v3, v3, v0

    .line 62
    .line 63
    div-int/2addr v3, v2

    .line 64
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 65
    .line 66
    iput-object v1, p0, Lcom/zxing/android/camera/c;->e:Landroid/graphics/Rect;

    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->e:Landroid/graphics/Rect;

    .line 69
    .line 70
    return-object v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "off"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public f(Landroid/view/SurfaceHolder;)V
    .locals 3
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
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 21
    .line 22
    .line 23
    iget-boolean p1, p0, Lcom/zxing/android/camera/c;->f:Z

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/zxing/android/camera/c;->f:Z

    .line 30
    .line 31
    iget-object p1, p0, Lcom/zxing/android/camera/c;->b:Lcom/zxing/android/camera/b;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/zxing/android/camera/b;->f(Landroid/hardware/Camera;)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, Lcom/zxing/android/camera/c;->i:I

    .line 37
    .line 38
    if-lez p1, :cond_2

    .line 39
    .line 40
    iget v2, p0, Lcom/zxing/android/camera/c;->j:I

    .line 41
    .line 42
    if-lez v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0, p1, v2}, Lcom/zxing/android/camera/c;->j(II)V

    .line 45
    .line 46
    .line 47
    iput v1, p0, Lcom/zxing/android/camera/c;->i:I

    .line 48
    .line 49
    iput v1, p0, Lcom/zxing/android/camera/c;->j:I

    .line 50
    .line 51
    :cond_2
    iget-object p1, p0, Lcom/zxing/android/camera/c;->b:Lcom/zxing/android/camera/b;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/zxing/android/camera/b;->h(Landroid/hardware/Camera;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/zxing/android/camera/c;->a:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "preferences_reverse_image"

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput-boolean p1, p0, Lcom/zxing/android/camera/c;->h:Z

    .line 69
    .line 70
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "torch"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public h(Landroid/os/Handler;I)V
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
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/zxing/android/camera/c;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/zxing/android/camera/c;->l:Lcom/zxing/android/camera/a;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/zxing/android/camera/a;->a(Landroid/os/Handler;I)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object p1, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/zxing/android/camera/c;->l:Lcom/zxing/android/camera/a;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    :cond_0
    return-void
.end method

.method public i(Landroid/os/Handler;I)V
    .locals 2
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
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/zxing/android/camera/c;->g:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/zxing/android/camera/c;->k:Lcom/zxing/android/camera/f;

    .line 10
    .line 11
    invoke-virtual {v1, p1, p2}, Lcom/zxing/android/camera/f;->a(Landroid/os/Handler;I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/zxing/android/camera/c;->k:Lcom/zxing/android/camera/f;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public j(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/zxing/android/camera/c;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/zxing/android/camera/c;->b:Lcom/zxing/android/camera/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/zxing/android/camera/b;->e()Landroid/graphics/Point;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 12
    .line 13
    if-le p1, v1, :cond_0

    .line 14
    .line 15
    move p1, v1

    .line 16
    :cond_0
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 17
    .line 18
    if-le p2, v0, :cond_1

    .line 19
    .line 20
    move p2, v0

    .line 21
    :cond_1
    sub-int/2addr v1, p1

    .line 22
    div-int/lit8 v1, v1, 0x2

    .line 23
    .line 24
    sub-int/2addr v0, p2

    .line 25
    div-int/lit8 v0, v0, 0x2

    .line 26
    .line 27
    new-instance v2, Landroid/graphics/Rect;

    .line 28
    .line 29
    add-int/2addr p1, v1

    .line 30
    add-int/2addr p2, v0

    .line 31
    invoke-direct {v2, v1, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lcom/zxing/android/camera/c;->d:Landroid/graphics/Rect;

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string p2, "Calculated manual framing rect: "

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/zxing/android/camera/c;->d:Landroid/graphics/Rect;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/zxing/android/camera/c;->e:Landroid/graphics/Rect;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iput p1, p0, Lcom/zxing/android/camera/c;->i:I

    .line 56
    .line 57
    iput p2, p0, Lcom/zxing/android/camera/c;->j:I

    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/zxing/android/camera/c;->g:Z

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
    iput-boolean v0, p0, Lcom/zxing/android/camera/c;->g:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/zxing/android/camera/c;->g:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/zxing/android/camera/c;->k:Lcom/zxing/android/camera/f;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/zxing/android/camera/f;->a(Landroid/os/Handler;I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/zxing/android/camera/c;->l:Lcom/zxing/android/camera/a;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/zxing/android/camera/a;->a(Landroid/os/Handler;I)V

    .line 22
    .line 23
    .line 24
    iput-boolean v2, p0, Lcom/zxing/android/camera/c;->g:Z

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "torch"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, "off"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v1, p0, Lcom/zxing/android/camera/c;->c:Landroid/hardware/Camera;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
