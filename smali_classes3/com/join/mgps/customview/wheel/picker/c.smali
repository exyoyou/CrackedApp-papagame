.class public abstract Lcom/join/mgps/customview/wheel/picker/c;
.super Lcom/join/mgps/customview/popup/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/customview/popup/b<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field protected J:F

.field protected K:I

.field protected L:I

.field protected M:Landroid/graphics/Typeface;

.field protected N:I

.field protected O:I

.field protected P:I

.field protected Q:I

.field protected R:Z

.field protected S:Z

.field protected T:Z

.field protected U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/popup/b;-><init>(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    const/high16 p1, 0x40000000    # 2.0f

    .line 5
    .line 6
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->J:F

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->K:I

    .line 10
    .line 11
    const/16 p1, 0x10

    .line 12
    .line 13
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->L:I

    .line 14
    .line 15
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->M:Landroid/graphics/Typeface;

    .line 18
    .line 19
    const p1, -0x444445

    .line 20
    .line 21
    .line 22
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->N:I

    .line 23
    .line 24
    const p1, -0xfd7732

    .line 25
    .line 26
    .line 27
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->O:I

    .line 28
    .line 29
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->P:I

    .line 30
    .line 31
    const/4 p1, 0x3

    .line 32
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->Q:I

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->R:Z

    .line 36
    .line 37
    iput-boolean p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->S:Z

    .line 38
    .line 39
    iput-boolean p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->T:Z

    .line 40
    .line 41
    new-instance p1, Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 42
    .line 43
    invoke-direct {p1}, Lcom/join/mgps/customview/wheel/picker/WheelView$c;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public A0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shadowVisible"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView$c;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/wheel/picker/WheelView$c;->f(Z)Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public B0(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->O:I

    .line 2
    .line 3
    return-void
.end method

.method public C0(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textColorFocus",
            "textColorNormal"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->O:I

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/wheel/picker/c;->N:I

    .line 4
    .line 5
    return-void
.end method

.method public D0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textPadding"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->K:I

    .line 2
    .line 3
    return-void
.end method

.method public E0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textSize"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->L:I

    .line 2
    .line 3
    return-void
.end method

.method public F0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textSizeAutoFit"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->T:Z

    .line 2
    .line 3
    return-void
.end method

.method public G0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useWeight"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->S:Z

    .line 2
    .line 3
    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/popup/b;->H:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/popup/b;->G()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/customview/popup/b;->H:Landroid/view/View;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/popup/b;->H:Landroid/view/View;

    .line 12
    .line 13
    return-object v0
.end method

.method protected k0()Landroid/widget/TextView;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/popup/a;->b:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    const/4 v2, -0x2

    .line 11
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/c;->P:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/c;->L:I

    .line 23
    .line 24
    int-to-float v1, v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method protected l0()Lcom/join/mgps/customview/wheel/picker/WheelView;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/customview/wheel/picker/WheelView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/popup/a;->b:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/c;->J:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setLineSpaceMultiplier(F)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/c;->K:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setTextPadding(I)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/c;->L:I

    .line 19
    .line 20
    int-to-float v1, v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setTextSize(F)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/c;->M:Landroid/graphics/Typeface;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/c;->N:I

    .line 30
    .line 31
    iget v2, p0, Lcom/join/mgps/customview/wheel/picker/c;->O:I

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setTextColor(II)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setDividerConfig(Lcom/join/mgps/customview/wheel/picker/WheelView$c;)V

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/join/mgps/customview/wheel/picker/c;->Q:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setOffset(I)V

    .line 44
    .line 45
    .line 46
    iget-boolean v1, p0, Lcom/join/mgps/customview/wheel/picker/c;->R:Z

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setCycleDisable(Z)V

    .line 49
    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/join/mgps/customview/wheel/picker/c;->S:Z

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setUseWeight(Z)V

    .line 54
    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/join/mgps/customview/wheel/picker/c;->T:Z

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView;->setTextSizeAutoFit(Z)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method public m0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cycleDisable"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->R:Z

    .line 2
    .line 3
    return-void
.end method

.method public n0(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineColor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView$c;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/wheel/picker/WheelView$c;->h(Z)Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/wheel/picker/WheelView$c;->b(I)Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public o0(Lcom/join/mgps/customview/wheel/picker/WheelView$c;)V
    .locals 1
    .param p1    # Lcom/join/mgps/customview/wheel/picker/WheelView$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 4
    .line 5
    invoke-direct {p1}, Lcom/join/mgps/customview/wheel/picker/WheelView$c;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/wheel/picker/WheelView$c;->h(Z)Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/wheel/picker/WheelView$c;->f(Z)Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public p0(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratio"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView$c;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/wheel/picker/WheelView$c;->c(F)Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public q0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView$c;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/wheel/picker/WheelView$c;->h(Z)Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public r0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "labelTextColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->P:I

    .line 2
    .line 3
    return-void
.end method

.method public s0(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/wheel/picker/c;->n0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public t0(Lcom/join/mgps/customview/wheel/picker/WheelView$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/wheel/picker/c;->o0(Lcom/join/mgps/customview/wheel/picker/WheelView$c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final u0(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 2.0
            to = 4.0
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "multiplier"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->J:F

    .line 2
    .line 3
    return-void
.end method

.method public v0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/wheel/picker/c;->q0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public w0(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x5L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->Q:I

    .line 2
    .line 3
    return-void
.end method

.method public x0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textPadding"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->K:I

    .line 2
    .line 3
    return-void
.end method

.method public y0(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/wheel/picker/c;->z0(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public z0(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0xffL
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "alpha"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/mgps/customview/wheel/picker/WheelView$c;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/wheel/picker/WheelView$c;->e(I)Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/wheel/picker/c;->U:Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/wheel/picker/WheelView$c;->d(I)Lcom/join/mgps/customview/wheel/picker/WheelView$c;

    .line 20
    .line 21
    .line 22
    return-void
.end method
