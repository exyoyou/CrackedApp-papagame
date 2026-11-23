.class Lcom/join/mgps/ptr/header/a$g;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/ptr/header/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private b:Landroid/graphics/RadialGradient;

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:I

.field final synthetic f:Lcom/join/mgps/ptr/header/a;


# direct methods
.method public constructor <init>(Lcom/join/mgps/ptr/header/a;II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "shadowRadius",
            "circleDiameter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/header/a$g;->f:Lcom/join/mgps/ptr/header/a;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/ptr/header/a$g;->d:Landroid/graphics/Paint;

    .line 12
    .line 13
    iput p2, p0, Lcom/join/mgps/ptr/header/a$g;->c:I

    .line 14
    .line 15
    iput p3, p0, Lcom/join/mgps/ptr/header/a$g;->e:I

    .line 16
    .line 17
    new-instance p1, Landroid/graphics/RadialGradient;

    .line 18
    .line 19
    iget p2, p0, Lcom/join/mgps/ptr/header/a$g;->e:I

    .line 20
    .line 21
    div-int/lit8 p3, p2, 0x2

    .line 22
    .line 23
    int-to-float v1, p3

    .line 24
    div-int/lit8 p2, p2, 0x2

    .line 25
    .line 26
    int-to-float v2, p2

    .line 27
    iget p2, p0, Lcom/join/mgps/ptr/header/a$g;->c:I

    .line 28
    .line 29
    int-to-float v3, p2

    .line 30
    const/high16 p2, 0x3d000000    # 0.03125f

    .line 31
    .line 32
    const/4 p3, 0x0

    .line 33
    filled-new-array {p2, p3}, [I

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 39
    .line 40
    move-object v0, p1

    .line 41
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/join/mgps/ptr/header/a$g;->b:Landroid/graphics/RadialGradient;

    .line 45
    .line 46
    iget-object p2, p0, Lcom/join/mgps/ptr/header/a$g;->d:Landroid/graphics/Paint;

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4
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
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a$g;->f:Lcom/join/mgps/ptr/header/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/ptr/header/a$g;->f:Lcom/join/mgps/ptr/header/a;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    div-int/lit8 v0, v0, 0x2

    .line 22
    .line 23
    int-to-float v0, v0

    .line 24
    div-int/lit8 v1, v1, 0x2

    .line 25
    .line 26
    int-to-float v1, v1

    .line 27
    iget v2, p0, Lcom/join/mgps/ptr/header/a$g;->e:I

    .line 28
    .line 29
    div-int/lit8 v2, v2, 0x2

    .line 30
    .line 31
    iget v3, p0, Lcom/join/mgps/ptr/header/a$g;->c:I

    .line 32
    .line 33
    add-int/2addr v2, v3

    .line 34
    int-to-float v2, v2

    .line 35
    iget-object v3, p0, Lcom/join/mgps/ptr/header/a$g;->d:Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 38
    .line 39
    .line 40
    iget v2, p0, Lcom/join/mgps/ptr/header/a$g;->e:I

    .line 41
    .line 42
    div-int/lit8 v2, v2, 0x2

    .line 43
    .line 44
    int-to-float v2, v2

    .line 45
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
