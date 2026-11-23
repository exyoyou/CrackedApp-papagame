.class public Lcom/windmill/sdk/widget/CircleWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;


# direct methods
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

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/windmill/sdk/widget/CircleWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/windmill/sdk/widget/CircleWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x42200000    # 40.0f

    .line 4
    iput p2, p0, Lcom/windmill/sdk/widget/CircleWebView;->a:F

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/windmill/sdk/widget/CircleWebView;->a(Landroid/webkit/WebSettings;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/windmill/sdk/widget/CircleWebView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/windmill/sdk/widget/CircleWebView;->f:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 26
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    iget-object p1, p0, Lcom/windmill/sdk/widget/CircleWebView;->f:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    iget-object p1, p0, Lcom/windmill/sdk/widget/CircleWebView;->f:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/windmill/sdk/widget/CircleWebView;->g:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 32
    iget v1, p0, Lcom/windmill/sdk/widget/CircleWebView;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->a:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 33
    iget v1, p0, Lcom/windmill/sdk/widget/CircleWebView;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->e:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 34
    iget v1, p0, Lcom/windmill/sdk/widget/CircleWebView;->a:F

    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->e:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 35
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->d:I

    int-to-float v3, v2

    iget v4, p0, Lcom/windmill/sdk/widget/CircleWebView;->e:I

    int-to-float v5, v4

    int-to-float v2, v2

    iget v6, p0, Lcom/windmill/sdk/widget/CircleWebView;->a:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v8, v6, v7

    add-float/2addr v2, v8

    int-to-float v4, v4

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    invoke-direct {v1, v3, v5, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 36
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 37
    iget-object v1, p0, Lcom/windmill/sdk/widget/CircleWebView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/webkit/WebSettings;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webSettings"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    :try_start_0
    new-instance v1, Lcom/czhj/sdk/common/utils/ReflectionUtil$MethodBuilder;

    new-instance v2, Ljava/lang/String;

    const-string v3, "c2V0SmF2YVNjcmlwdEVuYWJsZWQ="

    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, p1, v2}, Lcom/czhj/sdk/common/utils/ReflectionUtil$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/czhj/sdk/common/utils/ReflectionUtil$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/czhj/sdk/common/utils/ReflectionUtil$MethodBuilder;

    .line 3
    invoke-virtual {v1}, Lcom/czhj/sdk/common/utils/ReflectionUtil$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :goto_0
    :try_start_1
    new-instance v1, Lcom/czhj/sdk/common/utils/ReflectionUtil$MethodBuilder;

    new-instance v2, Ljava/lang/String;

    const-string v3, "c2V0QWxsb3dGaWxlQWNjZXNz"

    invoke-static {v3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, p1, v2}, Lcom/czhj/sdk/common/utils/ReflectionUtil$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/czhj/sdk/common/utils/ReflectionUtil$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/czhj/sdk/common/utils/ReflectionUtil$MethodBuilder;

    .line 7
    invoke-virtual {v1}, Lcom/czhj/sdk/common/utils/ReflectionUtil$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 12
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 13
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const-string v3, "UTF-8"

    .line 14
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 16
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 17
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 18
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 21
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 22
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 23
    invoke-static {p1, v2}, Lcom/aggmoread/sdk/z/a/u/v;->a(Landroid/webkit/WebSettings;Z)V

    .line 24
    :cond_0
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/windmill/sdk/widget/CircleWebView;->d:I

    .line 7
    .line 8
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->b:I

    .line 9
    .line 10
    add-int/2addr v1, v2

    .line 11
    int-to-float v1, v1

    .line 12
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->e:I

    .line 13
    .line 14
    int-to-float v2, v2

    .line 15
    iget v3, p0, Lcom/windmill/sdk/widget/CircleWebView;->a:F

    .line 16
    .line 17
    add-float/2addr v2, v3

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/windmill/sdk/widget/CircleWebView;->d:I

    .line 22
    .line 23
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->b:I

    .line 24
    .line 25
    add-int/2addr v1, v2

    .line 26
    int-to-float v1, v1

    .line 27
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->e:I

    .line 28
    .line 29
    int-to-float v2, v2

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/windmill/sdk/widget/CircleWebView;->d:I

    .line 34
    .line 35
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->b:I

    .line 36
    .line 37
    add-int/2addr v1, v2

    .line 38
    int-to-float v1, v1

    .line 39
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->a:F

    .line 40
    .line 41
    sub-float/2addr v1, v2

    .line 42
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->e:I

    .line 43
    .line 44
    int-to-float v2, v2

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Landroid/graphics/RectF;

    .line 49
    .line 50
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->d:I

    .line 51
    .line 52
    iget v3, p0, Lcom/windmill/sdk/widget/CircleWebView;->b:I

    .line 53
    .line 54
    add-int v4, v2, v3

    .line 55
    .line 56
    int-to-float v4, v4

    .line 57
    iget v5, p0, Lcom/windmill/sdk/widget/CircleWebView;->a:F

    .line 58
    .line 59
    const/high16 v6, 0x40000000    # 2.0f

    .line 60
    .line 61
    mul-float v7, v5, v6

    .line 62
    .line 63
    sub-float/2addr v4, v7

    .line 64
    iget v7, p0, Lcom/windmill/sdk/widget/CircleWebView;->e:I

    .line 65
    .line 66
    int-to-float v8, v7

    .line 67
    add-int/2addr v2, v3

    .line 68
    int-to-float v2, v2

    .line 69
    int-to-float v3, v7

    .line 70
    mul-float v5, v5, v6

    .line 71
    .line 72
    add-float/2addr v3, v5

    .line 73
    invoke-direct {v1, v4, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 74
    .line 75
    .line 76
    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 77
    .line 78
    const/high16 v3, 0x42b40000    # 90.0f

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/windmill/sdk/widget/CircleWebView;->f:Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/windmill/sdk/widget/CircleWebView;->d:I

    .line 7
    .line 8
    int-to-float v1, v1

    .line 9
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->e:I

    .line 10
    .line 11
    iget v3, p0, Lcom/windmill/sdk/widget/CircleWebView;->c:I

    .line 12
    .line 13
    add-int/2addr v2, v3

    .line 14
    int-to-float v2, v2

    .line 15
    iget v3, p0, Lcom/windmill/sdk/widget/CircleWebView;->a:F

    .line 16
    .line 17
    sub-float/2addr v2, v3

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/windmill/sdk/widget/CircleWebView;->d:I

    .line 22
    .line 23
    int-to-float v1, v1

    .line 24
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->e:I

    .line 25
    .line 26
    iget v3, p0, Lcom/windmill/sdk/widget/CircleWebView;->c:I

    .line 27
    .line 28
    add-int/2addr v2, v3

    .line 29
    int-to-float v2, v2

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/windmill/sdk/widget/CircleWebView;->d:I

    .line 34
    .line 35
    int-to-float v1, v1

    .line 36
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->a:F

    .line 37
    .line 38
    add-float/2addr v1, v2

    .line 39
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->e:I

    .line 40
    .line 41
    iget v3, p0, Lcom/windmill/sdk/widget/CircleWebView;->c:I

    .line 42
    .line 43
    add-int/2addr v2, v3

    .line 44
    int-to-float v2, v2

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Landroid/graphics/RectF;

    .line 49
    .line 50
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->d:I

    .line 51
    .line 52
    int-to-float v3, v2

    .line 53
    iget v4, p0, Lcom/windmill/sdk/widget/CircleWebView;->e:I

    .line 54
    .line 55
    iget v5, p0, Lcom/windmill/sdk/widget/CircleWebView;->c:I

    .line 56
    .line 57
    add-int v6, v4, v5

    .line 58
    .line 59
    int-to-float v6, v6

    .line 60
    iget v7, p0, Lcom/windmill/sdk/widget/CircleWebView;->a:F

    .line 61
    .line 62
    const/high16 v8, 0x40000000    # 2.0f

    .line 63
    .line 64
    mul-float v9, v7, v8

    .line 65
    .line 66
    sub-float/2addr v6, v9

    .line 67
    int-to-float v2, v2

    .line 68
    mul-float v7, v7, v8

    .line 69
    .line 70
    add-float/2addr v2, v7

    .line 71
    add-int/2addr v4, v5

    .line 72
    int-to-float v4, v4

    .line 73
    invoke-direct {v1, v3, v6, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 74
    .line 75
    .line 76
    const/high16 v2, 0x42b40000    # 90.0f

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/windmill/sdk/widget/CircleWebView;->f:Landroid/graphics/Paint;

    .line 85
    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/windmill/sdk/widget/CircleWebView;->d:I

    .line 7
    .line 8
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->b:I

    .line 9
    .line 10
    add-int/2addr v1, v2

    .line 11
    int-to-float v1, v1

    .line 12
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->a:F

    .line 13
    .line 14
    sub-float/2addr v1, v2

    .line 15
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->e:I

    .line 16
    .line 17
    iget v3, p0, Lcom/windmill/sdk/widget/CircleWebView;->c:I

    .line 18
    .line 19
    add-int/2addr v2, v3

    .line 20
    int-to-float v2, v2

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/windmill/sdk/widget/CircleWebView;->d:I

    .line 25
    .line 26
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->b:I

    .line 27
    .line 28
    add-int/2addr v1, v2

    .line 29
    int-to-float v1, v1

    .line 30
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->e:I

    .line 31
    .line 32
    iget v3, p0, Lcom/windmill/sdk/widget/CircleWebView;->c:I

    .line 33
    .line 34
    add-int/2addr v2, v3

    .line 35
    int-to-float v2, v2

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lcom/windmill/sdk/widget/CircleWebView;->d:I

    .line 40
    .line 41
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->b:I

    .line 42
    .line 43
    add-int/2addr v1, v2

    .line 44
    int-to-float v1, v1

    .line 45
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->e:I

    .line 46
    .line 47
    iget v3, p0, Lcom/windmill/sdk/widget/CircleWebView;->c:I

    .line 48
    .line 49
    add-int/2addr v2, v3

    .line 50
    int-to-float v2, v2

    .line 51
    iget v3, p0, Lcom/windmill/sdk/widget/CircleWebView;->a:F

    .line 52
    .line 53
    sub-float/2addr v2, v3

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Landroid/graphics/RectF;

    .line 58
    .line 59
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->d:I

    .line 60
    .line 61
    iget v3, p0, Lcom/windmill/sdk/widget/CircleWebView;->b:I

    .line 62
    .line 63
    add-int v4, v2, v3

    .line 64
    .line 65
    int-to-float v4, v4

    .line 66
    iget v5, p0, Lcom/windmill/sdk/widget/CircleWebView;->a:F

    .line 67
    .line 68
    const/high16 v6, 0x40000000    # 2.0f

    .line 69
    .line 70
    mul-float v7, v5, v6

    .line 71
    .line 72
    sub-float/2addr v4, v7

    .line 73
    iget v7, p0, Lcom/windmill/sdk/widget/CircleWebView;->e:I

    .line 74
    .line 75
    iget v8, p0, Lcom/windmill/sdk/widget/CircleWebView;->c:I

    .line 76
    .line 77
    add-int v9, v7, v8

    .line 78
    .line 79
    int-to-float v9, v9

    .line 80
    mul-float v5, v5, v6

    .line 81
    .line 82
    sub-float/2addr v9, v5

    .line 83
    add-int/2addr v2, v3

    .line 84
    int-to-float v2, v2

    .line 85
    add-int/2addr v7, v8

    .line 86
    int-to-float v3, v7

    .line 87
    invoke-direct {v1, v4, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 88
    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    const/high16 v3, 0x42b40000    # 90.0f

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/windmill/sdk/widget/CircleWebView;->f:Landroid/graphics/Paint;

    .line 100
    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/windmill/sdk/widget/CircleWebView;->d:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/windmill/sdk/widget/CircleWebView;->e:I

    .line 12
    .line 13
    iget v1, p0, Lcom/windmill/sdk/widget/CircleWebView;->d:I

    .line 14
    .line 15
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->b:I

    .line 16
    .line 17
    add-int/2addr v1, v2

    .line 18
    iget v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->c:I

    .line 19
    .line 20
    add-int/2addr v0, v2

    .line 21
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 22
    .line 23
    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Landroid/graphics/Canvas;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 30
    .line 31
    .line 32
    invoke-super {p0, v1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v1}, Lcom/windmill/sdk/widget/CircleWebView;->a(Landroid/graphics/Canvas;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v1}, Lcom/windmill/sdk/widget/CircleWebView;->b(Landroid/graphics/Canvas;)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iget-object v2, p0, Lcom/windmill/sdk/widget/CircleWebView;->g:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public enablePlugins(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "enabled"
        }
    .end annotation

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/windmill/sdk/widget/CircleWebView;->b:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/windmill/sdk/widget/CircleWebView;->c:I

    .line 15
    .line 16
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/windmill/sdk/widget/CircleWebView;->a:F

    .line 2
    .line 3
    return-void
.end method
