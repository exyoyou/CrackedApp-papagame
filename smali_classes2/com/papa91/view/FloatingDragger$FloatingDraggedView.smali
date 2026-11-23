.class public Lcom/papa91/view/FloatingDragger$FloatingDraggedView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/view/FloatingDragger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloatingDraggedView"
.end annotation


# static fields
.field public static final KEY_FLOATING_X:Ljava/lang/String; = "KEY_FLOATING_X"

.field public static final KEY_FLOATING_Y:Ljava/lang/String; = "KEY_FLOATING_Y"


# instance fields
.field dragHelper:Landroidx/customview/widget/ViewDragHelper;

.field editor:Landroid/content/SharedPreferences$Editor;

.field sp:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/papa91/view/FloatingDragger;


# direct methods
.method public constructor <init>(Lcom/papa91/view/FloatingDragger;Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "FloatingDraggedView"

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->sp:Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-virtual {p0}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/papa91/view/FloatingDragger;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 7
    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "FloatingDraggedView"

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->sp:Landroid/content/SharedPreferences;

    .line 9
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-virtual {p0}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/papa91/view/FloatingDragger;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 12
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "FloatingDraggedView"

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->sp:Landroid/content/SharedPreferences;

    .line 14
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-virtual {p0}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->init()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method init()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView$1;-><init>(Lcom/papa91/view/FloatingDragger$FloatingDraggedView;)V

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-static {p0, v1, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 13
    .line 14
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 5
    .line 6
    sget v1, Lcom/papa91/mix/R$id;->floating:I

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/view/View;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    .line 19
    .line 20
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->savePosition()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/papa91/view/FloatingDragger;->observable:Lcom/papa91/view/FloatingDragger$PositionObservable;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->restorePosition()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public restorePosition()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->sp:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "KEY_FLOATING_X"

    .line 4
    .line 5
    const/high16 v2, -0x40800000    # -1.0f

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v3, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->sp:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    const-string v4, "KEY_FLOATING_Y"

    .line 14
    .line 15
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    cmpl-float v5, v0, v2

    .line 20
    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    cmpl-float v2, v3, v2

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 28
    .line 29
    iget v2, v0, Lcom/papa91/view/FloatingDragger;->marginLR:I

    .line 30
    .line 31
    int-to-float v2, v2

    .line 32
    iget v0, v0, Lcom/papa91/view/FloatingDragger;->marginTop:I

    .line 33
    .line 34
    int-to-float v3, v0

    .line 35
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    .line 46
    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    .line 49
    .line 50
    move v0, v2

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 52
    .line 53
    iget v2, v1, Lcom/papa91/view/FloatingDragger;->marginLR:I

    .line 54
    .line 55
    int-to-float v4, v2

    .line 56
    cmpg-float v4, v0, v4

    .line 57
    .line 58
    if-gez v4, :cond_1

    .line 59
    .line 60
    int-to-float v0, v2

    .line 61
    :cond_1
    iget v2, v1, Lcom/papa91/view/FloatingDragger;->marginTop:I

    .line 62
    .line 63
    int-to-float v4, v2

    .line 64
    cmpg-float v4, v3, v4

    .line 65
    .line 66
    if-gez v4, :cond_2

    .line 67
    .line 68
    int-to-float v0, v2

    .line 69
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const/high16 v4, 0x41400000    # 12.0f

    .line 74
    .line 75
    invoke-virtual {v1, v2, v4}, Lcom/papa91/view/FloatingDragger;->dip2px(Landroid/content/Context;F)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    int-to-float v2, v2

    .line 84
    sub-float/2addr v2, v0

    .line 85
    iget-object v4, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 86
    .line 87
    iget-object v4, v4, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    .line 88
    .line 89
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    int-to-float v4, v4

    .line 94
    sub-float/2addr v2, v4

    .line 95
    iget-object v4, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 96
    .line 97
    iget v4, v4, Lcom/papa91/view/FloatingDragger;->marginLR:I

    .line 98
    .line 99
    int-to-float v4, v4

    .line 100
    cmpg-float v2, v2, v4

    .line 101
    .line 102
    if-gez v2, :cond_3

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iget-object v2, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 109
    .line 110
    iget v4, v2, Lcom/papa91/view/FloatingDragger;->marginLR:I

    .line 111
    .line 112
    sub-int/2addr v0, v4

    .line 113
    iget-object v2, v2, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    .line 114
    .line 115
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    sub-int/2addr v0, v2

    .line 120
    int-to-float v0, v0

    .line 121
    :cond_3
    float-to-int v0, v0

    .line 122
    float-to-int v2, v3

    .line 123
    iget-object v3, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 124
    .line 125
    iget-object v3, v3, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    .line 126
    .line 127
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    add-int/2addr v3, v0

    .line 132
    add-int/2addr v3, v1

    .line 133
    iget-object v4, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 134
    .line 135
    iget-object v4, v4, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    .line 136
    .line 137
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    add-int/2addr v4, v2

    .line 142
    add-int/2addr v4, v1

    .line 143
    iget-object v1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method savePosition()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->this$0:Lcom/papa91/view/FloatingDragger;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/papa91/view/FloatingDragger;->floatingBtn:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    const-string v3, "KEY_FLOATING_X"

    .line 20
    .line 21
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    const-string v2, "KEY_FLOATING_Y"

    .line 27
    .line 28
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/papa91/view/FloatingDragger$FloatingDraggedView;->editor:Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public showMenuDialog()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "showMenu"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
