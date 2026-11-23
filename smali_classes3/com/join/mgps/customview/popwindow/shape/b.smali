.class public Lcom/join/mgps/customview/popwindow/shape/b;
.super Lcom/join/mgps/customview/popwindow/shape/a;
.source "SourceFile"


# instance fields
.field e:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lo6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/popwindow/shape/a;-><init>(Lo6/a;)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/popwindow/shape/b;->f()V

    return-void
.end method

.method public constructor <init>(Lo6/a;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "padding",
            "radius",
            "dropHeight"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/customview/popwindow/shape/a;-><init>(Lo6/a;III)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/popwindow/shape/b;->f()V

    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/popwindow/shape/a;->a:Lo6/a;

    .line 7
    .line 8
    invoke-interface {v1}, Lo6/a;->b()Landroid/graphics/Rect;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 16
    .line 17
    iget v2, p0, Lcom/join/mgps/customview/popwindow/shape/a;->b:I

    .line 18
    .line 19
    int-to-float v3, v2

    .line 20
    sub-float/2addr v1, v3

    .line 21
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 22
    .line 23
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 24
    .line 25
    int-to-float v3, v2

    .line 26
    sub-float/2addr v1, v3

    .line 27
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 28
    .line 29
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 30
    .line 31
    int-to-float v3, v2

    .line 32
    add-float/2addr v1, v3

    .line 33
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 34
    .line 35
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 36
    .line 37
    iget v3, p0, Lcom/join/mgps/customview/popwindow/shape/a;->d:I

    .line 38
    .line 39
    add-int/2addr v2, v3

    .line 40
    int-to-float v2, v2

    .line 41
    add-float/2addr v1, v2

    .line 42
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/customview/popwindow/shape/b;->e:Landroid/graphics/RectF;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "eraser",
            "padding",
            "radius"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/join/mgps/customview/popwindow/shape/b;->e:Landroid/graphics/RectF;

    .line 2
    .line 3
    int-to-float p4, p4

    .line 4
    invoke-virtual {p1, p3, p4, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/shape/b;->e:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    return v0
.end method

.method public c()Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/shape/a;->a:Lo6/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lo6/a;->a()Landroid/graphics/Point;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d(DD)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/popwindow/shape/b;->e:Landroid/graphics/RectF;

    .line 2
    .line 3
    double-to-float p1, p1

    .line 4
    double-to-float p2, p3

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/popwindow/shape/b;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
