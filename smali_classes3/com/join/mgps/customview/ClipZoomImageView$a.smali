.class Lcom/join/mgps/customview/ClipZoomImageView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ClipZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/ClipZoomImageView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ClipZoomImageView;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/ClipZoomImageView$a;->b:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView$a;->b:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/ClipZoomImageView;->a(Lcom/join/mgps/customview/ClipZoomImageView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v2, p0, Lcom/join/mgps/customview/ClipZoomImageView$a;->b:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/join/mgps/customview/ClipZoomImageView;->getScale()F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {}, Lcom/join/mgps/customview/ClipZoomImageView;->c()F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const-wide/16 v4, 0x10

    .line 30
    .line 31
    cmpg-float v2, v2, v3

    .line 32
    .line 33
    if-gez v2, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/join/mgps/customview/ClipZoomImageView$a;->b:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 36
    .line 37
    new-instance v3, Lcom/join/mgps/customview/ClipZoomImageView$b;

    .line 38
    .line 39
    invoke-static {}, Lcom/join/mgps/customview/ClipZoomImageView;->c()F

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    invoke-direct {v3, v2, v6, v0, p1}, Lcom/join/mgps/customview/ClipZoomImageView$b;-><init>(Lcom/join/mgps/customview/ClipZoomImageView;FFF)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/customview/ClipZoomImageView$a;->b:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 50
    .line 51
    invoke-static {p1, v1}, Lcom/join/mgps/customview/ClipZoomImageView;->b(Lcom/join/mgps/customview/ClipZoomImageView;Z)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/customview/ClipZoomImageView$a;->b:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 56
    .line 57
    new-instance v3, Lcom/join/mgps/customview/ClipZoomImageView$b;

    .line 58
    .line 59
    invoke-static {v2}, Lcom/join/mgps/customview/ClipZoomImageView;->d(Lcom/join/mgps/customview/ClipZoomImageView;)F

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    invoke-direct {v3, v2, v6, v0, p1}, Lcom/join/mgps/customview/ClipZoomImageView$b;-><init>(Lcom/join/mgps/customview/ClipZoomImageView;FFF)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/mgps/customview/ClipZoomImageView$a;->b:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 70
    .line 71
    invoke-static {p1, v1}, Lcom/join/mgps/customview/ClipZoomImageView;->b(Lcom/join/mgps/customview/ClipZoomImageView;Z)Z

    .line 72
    .line 73
    .line 74
    :goto_0
    return v1
.end method
