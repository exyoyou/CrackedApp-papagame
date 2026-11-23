.class Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/zoomlayout/ZoomLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "l"
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field final synthetic f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->b:I

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->c:I

    .line 4
    .line 5
    iget v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->d:I

    .line 6
    .line 7
    iget v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->e:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 10
    .line 11
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    iput v4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->b:I

    .line 16
    .line 17
    iget-object v4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iput v4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->c:I

    .line 24
    .line 25
    iget-object v4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    iput v4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->d:I

    .line 32
    .line 33
    iget-object v4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 34
    .line 35
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    iput v4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->e:I

    .line 40
    .line 41
    iget v5, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->b:I

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    if-ne v0, v5, :cond_1

    .line 45
    .line 46
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->c:I

    .line 47
    .line 48
    if-ne v1, v0, :cond_1

    .line 49
    .line 50
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->d:I

    .line 51
    .line 52
    if-ne v2, v0, :cond_1

    .line 53
    .line 54
    if-eq v3, v4, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 60
    :goto_1
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$2200(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$2300(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Landroid/graphics/PointF;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;->f:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 74
    .line 75
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 76
    .line 77
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 78
    .line 79
    invoke-static {v1, v2, v0, v6}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$2400(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;FFZ)Z

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void
.end method
