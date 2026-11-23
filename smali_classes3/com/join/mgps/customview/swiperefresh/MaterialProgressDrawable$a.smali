.class Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

.field final synthetic c:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$ring"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->c:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "interpolatedTime",
            "t"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->c:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 2
    .line 3
    iget-boolean v0, p2, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->k:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    .line 8
    .line 9
    invoke-virtual {p2, p1, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->a(FLcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->c(Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;)F

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->l()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->n()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->m()F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v3, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->c:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    .line 40
    .line 41
    invoke-virtual {v3, p1, v4}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->n(FLcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;)V

    .line 42
    .line 43
    .line 44
    const v3, 0x3f4ccccd    # 0.8f

    .line 45
    .line 46
    .line 47
    const/high16 v4, 0x3f000000    # 0.5f

    .line 48
    .line 49
    cmpg-float v5, p1, v4

    .line 50
    .line 51
    if-gtz v5, :cond_1

    .line 52
    .line 53
    div-float v5, p1, v4

    .line 54
    .line 55
    sub-float v6, v3, p2

    .line 56
    .line 57
    sget-object v7, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->n:Landroid/view/animation/Interpolator;

    .line 58
    .line 59
    invoke-interface {v7, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    mul-float v6, v6, v5

    .line 64
    .line 65
    add-float/2addr v1, v6

    .line 66
    iget-object v5, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    .line 67
    .line 68
    invoke-virtual {v5, v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->F(F)V

    .line 69
    .line 70
    .line 71
    :cond_1
    cmpl-float v1, p1, v4

    .line 72
    .line 73
    if-lez v1, :cond_2

    .line 74
    .line 75
    sub-float/2addr v3, p2

    .line 76
    sub-float p2, p1, v4

    .line 77
    .line 78
    div-float/2addr p2, v4

    .line 79
    sget-object v1, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->n:Landroid/view/animation/Interpolator;

    .line 80
    .line 81
    invoke-interface {v1, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    mul-float v3, v3, p2

    .line 86
    .line 87
    add-float/2addr v0, v3

    .line 88
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    .line 89
    .line 90
    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->B(F)V

    .line 91
    .line 92
    .line 93
    :cond_2
    const/high16 p2, 0x3e800000    # 0.25f

    .line 94
    .line 95
    mul-float p2, p2, p1

    .line 96
    .line 97
    add-float/2addr v2, p2

    .line 98
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    .line 99
    .line 100
    invoke-virtual {p2, v2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->D(F)V

    .line 101
    .line 102
    .line 103
    const/high16 p2, 0x43580000    # 216.0f

    .line 104
    .line 105
    mul-float p1, p1, p2

    .line 106
    .line 107
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;->c:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 108
    .line 109
    iget v0, p2, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->h:F

    .line 110
    .line 111
    const/high16 v1, 0x40a00000    # 5.0f

    .line 112
    .line 113
    div-float/2addr v0, v1

    .line 114
    const/high16 v1, 0x44870000    # 1080.0f

    .line 115
    .line 116
    mul-float v0, v0, v1

    .line 117
    .line 118
    add-float/2addr p1, v0

    .line 119
    invoke-virtual {p2, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->i(F)V

    .line 120
    .line 121
    .line 122
    :goto_0
    return-void
.end method
