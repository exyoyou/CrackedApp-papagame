.class public Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;
.super Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/hmfloat/HMFloatingBallView$a;
    }
.end annotation


# instance fields
.field k:Lcom/join/mgps/customview/hmfloat/HMFloatingBallView$a;

.field l:Lcom/join/mgps/customview/hmfloat/HMBallView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private h(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dp"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float p1, p1, v0

    .line 12
    .line 13
    const/high16 v0, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p1, v0

    .line 16
    float-to-int p1, p1

    .line 17
    return p1
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->c()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->setEnableDraggable(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->setAutoDock(Z)V

    .line 9
    .line 10
    .line 11
    const/high16 v0, 0x42200000    # 40.0f

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;->h(F)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->setMWidth(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->setMHeight(I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/join/mgps/customview/hmfloat/HMBallView;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, v2}, Lcom/join/mgps/customview/hmfloat/HMBallView;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;->l:Lcom/join/mgps/customview/hmfloat/HMBallView;

    .line 33
    .line 34
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 35
    .line 36
    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public f(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->f(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public g(Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;->l:Lcom/join/mgps/customview/hmfloat/HMBallView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/hmfloat/HMBallView;->e(Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getOnHideListener()Lcom/join/mgps/customview/hmfloat/HMFloatingBallView$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;->k:Lcom/join/mgps/customview/hmfloat/HMFloatingBallView$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;->l:Lcom/join/mgps/customview/hmfloat/HMBallView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/hmfloat/HMBallView;->m()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->performClick()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public setOnHideListener(Lcom/join/mgps/customview/hmfloat/HMFloatingBallView$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onHideListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;->k:Lcom/join/mgps/customview/hmfloat/HMFloatingBallView$a;

    .line 2
    .line 3
    return-void
.end method
