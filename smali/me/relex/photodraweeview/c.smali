.class public Lme/relex/photodraweeview/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field private b:Lme/relex/photodraweeview/a;


# direct methods
.method public constructor <init>(Lme/relex/photodraweeview/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lme/relex/photodraweeview/c;->a(Lme/relex/photodraweeview/a;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a(Lme/relex/photodraweeview/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/relex/photodraweeview/c;->b:Lme/relex/photodraweeview/a;

    .line 2
    .line 3
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/c;->b:Lme/relex/photodraweeview/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 v1, 0x1

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->getScale()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object v3, p0, Lme/relex/photodraweeview/c;->b:Lme/relex/photodraweeview/a;

    .line 21
    .line 22
    invoke-virtual {v3}, Lme/relex/photodraweeview/a;->getMediumScale()F

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    cmpg-float v3, v0, v3

    .line 27
    .line 28
    if-gez v3, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lme/relex/photodraweeview/c;->b:Lme/relex/photodraweeview/a;

    .line 31
    .line 32
    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->getMediumScale()F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v0, v3, v2, p1, v1}, Lme/relex/photodraweeview/a;->setScale(FFFZ)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v3, p0, Lme/relex/photodraweeview/c;->b:Lme/relex/photodraweeview/a;

    .line 41
    .line 42
    invoke-virtual {v3}, Lme/relex/photodraweeview/a;->getMediumScale()F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    cmpl-float v3, v0, v3

    .line 47
    .line 48
    if-ltz v3, :cond_2

    .line 49
    .line 50
    iget-object v3, p0, Lme/relex/photodraweeview/c;->b:Lme/relex/photodraweeview/a;

    .line 51
    .line 52
    invoke-virtual {v3}, Lme/relex/photodraweeview/a;->getMaximumScale()F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    cmpg-float v0, v0, v3

    .line 57
    .line 58
    if-gez v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lme/relex/photodraweeview/c;->b:Lme/relex/photodraweeview/a;

    .line 61
    .line 62
    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->getMaximumScale()F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {v0, v3, v2, p1, v1}, Lme/relex/photodraweeview/a;->setScale(FFFZ)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lme/relex/photodraweeview/c;->b:Lme/relex/photodraweeview/a;

    .line 71
    .line 72
    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->getMinimumScale()F

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-virtual {v0, v3, v2, p1, v1}, Lme/relex/photodraweeview/a;->setScale(FFFZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    :catch_0
    :goto_0
    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/c;->b:Lme/relex/photodraweeview/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-object v2, p0, Lme/relex/photodraweeview/c;->b:Lme/relex/photodraweeview/a;

    .line 15
    .line 16
    invoke-virtual {v2}, Lme/relex/photodraweeview/a;->getOnPhotoTapListener()Lme/relex/photodraweeview/e;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget-object v2, p0, Lme/relex/photodraweeview/c;->b:Lme/relex/photodraweeview/a;

    .line 24
    .line 25
    invoke-virtual {v2}, Lme/relex/photodraweeview/a;->o()Landroid/graphics/RectF;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    iget p1, v2, Landroid/graphics/RectF;->left:F

    .line 46
    .line 47
    sub-float/2addr v4, p1

    .line 48
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    div-float/2addr v4, p1

    .line 53
    iget p1, v2, Landroid/graphics/RectF;->top:F

    .line 54
    .line 55
    sub-float/2addr v5, p1

    .line 56
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    div-float/2addr v5, p1

    .line 61
    iget-object p1, p0, Lme/relex/photodraweeview/c;->b:Lme/relex/photodraweeview/a;

    .line 62
    .line 63
    invoke-virtual {p1}, Lme/relex/photodraweeview/a;->getOnPhotoTapListener()Lme/relex/photodraweeview/e;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1, v0, v4, v5}, Lme/relex/photodraweeview/e;->a(Landroid/view/View;FF)V

    .line 68
    .line 69
    .line 70
    return v3

    .line 71
    :cond_2
    iget-object v2, p0, Lme/relex/photodraweeview/c;->b:Lme/relex/photodraweeview/a;

    .line 72
    .line 73
    invoke-virtual {v2}, Lme/relex/photodraweeview/a;->getOnViewTapListener()Lme/relex/photodraweeview/h;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    iget-object v1, p0, Lme/relex/photodraweeview/c;->b:Lme/relex/photodraweeview/a;

    .line 80
    .line 81
    invoke-virtual {v1}, Lme/relex/photodraweeview/a;->getOnViewTapListener()Lme/relex/photodraweeview/h;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-interface {v1, v0, v2, p1}, Lme/relex/photodraweeview/h;->a(Landroid/view/View;FF)V

    .line 94
    .line 95
    .line 96
    return v3

    .line 97
    :cond_3
    return v1
.end method
