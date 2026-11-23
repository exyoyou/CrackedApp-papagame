.class Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/swiperefresh/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private b:Landroid/graphics/RadialGradient;

.field private c:Landroid/graphics/Paint;

.field final synthetic d:Lcom/join/mgps/customview/swiperefresh/CircleImageView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/swiperefresh/CircleImageView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "shadowRadius"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->d:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->c:Landroid/graphics/Paint;

    .line 12
    .line 13
    iput p2, p1, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->t:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RectShape;->rect()Landroid/graphics/RectF;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    float-to-int p1, p1

    .line 24
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->a(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private a(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diameter"
        }
    .end annotation

    .line 1
    new-instance v7, Landroid/graphics/RadialGradient;

    .line 2
    .line 3
    div-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    int-to-float v2, p1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->d:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 7
    .line 8
    iget p1, p1, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->t:I

    .line 9
    .line 10
    int-to-float v3, p1

    .line 11
    const/high16 p1, 0x3d000000    # 0.03125f

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    filled-new-array {p1, v0}, [I

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const/4 v5, 0x0

    .line 19
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 20
    .line 21
    move-object v0, v7

    .line 22
    move v1, v2

    .line 23
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 24
    .line 25
    .line 26
    iput-object v7, p0, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->b:Landroid/graphics/RadialGradient;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->c:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->d:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->d:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onResize(FF)V
    .locals 0
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
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/OvalShape;->onResize(FF)V

    .line 2
    .line 3
    .line 4
    float-to-int p1, p1

    .line 5
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/CircleImageView$a;->a(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
