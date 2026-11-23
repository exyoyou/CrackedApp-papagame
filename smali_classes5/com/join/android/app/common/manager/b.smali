.class public Lcom/join/android/app/common/manager/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/manager/b$b;
    }
.end annotation


# static fields
.field public static final h:I = -0x67000000

.field public static i:Z


# instance fields
.field private final a:Lcom/join/android/app/common/manager/b$b;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/view/ViewGroup;

    .line 13
    .line 14
    const v2, 0x10103ef

    .line 15
    .line 16
    .line 17
    const v3, 0x10103f0

    .line 18
    .line 19
    .line 20
    filled-new-array {v2, v3}, [I

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    :try_start_0
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iput-boolean v4, p0, Lcom/join/android/app/common/manager/b;->b:Z

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    iput-boolean v5, p0, Lcom/join/android/app/common/manager/b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 50
    .line 51
    const/high16 v2, 0x4000000

    .line 52
    .line 53
    and-int/2addr v2, v0

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    iput-boolean v4, p0, Lcom/join/android/app/common/manager/b;->b:Z

    .line 57
    .line 58
    :cond_0
    and-int/lit16 v2, v0, 0x400

    .line 59
    .line 60
    const/16 v5, 0x400

    .line 61
    .line 62
    if-ne v2, v5, :cond_1

    .line 63
    .line 64
    iput-boolean v3, p0, Lcom/join/android/app/common/manager/b;->b:Z

    .line 65
    .line 66
    :cond_1
    const/high16 v2, 0x8000000

    .line 67
    .line 68
    and-int/2addr v0, v2

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iput-boolean v4, p0, Lcom/join/android/app/common/manager/b;->c:Z

    .line 72
    .line 73
    :cond_2
    new-instance v0, Lcom/join/android/app/common/manager/b$b;

    .line 74
    .line 75
    iget-boolean v2, p0, Lcom/join/android/app/common/manager/b;->b:Z

    .line 76
    .line 77
    iget-boolean v4, p0, Lcom/join/android/app/common/manager/b;->c:Z

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    invoke-direct {v0, p1, v2, v4, v5}, Lcom/join/android/app/common/manager/b$b;-><init>(Landroid/app/Activity;ZZLcom/join/android/app/common/manager/b$a;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/join/android/app/common/manager/b;->a:Lcom/join/android/app/common/manager/b$b;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/android/app/common/manager/b$b;->m()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    iput-boolean v3, p0, Lcom/join/android/app/common/manager/b;->c:Z

    .line 92
    .line 93
    :cond_3
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->b:Z

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-direct {p0, p1, v1}, Lcom/join/android/app/common/manager/b;->t(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->c:Z

    .line 101
    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    invoke-direct {p0, p1, v1}, Lcom/join/android/app/common/manager/b;->s(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    return-void

    .line 108
    :catchall_0
    move-exception p1

    .line 109
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    .line 111
    .line 112
    throw p1
.end method

.method private s(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "decorViewGroup"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/view/View;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/android/app/common/manager/b;->a:Lcom/join/android/app/common/manager/b$b;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/android/app/common/manager/b$b;->n()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, -0x1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/android/app/common/manager/b;->a:Lcom/join/android/app/common/manager/b$b;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/join/android/app/common/manager/b$b;->d()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x50

    .line 29
    .line 30
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/android/app/common/manager/b;->a:Lcom/join/android/app/common/manager/b$b;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/join/android/app/common/manager/b$b;->f()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x5

    .line 45
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 46
    .line 47
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    .line 53
    .line 54
    const/high16 v0, -0x67000000

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    .line 60
    .line 61
    const/16 v0, 0x8

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private t(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "decorViewGroup"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/view/View;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    .line 7
    .line 8
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->a:Lcom/join/android/app/common/manager/b$b;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/android/app/common/manager/b$b;->l()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x30

    .line 21
    .line 22
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->c:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->a:Lcom/join/android/app/common/manager/b$b;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/android/app/common/manager/b$b;->n()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->a:Lcom/join/android/app/common/manager/b$b;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/android/app/common/manager/b$b;->f()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    .line 50
    .line 51
    const/high16 v0, -0x67000000

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    .line 57
    .line 58
    const/16 v0, 0x8

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public a()Lcom/join/android/app/common/manager/b$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->a:Lcom/join/android/app/common/manager/b$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public d(F)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public f(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/common/manager/b;->e:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->c:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 p1, 0x8

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public h(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->g:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public i(F)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public j(ZLandroid/app/Activity;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "darkmode",
            "activity"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/join/android/app/common/manager/b;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :try_start_0
    const-string v1, "android.view.MiuiWindowManager$LayoutParams"

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const-string v2, "setExtraFlags"

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    new-array v4, v3, [Ljava/lang/Class;

    .line 33
    .line 34
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    aput-object v5, v4, v6

    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    aput-object v5, v4, v7

    .line 41
    .line 42
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    new-array v2, v3, [Ljava/lang/Object;

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    move p1, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 p1, 0x0

    .line 57
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    aput-object p1, v2, v6

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    aput-object p1, v2, v7

    .line 68
    .line 69
    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_1
    return-void
.end method

.method public k(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public l(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public m(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/common/manager/b;->d:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->b:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 p1, 0x8

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public n(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/manager/b;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/android/app/common/manager/b;->f:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public o(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/manager/b;->i(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/manager/b;->d(F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public p(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/manager/b;->k(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/manager/b;->e(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public q(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/manager/b;->l(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/manager/b;->f(Landroid/graphics/drawable/Drawable;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public r(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/manager/b;->n(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/join/android/app/common/manager/b;->h(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
