.class Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/zoomlayout/ZoomLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private b:F

.field private c:Z

.field final synthetic d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->c:Z

    .line 8
    .line 9
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->c:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method b(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->c:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$700(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->c()V

    .line 14
    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->c:Z

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1400(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1400(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-boolean v2, v2, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->c:Z

    .line 36
    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 40
    .line 41
    new-instance v3, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 42
    .line 43
    invoke-direct {v3, v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1402(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1400(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->g()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/4 v0, 0x0

    .line 65
    :cond_3
    :goto_1
    move p1, v0

    .line 66
    :cond_4
    return p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$400(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Landroid/view/MotionEvent;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getScale()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->b:F

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1200(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1300(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getScale()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$900(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)F

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1000(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {p2, p1, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->clamp(FFF)F

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    float-to-double v0, p2

    .line 24
    float-to-double p1, p1

    .line 25
    invoke-static {v0, v1, p1, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->isEqual(DD)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 32
    .line 33
    new-instance p2, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p2, p1, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1102(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1100(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    float-to-int p2, p3

    .line 52
    float-to-int p3, p4

    .line 53
    invoke-virtual {p1, p2, p3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->c(II)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1100(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    return p1

    .line 67
    :cond_0
    const/4 p1, 0x0

    .line 68
    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$500(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Landroid/view/ScaleGestureDetector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$600(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Landroid/view/MotionEvent;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getScale()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    mul-float v0, v0, v1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1700(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1800(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)F

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-static {p1, v0, v1, v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1900(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;FFF)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1500(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;->a(F)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 57
    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1500(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getScale()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;->b(F)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {v0, v1, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1600(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;FF)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 2
    .line 3
    new-instance v0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1402(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1400(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->g()Z

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1500(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getScale()F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;->c(F)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "distanceX",
            "distanceY"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_4

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$500(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Landroid/view/ScaleGestureDetector;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_4

    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->c:Z

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$700(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->b()V

    .line 32
    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->c:Z

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 37
    .line 38
    invoke-static {p1, p3, p4, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$800(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;FFZ)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 45
    .line 46
    invoke-static {p3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$700(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {p3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->a()V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 54
    .line 55
    iget-boolean p4, p3, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowParentInterceptOnEdge:Z

    .line 56
    .line 57
    if-eqz p4, :cond_3

    .line 58
    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->isScaled()Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-eqz p3, :cond_2

    .line 66
    .line 67
    iget-object p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 68
    .line 69
    iget-boolean p3, p3, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowParentInterceptOnScaled:Z

    .line 70
    .line 71
    if-eqz p3, :cond_3

    .line 72
    .line 73
    :cond_2
    iget-object p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 74
    .line 75
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 76
    .line 77
    .line 78
    :cond_3
    move p2, p1

    .line 79
    :cond_4
    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->d:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$300(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Landroid/view/MotionEvent;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
