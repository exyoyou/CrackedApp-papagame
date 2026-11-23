.class Lcom/join/mgps/customview/ClipZoomImageView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ClipZoomImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# static fields
.field static final g:F = 1.07f

.field static final h:F = 0.93f


# instance fields
.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field final synthetic f:Lcom/join/mgps/customview/ClipZoomImageView;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/ClipZoomImageView;FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "targetScale",
            "x",
            "y"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->f:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->b:F

    .line 7
    .line 8
    iput p3, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->d:F

    .line 9
    .line 10
    iput p4, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->e:F

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/customview/ClipZoomImageView;->getScale()F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget p2, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->b:F

    .line 17
    .line 18
    cmpg-float p1, p1, p2

    .line 19
    .line 20
    if-gez p1, :cond_0

    .line 21
    .line 22
    const p1, 0x3f88f5c3    # 1.07f

    .line 23
    .line 24
    .line 25
    iput p1, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->c:F

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const p1, 0x3f6e147b    # 0.93f

    .line 29
    .line 30
    .line 31
    iput p1, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->c:F

    .line 32
    .line 33
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->f:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/ClipZoomImageView;->e(Lcom/join/mgps/customview/ClipZoomImageView;)Landroid/graphics/Matrix;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->c:F

    .line 8
    .line 9
    iget v2, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->d:F

    .line 10
    .line 11
    iget v3, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->e:F

    .line 12
    .line 13
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->f:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/customview/ClipZoomImageView;->f(Lcom/join/mgps/customview/ClipZoomImageView;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->f:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/mgps/customview/ClipZoomImageView;->e(Lcom/join/mgps/customview/ClipZoomImageView;)Landroid/graphics/Matrix;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->f:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/customview/ClipZoomImageView;->getScale()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget v1, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->c:F

    .line 37
    .line 38
    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    .line 40
    cmpl-float v3, v1, v2

    .line 41
    .line 42
    if-lez v3, :cond_0

    .line 43
    .line 44
    iget v3, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->b:F

    .line 45
    .line 46
    cmpg-float v3, v0, v3

    .line 47
    .line 48
    if-ltz v3, :cond_1

    .line 49
    .line 50
    :cond_0
    cmpg-float v1, v1, v2

    .line 51
    .line 52
    if-gez v1, :cond_2

    .line 53
    .line 54
    iget v1, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->b:F

    .line 55
    .line 56
    cmpg-float v1, v1, v0

    .line 57
    .line 58
    if-gez v1, :cond_2

    .line 59
    .line 60
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->f:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 61
    .line 62
    const-wide/16 v1, 0x10

    .line 63
    .line 64
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget v1, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->b:F

    .line 69
    .line 70
    div-float/2addr v1, v0

    .line 71
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->f:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/join/mgps/customview/ClipZoomImageView;->e(Lcom/join/mgps/customview/ClipZoomImageView;)Landroid/graphics/Matrix;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget v2, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->d:F

    .line 78
    .line 79
    iget v3, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->e:F

    .line 80
    .line 81
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->f:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/join/mgps/customview/ClipZoomImageView;->f(Lcom/join/mgps/customview/ClipZoomImageView;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->f:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/join/mgps/customview/ClipZoomImageView;->e(Lcom/join/mgps/customview/ClipZoomImageView;)Landroid/graphics/Matrix;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView$b;->f:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    invoke-static {v0, v1}, Lcom/join/mgps/customview/ClipZoomImageView;->b(Lcom/join/mgps/customview/ClipZoomImageView;Z)Z

    .line 102
    .line 103
    .line 104
    :goto_0
    return-void
.end method
