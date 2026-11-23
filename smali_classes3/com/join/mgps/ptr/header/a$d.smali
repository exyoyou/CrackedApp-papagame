.class Lcom/join/mgps/ptr/header/a$d;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ptr/header/a;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/ptr/header/a$h;

.field final synthetic c:Lcom/join/mgps/ptr/header/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/ptr/header/a;Lcom/join/mgps/ptr/header/a$h;)V
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
    iput-object p1, p0, Lcom/join/mgps/ptr/header/a$d;->c:Lcom/join/mgps/ptr/header/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/ptr/header/a$d;->b:Lcom/join/mgps/ptr/header/a$h;

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
    .locals 6
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
    iget-object p2, p0, Lcom/join/mgps/ptr/header/a$d;->b:Lcom/join/mgps/ptr/header/a$h;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/ptr/header/a$h;->l()F

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    float-to-double v0, p2

    .line 8
    iget-object p2, p0, Lcom/join/mgps/ptr/header/a$d;->b:Lcom/join/mgps/ptr/header/a$h;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/ptr/header/a$h;->d()D

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    mul-double v2, v2, v4

    .line 20
    .line 21
    div-double/2addr v0, v2

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    double-to-float p2, v0

    .line 27
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a$d;->b:Lcom/join/mgps/ptr/header/a$h;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/ptr/header/a$h;->i()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lcom/join/mgps/ptr/header/a$d;->b:Lcom/join/mgps/ptr/header/a$h;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/join/mgps/ptr/header/a$h;->k()F

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object v2, p0, Lcom/join/mgps/ptr/header/a$d;->b:Lcom/join/mgps/ptr/header/a$h;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/join/mgps/ptr/header/a$h;->j()F

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const v3, 0x3f4ccccd    # 0.8f

    .line 46
    .line 47
    .line 48
    sub-float p2, v3, p2

    .line 49
    .line 50
    invoke-static {}, Lcom/join/mgps/ptr/header/a;->c()Landroid/view/animation/Interpolator;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-interface {v4, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    mul-float p2, p2, v4

    .line 59
    .line 60
    add-float/2addr v0, p2

    .line 61
    iget-object p2, p0, Lcom/join/mgps/ptr/header/a$d;->b:Lcom/join/mgps/ptr/header/a$h;

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Lcom/join/mgps/ptr/header/a$h;->x(F)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/join/mgps/ptr/header/a;->d()Landroid/view/animation/Interpolator;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    mul-float p2, p2, v3

    .line 75
    .line 76
    add-float/2addr v1, p2

    .line 77
    iget-object p2, p0, Lcom/join/mgps/ptr/header/a$d;->b:Lcom/join/mgps/ptr/header/a$h;

    .line 78
    .line 79
    invoke-virtual {p2, v1}, Lcom/join/mgps/ptr/header/a$h;->B(F)V

    .line 80
    .line 81
    .line 82
    const/high16 p2, 0x3e800000    # 0.25f

    .line 83
    .line 84
    mul-float p2, p2, p1

    .line 85
    .line 86
    add-float/2addr v2, p2

    .line 87
    iget-object p2, p0, Lcom/join/mgps/ptr/header/a$d;->b:Lcom/join/mgps/ptr/header/a$h;

    .line 88
    .line 89
    invoke-virtual {p2, v2}, Lcom/join/mgps/ptr/header/a$h;->z(F)V

    .line 90
    .line 91
    .line 92
    const/high16 p2, 0x43100000    # 144.0f

    .line 93
    .line 94
    mul-float p1, p1, p2

    .line 95
    .line 96
    iget-object p2, p0, Lcom/join/mgps/ptr/header/a$d;->c:Lcom/join/mgps/ptr/header/a;

    .line 97
    .line 98
    invoke-static {p2}, Lcom/join/mgps/ptr/header/a;->e(Lcom/join/mgps/ptr/header/a;)F

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    const/high16 v0, 0x40a00000    # 5.0f

    .line 103
    .line 104
    div-float/2addr p2, v0

    .line 105
    const/high16 v0, 0x44340000    # 720.0f

    .line 106
    .line 107
    mul-float p2, p2, v0

    .line 108
    .line 109
    add-float/2addr p1, p2

    .line 110
    iget-object p2, p0, Lcom/join/mgps/ptr/header/a$d;->c:Lcom/join/mgps/ptr/header/a;

    .line 111
    .line 112
    invoke-virtual {p2, p1}, Lcom/join/mgps/ptr/header/a;->l(F)V

    .line 113
    .line 114
    .line 115
    return-void
.end method
