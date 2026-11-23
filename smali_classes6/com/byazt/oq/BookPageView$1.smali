.class public Lcom/byazt/oq/BookPageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10d,
        0x390
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oq/BookPageView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/oq/BookPageView;


# direct methods
.method public constructor <init>(Lcom/byazt/oq/BookPageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oq/BookPageView$1;->c:Lcom/byazt/oq/BookPageView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/byazt/oq/BookPageView$1;->c:Lcom/byazt/oq/BookPageView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/oq/BookPageView;->ve:Landroid/graphics/Point;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0xa

    .line 10
    .line 11
    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/oq/BookPageView$1;->c:Lcom/byazt/oq/BookPageView;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/byazt/oq/BookPageView;->ve:Landroid/graphics/Point;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0xa

    .line 22
    .line 23
    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    iget-object v1, p0, Lcom/byazt/oq/BookPageView$1;->c:Lcom/byazt/oq/BookPageView;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    int-to-float v5, v1

    .line 36
    iget-object v1, p0, Lcom/byazt/oq/BookPageView$1;->c:Lcom/byazt/oq/BookPageView;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    int-to-float v6, v1

    .line 43
    const v7, -0x777778

    .line 44
    .line 45
    .line 46
    const v8, -0xbbbbbc

    .line 47
    .line 48
    .line 49
    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 50
    .line 51
    move-object v2, v0

    .line 52
    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/byazt/oq/BookPageView$1;->c:Lcom/byazt/oq/BookPageView;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/byazt/oq/BookPageView;->tt:Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/byazt/oq/BookPageView$1;->c:Lcom/byazt/oq/BookPageView;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/byazt/oq/BookPageView;->tt:Landroid/graphics/Paint;

    .line 65
    .line 66
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/byazt/oq/BookPageView$1;->c:Lcom/byazt/oq/BookPageView;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/byazt/oq/BookPageView;->tt:Landroid/graphics/Paint;

    .line 74
    .line 75
    const/high16 v1, 0x40c00000    # 6.0f

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/byazt/oq/BookPageView$1;->c:Lcom/byazt/oq/BookPageView;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/byazt/oq/BookPageView;->tt:Landroid/graphics/Paint;

    .line 83
    .line 84
    const/high16 v1, 0x40a00000    # 5.0f

    .line 85
    .line 86
    const/4 v2, -0x1

    .line 87
    const/high16 v3, 0x41200000    # 10.0f

    .line 88
    .line 89
    invoke-virtual {v0, v3, v1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
