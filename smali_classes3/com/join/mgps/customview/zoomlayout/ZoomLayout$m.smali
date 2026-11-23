.class public Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/zoomlayout/ZoomLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "TapInfo[ absX:%.0f, absY:%.0f, relX:%.0f, relY:%.0f, percentX:%.2f, percentY:%.2f, contentClicked:%s ]"


# instance fields
.field a:Landroid/view/View;

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;FFFFFFZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "x",
            "y",
            "relativeX",
            "relativeY",
            "percentX",
            "percentY",
            "contentClicked"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->a:Landroid/view/View;

    .line 18
    iput p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->b:F

    .line 19
    iput p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->c:F

    .line 20
    iput p4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->d:F

    .line 21
    iput p5, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->e:F

    .line 22
    iput p6, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->f:F

    .line 23
    iput p7, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->g:F

    .line 24
    iput-boolean p8, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->h:Z

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 25
    iget-object v1, p1, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->a:Landroid/view/View;

    iget v2, p1, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->b:F

    iget v3, p1, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->c:F

    iget v4, p1, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->d:F

    iget v5, p1, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->e:F

    iget v6, p1, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->f:F

    iget v7, p1, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->g:F

    iget-boolean v8, p1, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->h:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;-><init>(Landroid/view/View;FFFFFFZ)V

    return-void
.end method

.method private constructor <init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zoomLayout",
            "e"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->a:Landroid/view/View;

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->b:F

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->c:F

    .line 7
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$2800(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)[F

    move-result-object p2

    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->b:F

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 8
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$2800(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)[F

    move-result-object p2

    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->c:F

    const/4 v2, 0x1

    aput v0, p2, v2

    .line 9
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$2800(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)[F

    move-result-object p2

    invoke-static {p1, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$2900(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;[F)[F

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 11
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$2800(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)[F

    move-result-object v0

    aget v0, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->d:F

    .line 12
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$2800(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)[F

    move-result-object v0

    aget v0, v0, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->e:F

    .line 13
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->d:F

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->f:F

    .line 14
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->e:F

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v0, p2

    iput v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->g:F

    .line 15
    iget-object p1, p1, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    iget p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->b:F

    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->c:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Landroid/view/MotionEvent;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->g:F

    .line 2
    .line 3
    return v0
.end method

.method public c()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->d:F

    .line 2
    .line 3
    return v0
.end method

.method public d()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->e:F

    .line 2
    .line 3
    return v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->a:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->b:F

    .line 2
    .line 3
    return v0
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    iget v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->b:F

    .line 7
    .line 8
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 14
    .line 15
    iget v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->c:F

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x1

    .line 22
    aput-object v2, v1, v3

    .line 23
    .line 24
    iget v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->d:F

    .line 25
    .line 26
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x2

    .line 31
    aput-object v2, v1, v3

    .line 32
    .line 33
    iget v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->e:F

    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x3

    .line 40
    aput-object v2, v1, v3

    .line 41
    .line 42
    iget v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->f:F

    .line 43
    .line 44
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x4

    .line 49
    aput-object v2, v1, v3

    .line 50
    .line 51
    iget v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->g:F

    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v3, 0x5

    .line 58
    aput-object v2, v1, v3

    .line 59
    .line 60
    iget-boolean v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;->h:Z

    .line 61
    .line 62
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/4 v3, 0x6

    .line 67
    aput-object v2, v1, v3

    .line 68
    .line 69
    const-string v2, "TapInfo[ absX:%.0f, absY:%.0f, relX:%.0f, relY:%.0f, percentX:%.2f, percentY:%.2f, contentClicked:%s ]"

    .line 70
    .line 71
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
