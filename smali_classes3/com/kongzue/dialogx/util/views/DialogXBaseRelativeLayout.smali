.class public Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$d;,
        Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;
    }
.end annotation


# static fields
.field public static s:Z


# instance fields
.field private b:Lcom/kongzue/dialogx/interfaces/z;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kongzue/dialogx/interfaces/BaseDialog;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;

.field private h:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$d;

.field private i:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

.field private j:Z

.field k:Z

.field l:F

.field m:F

.field private n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Landroid/graphics/Rect;

.field p:Z

.field q:F

.field r:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->d:Z

    .line 3
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->e:Z

    .line 4
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->f:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->j:Z

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o:Landroid/graphics/Rect;

    .line 7
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->p:Z

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 8
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->r:[I

    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->c(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->d:Z

    .line 12
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->e:Z

    .line 13
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->f:Z

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->j:Z

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o:Landroid/graphics/Rect;

    .line 16
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->p:Z

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 17
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->r:[I

    .line 18
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->c(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->d:Z

    .line 21
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->e:Z

    .line 22
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->f:Z

    const/4 p3, 0x0

    .line 23
    iput-boolean p3, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->j:Z

    .line 24
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o:Landroid/graphics/Rect;

    .line 25
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->p:Z

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 26
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->r:[I

    .line 27
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->c(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;)Lcom/kongzue/dialogx/interfaces/z;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->b:Lcom/kongzue/dialogx/interfaces/z;

    .line 2
    .line 3
    return-object p0
.end method

.method private c(Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {p0, v2}, Lcom/kongzue/dialogx/util/views/a;->a(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-boolean v1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->j:Z

    .line 12
    .line 13
    if-nez v1, :cond_5

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    sget-object v4, Lcom/kongzue/dialogx/R$styleable;->DialogXBaseRelativeLayout:[I

    .line 23
    .line 24
    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget v3, Lcom/kongzue/dialogx/R$styleable;->DialogXBaseRelativeLayout_baseFocusable:I

    .line 29
    .line 30
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iput-boolean v3, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->e:Z

    .line 35
    .line 36
    sget v3, Lcom/kongzue/dialogx/R$styleable;->DialogXBaseRelativeLayout_autoSafeArea:I

    .line 37
    .line 38
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iput-boolean v3, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->d:Z

    .line 43
    .line 44
    sget v3, Lcom/kongzue/dialogx/R$styleable;->DialogXBaseRelativeLayout_interceptBack:I

    .line 45
    .line 46
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iput-boolean v3, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->f:Z

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    .line 54
    .line 55
    iput-boolean v1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->j:Z

    .line 56
    .line 57
    :cond_1
    iget-boolean p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->e:Z

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 65
    .line 66
    .line 67
    :cond_2
    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->k(F)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->A()Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    sget-object v3, Lcom/kongzue/dialogx/DialogX$IMPL_MODE;->VIEW:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 86
    .line 87
    if-eq p1, v3, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 96
    .line 97
    .line 98
    const/16 p1, 0x1a

    .line 99
    .line 100
    if-lt v0, p1, :cond_4

    .line 101
    .line 102
    invoke-static {p0, v2}, Lcom/kongzue/dialogx/util/views/b;->a(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;Z)V

    .line 103
    .line 104
    .line 105
    :cond_4
    const-string p1, "KONGZUE DEBUG DIALOGX: create fitSystemBarUtils"

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->h(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance p1, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;

    .line 111
    .line 112
    invoke-direct {p1, p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$a;-><init>(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p0, p1}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->p(Landroid/view/View;Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$g;)Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->i:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 120
    .line 121
    :cond_5
    return-void
.end method

.method private d(Lcom/kongzue/dialogx/interfaces/BaseDialog;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of p1, p1, Lcom/kongzue/dialogx/interfaces/h;

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    const-string p1, "DialogXSafetyArea"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    instance-of p1, p1, Lcom/kongzue/dialogx/interfaces/j;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    :goto_1
    return p1
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eq p1, p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->n:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public callOnClick()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->callOnClick()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "#dispatchKeyEvent: KeyCode="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->h(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x1

    .line 36
    if-ne v0, v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x4

    .line 43
    if-ne v0, v1, :cond_0

    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->f:Z

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->h:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$d;

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->c:Ljava/lang/ref/WeakReference;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->h0()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    .line 67
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->h:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$d;

    .line 68
    .line 69
    invoke-interface {p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$d;->onBackPressed()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    return p1

    .line 74
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    return p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public getFitSystemBarUtils()Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->i:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnSafeInsetsChangeListener()Lcom/kongzue/dialogx/interfaces/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->b:Lcom/kongzue/dialogx/interfaces/z;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method

.method public getRootPaddingBottom()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->r:[I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public getRootPaddingLeft()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->r:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public getRootPaddingRight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->r:[I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public getRootPaddingTop()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->r:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public getSafeHeight()F
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o:Landroid/graphics/Rect;

    .line 6
    .line 7
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 8
    .line 9
    sub-int/2addr v0, v2

    .line 10
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 11
    .line 12
    sub-int/2addr v0, v1

    .line 13
    int-to-float v0, v0

    .line 14
    return v0
.end method

.method public getUnsafePlace()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUseAreaHeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getRootPaddingBottom()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public getUseAreaWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getRootPaddingRight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    return v0
.end method

.method protected h(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p1, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->s:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-boolean p1, Lcom/kongzue/dialogx/DialogX;->b:Z

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eq v0, p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public j(Z)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->d:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public k(F)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;
    .locals 2

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->q:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/high16 v1, 0x437f0000    # 255.0f

    .line 18
    .line 19
    mul-float p1, p1, v1

    .line 20
    .line 21
    float-to-int p1, p1

    .line 22
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-object p0
.end method

.method public l(Z)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->f:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public m(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$d;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->h:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$d;

    .line 2
    .line 3
    return-object p0
.end method

.method public n(Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->g:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public o(Lcom/kongzue/dialogx/interfaces/z;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->b:Lcom/kongzue/dialogx/interfaces/z;

    .line 2
    .line 3
    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->g:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;->b()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 43
    .line 44
    and-int/lit8 v0, v0, 0x30

    .line 45
    .line 46
    const/16 v1, 0x10

    .line 47
    .line 48
    if-ne v0, v1, :cond_2

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 53
    :goto_0
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->p:Z

    .line 54
    .line 55
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->e:Z

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 60
    .line 61
    .line 62
    nop

    .line 63
    :cond_3
    :goto_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 5
    .line 6
    and-int/lit8 p1, p1, 0x30

    .line 7
    .line 8
    const/16 v0, 0x10

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->p:Z

    .line 16
    .line 17
    if-eq v0, p1, :cond_1

    .line 18
    .line 19
    sget-object p1, Lcom/kongzue/dialogx/DialogX;->d:Lcom/kongzue/dialogx/DialogX$THEME;

    .line 20
    .line 21
    sget-object v0, Lcom/kongzue/dialogx/DialogX$THEME;->AUTO:Lcom/kongzue/dialogx/DialogX$THEME;

    .line 22
    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->A0()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->g:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->i:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->C()V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->i:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->b:Lcom/kongzue/dialogx/interfaces/z;

    .line 19
    .line 20
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->k:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eq v0, p0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/high16 v1, 0x40a00000    # 5.0f

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->o(F)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    int-to-float v0, v0

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget v2, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->l:F

    .line 43
    .line 44
    sub-float/2addr v1, v2

    .line 45
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    cmpg-float v1, v1, v0

    .line 50
    .line 51
    if-gtz v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget v2, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->m:F

    .line 58
    .line 59
    sub-float/2addr v1, v2

    .line 60
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    cmpg-float v0, v1, v0

    .line 65
    .line 66
    if-gtz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->callOnClick()Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iput-boolean v1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->k:Z

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->l:F

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iput v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->m:F

    .line 85
    .line 86
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    instance-of v0, v0, Lcom/kongzue/dialogx/interfaces/o;

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    return p1

    .line 99
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-string v1, "input_method"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const/4 v2, 0x2

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 117
    .line 118
    .line 119
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    return p1
.end method

.method public p(Lcom/kongzue/dialogx/interfaces/BaseDialog;)Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->c:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->A()Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Lcom/kongzue/dialogx/DialogX$IMPL_MODE;->VIEW:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o:Landroid/graphics/Rect;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v0, "KONGZUE DEBUG DIALOGX: setParentDialog()="

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->h(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->o:Landroid/graphics/Rect;

    .line 51
    .line 52
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 53
    .line 54
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 55
    .line 56
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 57
    .line 58
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 59
    .line 60
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->setUnsafePadding(IIII)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-string p1, "KONGZUE DEBUG DIALOGX: setParentDialog() unsafePlace is null"

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->h(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-object p0
.end method

.method public performClick()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lcom/kongzue/dialogx/interfaces/o;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    const/16 v0, 0x82

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->n:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->n:Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eq v0, p0, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->n:Ljava/lang/ref/WeakReference;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    if-eq v0, p0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    return p1

    .line 65
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    return p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->q:F

    .line 2
    .line 3
    const/high16 v1, 0x437f0000    # 255.0f

    .line 4
    .line 5
    mul-float v0, v0, v1

    .line 6
    .line 7
    float-to-int v0, v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setRootPadding(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->r:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    aput p2, v0, p1

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    aput p3, v0, p1

    .line 11
    .line 12
    const/4 p1, 0x3

    .line 13
    aput p4, v0, p1

    .line 14
    .line 15
    return-void
.end method

.method public setUnsafePadding(IIII)V
    .locals 11
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "KONGZUE DEBUG DIALOGX: setUnsafePadding="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " t="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " b="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->h(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->U:Z

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    const-string p1, "  KONGZUE DEBUG DIALOGX: ignoreUnsafeInsetsHorizontal, start and end set 0"

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->h(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    const/4 p3, 0x0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->d(Lcom/kongzue/dialogx/interfaces/BaseDialog;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_e

    .line 62
    .line 63
    const-string v0, "  KONGZUE DEBUG DIALOGX: Dialog is align bottom"

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->h(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v0, "DialogXSafetyArea"

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    instance-of v3, v0, Lcom/kongzue/dialogx/interfaces/j;

    .line 75
    .line 76
    if-eqz v3, :cond_c

    .line 77
    .line 78
    move-object v3, v0

    .line 79
    check-cast v3, Lcom/kongzue/dialogx/interfaces/j;

    .line 80
    .line 81
    invoke-interface {v3}, Lcom/kongzue/dialogx/interfaces/j;->getDialogXSafetyMode()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    and-int/lit8 v4, v3, 0x1

    .line 86
    .line 87
    const/4 v5, 0x1

    .line 88
    if-eqz v4, :cond_1

    .line 89
    .line 90
    const/4 v4, 0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    const/4 v4, 0x0

    .line 93
    :goto_0
    and-int/lit8 v6, v3, 0x2

    .line 94
    .line 95
    if-eqz v6, :cond_2

    .line 96
    .line 97
    const/4 v6, 0x1

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    const/4 v6, 0x0

    .line 100
    :goto_1
    and-int/lit8 v7, v3, 0x4

    .line 101
    .line 102
    if-eqz v7, :cond_3

    .line 103
    .line 104
    const/4 v7, 0x1

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    const/4 v7, 0x0

    .line 107
    :goto_2
    and-int/lit8 v3, v3, 0x8

    .line 108
    .line 109
    if-eqz v3, :cond_4

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    const/4 v5, 0x0

    .line 113
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v8, "    KONGZUE DEBUG DIALOGX: dialogXSafetyArea"

    .line 119
    .line 120
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v8, " hasLeft="

    .line 127
    .line 128
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v8, "hasTop="

    .line 135
    .line 136
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v8, " hasRight="

    .line 143
    .line 144
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v8, " hasBottom="

    .line 151
    .line 152
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {p0, v3}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->h(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    if-eqz v6, :cond_5

    .line 166
    .line 167
    move v3, p1

    .line 168
    goto :goto_4

    .line 169
    :cond_5
    const/4 v3, 0x0

    .line 170
    :goto_4
    if-eqz v4, :cond_6

    .line 171
    .line 172
    move v8, p2

    .line 173
    goto :goto_5

    .line 174
    :cond_6
    const/4 v8, 0x0

    .line 175
    :goto_5
    if-eqz v5, :cond_7

    .line 176
    .line 177
    move v9, p3

    .line 178
    goto :goto_6

    .line 179
    :cond_7
    const/4 v9, 0x0

    .line 180
    :goto_6
    if-eqz v7, :cond_8

    .line 181
    .line 182
    move v10, p4

    .line 183
    goto :goto_7

    .line 184
    :cond_8
    const/4 v10, 0x0

    .line 185
    :goto_7
    invoke-virtual {v0, v3, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 186
    .line 187
    .line 188
    if-eqz v4, :cond_9

    .line 189
    .line 190
    const/4 p2, 0x0

    .line 191
    :cond_9
    if-eqz v6, :cond_a

    .line 192
    .line 193
    const/4 p1, 0x0

    .line 194
    :cond_a
    if-eqz v5, :cond_b

    .line 195
    .line 196
    const/4 p3, 0x0

    .line 197
    :cond_b
    if-eqz v7, :cond_e

    .line 198
    .line 199
    goto :goto_8

    .line 200
    :cond_c
    sget v0, Lcom/kongzue/dialogx/R$id;->bkg:I

    .line 201
    .line 202
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Landroid/view/ViewGroup;

    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->getParentDialog()Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    check-cast v3, Lcom/kongzue/dialogx/interfaces/h;

    .line 213
    .line 214
    invoke-interface {v3}, Lcom/kongzue/dialogx/interfaces/h;->a()Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-nez v3, :cond_d

    .line 219
    .line 220
    if-eqz v0, :cond_d

    .line 221
    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    const-string v4, "    KONGZUE DEBUG DIALOGX: bkgView.setPadding b="

    .line 228
    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {p0, v3}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->h(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v2, v2, v2, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 243
    .line 244
    .line 245
    :cond_d
    :goto_8
    const/4 p4, 0x0

    .line 246
    :cond_e
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->e()Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_f

    .line 251
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    const-string v2, "  KONGZUE DEBUG DIALOGX: root.setPadding t="

    .line 258
    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {p0, v0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;->h(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 279
    .line 280
    .line 281
    :cond_f
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    cmpl-float v0, v0, v1

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const v0, 0x3c23d70a    # 0.01f

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
