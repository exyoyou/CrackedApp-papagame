.class public Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0008\u0010-\u001a\u00020.H\u0016J\u0008\u0010/\u001a\u00020.H\u0016J\u0012\u00100\u001a\u00020\r2\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u0016\u00103\u001a\u00020.2\u0006\u00104\u001a\u00020\u00162\u0006\u00105\u001a\u00020\u0016J\u0008\u00106\u001a\u00020\rH\u0016J\u0012\u0010=\u001a\u00020.2\u0008\u0010\u0002\u001a\u0004\u0018\u000108H\u0016J\u0008\u0010>\u001a\u00020.H\u0016J\u0012\u0010?\u001a\u00020.2\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0014J\u000c\u0010B\u001a\u00020\n*\u00020\nH\u0004R\u001a\u0010\u000c\u001a\u00020\rX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011R\u001a\u0010\u0015\u001a\u00020\u0016X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0016X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001aR\u000e\u0010\u001e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020\nX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001a\u0010*\u001a\u00020\nX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\'\"\u0004\u0008,\u0010)R\u001c\u00107\u001a\u0004\u0018\u000108X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<\u00a8\u0006C"
    }
    d2 = {
        "Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "enableDraggable",
        "",
        "getEnableDraggable",
        "()Z",
        "setEnableDraggable",
        "(Z)V",
        "autoDock",
        "getAutoDock",
        "setAutoDock",
        "mLastX",
        "",
        "getMLastX",
        "()F",
        "setMLastX",
        "(F)V",
        "mLastY",
        "getMLastY",
        "setMLastY",
        "isMoved",
        "mWindowManager",
        "Lcom/join/mgps/customview/hmfloat/HMFloatWindowManager;",
        "getMWindowManager",
        "()Lcom/join/mgps/customview/hmfloat/HMFloatWindowManager;",
        "setMWindowManager",
        "(Lcom/join/mgps/customview/hmfloat/HMFloatWindowManager;)V",
        "mWidth",
        "getMWidth",
        "()I",
        "setMWidth",
        "(I)V",
        "mHeight",
        "getMHeight",
        "setMHeight",
        "init",
        "",
        "initWindowManager",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "move",
        "dx",
        "dy",
        "performClick",
        "mWindowToken",
        "Landroid/app/Activity;",
        "getMWindowToken",
        "()Landroid/app/Activity;",
        "setMWindowToken",
        "(Landroid/app/Activity;)V",
        "show",
        "hide",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "dpToPx",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private b:Z

.field private c:Z

.field private d:F

.field private e:F

.field private f:Z

.field private g:Lcom/join/mgps/customview/hmfloat/j;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->c()V

    return-void
.end method


# virtual methods
.method protected final a(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 15
    .line 16
    mul-float p1, p1, v0

    .line 17
    .line 18
    float-to-int p1, p1

    .line 19
    return p1
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->g:Lcom/join/mgps/customview/hmfloat/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/hmfloat/j;->z()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->d:F

    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->a(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    iput v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->e:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->d()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->g:Lcom/join/mgps/customview/hmfloat/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/hmfloat/j;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "getContext(...)"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/join/mgps/customview/hmfloat/j;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->g:Lcom/join/mgps/customview/hmfloat/j;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/hmfloat/j;->E(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final e(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->g:Lcom/join/mgps/customview/hmfloat/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/customview/hmfloat/j;->v(FF)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public f(Landroid/app/Activity;)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->j:Landroid/app/Activity;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast v0, Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->g:Lcom/join/mgps/customview/hmfloat/j;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/customview/hmfloat/j;->z()V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->d()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->j:Landroid/app/Activity;

    .line 51
    .line 52
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->g:Lcom/join/mgps/customview/hmfloat/j;

    .line 53
    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->d()V

    .line 57
    .line 58
    .line 59
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->g:Lcom/join/mgps/customview/hmfloat/j;

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/join/mgps/customview/hmfloat/j;->h()[I

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_0

    .line 68
    :cond_5
    const/4 v0, 0x0

    .line 69
    :goto_0
    if-eqz v0, :cond_7

    .line 70
    .line 71
    array-length v1, v0

    .line 72
    const/4 v2, 0x0

    .line 73
    const/4 v3, 0x1

    .line 74
    if-nez v1, :cond_6

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    goto :goto_1

    .line 78
    :cond_6
    const/4 v1, 0x0

    .line 79
    :goto_1
    xor-int/2addr v1, v3

    .line 80
    if-eqz v1, :cond_7

    .line 81
    .line 82
    aget v1, v0, v2

    .line 83
    .line 84
    int-to-float v1, v1

    .line 85
    iput v1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->d:F

    .line 86
    .line 87
    aget v0, v0, v3

    .line 88
    .line 89
    int-to-float v0, v0

    .line 90
    iput v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->e:F

    .line 91
    .line 92
    :cond_7
    iget-object v1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->g:Lcom/join/mgps/customview/hmfloat/j;

    .line 93
    .line 94
    if-eqz v1, :cond_8

    .line 95
    .line 96
    iget v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->d:F

    .line 97
    .line 98
    float-to-int v4, v0

    .line 99
    iget v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->e:F

    .line 100
    .line 101
    float-to-int v5, v0

    .line 102
    iget v6, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->h:I

    .line 103
    .line 104
    iget v7, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->i:I

    .line 105
    .line 106
    move-object v2, p1

    .line 107
    move-object v3, p0

    .line 108
    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/customview/hmfloat/j;->M(Landroid/content/Context;Landroid/view/View;IIII)V

    .line 109
    .line 110
    .line 111
    :cond_8
    return-void
.end method

.method protected final getAutoDock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final getEnableDraggable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final getMHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->i:I

    .line 2
    .line 3
    return v0
.end method

.method protected final getMLastX()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->d:F

    .line 2
    .line 3
    return v0
.end method

.method protected final getMLastY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->e:F

    .line 2
    .line 3
    return v0
.end method

.method protected final getMWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->h:I

    .line 2
    .line 3
    return v0
.end method

.method protected final getMWindowManager()Lcom/join/mgps/customview/hmfloat/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->g:Lcom/join/mgps/customview/hmfloat/j;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getMWindowToken()Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->j:Landroid/app/Activity;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->g:Lcom/join/mgps/customview/hmfloat/j;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/hmfloat/j;->u(Landroid/content/res/Configuration;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->d:F

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->e:F

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->f:Z

    .line 46
    .line 47
    return v2

    .line 48
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/4 v4, 0x2

    .line 56
    if-ne v3, v4, :cond_6

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget v1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->d:F

    .line 63
    .line 64
    sub-float/2addr v0, v1

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iget v3, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->e:F

    .line 70
    .line 71
    sub-float/2addr v1, v3

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iput v3, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->d:F

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->e:F

    .line 83
    .line 84
    mul-float p1, v0, v0

    .line 85
    .line 86
    mul-float v3, v1, v1

    .line 87
    .line 88
    add-float/2addr p1, v3

    .line 89
    float-to-double v3, p1

    .line 90
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 91
    .line 92
    .line 93
    move-result-wide v3

    .line 94
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    .line 95
    .line 96
    cmpl-double p1, v3, v5

    .line 97
    .line 98
    if-lez p1, :cond_5

    .line 99
    .line 100
    iput-boolean v2, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->f:Z

    .line 101
    .line 102
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->e(FF)V

    .line 103
    .line 104
    .line 105
    return v2

    .line 106
    :cond_6
    :goto_2
    if-nez v0, :cond_7

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-ne v0, v2, :cond_9

    .line 114
    .line 115
    iget-boolean v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->f:Z

    .line 116
    .line 117
    if-nez v0, :cond_8

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->performClick()Z

    .line 120
    .line 121
    .line 122
    :cond_8
    iput-boolean v1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->f:Z

    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->g:Lcom/join/mgps/customview/hmfloat/j;

    .line 125
    .line 126
    if-eqz v0, :cond_9

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/join/mgps/customview/hmfloat/j;->w()V

    .line 129
    .line 130
    .line 131
    :cond_9
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method protected final setAutoDock(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method protected final setEnableDraggable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method protected final setMHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->i:I

    .line 2
    .line 3
    return-void
.end method

.method protected final setMLastX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->d:F

    .line 2
    .line 3
    return-void
.end method

.method protected final setMLastY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->e:F

    .line 2
    .line 3
    return-void
.end method

.method protected final setMWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->h:I

    .line 2
    .line 3
    return-void
.end method

.method protected final setMWindowManager(Lcom/join/mgps/customview/hmfloat/j;)V
    .locals 0
    .param p1    # Lcom/join/mgps/customview/hmfloat/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->g:Lcom/join/mgps/customview/hmfloat/j;

    .line 2
    .line 3
    return-void
.end method

.method protected final setMWindowToken(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/HMFloatingBaseView;->j:Landroid/app/Activity;

    .line 2
    .line 3
    return-void
.end method
