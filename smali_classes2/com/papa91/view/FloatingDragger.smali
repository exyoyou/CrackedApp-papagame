.class public Lcom/papa91/view/FloatingDragger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/FloatingDragger$PositionObservable;,
        Lcom/papa91/view/FloatingDragger$FloatingDraggedView;
    }
.end annotation


# instance fields
.field floatingBtn:Landroid/view/View;

.field floatingDraggedView:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

.field floatingView:Landroid/view/View;

.field marginLR:I

.field marginTop:I

.field observable:Lcom/papa91/view/FloatingDragger$PositionObservable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/papa91/view/FloatingDragger$PositionObservable;->getInstance()Lcom/papa91/view/FloatingDragger$PositionObservable;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/papa91/view/FloatingDragger;->observable:Lcom/papa91/view/FloatingDragger$PositionObservable;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/papa91/view/FloatingDragger;->marginLR:I

    .line 12
    .line 13
    iput v0, p0, Lcom/papa91/view/FloatingDragger;->marginTop:I

    .line 14
    .line 15
    iput-object p3, p0, Lcom/papa91/view/FloatingDragger;->floatingView:Landroid/view/View;

    .line 16
    .line 17
    new-instance v0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;-><init>(Lcom/papa91/view/FloatingDragger;Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/papa91/view/FloatingDragger;->floatingDraggedView:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    if-eqz p3, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/papa91/view/FloatingDragger;->floatingDraggedView:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 38
    .line 39
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 40
    .line 41
    const/4 v0, -0x2

    .line 42
    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lcom/papa91/view/FloatingDragger;->observable:Lcom/papa91/view/FloatingDragger$PositionObservable;

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float p2, p2, p1

    .line 12
    .line 13
    const/high16 p1, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p2, p1

    .line 16
    float-to-int p1, p2

    .line 17
    return p1
.end method

.method public getFloatingView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger;->floatingView:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger;->floatingDraggedView:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 2
    .line 3
    return-object v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa91/view/FloatingDragger;->floatingDraggedView:Lcom/papa91/view/FloatingDragger$FloatingDraggedView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->restorePosition()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
